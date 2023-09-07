package com.bumptech.glide.load.engine;

import java.util.HashMap;
import java.util.Map;
import n2.b;

final class p
{
  private final Map<b, j<?>> a = new HashMap();
  private final Map<b, j<?>> b = new HashMap();
  
  private Map<b, j<?>> b(boolean paramBoolean)
  {
    Map localMap;
    if (paramBoolean) {
      localMap = this.b;
    } else {
      localMap = this.a;
    }
    return localMap;
  }
  
  j<?> a(b paramb, boolean paramBoolean)
  {
    return (j)b(paramBoolean).get(paramb);
  }
  
  void c(b paramb, j<?> paramj)
  {
    b(paramj.p()).put(paramb, paramj);
  }
  
  void d(b paramb, j<?> paramj)
  {
    Map localMap = b(paramj.p());
    if (paramj.equals(localMap.get(paramb))) {
      localMap.remove(paramb);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.p
 * JD-Core Version:    0.7.0.1
 */