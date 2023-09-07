package com.bumptech.glide.load.engine;

import java.security.MessageDigest;
import n2.b;

final class c
  implements b
{
  private final b b;
  private final b c;
  
  c(b paramb1, b paramb2)
  {
    this.b = paramb1;
    this.c = paramb2;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    this.b.a(paramMessageDigest);
    this.c.a(paramMessageDigest);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof c;
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      paramObject = (c)paramObject;
      bool3 = bool2;
      if (this.b.equals(paramObject.b))
      {
        bool3 = bool2;
        if (this.c.equals(paramObject.c)) {
          bool3 = true;
        }
      }
    }
    return bool3;
  }
  
  public int hashCode()
  {
    return this.b.hashCode() * 31 + this.c.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DataCacheKey{sourceKey=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", signature=");
    localStringBuilder.append(this.c);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.c
 * JD-Core Version:    0.7.0.1
 */