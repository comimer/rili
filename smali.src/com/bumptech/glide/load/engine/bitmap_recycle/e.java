package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

public class e
  implements d
{
  public void a(int paramInt) {}
  
  public void b() {}
  
  public void c(Bitmap paramBitmap)
  {
    paramBitmap.recycle();
  }
  
  public Bitmap d(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return Bitmap.createBitmap(paramInt1, paramInt2, paramConfig);
  }
  
  public Bitmap e(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return d(paramInt1, paramInt2, paramConfig);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.e
 * JD-Core Version:    0.7.0.1
 */