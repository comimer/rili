package com.bumptech.glide.load;

import com.bumptech.glide.load.engine.bitmap_recycle.b;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public abstract interface ImageHeaderParser
{
  public abstract ImageType a(ByteBuffer paramByteBuffer)
    throws IOException;
  
  public abstract ImageType b(InputStream paramInputStream)
    throws IOException;
  
  public abstract int c(InputStream paramInputStream, b paramb)
    throws IOException;
  
  public static enum ImageType
  {
    private final boolean hasAlpha;
    
    static
    {
      ImageType localImageType1 = new ImageType("GIF", 0, true);
      GIF = localImageType1;
      ImageType localImageType2 = new ImageType("JPEG", 1, false);
      JPEG = localImageType2;
      ImageType localImageType3 = new ImageType("RAW", 2, false);
      RAW = localImageType3;
      ImageType localImageType4 = new ImageType("PNG_A", 3, true);
      PNG_A = localImageType4;
      ImageType localImageType5 = new ImageType("PNG", 4, false);
      PNG = localImageType5;
      ImageType localImageType6 = new ImageType("WEBP_A", 5, true);
      WEBP_A = localImageType6;
      ImageType localImageType7 = new ImageType("WEBP", 6, false);
      WEBP = localImageType7;
      ImageType localImageType8 = new ImageType("UNKNOWN", 7, false);
      UNKNOWN = localImageType8;
      $VALUES = new ImageType[] { localImageType1, localImageType2, localImageType3, localImageType4, localImageType5, localImageType6, localImageType7, localImageType8 };
    }
    
    private ImageType(boolean paramBoolean)
    {
      this.hasAlpha = paramBoolean;
    }
    
    public boolean hasAlpha()
    {
      return this.hasAlpha;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.ImageHeaderParser
 * JD-Core Version:    0.7.0.1
 */