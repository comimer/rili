package com.bumptech.glide.load.resource.bitmap;

import c0.a;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.engine.bitmap_recycle.b;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class o
  implements ImageHeaderParser
{
  public ImageHeaderParser.ImageType a(ByteBuffer paramByteBuffer)
  {
    return ImageHeaderParser.ImageType.UNKNOWN;
  }
  
  public ImageHeaderParser.ImageType b(InputStream paramInputStream)
  {
    return ImageHeaderParser.ImageType.UNKNOWN;
  }
  
  public int c(InputStream paramInputStream, b paramb)
    throws IOException
  {
    int i = new a(paramInputStream).e("Orientation", 1);
    int j = i;
    if (i == 0) {
      j = -1;
    }
    return j;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.o
 * JD-Core Version:    0.7.0.1
 */