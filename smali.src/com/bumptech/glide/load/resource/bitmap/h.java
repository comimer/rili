package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import com.bumptech.glide.load.engine.s;
import java.io.IOException;
import java.nio.ByteBuffer;
import n2.e;
import t2.a;

public final class h
  implements e<ByteBuffer, Bitmap>
{
  private final d a = new d();
  
  public s<Bitmap> c(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, n2.d paramd)
    throws IOException
  {
    paramByteBuffer = ImageDecoder.createSource(paramByteBuffer);
    return this.a.d(paramByteBuffer, paramInt1, paramInt2, paramd);
  }
  
  public boolean d(ByteBuffer paramByteBuffer, n2.d paramd)
    throws IOException
  {
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.h
 * JD-Core Version:    0.7.0.1
 */