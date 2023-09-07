package kotlin.collections.builders;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.collections.u0;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/SerializedCollection;", "Ljava/io/Externalizable;", "", "readResolve", "Ljava/io/ObjectOutput;", "output", "Lkotlin/u;", "writeExternal", "Ljava/io/ObjectInput;", "input", "readExternal", "", "collection", "Ljava/util/Collection;", "", "tag", "I", "<init>", "(Ljava/util/Collection;I)V", "()V", "Companion", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class SerializedCollection
  implements Externalizable
{
  public static final a Companion = new a(null);
  private static final long serialVersionUID = 0L;
  public static final int tagList = 0;
  public static final int tagSet = 1;
  private Collection<?> collection;
  private final int tag;
  
  public SerializedCollection()
  {
    this(t.j(), 0);
  }
  
  public SerializedCollection(Collection<?> paramCollection, int paramInt)
  {
    this.collection = paramCollection;
    this.tag = paramInt;
  }
  
  private final Object readResolve()
  {
    return this.collection;
  }
  
  public void readExternal(ObjectInput paramObjectInput)
  {
    r.f(paramObjectInput, "input");
    int i = paramObjectInput.readByte();
    int j = i & 0x1;
    if ((i & 0xFFFFFFFE) == 0)
    {
      int k = paramObjectInput.readInt();
      if (k >= 0)
      {
        int m = 0;
        i = 0;
        Object localObject;
        if (j != 0)
        {
          if (j == 1)
          {
            localObject = u0.b(k);
            while (i < k)
            {
              ((Set)localObject).add(paramObjectInput.readObject());
              i++;
            }
            paramObjectInput = u0.a((Set)localObject);
          }
          else
          {
            paramObjectInput = new StringBuilder();
            paramObjectInput.append("Unsupported collection type tag: ");
            paramObjectInput.append(j);
            paramObjectInput.append('.');
            throw new InvalidObjectException(paramObjectInput.toString());
          }
        }
        else
        {
          localObject = t.d(k);
          for (i = m; i < k; i++) {
            ((List)localObject).add(paramObjectInput.readObject());
          }
          paramObjectInput = t.a((List)localObject);
        }
        this.collection = paramObjectInput;
        return;
      }
      paramObjectInput = new StringBuilder();
      paramObjectInput.append("Illegal size value: ");
      paramObjectInput.append(k);
      paramObjectInput.append('.');
      throw new InvalidObjectException(paramObjectInput.toString());
    }
    paramObjectInput = new StringBuilder();
    paramObjectInput.append("Unsupported flags value: ");
    paramObjectInput.append(i);
    paramObjectInput.append('.');
    throw new InvalidObjectException(paramObjectInput.toString());
  }
  
  public void writeExternal(ObjectOutput paramObjectOutput)
  {
    r.f(paramObjectOutput, "output");
    paramObjectOutput.writeByte(this.tag);
    paramObjectOutput.writeInt(this.collection.size());
    Iterator localIterator = this.collection.iterator();
    while (localIterator.hasNext()) {
      paramObjectOutput.writeObject(localIterator.next());
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/SerializedCollection$a;", "", "", "serialVersionUID", "J", "", "tagList", "I", "tagSet", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.builders.SerializedCollection
 * JD-Core Version:    0.7.0.1
 */