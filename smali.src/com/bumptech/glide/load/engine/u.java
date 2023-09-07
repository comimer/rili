package com.bumptech.glide.load.engine;

import f3.k;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import n2.d;

final class u
  implements n2.b
{
  private static final f3.g<Class<?>, byte[]> j = new f3.g(50L);
  private final com.bumptech.glide.load.engine.bitmap_recycle.b b;
  private final n2.b c;
  private final n2.b d;
  private final int e;
  private final int f;
  private final Class<?> g;
  private final d h;
  private final n2.g<?> i;
  
  u(com.bumptech.glide.load.engine.bitmap_recycle.b paramb, n2.b paramb1, n2.b paramb2, int paramInt1, int paramInt2, n2.g<?> paramg, Class<?> paramClass, d paramd)
  {
    this.b = paramb;
    this.c = paramb1;
    this.d = paramb2;
    this.e = paramInt1;
    this.f = paramInt2;
    this.i = paramg;
    this.g = paramClass;
    this.h = paramd;
  }
  
  private byte[] c()
  {
    f3.g localg = j;
    byte[] arrayOfByte1 = (byte[])localg.g(this.g);
    byte[] arrayOfByte2 = arrayOfByte1;
    if (arrayOfByte1 == null)
    {
      arrayOfByte2 = this.g.getName().getBytes(n2.b.a);
      localg.k(this.g, arrayOfByte2);
    }
    return arrayOfByte2;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    byte[] arrayOfByte = (byte[])this.b.c(8, [B.class);
    ByteBuffer.wrap(arrayOfByte).putInt(this.e).putInt(this.f).array();
    this.d.a(paramMessageDigest);
    this.c.a(paramMessageDigest);
    paramMessageDigest.update(arrayOfByte);
    n2.g localg = this.i;
    if (localg != null) {
      localg.a(paramMessageDigest);
    }
    this.h.a(paramMessageDigest);
    paramMessageDigest.update(c());
    this.b.put(arrayOfByte);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof u;
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      paramObject = (u)paramObject;
      bool3 = bool2;
      if (this.f == paramObject.f)
      {
        bool3 = bool2;
        if (this.e == paramObject.e)
        {
          bool3 = bool2;
          if (k.c(this.i, paramObject.i))
          {
            bool3 = bool2;
            if (this.g.equals(paramObject.g))
            {
              bool3 = bool2;
              if (this.c.equals(paramObject.c))
              {
                bool3 = bool2;
                if (this.d.equals(paramObject.d))
                {
                  bool3 = bool2;
                  if (this.h.equals(paramObject.h)) {
                    bool3 = true;
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool3;
  }
  
  public int hashCode()
  {
    int k = ((this.c.hashCode() * 31 + this.d.hashCode()) * 31 + this.e) * 31 + this.f;
    n2.g localg = this.i;
    int m = k;
    if (localg != null) {
      m = k * 31 + localg.hashCode();
    }
    return (m * 31 + this.g.hashCode()) * 31 + this.h.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ResourceCacheKey{sourceKey=");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", signature=");
    localStringBuilder.append(this.d);
    localStringBuilder.append(", width=");
    localStringBuilder.append(this.e);
    localStringBuilder.append(", height=");
    localStringBuilder.append(this.f);
    localStringBuilder.append(", decodedResourceClass=");
    localStringBuilder.append(this.g);
    localStringBuilder.append(", transformation='");
    localStringBuilder.append(this.i);
    localStringBuilder.append('\'');
    localStringBuilder.append(", options=");
    localStringBuilder.append(this.h);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.u
 * JD-Core Version:    0.7.0.1
 */