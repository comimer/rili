package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.d;
import f3.j;
import f3.k;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import n2.b;

public final class w
  extends f
{
  private static final byte[] c = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(b.a);
  private final int b;
  
  public w(int paramInt)
  {
    boolean bool;
    if (paramInt > 0) {
      bool = true;
    } else {
      bool = false;
    }
    j.a(bool, "roundingRadius must be greater than 0.");
    this.b = paramInt;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(c);
    paramMessageDigest.update(ByteBuffer.allocate(4).putInt(this.b).array());
  }
  
  protected Bitmap c(d paramd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    return y.o(paramd, paramBitmap, this.b);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof w;
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      paramObject = (w)paramObject;
      bool3 = bool2;
      if (this.b == paramObject.b) {
        bool3 = true;
      }
    }
    return bool3;
  }
  
  public int hashCode()
  {
    return k.n(-569625254, k.m(this.b));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.w
 * JD-Core Version:    0.7.0.1
 */