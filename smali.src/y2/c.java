package y2;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.s;

public final class c
  implements e<Drawable, byte[]>
{
  private final com.bumptech.glide.load.engine.bitmap_recycle.d a;
  private final e<Bitmap, byte[]> b;
  private final e<x2.c, byte[]> c;
  
  public c(com.bumptech.glide.load.engine.bitmap_recycle.d paramd, e<Bitmap, byte[]> parame, e<x2.c, byte[]> parame1)
  {
    this.a = paramd;
    this.b = parame;
    this.c = parame1;
  }
  
  private static s<x2.c> b(s<Drawable> params)
  {
    return params;
  }
  
  public s<byte[]> a(s<Drawable> params, n2.d paramd)
  {
    Drawable localDrawable = (Drawable)params.get();
    if ((localDrawable instanceof BitmapDrawable)) {
      return this.b.a(com.bumptech.glide.load.resource.bitmap.e.f(((BitmapDrawable)localDrawable).getBitmap(), this.a), paramd);
    }
    if ((localDrawable instanceof x2.c)) {
      return this.c.a(b(params), paramd);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y2.c
 * JD-Core Version:    0.7.0.1
 */