package com.bumptech.glide.load.data;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;

public abstract interface d<T>
{
  public abstract Class<T> a();
  
  public abstract void b();
  
  public abstract void cancel();
  
  public abstract DataSource d();
  
  public abstract void e(Priority paramPriority, a<? super T> parama);
  
  public static abstract interface a<T>
  {
    public abstract void c(Exception paramException);
    
    public abstract void f(T paramT);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.data.d
 * JD-Core Version:    0.7.0.1
 */