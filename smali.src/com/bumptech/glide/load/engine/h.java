package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

public abstract class h
{
  public static final h a = new a();
  public static final h b = new b();
  public static final h c = new c();
  public static final h d = new d();
  public static final h e = new e();
  
  public abstract boolean a();
  
  public abstract boolean b();
  
  public abstract boolean c(DataSource paramDataSource);
  
  public abstract boolean d(boolean paramBoolean, DataSource paramDataSource, EncodeStrategy paramEncodeStrategy);
  
  class a
    extends h
  {
    public boolean a()
    {
      return true;
    }
    
    public boolean b()
    {
      return true;
    }
    
    public boolean c(DataSource paramDataSource)
    {
      boolean bool;
      if (paramDataSource == DataSource.REMOTE) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean d(boolean paramBoolean, DataSource paramDataSource, EncodeStrategy paramEncodeStrategy)
    {
      if ((paramDataSource != DataSource.RESOURCE_DISK_CACHE) && (paramDataSource != DataSource.MEMORY_CACHE)) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      }
      return paramBoolean;
    }
  }
  
  class b
    extends h
  {
    public boolean a()
    {
      return false;
    }
    
    public boolean b()
    {
      return false;
    }
    
    public boolean c(DataSource paramDataSource)
    {
      return false;
    }
    
    public boolean d(boolean paramBoolean, DataSource paramDataSource, EncodeStrategy paramEncodeStrategy)
    {
      return false;
    }
  }
  
  class c
    extends h
  {
    public boolean a()
    {
      return true;
    }
    
    public boolean b()
    {
      return false;
    }
    
    public boolean c(DataSource paramDataSource)
    {
      boolean bool;
      if ((paramDataSource != DataSource.DATA_DISK_CACHE) && (paramDataSource != DataSource.MEMORY_CACHE)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean d(boolean paramBoolean, DataSource paramDataSource, EncodeStrategy paramEncodeStrategy)
    {
      return false;
    }
  }
  
  class d
    extends h
  {
    public boolean a()
    {
      return false;
    }
    
    public boolean b()
    {
      return true;
    }
    
    public boolean c(DataSource paramDataSource)
    {
      return false;
    }
    
    public boolean d(boolean paramBoolean, DataSource paramDataSource, EncodeStrategy paramEncodeStrategy)
    {
      if ((paramDataSource != DataSource.RESOURCE_DISK_CACHE) && (paramDataSource != DataSource.MEMORY_CACHE)) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      }
      return paramBoolean;
    }
  }
  
  class e
    extends h
  {
    public boolean a()
    {
      return true;
    }
    
    public boolean b()
    {
      return true;
    }
    
    public boolean c(DataSource paramDataSource)
    {
      boolean bool;
      if (paramDataSource == DataSource.REMOTE) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean d(boolean paramBoolean, DataSource paramDataSource, EncodeStrategy paramEncodeStrategy)
    {
      if (((paramBoolean) && (paramDataSource == DataSource.DATA_DISK_CACHE)) || ((paramDataSource == DataSource.LOCAL) && (paramEncodeStrategy == EncodeStrategy.TRANSFORMED))) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      }
      return paramBoolean;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.h
 * JD-Core Version:    0.7.0.1
 */