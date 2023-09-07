package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.d;
import java.security.MessageDigest;
import n2.b;

public class i
  extends f
{
  private static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(b.a);
  
  public void a(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(b);
  }
  
  protected Bitmap c(d paramd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    return y.b(paramd, paramBitmap, paramInt1, paramInt2);
  }
  
  public boolean equals(Object paramObject)
  {
    return paramObject instanceof i;
  }
  
  public int hashCode()
  {
    return -599754482;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.i
 * JD-Core Version:    0.7.0.1
 */