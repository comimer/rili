package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.b;
import com.bumptech.glide.load.engine.s;
import f3.h;
import java.io.IOException;
import java.io.InputStream;
import n2.e;

public class x
  implements e<InputStream, Bitmap>
{
  private final l a;
  private final b b;
  
  public x(l paraml, b paramb)
  {
    this.a = paraml;
    this.b = paramb;
  }
  
  public s<Bitmap> c(InputStream paramInputStream, int paramInt1, int paramInt2, n2.d paramd)
    throws IOException
  {
    int i;
    if ((paramInputStream instanceof RecyclableBufferedInputStream))
    {
      paramInputStream = (RecyclableBufferedInputStream)paramInputStream;
      i = 0;
    }
    else
    {
      paramInputStream = new RecyclableBufferedInputStream(paramInputStream, this.b);
      i = 1;
    }
    f3.d locald = f3.d.d(paramInputStream);
    h localh = new h(locald);
    a locala = new a(paramInputStream, locald);
    try
    {
      paramd = this.a.g(localh, paramInt1, paramInt2, paramd, locala);
      return paramd;
    }
    finally
    {
      locald.e();
      if (i != 0) {
        paramInputStream.e();
      }
    }
  }
  
  public boolean d(InputStream paramInputStream, n2.d paramd)
  {
    return this.a.p(paramInputStream);
  }
  
  static class a
    implements l.b
  {
    private final RecyclableBufferedInputStream a;
    private final f3.d b;
    
    a(RecyclableBufferedInputStream paramRecyclableBufferedInputStream, f3.d paramd)
    {
      this.a = paramRecyclableBufferedInputStream;
      this.b = paramd;
    }
    
    public void a(com.bumptech.glide.load.engine.bitmap_recycle.d paramd, Bitmap paramBitmap)
      throws IOException
    {
      IOException localIOException = this.b.c();
      if (localIOException != null)
      {
        if (paramBitmap != null) {
          paramd.c(paramBitmap);
        }
        throw localIOException;
      }
    }
    
    public void b()
    {
      this.a.d();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.x
 * JD-Core Version:    0.7.0.1
 */