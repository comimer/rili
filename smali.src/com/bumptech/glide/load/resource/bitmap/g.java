package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.s;
import f3.a;
import java.io.IOException;
import java.nio.ByteBuffer;
import n2.d;
import n2.e;

public class g
  implements e<ByteBuffer, Bitmap>
{
  private final l a;
  
  public g(l paraml)
  {
    this.a = paraml;
  }
  
  public s<Bitmap> c(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, d paramd)
    throws IOException
  {
    paramByteBuffer = a.f(paramByteBuffer);
    return this.a.f(paramByteBuffer, paramInt1, paramInt2, paramd);
  }
  
  public boolean d(ByteBuffer paramByteBuffer, d paramd)
  {
    return this.a.q(paramByteBuffer);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.g
 * JD-Core Version:    0.7.0.1
 */