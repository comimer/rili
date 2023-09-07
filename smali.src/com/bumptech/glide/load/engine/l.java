package com.bumptech.glide.load.engine;

import f3.j;
import java.security.MessageDigest;
import java.util.Map;
import n2.b;
import n2.d;
import n2.g;

class l
  implements b
{
  private final Object b;
  private final int c;
  private final int d;
  private final Class<?> e;
  private final Class<?> f;
  private final b g;
  private final Map<Class<?>, g<?>> h;
  private final d i;
  private int j;
  
  l(Object paramObject, b paramb, int paramInt1, int paramInt2, Map<Class<?>, g<?>> paramMap, Class<?> paramClass1, Class<?> paramClass2, d paramd)
  {
    this.b = j.d(paramObject);
    this.g = ((b)j.e(paramb, "Signature must not be null"));
    this.c = paramInt1;
    this.d = paramInt2;
    this.h = ((Map)j.d(paramMap));
    this.e = ((Class)j.e(paramClass1, "Resource class must not be null"));
    this.f = ((Class)j.e(paramClass2, "Transcode class must not be null"));
    this.i = ((d)j.d(paramd));
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof l;
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      paramObject = (l)paramObject;
      bool3 = bool2;
      if (this.b.equals(paramObject.b))
      {
        bool3 = bool2;
        if (this.g.equals(paramObject.g))
        {
          bool3 = bool2;
          if (this.d == paramObject.d)
          {
            bool3 = bool2;
            if (this.c == paramObject.c)
            {
              bool3 = bool2;
              if (this.h.equals(paramObject.h))
              {
                bool3 = bool2;
                if (this.e.equals(paramObject.e))
                {
                  bool3 = bool2;
                  if (this.f.equals(paramObject.f))
                  {
                    bool3 = bool2;
                    if (this.i.equals(paramObject.i)) {
                      bool3 = true;
                    }
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
    if (this.j == 0)
    {
      int k = this.b.hashCode();
      this.j = k;
      k = ((k * 31 + this.g.hashCode()) * 31 + this.c) * 31 + this.d;
      this.j = k;
      k = k * 31 + this.h.hashCode();
      this.j = k;
      k = k * 31 + this.e.hashCode();
      this.j = k;
      k = k * 31 + this.f.hashCode();
      this.j = k;
      this.j = (k * 31 + this.i.hashCode());
    }
    return this.j;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("EngineKey{model=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", width=");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", height=");
    localStringBuilder.append(this.d);
    localStringBuilder.append(", resourceClass=");
    localStringBuilder.append(this.e);
    localStringBuilder.append(", transcodeClass=");
    localStringBuilder.append(this.f);
    localStringBuilder.append(", signature=");
    localStringBuilder.append(this.g);
    localStringBuilder.append(", hashCode=");
    localStringBuilder.append(this.j);
    localStringBuilder.append(", transformations=");
    localStringBuilder.append(this.h);
    localStringBuilder.append(", options=");
    localStringBuilder.append(this.i);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.l
 * JD-Core Version:    0.7.0.1
 */