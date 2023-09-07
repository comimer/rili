package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.o;
import com.bumptech.glide.load.engine.s;
import f3.j;

public final class t
  implements s<BitmapDrawable>, o
{
  private final Resources a;
  private final s<Bitmap> b;
  
  private t(Resources paramResources, s<Bitmap> params)
  {
    this.a = ((Resources)j.d(paramResources));
    this.b = ((s)j.d(params));
  }
  
  public static s<BitmapDrawable> f(Resources paramResources, s<Bitmap> params)
  {
    if (params == null) {
      return null;
    }
    return new t(paramResources, params);
  }
  
  public void a()
  {
    this.b.a();
  }
  
  public int b()
  {
    return this.b.b();
  }
  
  public void c()
  {
    s locals = this.b;
    if ((locals instanceof o)) {
      ((o)locals).c();
    }
  }
  
  public Class<BitmapDrawable> d()
  {
    return BitmapDrawable.class;
  }
  
  public BitmapDrawable e()
  {
    return new BitmapDrawable(this.a, (Bitmap)this.b.get());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.t
 * JD-Core Version:    0.7.0.1
 */