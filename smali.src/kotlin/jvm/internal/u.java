package kotlin.jvm.internal;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/u;", "Lkotlin/jvm/internal/l;", "", "other", "", "equals", "", "hashCode", "", "toString", "Ljava/lang/Class;", "a", "Ljava/lang/Class;", "d", "()Ljava/lang/Class;", "jClass", "b", "Ljava/lang/String;", "moduleName", "<init>", "(Ljava/lang/Class;Ljava/lang/String;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class u
  implements l
{
  private final Class<?> a;
  private final String b;
  
  public u(Class<?> paramClass, String paramString)
  {
    this.a = paramClass;
    this.b = paramString;
  }
  
  public Class<?> d()
  {
    return this.a;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (((paramObject instanceof u)) && (r.a(d(), ((u)paramObject).d()))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    return d().hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(d().toString());
    localStringBuilder.append(" (Kotlin reflection is not available)");
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.u
 * JD-Core Version:    0.7.0.1
 */