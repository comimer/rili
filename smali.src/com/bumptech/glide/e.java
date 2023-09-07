package com.bumptech.glide;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class e
{
  private final Map<Class<?>, Object> a;
  
  e(a parama)
  {
    this.a = Collections.unmodifiableMap(new HashMap(a.a(parama)));
  }
  
  public boolean a(Class<Object> paramClass)
  {
    return this.a.containsKey(paramClass);
  }
  
  static final class a
  {
    private final Map<Class<?>, Object> a = new HashMap();
    
    e b()
    {
      return new e(this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.e
 * JD-Core Version:    0.7.0.1
 */