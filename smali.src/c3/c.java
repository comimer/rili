package c3;

import android.graphics.drawable.Drawable;
import f3.k;

public abstract class c<T>
  implements h<T>
{
  private final int a;
  private final int b;
  private com.bumptech.glide.request.c c;
  
  public c()
  {
    this(-2147483648, -2147483648);
  }
  
  public c(int paramInt1, int paramInt2)
  {
    if (k.t(paramInt1, paramInt2))
    {
      this.a = paramInt1;
      this.b = paramInt2;
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: ");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append(" and height: ");
    localStringBuilder.append(paramInt2);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public void a() {}
  
  public void b() {}
  
  public final void c(g paramg)
  {
    paramg.e(this.a, this.b);
  }
  
  public final void d(com.bumptech.glide.request.c paramc)
  {
    this.c = paramc;
  }
  
  public final void f(g paramg) {}
  
  public void g(Drawable paramDrawable) {}
  
  public void h(Drawable paramDrawable) {}
  
  public final com.bumptech.glide.request.c i()
  {
    return this.c;
  }
  
  public void onDestroy() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c3.c
 * JD-Core Version:    0.7.0.1
 */