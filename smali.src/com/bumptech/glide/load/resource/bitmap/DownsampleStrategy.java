package com.bumptech.glide.load.resource.bitmap;

import n2.c;

public abstract class DownsampleStrategy
{
  public static final DownsampleStrategy a = new a();
  public static final DownsampleStrategy b = new b();
  public static final DownsampleStrategy c = new e();
  public static final DownsampleStrategy d = new c();
  public static final DownsampleStrategy e;
  public static final DownsampleStrategy f;
  public static final DownsampleStrategy g;
  public static final c<DownsampleStrategy> h;
  static final boolean i = true;
  
  static
  {
    d locald = new d();
    e = locald;
    f = new f();
    g = locald;
    h = c.f("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", locald);
  }
  
  public abstract SampleSizeRounding a(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract float b(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public static enum SampleSizeRounding
  {
    static
    {
      SampleSizeRounding localSampleSizeRounding1 = new SampleSizeRounding("MEMORY", 0);
      MEMORY = localSampleSizeRounding1;
      SampleSizeRounding localSampleSizeRounding2 = new SampleSizeRounding("QUALITY", 1);
      QUALITY = localSampleSizeRounding2;
      $VALUES = new SampleSizeRounding[] { localSampleSizeRounding1, localSampleSizeRounding2 };
    }
    
    private SampleSizeRounding() {}
  }
  
  private static class a
    extends DownsampleStrategy
  {
    public DownsampleStrategy.SampleSizeRounding a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return DownsampleStrategy.SampleSizeRounding.QUALITY;
    }
    
    public float b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramInt1 = Math.min(paramInt2 / paramInt4, paramInt1 / paramInt3);
      float f = 1.0F;
      if (paramInt1 != 0) {
        f = 1.0F / Integer.highestOneBit(paramInt1);
      }
      return f;
    }
  }
  
  private static class b
    extends DownsampleStrategy
  {
    public DownsampleStrategy.SampleSizeRounding a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return DownsampleStrategy.SampleSizeRounding.MEMORY;
    }
    
    public float b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramInt3 = (int)Math.ceil(Math.max(paramInt2 / paramInt4, paramInt1 / paramInt3));
      paramInt2 = Integer.highestOneBit(paramInt3);
      paramInt1 = 1;
      paramInt2 = Math.max(1, paramInt2);
      if (paramInt2 >= paramInt3) {
        paramInt1 = 0;
      }
      return 1.0F / (paramInt2 << paramInt1);
    }
  }
  
  private static class c
    extends DownsampleStrategy
  {
    public DownsampleStrategy.SampleSizeRounding a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      DownsampleStrategy.SampleSizeRounding localSampleSizeRounding;
      if (b(paramInt1, paramInt2, paramInt3, paramInt4) == 1.0F) {
        localSampleSizeRounding = DownsampleStrategy.SampleSizeRounding.QUALITY;
      } else {
        localSampleSizeRounding = DownsampleStrategy.c.a(paramInt1, paramInt2, paramInt3, paramInt4);
      }
      return localSampleSizeRounding;
    }
    
    public float b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return Math.min(1.0F, DownsampleStrategy.c.b(paramInt1, paramInt2, paramInt3, paramInt4));
    }
  }
  
  private static class d
    extends DownsampleStrategy
  {
    public DownsampleStrategy.SampleSizeRounding a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return DownsampleStrategy.SampleSizeRounding.QUALITY;
    }
    
    public float b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return Math.max(paramInt3 / paramInt1, paramInt4 / paramInt2);
    }
  }
  
  private static class e
    extends DownsampleStrategy
  {
    public DownsampleStrategy.SampleSizeRounding a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      if (DownsampleStrategy.i) {
        return DownsampleStrategy.SampleSizeRounding.QUALITY;
      }
      return DownsampleStrategy.SampleSizeRounding.MEMORY;
    }
    
    public float b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      if (DownsampleStrategy.i) {
        return Math.min(paramInt3 / paramInt1, paramInt4 / paramInt2);
      }
      paramInt1 = Math.max(paramInt2 / paramInt4, paramInt1 / paramInt3);
      float f = 1.0F;
      if (paramInt1 != 0) {
        f = 1.0F / Integer.highestOneBit(paramInt1);
      }
      return f;
    }
  }
  
  private static class f
    extends DownsampleStrategy
  {
    public DownsampleStrategy.SampleSizeRounding a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return DownsampleStrategy.SampleSizeRounding.QUALITY;
    }
    
    public float b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return 1.0F;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
 * JD-Core Version:    0.7.0.1
 */