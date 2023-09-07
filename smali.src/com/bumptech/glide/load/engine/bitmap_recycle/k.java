package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

abstract interface k
{
  public abstract String a(int paramInt1, int paramInt2, Bitmap.Config paramConfig);
  
  public abstract int b(Bitmap paramBitmap);
  
  public abstract void c(Bitmap paramBitmap);
  
  public abstract Bitmap d(int paramInt1, int paramInt2, Bitmap.Config paramConfig);
  
  public abstract String e(Bitmap paramBitmap);
  
  public abstract Bitmap removeLast();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.k
 * JD-Core Version:    0.7.0.1
 */