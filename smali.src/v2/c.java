package v2;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.s;

final class c
  extends b<Drawable>
{
  private c(Drawable paramDrawable)
  {
    super(paramDrawable);
  }
  
  static s<Drawable> f(Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      paramDrawable = new c(paramDrawable);
    } else {
      paramDrawable = null;
    }
    return paramDrawable;
  }
  
  public void a() {}
  
  public int b()
  {
    return Math.max(1, this.a.getIntrinsicWidth() * this.a.getIntrinsicHeight() * 4);
  }
  
  public Class<Drawable> d()
  {
    return this.a.getClass();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v2.c
 * JD-Core Version:    0.7.0.1
 */