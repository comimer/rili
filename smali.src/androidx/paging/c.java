package androidx.paging;

import java.util.Collections;
import java.util.List;

class c<T>
{
  private static final c e = new c(Collections.emptyList(), 0);
  private static final c f = new c(Collections.emptyList(), 0);
  public final List<T> a;
  public final int b;
  public final int c;
  public final int d;
  
  c(List<T> paramList, int paramInt)
  {
    this.a = paramList;
    this.b = 0;
    this.c = 0;
    this.d = paramInt;
  }
  
  c(List<T> paramList, int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramList;
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramInt3;
  }
  
  static <T> c<T> a()
  {
    return f;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Result ");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", ");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", offset ");
    localStringBuilder.append(this.d);
    return localStringBuilder.toString();
  }
  
  static abstract class a<T> {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.paging.c
 * JD-Core Version:    0.7.0.1
 */