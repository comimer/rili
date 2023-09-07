package x2;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.s;
import m2.a;

public final class h
  implements n2.e<a, Bitmap>
{
  private final com.bumptech.glide.load.engine.bitmap_recycle.d a;
  
  public h(com.bumptech.glide.load.engine.bitmap_recycle.d paramd)
  {
    this.a = paramd;
  }
  
  public s<Bitmap> c(a parama, int paramInt1, int paramInt2, n2.d paramd)
  {
    return com.bumptech.glide.load.resource.bitmap.e.f(parama.a(), this.a);
  }
  
  public boolean d(a parama, n2.d paramd)
  {
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x2.h
 * JD-Core Version:    0.7.0.1
 */