package b8;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lb8/c;", "Lb8/a;", "", "", "value", "", "m", "isEmpty", "other", "equals", "hashCode", "", "toString", "o", "()Ljava/lang/Integer;", "start", "n", "endInclusive", "<init>", "(II)V", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class c
  extends a
{
  public static final a e = new a(null);
  private static final c f = new c(1, 0);
  
  public c(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2, 1);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof c)) {
      if ((!isEmpty()) || (!((c)paramObject).isEmpty()))
      {
        int i = c();
        paramObject = (c)paramObject;
        if ((i != paramObject.c()) || (h() != paramObject.h())) {}
      }
      else
      {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public int hashCode()
  {
    int i;
    if (isEmpty()) {
      i = -1;
    } else {
      i = c() * 31 + h();
    }
    return i;
  }
  
  public boolean isEmpty()
  {
    boolean bool;
    if (c() > h()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean m(int paramInt)
  {
    boolean bool;
    if ((c() <= paramInt) && (paramInt <= h())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Integer n()
  {
    return Integer.valueOf(h());
  }
  
  public Integer o()
  {
    return Integer.valueOf(c());
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(c());
    localStringBuilder.append("..");
    localStringBuilder.append(h());
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lb8/c$a;", "", "Lb8/c;", "EMPTY", "Lb8/c;", "a", "()Lb8/c;", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final c a()
    {
      return c.l();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b8.c
 * JD-Core Version:    0.7.0.1
 */