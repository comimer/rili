package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import java.io.IOException;
import java.io.InputStream;
import n2.e;

public final class s
  implements e<InputStream, Bitmap>
{
  private final d a = new d();
  
  public com.bumptech.glide.load.engine.s<Bitmap> c(InputStream paramInputStream, int paramInt1, int paramInt2, n2.d paramd)
    throws IOException
  {
    paramInputStream = ImageDecoder.createSource(f3.a.b(paramInputStream));
    return this.a.d(paramInputStream, paramInt1, paramInt2, paramd);
  }
  
  public boolean d(InputStream paramInputStream, n2.d paramd)
    throws IOException
  {
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.s
 * JD-Core Version:    0.7.0.1
 */