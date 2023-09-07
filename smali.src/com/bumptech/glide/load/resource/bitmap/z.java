package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.s;
import f3.k;
import n2.d;
import n2.e;

public final class z
  implements e<Bitmap, Bitmap>
{
  public s<Bitmap> c(Bitmap paramBitmap, int paramInt1, int paramInt2, d paramd)
  {
    return new a(paramBitmap);
  }
  
  public boolean d(Bitmap paramBitmap, d paramd)
  {
    return true;
  }
  
  private static final class a
    implements s<Bitmap>
  {
    private final Bitmap a;
    
    a(Bitmap paramBitmap)
    {
      this.a = paramBitmap;
    }
    
    public void a() {}
    
    public int b()
    {
      return k.g(this.a);
    }
    
    public Bitmap c()
    {
      return this.a;
    }
    
    public Class<Bitmap> d()
    {
      return Bitmap.class;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.z
 * JD-Core Version:    0.7.0.1
 */