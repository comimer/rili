package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.d;
import com.bumptech.glide.load.engine.o;
import com.bumptech.glide.load.engine.s;
import f3.j;
import f3.k;

public class e
  implements s<Bitmap>, o
{
  private final Bitmap a;
  private final d b;
  
  public e(Bitmap paramBitmap, d paramd)
  {
    this.a = ((Bitmap)j.e(paramBitmap, "Bitmap must not be null"));
    this.b = ((d)j.e(paramd, "BitmapPool must not be null"));
  }
  
  public static e f(Bitmap paramBitmap, d paramd)
  {
    if (paramBitmap == null) {
      return null;
    }
    return new e(paramBitmap, paramd);
  }
  
  public void a()
  {
    this.b.c(this.a);
  }
  
  public int b()
  {
    return k.g(this.a);
  }
  
  public void c()
  {
    this.a.prepareToDraw();
  }
  
  public Class<Bitmap> d()
  {
    return Bitmap.class;
  }
  
  public Bitmap e()
  {
    return this.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.e
 * JD-Core Version:    0.7.0.1
 */