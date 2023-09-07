package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.data.k;
import com.bumptech.glide.load.engine.bitmap_recycle.b;
import f3.j;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

abstract interface r
{
  public abstract int a()
    throws IOException;
  
  public abstract Bitmap b(BitmapFactory.Options paramOptions)
    throws IOException;
  
  public abstract void c();
  
  public abstract ImageHeaderParser.ImageType d()
    throws IOException;
  
  public static final class a
    implements r
  {
    private final k a;
    private final b b;
    private final List<ImageHeaderParser> c;
    
    a(InputStream paramInputStream, List<ImageHeaderParser> paramList, b paramb)
    {
      this.b = ((b)j.d(paramb));
      this.c = ((List)j.d(paramList));
      this.a = new k(paramInputStream, paramb);
    }
    
    public int a()
      throws IOException
    {
      return a.b(this.c, this.a.d(), this.b);
    }
    
    public Bitmap b(BitmapFactory.Options paramOptions)
      throws IOException
    {
      return BitmapFactory.decodeStream(this.a.d(), null, paramOptions);
    }
    
    public void c()
    {
      this.a.c();
    }
    
    public ImageHeaderParser.ImageType d()
      throws IOException
    {
      return a.e(this.c, this.a.d(), this.b);
    }
  }
  
  public static final class b
    implements r
  {
    private final b a;
    private final List<ImageHeaderParser> b;
    private final ParcelFileDescriptorRewinder c;
    
    b(ParcelFileDescriptor paramParcelFileDescriptor, List<ImageHeaderParser> paramList, b paramb)
    {
      this.a = ((b)j.d(paramb));
      this.b = ((List)j.d(paramList));
      this.c = new ParcelFileDescriptorRewinder(paramParcelFileDescriptor);
    }
    
    public int a()
      throws IOException
    {
      return a.a(this.b, this.c, this.a);
    }
    
    public Bitmap b(BitmapFactory.Options paramOptions)
      throws IOException
    {
      return BitmapFactory.decodeFileDescriptor(this.c.d().getFileDescriptor(), null, paramOptions);
    }
    
    public void c() {}
    
    public ImageHeaderParser.ImageType d()
      throws IOException
    {
      return a.d(this.b, this.c, this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.r
 * JD-Core Version:    0.7.0.1
 */