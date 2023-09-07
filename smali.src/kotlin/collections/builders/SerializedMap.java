package kotlin.collections.builders;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.m0;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/SerializedMap;", "Ljava/io/Externalizable;", "", "readResolve", "Ljava/io/ObjectOutput;", "output", "Lkotlin/u;", "writeExternal", "Ljava/io/ObjectInput;", "input", "readExternal", "", "map", "Ljava/util/Map;", "<init>", "(Ljava/util/Map;)V", "()V", "Companion", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class SerializedMap
  implements Externalizable
{
  public static final a Companion = new a(null);
  private static final long serialVersionUID = 0L;
  private Map<?, ?> map;
  
  public SerializedMap()
  {
    this(m0.i());
  }
  
  public SerializedMap(Map<?, ?> paramMap)
  {
    this.map = paramMap;
  }
  
  private final Object readResolve()
  {
    return this.map;
  }
  
  public void readExternal(ObjectInput paramObjectInput)
  {
    r.f(paramObjectInput, "input");
    int i = paramObjectInput.readByte();
    if (i == 0)
    {
      int j = paramObjectInput.readInt();
      if (j >= 0)
      {
        Map localMap = m0.d(j);
        for (i = 0; i < j; i++) {
          localMap.put(paramObjectInput.readObject(), paramObjectInput.readObject());
        }
        this.map = m0.b(localMap);
        return;
      }
      paramObjectInput = new StringBuilder();
      paramObjectInput.append("Illegal size value: ");
      paramObjectInput.append(j);
      paramObjectInput.append('.');
      throw new InvalidObjectException(paramObjectInput.toString());
    }
    paramObjectInput = new StringBuilder();
    paramObjectInput.append("Unsupported flags value: ");
    paramObjectInput.append(i);
    throw new InvalidObjectException(paramObjectInput.toString());
  }
  
  public void writeExternal(ObjectOutput paramObjectOutput)
  {
    r.f(paramObjectOutput, "output");
    paramObjectOutput.writeByte(0);
    paramObjectOutput.writeInt(this.map.size());
    Iterator localIterator = this.map.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramObjectOutput.writeObject(localEntry.getKey());
      paramObjectOutput.writeObject(localEntry.getValue());
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/SerializedMap$a;", "", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.builders.SerializedMap
 * JD-Core Version:    0.7.0.1
 */