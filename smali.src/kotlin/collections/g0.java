package kotlin.collections;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/g0;", "T", "", "", "a", "b", "()Ljava/lang/Object;", "", "toString", "hashCode", "other", "", "equals", "I", "c", "()I", "index", "Ljava/lang/Object;", "d", "value", "<init>", "(ILjava/lang/Object;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class g0<T>
{
  private final int a;
  private final T b;
  
  public g0(int paramInt, T paramT)
  {
    this.a = paramInt;
    this.b = paramT;
  }
  
  public final int a()
  {
    return this.a;
  }
  
  public final T b()
  {
    return this.b;
  }
  
  public final int c()
  {
    return this.a;
  }
  
  public final T d()
  {
    return this.b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof g0)) {
      return false;
    }
    paramObject = (g0)paramObject;
    if (this.a != paramObject.a) {
      return false;
    }
    return r.a(this.b, paramObject.b);
  }
  
  public int hashCode()
  {
    int i = this.a;
    Object localObject = this.b;
    int j;
    if (localObject == null) {
      j = 0;
    } else {
      j = localObject.hashCode();
    }
    return i * 31 + j;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("IndexedValue(index=");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", value=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.g0
 * JD-Core Version:    0.7.0.1
 */