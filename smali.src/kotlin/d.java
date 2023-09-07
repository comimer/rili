package kotlin;

import b8.c;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/d;", "", "", "major", "minor", "patch", "c", "", "toString", "", "other", "", "equals", "hashCode", "b", "a", "I", "getMajor", "()I", "getMinor", "getPatch", "d", "version", "<init>", "(III)V", "(II)V", "e", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class d
  implements Comparable<d>
{
  public static final a e = new a(null);
  public static final d f = e.a();
  private final int a;
  private final int b;
  private final int c;
  private final int d;
  
  public d(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, 0);
  }
  
  public d(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = c(paramInt1, paramInt2, paramInt3);
  }
  
  private final int c(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 0;
    int j = i;
    if (new c(0, 255).m(paramInt1))
    {
      j = i;
      if (new c(0, 255).m(paramInt2))
      {
        j = i;
        if (new c(0, 255).m(paramInt3)) {
          j = 1;
        }
      }
    }
    if (j != 0) {
      return (paramInt1 << 16) + (paramInt2 << 8) + paramInt3;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Version components are out of range: ");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append('.');
    localStringBuilder.append(paramInt2);
    localStringBuilder.append('.');
    localStringBuilder.append(paramInt3);
    throw new IllegalArgumentException(localStringBuilder.toString().toString());
  }
  
  public int b(d paramd)
  {
    r.f(paramd, "other");
    return this.d - paramd.d;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof d)) {
      paramObject = (d)paramObject;
    } else {
      paramObject = null;
    }
    if (paramObject == null) {
      return false;
    }
    if (this.d != paramObject.d) {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    return this.d;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append('.');
    localStringBuilder.append(this.b);
    localStringBuilder.append('.');
    localStringBuilder.append(this.c);
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/d$a;", "", "Lkotlin/d;", "CURRENT", "Lkotlin/d;", "", "MAX_COMPONENT_VALUE", "I", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.d
 * JD-Core Version:    0.7.0.1
 */