package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.engine.s;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import n2.c;
import n2.c.b;

public class VideoDecoder<T>
  implements n2.e<T, Bitmap>
{
  public static final c<Long> d = c.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", Long.valueOf(-1L), new a());
  public static final c<Integer> e = c.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", Integer.valueOf(2), new b());
  private static final e f = new e();
  private final f<T> a;
  private final com.bumptech.glide.load.engine.bitmap_recycle.d b;
  private final e c;
  
  VideoDecoder(com.bumptech.glide.load.engine.bitmap_recycle.d paramd, f<T> paramf)
  {
    this(paramd, paramf, f);
  }
  
  VideoDecoder(com.bumptech.glide.load.engine.bitmap_recycle.d paramd, f<T> paramf, e parame)
  {
    this.b = paramd;
    this.a = paramf;
    this.c = parame;
  }
  
  public static n2.e<AssetFileDescriptor, Bitmap> c(com.bumptech.glide.load.engine.bitmap_recycle.d paramd)
  {
    return new VideoDecoder(paramd, new c(null));
  }
  
  public static n2.e<ByteBuffer, Bitmap> d(com.bumptech.glide.load.engine.bitmap_recycle.d paramd)
  {
    return new VideoDecoder(paramd, new d());
  }
  
  private static Bitmap e(MediaMetadataRetriever paramMediaMetadataRetriever, long paramLong, int paramInt1, int paramInt2, int paramInt3, DownsampleStrategy paramDownsampleStrategy)
  {
    if ((Build.VERSION.SDK_INT >= 27) && (paramInt2 != -2147483648) && (paramInt3 != -2147483648) && (paramDownsampleStrategy != DownsampleStrategy.f)) {
      paramDownsampleStrategy = g(paramMediaMetadataRetriever, paramLong, paramInt1, paramInt2, paramInt3, paramDownsampleStrategy);
    } else {
      paramDownsampleStrategy = null;
    }
    Object localObject = paramDownsampleStrategy;
    if (paramDownsampleStrategy == null) {
      localObject = f(paramMediaMetadataRetriever, paramLong, paramInt1);
    }
    if (localObject != null) {
      return localObject;
    }
    throw new VideoDecoderException();
  }
  
  private static Bitmap f(MediaMetadataRetriever paramMediaMetadataRetriever, long paramLong, int paramInt)
  {
    return paramMediaMetadataRetriever.getFrameAtTime(paramLong, paramInt);
  }
  
  @TargetApi(27)
  private static Bitmap g(MediaMetadataRetriever paramMediaMetadataRetriever, long paramLong, int paramInt1, int paramInt2, int paramInt3, DownsampleStrategy paramDownsampleStrategy)
  {
    try
    {
      int i = Integer.parseInt(paramMediaMetadataRetriever.extractMetadata(18));
      int j = Integer.parseInt(paramMediaMetadataRetriever.extractMetadata(19));
      int k = Integer.parseInt(paramMediaMetadataRetriever.extractMetadata(24));
      int m;
      int n;
      if (k != 90)
      {
        m = i;
        n = j;
        if (k != 270) {}
      }
      else
      {
        n = i;
        m = j;
      }
      float f1 = paramDownsampleStrategy.b(m, n, paramInt2, paramInt3);
      paramMediaMetadataRetriever = a0.a(paramMediaMetadataRetriever, paramLong, paramInt1, Math.round(m * f1), Math.round(f1 * n));
      return paramMediaMetadataRetriever;
    }
    finally
    {
      if (Log.isLoggable("VideoDecoder", 3)) {
        Log.d("VideoDecoder", "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame", paramMediaMetadataRetriever);
      }
    }
    return null;
  }
  
  public static n2.e<ParcelFileDescriptor, Bitmap> h(com.bumptech.glide.load.engine.bitmap_recycle.d paramd)
  {
    return new VideoDecoder(paramd, new g());
  }
  
  public boolean a(T paramT, n2.d paramd)
  {
    return true;
  }
  
  public s<Bitmap> b(T paramT, int paramInt1, int paramInt2, n2.d paramd)
    throws IOException
  {
    long l = ((Long)paramd.c(d)).longValue();
    if ((l < 0L) && (l != -1L))
    {
      paramT = new StringBuilder();
      paramT.append("Requested frame must be non-negative, or DEFAULT_FRAME, given: ");
      paramT.append(l);
      throw new IllegalArgumentException(paramT.toString());
    }
    Object localObject1 = (Integer)paramd.c(e);
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = Integer.valueOf(2);
    }
    localObject1 = (DownsampleStrategy)paramd.c(DownsampleStrategy.h);
    paramd = (n2.d)localObject1;
    if (localObject1 == null) {
      paramd = DownsampleStrategy.g;
    }
    localObject1 = this.c.a();
    try
    {
      this.a.a((MediaMetadataRetriever)localObject1, paramT);
      paramT = e((MediaMetadataRetriever)localObject1, l, ((Integer)localObject2).intValue(), paramInt1, paramInt2, paramd);
      return e.f(paramT, this.b);
    }
    finally
    {
      ((MediaMetadataRetriever)localObject1).release();
    }
  }
  
  private static final class VideoDecoderException
    extends RuntimeException
  {
    private static final long serialVersionUID = -2556382523004027815L;
    
    VideoDecoderException()
    {
      super();
    }
  }
  
  class a
    implements c.b<Long>
  {
    private final ByteBuffer a = ByteBuffer.allocate(8);
    
    public void b(byte[] arg1, Long paramLong, MessageDigest paramMessageDigest)
    {
      paramMessageDigest.update(???);
      synchronized (this.a)
      {
        this.a.position(0);
        paramMessageDigest.update(this.a.putLong(paramLong.longValue()).array());
        return;
      }
    }
  }
  
  class b
    implements c.b<Integer>
  {
    private final ByteBuffer a = ByteBuffer.allocate(4);
    
    public void b(byte[] arg1, Integer paramInteger, MessageDigest paramMessageDigest)
    {
      if (paramInteger == null) {
        return;
      }
      paramMessageDigest.update(???);
      synchronized (this.a)
      {
        this.a.position(0);
        paramMessageDigest.update(this.a.putInt(paramInteger.intValue()).array());
        return;
      }
    }
  }
  
  private static final class c
    implements VideoDecoder.f<AssetFileDescriptor>
  {
    public void b(MediaMetadataRetriever paramMediaMetadataRetriever, AssetFileDescriptor paramAssetFileDescriptor)
    {
      paramMediaMetadataRetriever.setDataSource(paramAssetFileDescriptor.getFileDescriptor(), paramAssetFileDescriptor.getStartOffset(), paramAssetFileDescriptor.getLength());
    }
  }
  
  static final class d
    implements VideoDecoder.f<ByteBuffer>
  {
    public void b(MediaMetadataRetriever paramMediaMetadataRetriever, final ByteBuffer paramByteBuffer)
    {
      paramMediaMetadataRetriever.setDataSource(new a(paramByteBuffer));
    }
    
    class a
      extends MediaDataSource
    {
      a(ByteBuffer paramByteBuffer) {}
      
      public void close() {}
      
      public long getSize()
      {
        return paramByteBuffer.limit();
      }
      
      public int readAt(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      {
        if (paramLong >= paramByteBuffer.limit()) {
          return -1;
        }
        paramByteBuffer.position((int)paramLong);
        paramInt2 = Math.min(paramInt2, paramByteBuffer.remaining());
        paramByteBuffer.get(paramArrayOfByte, paramInt1, paramInt2);
        return paramInt2;
      }
    }
  }
  
  static class e
  {
    public MediaMetadataRetriever a()
    {
      return new MediaMetadataRetriever();
    }
  }
  
  static abstract interface f<T>
  {
    public abstract void a(MediaMetadataRetriever paramMediaMetadataRetriever, T paramT);
  }
  
  static final class g
    implements VideoDecoder.f<ParcelFileDescriptor>
  {
    public void b(MediaMetadataRetriever paramMediaMetadataRetriever, ParcelFileDescriptor paramParcelFileDescriptor)
    {
      paramMediaMetadataRetriever.setDataSource(paramParcelFileDescriptor.getFileDescriptor());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.VideoDecoder
 * JD-Core Version:    0.7.0.1
 */