package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.r;

@Metadata(d1={""}, d2={"Lkotlin/Triple;", "A", "B", "C", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "first", "second", "third", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "getFirst", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getSecond", "getThird", "component1", "component2", "component3", "copy", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Triple;", "equals", "", "other", "", "hashCode", "", "toString", "", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public final class Triple<A, B, C>
  implements Serializable
{
  private final A first;
  private final B second;
  private final C third;
  
  public Triple(A paramA, B paramB, C paramC)
  {
    this.first = paramA;
    this.second = paramB;
    this.third = paramC;
  }
  
  public final A component1()
  {
    return this.first;
  }
  
  public final B component2()
  {
    return this.second;
  }
  
  public final C component3()
  {
    return this.third;
  }
  
  public final Triple<A, B, C> copy(A paramA, B paramB, C paramC)
  {
    return new Triple(paramA, paramB, paramC);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof Triple)) {
      return false;
    }
    paramObject = (Triple)paramObject;
    if (!r.a(this.first, paramObject.first)) {
      return false;
    }
    if (!r.a(this.second, paramObject.second)) {
      return false;
    }
    return r.a(this.third, paramObject.third);
  }
  
  public final A getFirst()
  {
    return this.first;
  }
  
  public final B getSecond()
  {
    return this.second;
  }
  
  public final C getThird()
  {
    return this.third;
  }
  
  public int hashCode()
  {
    Object localObject = this.first;
    int i = 0;
    int j;
    if (localObject == null) {
      j = 0;
    } else {
      j = localObject.hashCode();
    }
    localObject = this.second;
    int k;
    if (localObject == null) {
      k = 0;
    } else {
      k = localObject.hashCode();
    }
    localObject = this.third;
    if (localObject != null) {
      i = localObject.hashCode();
    }
    return (j * 31 + k) * 31 + i;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('(');
    localStringBuilder.append(this.first);
    localStringBuilder.append(", ");
    localStringBuilder.append(this.second);
    localStringBuilder.append(", ");
    localStringBuilder.append(this.third);
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.Triple
 * JD-Core Version:    0.7.0.1
 */