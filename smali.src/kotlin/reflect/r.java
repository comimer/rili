package kotlin.reflect;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/r;", "", "", "toString", "Lkotlin/reflect/KVariance;", "a", "Lkotlin/reflect/p;", "b", "", "hashCode", "other", "", "equals", "Lkotlin/reflect/KVariance;", "d", "()Lkotlin/reflect/KVariance;", "variance", "Lkotlin/reflect/p;", "c", "()Lkotlin/reflect/p;", "type", "<init>", "(Lkotlin/reflect/KVariance;Lkotlin/reflect/p;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class r
{
  public static final a c = new a(null);
  public static final r d = new r(null, null);
  private final KVariance a;
  private final p b;
  
  public r(KVariance paramKVariance, p paramp)
  {
    this.a = paramKVariance;
    this.b = paramp;
    int i = 1;
    int j;
    if (paramKVariance == null) {
      j = 1;
    } else {
      j = 0;
    }
    int k;
    if (paramp == null) {
      k = 1;
    } else {
      k = 0;
    }
    if (j == k) {
      j = i;
    } else {
      j = 0;
    }
    if (j == 0)
    {
      if (paramKVariance == null)
      {
        paramKVariance = "Star projection must have no type specified.";
      }
      else
      {
        paramp = new StringBuilder();
        paramp.append("The projection variance ");
        paramp.append(paramKVariance);
        paramp.append(" requires type to be specified.");
        paramKVariance = paramp.toString();
      }
      throw new IllegalArgumentException(paramKVariance.toString());
    }
  }
  
  public final KVariance a()
  {
    return this.a;
  }
  
  public final p b()
  {
    return this.b;
  }
  
  public final p c()
  {
    return this.b;
  }
  
  public final KVariance d()
  {
    return this.a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof r)) {
      return false;
    }
    paramObject = (r)paramObject;
    if (this.a != paramObject.a) {
      return false;
    }
    return kotlin.jvm.internal.r.a(this.b, paramObject.b);
  }
  
  public int hashCode()
  {
    Object localObject = this.a;
    int i = 0;
    int j;
    if (localObject == null) {
      j = 0;
    } else {
      j = localObject.hashCode();
    }
    localObject = this.b;
    if (localObject != null) {
      i = localObject.hashCode();
    }
    return j * 31 + i;
  }
  
  public String toString()
  {
    Object localObject = this.a;
    int i;
    if (localObject == null) {
      i = -1;
    } else {
      i = b.a[localObject.ordinal()];
    }
    if (i != -1)
    {
      if (i != 1)
      {
        if (i != 2)
        {
          if (i == 3)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("out ");
            ((StringBuilder)localObject).append(this.b);
            localObject = ((StringBuilder)localObject).toString();
          }
          else
          {
            throw new NoWhenBranchMatchedException();
          }
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("in ");
          ((StringBuilder)localObject).append(this.b);
          localObject = ((StringBuilder)localObject).toString();
        }
      }
      else {
        localObject = String.valueOf(this.b);
      }
    }
    else {
      localObject = "*";
    }
    return localObject;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/r$a;", "", "Lkotlin/reflect/p;", "type", "Lkotlin/reflect/r;", "d", "a", "b", "c", "()Lkotlin/reflect/r;", "STAR", "star", "Lkotlin/reflect/r;", "getStar$annotations", "()V", "<init>", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final r a(p paramp)
    {
      kotlin.jvm.internal.r.f(paramp, "type");
      return new r(KVariance.IN, paramp);
    }
    
    public final r b(p paramp)
    {
      kotlin.jvm.internal.r.f(paramp, "type");
      return new r(KVariance.OUT, paramp);
    }
    
    public final r c()
    {
      return r.d;
    }
    
    public final r d(p paramp)
    {
      kotlin.jvm.internal.r.f(paramp, "type");
      return new r(KVariance.INVARIANT, paramp);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.r
 * JD-Core Version:    0.7.0.1
 */