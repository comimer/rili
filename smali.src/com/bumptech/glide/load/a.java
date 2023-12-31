package com.bumptech.glide.load;

import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.b;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

public final class a
{
  public static int a(List<ImageHeaderParser> paramList, ParcelFileDescriptorRewinder paramParcelFileDescriptorRewinder, final b paramb)
    throws IOException
  {
    return c(paramList, new e(paramParcelFileDescriptorRewinder, paramb));
  }
  
  public static int b(List<ImageHeaderParser> paramList, InputStream paramInputStream, final b paramb)
    throws IOException
  {
    if (paramInputStream == null) {
      return -1;
    }
    Object localObject = paramInputStream;
    if (!paramInputStream.markSupported()) {
      localObject = new RecyclableBufferedInputStream(paramInputStream, paramb);
    }
    ((InputStream)localObject).mark(5242880);
    return c(paramList, new d((InputStream)localObject, paramb));
  }
  
  private static int c(List<ImageHeaderParser> paramList, f paramf)
    throws IOException
  {
    int i = paramList.size();
    for (int j = 0; j < i; j++)
    {
      int k = paramf.a((ImageHeaderParser)paramList.get(j));
      if (k != -1) {
        return k;
      }
    }
    return -1;
  }
  
  public static ImageHeaderParser.ImageType d(List<ImageHeaderParser> paramList, ParcelFileDescriptorRewinder paramParcelFileDescriptorRewinder, final b paramb)
    throws IOException
  {
    return g(paramList, new c(paramParcelFileDescriptorRewinder, paramb));
  }
  
  public static ImageHeaderParser.ImageType e(List<ImageHeaderParser> paramList, InputStream paramInputStream, b paramb)
    throws IOException
  {
    if (paramInputStream == null) {
      return ImageHeaderParser.ImageType.UNKNOWN;
    }
    Object localObject = paramInputStream;
    if (!paramInputStream.markSupported()) {
      localObject = new RecyclableBufferedInputStream(paramInputStream, paramb);
    }
    ((InputStream)localObject).mark(5242880);
    return g(paramList, new a((InputStream)localObject));
  }
  
  public static ImageHeaderParser.ImageType f(List<ImageHeaderParser> paramList, ByteBuffer paramByteBuffer)
    throws IOException
  {
    if (paramByteBuffer == null) {
      return ImageHeaderParser.ImageType.UNKNOWN;
    }
    return g(paramList, new b(paramByteBuffer));
  }
  
  private static ImageHeaderParser.ImageType g(List<ImageHeaderParser> paramList, g paramg)
    throws IOException
  {
    int i = paramList.size();
    for (int j = 0; j < i; j++)
    {
      ImageHeaderParser.ImageType localImageType = paramg.a((ImageHeaderParser)paramList.get(j));
      if (localImageType != ImageHeaderParser.ImageType.UNKNOWN) {
        return localImageType;
      }
    }
    return ImageHeaderParser.ImageType.UNKNOWN;
  }
  
  class a
    implements a.g
  {
    a() {}
    
    public ImageHeaderParser.ImageType a(ImageHeaderParser paramImageHeaderParser)
      throws IOException
    {
      try
      {
        paramImageHeaderParser = paramImageHeaderParser.b(a.this);
        return paramImageHeaderParser;
      }
      finally
      {
        a.this.reset();
      }
    }
  }
  
  class b
    implements a.g
  {
    b() {}
    
    public ImageHeaderParser.ImageType a(ImageHeaderParser paramImageHeaderParser)
      throws IOException
    {
      return paramImageHeaderParser.a(a.this);
    }
  }
  
  class c
    implements a.g
  {
    c(b paramb) {}
    
    /* Error */
    public ImageHeaderParser.ImageType a(ImageHeaderParser paramImageHeaderParser)
      throws IOException
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: new 30	com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream
      //   5: astore_3
      //   6: new 32	java/io/FileInputStream
      //   9: astore 4
      //   11: aload 4
      //   13: aload_0
      //   14: getfield 19	com/bumptech/glide/load/a$c:a	Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;
      //   17: invokevirtual 37	com/bumptech/glide/load/data/ParcelFileDescriptorRewinder:d	()Landroid/os/ParcelFileDescriptor;
      //   20: invokevirtual 43	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
      //   23: invokespecial 46	java/io/FileInputStream:<init>	(Ljava/io/FileDescriptor;)V
      //   26: aload_3
      //   27: aload 4
      //   29: aload_0
      //   30: getfield 21	com/bumptech/glide/load/a$c:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
      //   33: invokespecial 49	com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream:<init>	(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V
      //   36: aload_1
      //   37: aload_3
      //   38: invokeinterface 54 2 0
      //   43: astore_1
      //   44: aload_3
      //   45: invokevirtual 59	java/io/InputStream:close	()V
      //   48: aload_0
      //   49: getfield 19	com/bumptech/glide/load/a$c:a	Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;
      //   52: invokevirtual 37	com/bumptech/glide/load/data/ParcelFileDescriptorRewinder:d	()Landroid/os/ParcelFileDescriptor;
      //   55: pop
      //   56: aload_1
      //   57: areturn
      //   58: astore_1
      //   59: aload_3
      //   60: astore_2
      //   61: goto +4 -> 65
      //   64: astore_1
      //   65: aload_2
      //   66: ifnull +7 -> 73
      //   69: aload_2
      //   70: invokevirtual 59	java/io/InputStream:close	()V
      //   73: aload_0
      //   74: getfield 19	com/bumptech/glide/load/a$c:a	Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;
      //   77: invokevirtual 37	com/bumptech/glide/load/data/ParcelFileDescriptorRewinder:d	()Landroid/os/ParcelFileDescriptor;
      //   80: pop
      //   81: aload_1
      //   82: athrow
      //   83: astore_2
      //   84: goto -36 -> 48
      //   87: astore_2
      //   88: goto -15 -> 73
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	91	0	this	c
      //   0	91	1	paramImageHeaderParser	ImageHeaderParser
      //   1	69	2	localObject	Object
      //   83	1	2	localIOException1	IOException
      //   87	1	2	localIOException2	IOException
      //   5	55	3	localRecyclableBufferedInputStream	RecyclableBufferedInputStream
      //   9	19	4	localFileInputStream	java.io.FileInputStream
      // Exception table:
      //   from	to	target	type
      //   36	44	58	finally
      //   2	36	64	finally
      //   44	48	83	java/io/IOException
      //   69	73	87	java/io/IOException
    }
  }
  
  class d
    implements a.f
  {
    d(b paramb) {}
    
    public int a(ImageHeaderParser paramImageHeaderParser)
      throws IOException
    {
      try
      {
        int i = paramImageHeaderParser.c(a.this, paramb);
        return i;
      }
      finally
      {
        a.this.reset();
      }
    }
  }
  
  class e
    implements a.f
  {
    e(b paramb) {}
    
    /* Error */
    public int a(ImageHeaderParser paramImageHeaderParser)
      throws IOException
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: new 29	com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream
      //   5: astore_3
      //   6: new 31	java/io/FileInputStream
      //   9: astore 4
      //   11: aload 4
      //   13: aload_0
      //   14: getfield 18	com/bumptech/glide/load/a$e:a	Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;
      //   17: invokevirtual 37	com/bumptech/glide/load/data/ParcelFileDescriptorRewinder:d	()Landroid/os/ParcelFileDescriptor;
      //   20: invokevirtual 43	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
      //   23: invokespecial 46	java/io/FileInputStream:<init>	(Ljava/io/FileDescriptor;)V
      //   26: aload_3
      //   27: aload 4
      //   29: aload_0
      //   30: getfield 20	com/bumptech/glide/load/a$e:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
      //   33: invokespecial 49	com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream:<init>	(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V
      //   36: aload_1
      //   37: aload_3
      //   38: aload_0
      //   39: getfield 20	com/bumptech/glide/load/a$e:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
      //   42: invokeinterface 55 3 0
      //   47: istore 5
      //   49: aload_3
      //   50: invokevirtual 60	java/io/InputStream:close	()V
      //   53: aload_0
      //   54: getfield 18	com/bumptech/glide/load/a$e:a	Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;
      //   57: invokevirtual 37	com/bumptech/glide/load/data/ParcelFileDescriptorRewinder:d	()Landroid/os/ParcelFileDescriptor;
      //   60: pop
      //   61: iload 5
      //   63: ireturn
      //   64: astore_1
      //   65: aload_3
      //   66: astore_2
      //   67: goto +4 -> 71
      //   70: astore_1
      //   71: aload_2
      //   72: ifnull +7 -> 79
      //   75: aload_2
      //   76: invokevirtual 60	java/io/InputStream:close	()V
      //   79: aload_0
      //   80: getfield 18	com/bumptech/glide/load/a$e:a	Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;
      //   83: invokevirtual 37	com/bumptech/glide/load/data/ParcelFileDescriptorRewinder:d	()Landroid/os/ParcelFileDescriptor;
      //   86: pop
      //   87: aload_1
      //   88: athrow
      //   89: astore_1
      //   90: goto -37 -> 53
      //   93: astore_2
      //   94: goto -15 -> 79
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	97	0	this	e
      //   0	97	1	paramImageHeaderParser	ImageHeaderParser
      //   1	75	2	localObject	Object
      //   93	1	2	localIOException	IOException
      //   5	61	3	localRecyclableBufferedInputStream	RecyclableBufferedInputStream
      //   9	19	4	localFileInputStream	java.io.FileInputStream
      //   47	15	5	i	int
      // Exception table:
      //   from	to	target	type
      //   36	49	64	finally
      //   2	36	70	finally
      //   49	53	89	java/io/IOException
      //   75	79	93	java/io/IOException
    }
  }
  
  private static abstract interface f
  {
    public abstract int a(ImageHeaderParser paramImageHeaderParser)
      throws IOException;
  }
  
  private static abstract interface g
  {
    public abstract ImageHeaderParser.ImageType a(ImageHeaderParser paramImageHeaderParser)
      throws IOException;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.a
 * JD-Core Version:    0.7.0.1
 */