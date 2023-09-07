package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import n2.b;

abstract interface e
{
  public abstract boolean a();
  
  public abstract void cancel();
  
  public static abstract interface a
  {
    public abstract void b(b paramb1, Object paramObject, d<?> paramd, DataSource paramDataSource, b paramb2);
    
    public abstract void c();
    
    public abstract void i(b paramb, Exception paramException, d<?> paramd, DataSource paramDataSource);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.e
 * JD-Core Version:    0.7.0.1
 */