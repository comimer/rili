package com.bumptech.glide.load.engine.bitmap_recycle;

import f3.k;
import java.util.Collection;
import java.util.Queue;

abstract class c<T extends l>
{
  private final Queue<T> a = k.e(20);
  
  abstract T a();
  
  T b()
  {
    l locall1 = (l)this.a.poll();
    l locall2 = locall1;
    if (locall1 == null) {
      locall2 = a();
    }
    return locall2;
  }
  
  public void c(T paramT)
  {
    if (this.a.size() < 20) {
      this.a.offer(paramT);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.c
 * JD-Core Version:    0.7.0.1
 */