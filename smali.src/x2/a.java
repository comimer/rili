package x2;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import f3.f;
import f3.k;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

public class a
  implements n2.e<ByteBuffer, c>
{
  private static final a f = new a();
  private static final b g = new b();
  private final Context a;
  private final List<ImageHeaderParser> b;
  private final b c;
  private final a d;
  private final b e;
  
  public a(Context paramContext, List<ImageHeaderParser> paramList, com.bumptech.glide.load.engine.bitmap_recycle.d paramd, com.bumptech.glide.load.engine.bitmap_recycle.b paramb)
  {
    this(paramContext, paramList, paramd, paramb, g, f);
  }
  
  a(Context paramContext, List<ImageHeaderParser> paramList, com.bumptech.glide.load.engine.bitmap_recycle.d paramd, com.bumptech.glide.load.engine.bitmap_recycle.b paramb, b paramb1, a parama)
  {
    this.a = paramContext.getApplicationContext();
    this.b = paramList;
    this.d = parama;
    this.e = new b(paramd, paramb);
    this.c = paramb1;
  }
  
  private e c(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, m2.d paramd, n2.d paramd1)
  {
    long l = f.b();
    try
    {
      Object localObject = paramd.c();
      if ((((m2.c)localObject).b() > 0) && (((m2.c)localObject).c() == 0))
      {
        if (paramd1.c(i.a) == DecodeFormat.PREFER_RGB_565) {
          paramd = Bitmap.Config.RGB_565;
        } else {
          paramd = Bitmap.Config.ARGB_8888;
        }
        int i = e((m2.c)localObject, paramInt1, paramInt2);
        paramByteBuffer = this.d.a(this.e, (m2.c)localObject, paramByteBuffer, i);
        paramByteBuffer.e(paramd);
        paramByteBuffer.b();
        paramd = paramByteBuffer.a();
        if (paramd == null) {
          return null;
        }
        paramd1 = t2.c.c();
        localObject = new x2/c;
        ((c)localObject).<init>(this.a, paramByteBuffer, paramd1, paramInt1, paramInt2, paramd);
        paramd = new e((c)localObject);
        return paramd;
      }
      return null;
    }
    finally
    {
      if (Log.isLoggable("BufferGifDecoder", 2))
      {
        paramByteBuffer = new StringBuilder();
        paramByteBuffer.append("Decoded GIF from stream in ");
        paramByteBuffer.append(f.a(l));
        Log.v("BufferGifDecoder", paramByteBuffer.toString());
      }
    }
  }
  
  private static int e(m2.c paramc, int paramInt1, int paramInt2)
  {
    int i = Math.min(paramc.a() / paramInt2, paramc.d() / paramInt1);
    if (i == 0) {
      i = 0;
    } else {
      i = Integer.highestOneBit(i);
    }
    i = Math.max(1, i);
    if ((Log.isLoggable("BufferGifDecoder", 2)) && (i > 1))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Downsampling GIF, sampleSize: ");
      localStringBuilder.append(i);
      localStringBuilder.append(", target dimens: [");
      localStringBuilder.append(paramInt1);
      localStringBuilder.append("x");
      localStringBuilder.append(paramInt2);
      localStringBuilder.append("], actual dimens: [");
      localStringBuilder.append(paramc.d());
      localStringBuilder.append("x");
      localStringBuilder.append(paramc.a());
      localStringBuilder.append("]");
      Log.v("BufferGifDecoder", localStringBuilder.toString());
    }
    return i;
  }
  
  public e d(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, n2.d paramd)
  {
    m2.d locald = this.c.a(paramByteBuffer);
    try
    {
      paramByteBuffer = c(paramByteBuffer, paramInt1, paramInt2, locald, paramd);
      return paramByteBuffer;
    }
    finally
    {
      this.c.b(locald);
    }
  }
  
  public boolean f(ByteBuffer paramByteBuffer, n2.d paramd)
    throws IOException
  {
    boolean bool;
    if ((!((Boolean)paramd.c(i.b)).booleanValue()) && (com.bumptech.glide.load.a.f(this.b, paramByteBuffer) == ImageHeaderParser.ImageType.GIF)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  static class a
  {
    m2.a a(m2.a.a parama, m2.c paramc, ByteBuffer paramByteBuffer, int paramInt)
    {
      return new m2.e(parama, paramc, paramByteBuffer, paramInt);
    }
  }
  
  static class b
  {
    private final Queue<m2.d> a = k.e(0);
    
    m2.d a(ByteBuffer paramByteBuffer)
    {
      try
      {
        m2.d locald1 = (m2.d)this.a.poll();
        m2.d locald2 = locald1;
        if (locald1 == null)
        {
          locald2 = new m2/d;
          locald2.<init>();
        }
        paramByteBuffer = locald2.p(paramByteBuffer);
        return paramByteBuffer;
      }
      finally {}
    }
    
    void b(m2.d paramd)
    {
      try
      {
        paramd.a();
        this.a.offer(paramd);
        return;
      }
      finally
      {
        paramd = finally;
        throw paramd;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x2.a
 * JD-Core Version:    0.7.0.1
 */