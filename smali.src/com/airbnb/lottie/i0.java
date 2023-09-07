package com.airbnb.lottie;

import java.util.Arrays;

public final class i0<V>
{
  private final V a;
  private final Throwable b;
  
  public i0(V paramV)
  {
    this.a = paramV;
    this.b = null;
  }
  
  public i0(Throwable paramThrowable)
  {
    this.b = paramThrowable;
    this.a = null;
  }
  
  public Throwable a()
  {
    return this.b;
  }
  
  public V b()
  {
    return this.a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof i0)) {
      return false;
    }
    paramObject = (i0)paramObject;
    if ((b() != null) && (b().equals(paramObject.b()))) {
      return true;
    }
    if ((a() != null) && (paramObject.a() != null)) {
      return a().toString().equals(a().toString());
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { b(), a() });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.i0
 * JD-Core Version:    0.7.0.1
 */