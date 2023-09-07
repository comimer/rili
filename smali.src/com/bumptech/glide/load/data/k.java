package com.bumptech.glide.load.data;

import com.bumptech.glide.load.engine.bitmap_recycle.b;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class k
  implements e<InputStream>
{
  private final RecyclableBufferedInputStream a;
  
  public k(InputStream paramInputStream, b paramb)
  {
    paramInputStream = new RecyclableBufferedInputStream(paramInputStream, paramb);
    this.a = paramInputStream;
    paramInputStream.mark(5242880);
  }
  
  public void b()
  {
    this.a.e();
  }
  
  public void c()
  {
    this.a.d();
  }
  
  public InputStream d()
    throws IOException
  {
    this.a.reset();
    return this.a;
  }
  
  public static final class a
    implements e.a<InputStream>
  {
    private final b a;
    
    public a(b paramb)
    {
      this.a = paramb;
    }
    
    public Class<InputStream> a()
    {
      return InputStream.class;
    }
    
    public e<InputStream> c(InputStream paramInputStream)
    {
      return new k(paramInputStream, this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.data.k
 * JD-Core Version:    0.7.0.1
 */