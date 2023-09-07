package com.android.calendar.common;

import android.app.IntentService;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.miui.calendar.util.f;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.concurrent.Delayed;
import java.util.concurrent.TimeUnit;

public class AsyncQueryServiceHelper
  extends IntentService
{
  private static final PriorityQueue<a> b = new PriorityQueue();
  protected Class<a> a = a.class;
  
  public AsyncQueryServiceHelper()
  {
    super("AsyncQueryServiceHelper");
  }
  
  public static int a(int paramInt)
  {
    synchronized (b)
    {
      Iterator localIterator = ???.iterator();
      int i = 0;
      while (localIterator.hasNext()) {
        if (((a)localIterator.next()).a == paramInt)
        {
          localIterator.remove();
          i++;
        }
      }
      return i;
    }
  }
  
  public static void b(Context paramContext, a parama)
  {
    parama.c();
    synchronized (b)
    {
      ???.add(parama);
      ???.notify();
      try
      {
        parama = new android/content/Intent;
        parama.<init>(paramContext, AsyncQueryServiceHelper.class);
        paramContext.startService(parama);
      }
      catch (Exception paramContext)
      {
        z.c("AsyncQuery", "queueOperation failed.");
      }
      return;
    }
  }
  
  public void onCreate()
  {
    super.onCreate();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  protected void onHandleIntent(Intent arg1)
  {
    for (;;)
    {
      Object localObject1;
      long l1;
      synchronized (b)
      {
        localObject1 = b;
        if (((PriorityQueue)localObject1).size() == 0) {
          return;
        }
        if (((PriorityQueue)localObject1).size() == 1)
        {
          l1 = a.b((a)((PriorityQueue)localObject1).peek());
          long l2 = SystemClock.elapsedRealtime();
          l1 -= l2;
          if (l1 <= 0L) {}
        }
      }
      try
      {
        localObject1.wait(l1);
        label60:
        a locala = (a)b.poll();
        if (locala == null) {
          continue;
        }
        localObject1 = locala.c;
        if (localObject1 != null)
        {
          int i = locala.b;
          ??? = null;
          if (i != 1)
          {
            if (i != 2)
            {
              if (i != 3)
              {
                if (i != 4)
                {
                  if (i == 5) {
                    try
                    {
                      locala.k = ((ContentResolver)localObject1).applyBatch(locala.e, locala.n);
                    }
                    catch (IllegalArgumentException ???)
                    {
                      Log.e("AsyncQuery", ???.toString());
                    }
                    catch (SQLiteException ???)
                    {
                      Log.e("AsyncQuery", ???.toString());
                      locala.k = null;
                    }
                    catch (OperationApplicationException ???)
                    {
                      Log.e("AsyncQuery", ???.toString());
                      locala.k = null;
                    }
                    catch (RemoteException ???)
                    {
                      Log.e("AsyncQuery", ???.toString());
                      locala.k = null;
                    }
                  }
                }
                else {
                  locala.k = Integer.valueOf(((ContentResolver)localObject1).delete(locala.d, locala.h, locala.i));
                }
              }
              else {
                locala.k = Integer.valueOf(((ContentResolver)localObject1).update(locala.d, locala.m, locala.h, locala.i));
              }
            }
            else {
              locala.k = ((ContentResolver)localObject1).insert(locala.d, locala.m);
            }
          }
          else
          {
            try
            {
              localObject1 = ((ContentResolver)localObject1).query(locala.d, locala.g, locala.h, locala.i, locala.j);
              if (localObject1 != null) {
                ((Cursor)localObject1).getCount();
              }
              ??? = (Intent)localObject1;
            }
            catch (Exception localException)
            {
              Log.w("AsyncQuery", localException.toString());
            }
            locala.k = ???;
          }
          if (locala.b != 1) {
            f.e(this);
          }
          ??? = locala.f.obtainMessage(locala.a);
          ???.obj = locala;
          ???.arg1 = locala.b;
          ???.sendToTarget();
        }
        return;
        localObject2 = finally;
        throw localObject2;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label60;
      }
    }
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
  }
  
  protected static class a
    implements Delayed
  {
    public int a;
    public int b;
    public ContentResolver c;
    public Uri d;
    public String e;
    public Handler f;
    public String[] g;
    public String h;
    public String[] i;
    public String j;
    public Object k;
    public Object l;
    public ContentValues m;
    public ArrayList<ContentProviderOperation> n;
    public long o;
    private long p = 0L;
    
    void c()
    {
      this.p = (SystemClock.elapsedRealtime() + this.o);
    }
    
    public long getDelay(TimeUnit paramTimeUnit)
    {
      return paramTimeUnit.convert(this.p - SystemClock.elapsedRealtime(), TimeUnit.MILLISECONDS);
    }
    
    public int h(Delayed paramDelayed)
    {
      paramDelayed = (a)paramDelayed;
      long l1 = this.p;
      long l2 = paramDelayed.p;
      if (l1 == l2) {
        return 0;
      }
      if (l1 < l2) {
        return -1;
      }
      return 1;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("OperationInfo [\n\t token= ");
      localStringBuilder.append(this.a);
      localStringBuilder.append(",\n\t op= ");
      localStringBuilder.append(a.a.a(this.b));
      localStringBuilder.append(",\n\t uri= ");
      localStringBuilder.append(this.d);
      localStringBuilder.append(",\n\t authority= ");
      localStringBuilder.append(this.e);
      localStringBuilder.append(",\n\t delayMillis= ");
      localStringBuilder.append(this.o);
      localStringBuilder.append(",\n\t mScheduledTimeMillis= ");
      localStringBuilder.append(this.p);
      localStringBuilder.append(",\n\t resolver= ");
      localStringBuilder.append(this.c);
      localStringBuilder.append(",\n\t handler= ");
      localStringBuilder.append(this.f);
      localStringBuilder.append(",\n\t projection= ");
      localStringBuilder.append(Arrays.toString(this.g));
      localStringBuilder.append(",\n\t selection= ");
      localStringBuilder.append(this.h);
      localStringBuilder.append(",\n\t selectionArgs= ");
      localStringBuilder.append(Arrays.toString(this.i));
      localStringBuilder.append(",\n\t orderBy= ");
      localStringBuilder.append(this.j);
      localStringBuilder.append(",\n\t result= ");
      localStringBuilder.append(this.k);
      localStringBuilder.append(",\n\t cookie= ");
      localStringBuilder.append(this.l);
      localStringBuilder.append(",\n\t values= ");
      localStringBuilder.append(this.m);
      localStringBuilder.append(",\n\t cpo= ");
      localStringBuilder.append(this.n);
      localStringBuilder.append("\n]");
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.AsyncQueryServiceHelper
 * JD-Core Version:    0.7.0.1
 */