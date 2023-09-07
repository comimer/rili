package b8;

import kotlin.Metadata;
import kotlin.collections.j0;
import s7.c;

@Metadata(bv={}, d1={""}, d2={"Lb8/a;", "", "", "Lkotlin/collections/j0;", "k", "", "isEmpty", "", "other", "equals", "hashCode", "", "toString", "first", "I", "c", "()I", "last", "h", "step", "j", "start", "endInclusive", "<init>", "(III)V", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public class a
  implements Iterable<Integer>, x7.a
{
  public static final a d = new a(null);
  private final int a;
  private final int b;
  private final int c;
  
  public a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 != 0)
    {
      if (paramInt3 != -2147483648)
      {
        this.a = paramInt1;
        this.b = c.c(paramInt1, paramInt2, paramInt3);
        this.c = paramInt3;
        return;
      }
      throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
    }
    throw new IllegalArgumentException("Step must be non-zero.");
  }
  
  public final int c()
  {
    return this.a;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof a)) {
      if ((!isEmpty()) || (!((a)paramObject).isEmpty()))
      {
        int i = this.a;
        paramObject = (a)paramObject;
        if ((i != paramObject.a) || (this.b != paramObject.b) || (this.c != paramObject.c)) {}
      }
      else
      {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public final int h()
  {
    return this.b;
  }
  
  public int hashCode()
  {
    int i;
    if (isEmpty()) {
      i = -1;
    } else {
      i = (this.a * 31 + this.b) * 31 + this.c;
    }
    return i;
  }
  
  public boolean isEmpty()
  {
    int i = this.c;
    boolean bool = true;
    if (i > 0 ? this.a <= this.b : this.a >= this.b) {
      bool = false;
    }
    return bool;
  }
  
  public final int j()
  {
    return this.c;
  }
  
  public j0 k()
  {
    return new b(this.a, this.b, this.c);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder;
    int i;
    if (this.c > 0)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a);
      localStringBuilder.append("..");
      localStringBuilder.append(this.b);
      localStringBuilder.append(" step ");
      i = this.c;
    }
    else
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a);
      localStringBuilder.append(" downTo ");
      localStringBuilder.append(this.b);
      localStringBuilder.append(" step ");
      i = -this.c;
    }
    localStringBuilder.append(i);
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lb8/a$a;", "", "", "rangeStart", "rangeEnd", "step", "Lb8/a;", "a", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final a a(int paramInt1, int paramInt2, int paramInt3)
    {
      return new a(paramInt1, paramInt2, paramInt3);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b8.a
 * JD-Core Version:    0.7.0.1
 */