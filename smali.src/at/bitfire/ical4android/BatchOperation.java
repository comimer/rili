package at.bitfire.ical4android;

import android.content.ContentProviderClient;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.net.Uri;
import android.os.TransactionTooLargeException;
import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/BatchOperation;", "", "", "start", "end", "Lkotlin/u;", "runBatch", "Ljava/util/ArrayList;", "Landroid/content/ContentProviderOperation;", "toCPO", "nextBackrefIdx", "Lat/bitfire/ical4android/BatchOperation$Operation;", "operation", "", "enqueue", "commit", "idx", "Landroid/content/ContentProviderResult;", "getResult", "Landroid/content/ContentProviderClient;", "providerClient", "Landroid/content/ContentProviderClient;", "Ljava/util/LinkedList;", "queue", "Ljava/util/LinkedList;", "", "results", "[Landroid/content/ContentProviderResult;", "<init>", "(Landroid/content/ContentProviderClient;)V", "Operation", "ical4android_release"}, k=1, mv={1, 7, 1})
public final class BatchOperation
{
  private final ContentProviderClient providerClient;
  private final LinkedList<Operation> queue;
  private ContentProviderResult[] results;
  
  public BatchOperation(ContentProviderClient paramContentProviderClient)
  {
    this.providerClient = paramContentProviderClient;
    this.queue = new LinkedList();
    this.results = new ContentProviderResult[0];
  }
  
  private final void runBatch(int paramInt1, int paramInt2)
  {
    if (paramInt2 == paramInt1) {
      return;
    }
    try
    {
      ArrayList localArrayList = toCPO(paramInt1, paramInt2);
      Object localObject1 = Ical4Android.INSTANCE;
      Object localObject2 = ((Ical4Android)localObject1).getLog();
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("Running ");
      localStringBuilder.append(localArrayList.size());
      localStringBuilder.append(" operations (");
      localStringBuilder.append(paramInt1);
      localStringBuilder.append(" .. ");
      localStringBuilder.append(paramInt2 - 1);
      localStringBuilder.append(')');
      ((Logger)localObject2).fine(localStringBuilder.toString());
      localObject2 = this.providerClient.applyBatch(localArrayList);
      r.e(localObject2, "providerClient.applyBatch(ops)");
      i = paramInt2 - paramInt1;
      if (localObject2.length != i)
      {
        localObject1 = ((Ical4Android)localObject1).getLog();
        localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append("Batch operation returned only ");
        localStringBuilder.append(localObject2.length);
        localStringBuilder.append(" instead of ");
        localStringBuilder.append(i);
        localStringBuilder.append(" results");
        ((Logger)localObject1).warning(localStringBuilder.toString());
      }
      System.arraycopy(localObject2, 0, this.results, paramInt1, localObject2.length);
    }
    catch (TransactionTooLargeException localTransactionTooLargeException)
    {
      if (paramInt2 <= paramInt1 + 1) {
        break label262;
      }
    }
    Ical4Android.INSTANCE.getLog().warning("Transaction too large, splitting (losing atomicity)");
    int i = (paramInt2 - paramInt1) / 2 + paramInt1;
    runBatch(paramInt1, i);
    runBatch(i, paramInt2);
    return;
    label262:
    throw new CalendarStorageException("Can't transfer data to content provider (data row too large)");
  }
  
  private final ArrayList<ContentProviderOperation> toCPO(int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList(paramInt2 - paramInt1);
    Iterator localIterator = this.queue.subList(paramInt1, paramInt2).iterator();
    for (paramInt2 = 0; localIterator.hasNext(); paramInt2++)
    {
      Object localObject1 = (Operation)localIterator.next();
      ContentProviderOperation.Builder localBuilder = ((Operation)localObject1).getBuilder();
      String str = ((Operation)localObject1).getBackrefKey();
      if (str != null) {
        if (((Operation)localObject1).getBackrefIdx() < paramInt1)
        {
          Object localObject2 = this.results[localObject1.getBackrefIdx()];
          if (localObject2 != null)
          {
            localObject1 = localBuilder.withValueBackReferences(new ContentValues());
            localObject2 = ((ContentProviderResult)localObject2).uri;
            r.c(localObject2);
            ((ContentProviderOperation.Builder)localObject1).withValue(str, Long.valueOf(ContentUris.parseId((Uri)localObject2)));
          }
        }
        else
        {
          localBuilder.withValueBackReference(str, ((Operation)localObject1).getBackrefIdx() - paramInt1);
        }
      }
      if (paramInt2 % 300 == 0) {
        localBuilder.withYieldAllowed(true);
      }
      localArrayList.add(localBuilder.build());
    }
    return localArrayList;
  }
  
  public final int commit()
  {
    boolean bool = this.queue.isEmpty();
    int i = 0;
    int j = 0;
    if (!bool) {
      try
      {
        Object localObject1 = Ical4Android.INSTANCE.getLog();
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append("Committing ");
        ((StringBuilder)localObject2).append(this.queue.size());
        ((StringBuilder)localObject2).append(" operations");
        ((Logger)localObject1).fine(((StringBuilder)localObject2).toString());
        this.results = new ContentProviderResult[this.queue.size()];
        runBatch(0, this.queue.size());
        localObject2 = j.v(this.results).iterator();
        i = j;
        while (((Iterator)localObject2).hasNext())
        {
          localObject1 = (ContentProviderResult)((Iterator)localObject2).next();
          Integer localInteger = ((ContentProviderResult)localObject1).count;
          if (localInteger != null)
          {
            if (localInteger != null) {
              i += localInteger.intValue();
            }
          }
          else if (((ContentProviderResult)localObject1).uri != null) {
            i++;
          }
        }
        localObject2 = Ical4Android.INSTANCE.getLog();
        localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        ((StringBuilder)localObject1).append("… ");
        ((StringBuilder)localObject1).append(i);
        ((StringBuilder)localObject1).append(" record(s) affected");
        ((Logger)localObject2).fine(((StringBuilder)localObject1).toString());
      }
      catch (Exception localException)
      {
        throw new CalendarStorageException("Couldn't apply batch operation", localException);
      }
    }
    this.queue.clear();
    return i;
  }
  
  public final boolean enqueue(Operation paramOperation)
  {
    r.f(paramOperation, "operation");
    return this.queue.add(paramOperation);
  }
  
  public final ContentProviderResult getResult(int paramInt)
  {
    return this.results[paramInt];
  }
  
  public final int nextBackrefIdx()
  {
    return this.queue.size();
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/ical4android/BatchOperation$Operation;", "", "builder", "Landroid/content/ContentProviderOperation$Builder;", "backrefKey", "", "backrefIdx", "", "(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V", "getBackrefIdx", "()I", "getBackrefKey", "()Ljava/lang/String;", "getBuilder", "()Landroid/content/ContentProviderOperation$Builder;", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Operation
  {
    private final int backrefIdx;
    private final String backrefKey;
    private final ContentProviderOperation.Builder builder;
    
    public Operation(ContentProviderOperation.Builder paramBuilder, String paramString, int paramInt)
    {
      this.builder = paramBuilder;
      this.backrefKey = paramString;
      this.backrefIdx = paramInt;
    }
    
    public final int getBackrefIdx()
    {
      return this.backrefIdx;
    }
    
    public final String getBackrefKey()
    {
      return this.backrefKey;
    }
    
    public final ContentProviderOperation.Builder getBuilder()
    {
      return this.builder;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.BatchOperation
 * JD-Core Version:    0.7.0.1
 */