package androidx.core.graphics;

import android.graphics.Insets;
import android.graphics.Rect;

public final class d
{
  public static final d e = new d(0, 0, 0, 0);
  public final int a;
  public final int b;
  public final int c;
  public final int d;
  
  private d(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = paramInt4;
  }
  
  public static d a(d paramd1, d paramd2)
  {
    return b(Math.max(paramd1.a, paramd2.a), Math.max(paramd1.b, paramd2.b), Math.max(paramd1.c, paramd2.c), Math.max(paramd1.d, paramd2.d));
  }
  
  public static d b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt1 == 0) && (paramInt2 == 0) && (paramInt3 == 0) && (paramInt4 == 0)) {
      return e;
    }
    return new d(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static d c(Rect paramRect)
  {
    return b(paramRect.left, paramRect.top, paramRect.right, paramRect.bottom);
  }
  
  public static d d(Insets paramInsets)
  {
    return b(paramInsets.left, paramInsets.top, paramInsets.right, paramInsets.bottom);
  }
  
  public Insets e()
  {
    return a.a(this.a, this.b, this.c, this.d);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (d.class == paramObject.getClass()))
    {
      paramObject = (d)paramObject;
      if (this.d != paramObject.d) {
        return false;
      }
      if (this.a != paramObject.a) {
        return false;
      }
      if (this.c != paramObject.c) {
        return false;
      }
      return this.b == paramObject.b;
    }
    return false;
  }
  
  public int hashCode()
  {
    return ((this.a * 31 + this.b) * 31 + this.c) * 31 + this.d;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Insets{left=");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", top=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", right=");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", bottom=");
    localStringBuilder.append(this.d);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  static class a
  {
    static Insets a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return Insets.of(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.d
 * JD-Core Version:    0.7.0.1
 */