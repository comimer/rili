package com.bumptech.glide.request;

public class g
  implements RequestCoordinator, c
{
  private final RequestCoordinator a;
  private final Object b;
  private volatile c c;
  private volatile c d;
  private RequestCoordinator.RequestState e;
  private RequestCoordinator.RequestState f;
  private boolean g;
  
  public g(Object paramObject, RequestCoordinator paramRequestCoordinator)
  {
    RequestCoordinator.RequestState localRequestState = RequestCoordinator.RequestState.CLEARED;
    this.e = localRequestState;
    this.f = localRequestState;
    this.b = paramObject;
    this.a = paramRequestCoordinator;
  }
  
  private boolean k()
  {
    RequestCoordinator localRequestCoordinator = this.a;
    boolean bool;
    if ((localRequestCoordinator != null) && (!localRequestCoordinator.j(this))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean l()
  {
    RequestCoordinator localRequestCoordinator = this.a;
    boolean bool;
    if ((localRequestCoordinator != null) && (!localRequestCoordinator.c(this))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean m()
  {
    RequestCoordinator localRequestCoordinator = this.a;
    boolean bool;
    if ((localRequestCoordinator != null) && (!localRequestCoordinator.e(this))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void a(c paramc)
  {
    synchronized (this.b)
    {
      if (!paramc.equals(this.c))
      {
        this.f = RequestCoordinator.RequestState.FAILED;
        return;
      }
      this.e = RequestCoordinator.RequestState.FAILED;
      paramc = this.a;
      if (paramc != null) {
        paramc.a(this);
      }
      return;
    }
  }
  
  public boolean b()
  {
    synchronized (this.b)
    {
      boolean bool;
      if ((!this.d.b()) && (!this.c.b())) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
  }
  
  public boolean c(c paramc)
  {
    synchronized (this.b)
    {
      boolean bool;
      if ((l()) && (paramc.equals(this.c)) && (!b())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public void clear()
  {
    synchronized (this.b)
    {
      this.g = false;
      RequestCoordinator.RequestState localRequestState = RequestCoordinator.RequestState.CLEARED;
      this.e = localRequestState;
      this.f = localRequestState;
      this.d.clear();
      this.c.clear();
      return;
    }
  }
  
  public boolean d(c paramc)
  {
    boolean bool1 = paramc instanceof g;
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      paramc = (g)paramc;
      if (this.c == null)
      {
        bool3 = bool2;
        if (paramc.c != null) {
          break label100;
        }
      }
      else
      {
        bool3 = bool2;
        if (!this.c.d(paramc.c)) {
          break label100;
        }
      }
      if (this.d == null)
      {
        bool3 = bool2;
        if (paramc.d != null) {
          break label100;
        }
      }
      else
      {
        bool3 = bool2;
        if (!this.d.d(paramc.d)) {
          break label100;
        }
      }
      bool3 = true;
    }
    label100:
    return bool3;
  }
  
  public boolean e(c paramc)
  {
    synchronized (this.b)
    {
      boolean bool;
      if ((m()) && ((paramc.equals(this.c)) || (this.e != RequestCoordinator.RequestState.SUCCESS))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public boolean f()
  {
    synchronized (this.b)
    {
      boolean bool;
      if (this.e == RequestCoordinator.RequestState.CLEARED) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public void g(c paramc)
  {
    synchronized (this.b)
    {
      if (paramc.equals(this.d))
      {
        this.f = RequestCoordinator.RequestState.SUCCESS;
        return;
      }
      this.e = RequestCoordinator.RequestState.SUCCESS;
      paramc = this.a;
      if (paramc != null) {
        paramc.g(this);
      }
      if (!this.f.isComplete()) {
        this.d.clear();
      }
      return;
    }
  }
  
  public RequestCoordinator getRoot()
  {
    synchronized (this.b)
    {
      Object localObject2 = this.a;
      if (localObject2 != null) {
        localObject2 = ((RequestCoordinator)localObject2).getRoot();
      } else {
        localObject2 = this;
      }
      return localObject2;
    }
  }
  
  public void h()
  {
    synchronized (this.b)
    {
      this.g = true;
      try
      {
        RequestCoordinator.RequestState localRequestState1;
        RequestCoordinator.RequestState localRequestState2;
        if (this.e != RequestCoordinator.RequestState.SUCCESS)
        {
          localRequestState1 = this.f;
          localRequestState2 = RequestCoordinator.RequestState.RUNNING;
          if (localRequestState1 != localRequestState2)
          {
            this.f = localRequestState2;
            this.d.h();
          }
        }
        if (this.g)
        {
          localRequestState2 = this.e;
          localRequestState1 = RequestCoordinator.RequestState.RUNNING;
          if (localRequestState2 != localRequestState1)
          {
            this.e = localRequestState1;
            this.c.h();
          }
        }
        this.g = false;
        return;
      }
      finally
      {
        this.g = false;
      }
    }
  }
  
  public boolean i()
  {
    synchronized (this.b)
    {
      boolean bool;
      if (this.e == RequestCoordinator.RequestState.SUCCESS) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public boolean isRunning()
  {
    synchronized (this.b)
    {
      boolean bool;
      if (this.e == RequestCoordinator.RequestState.RUNNING) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public boolean j(c paramc)
  {
    synchronized (this.b)
    {
      boolean bool;
      if ((k()) && (paramc.equals(this.c)) && (this.e != RequestCoordinator.RequestState.PAUSED)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public void n(c paramc1, c paramc2)
  {
    this.c = paramc1;
    this.d = paramc2;
  }
  
  public void pause()
  {
    synchronized (this.b)
    {
      if (!this.f.isComplete())
      {
        this.f = RequestCoordinator.RequestState.PAUSED;
        this.d.pause();
      }
      if (!this.e.isComplete())
      {
        this.e = RequestCoordinator.RequestState.PAUSED;
        this.c.pause();
      }
      return;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.request.g
 * JD-Core Version:    0.7.0.1
 */