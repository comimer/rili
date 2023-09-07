package com.bumptech.glide.request;

public final class b
  implements RequestCoordinator, c
{
  private final Object a;
  private final RequestCoordinator b;
  private volatile c c;
  private volatile c d;
  private RequestCoordinator.RequestState e;
  private RequestCoordinator.RequestState f;
  
  public b(Object paramObject, RequestCoordinator paramRequestCoordinator)
  {
    RequestCoordinator.RequestState localRequestState = RequestCoordinator.RequestState.CLEARED;
    this.e = localRequestState;
    this.f = localRequestState;
    this.a = paramObject;
    this.b = paramRequestCoordinator;
  }
  
  private boolean k(c paramc)
  {
    boolean bool;
    if ((!paramc.equals(this.c)) && ((this.e != RequestCoordinator.RequestState.FAILED) || (!paramc.equals(this.d)))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean l()
  {
    RequestCoordinator localRequestCoordinator = this.b;
    boolean bool;
    if ((localRequestCoordinator != null) && (!localRequestCoordinator.j(this))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean m()
  {
    RequestCoordinator localRequestCoordinator = this.b;
    boolean bool;
    if ((localRequestCoordinator != null) && (!localRequestCoordinator.c(this))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean n()
  {
    RequestCoordinator localRequestCoordinator = this.b;
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
    synchronized (this.a)
    {
      if (!paramc.equals(this.d))
      {
        this.e = RequestCoordinator.RequestState.FAILED;
        paramc = this.f;
        RequestCoordinator.RequestState localRequestState = RequestCoordinator.RequestState.RUNNING;
        if (paramc != localRequestState)
        {
          this.f = localRequestState;
          this.d.h();
        }
        return;
      }
      this.f = RequestCoordinator.RequestState.FAILED;
      paramc = this.b;
      if (paramc != null) {
        paramc.a(this);
      }
      return;
    }
  }
  
  public boolean b()
  {
    synchronized (this.a)
    {
      boolean bool;
      if ((!this.c.b()) && (!this.d.b())) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
  }
  
  public boolean c(c paramc)
  {
    synchronized (this.a)
    {
      boolean bool;
      if ((m()) && (k(paramc))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public void clear()
  {
    synchronized (this.a)
    {
      RequestCoordinator.RequestState localRequestState = RequestCoordinator.RequestState.CLEARED;
      this.e = localRequestState;
      this.c.clear();
      if (this.f != localRequestState)
      {
        this.f = localRequestState;
        this.d.clear();
      }
      return;
    }
  }
  
  public boolean d(c paramc)
  {
    boolean bool1 = paramc instanceof b;
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      paramc = (b)paramc;
      bool3 = bool2;
      if (this.c.d(paramc.c))
      {
        bool3 = bool2;
        if (this.d.d(paramc.d)) {
          bool3 = true;
        }
      }
    }
    return bool3;
  }
  
  public boolean e(c paramc)
  {
    synchronized (this.a)
    {
      boolean bool;
      if ((n()) && (k(paramc))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public boolean f()
  {
    synchronized (this.a)
    {
      RequestCoordinator.RequestState localRequestState1 = this.e;
      RequestCoordinator.RequestState localRequestState2 = RequestCoordinator.RequestState.CLEARED;
      boolean bool;
      if ((localRequestState1 == localRequestState2) && (this.f == localRequestState2)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public void g(c paramc)
  {
    synchronized (this.a)
    {
      if (paramc.equals(this.c)) {
        this.e = RequestCoordinator.RequestState.SUCCESS;
      } else if (paramc.equals(this.d)) {
        this.f = RequestCoordinator.RequestState.SUCCESS;
      }
      paramc = this.b;
      if (paramc != null) {
        paramc.g(this);
      }
      return;
    }
  }
  
  public RequestCoordinator getRoot()
  {
    synchronized (this.a)
    {
      Object localObject2 = this.b;
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
    synchronized (this.a)
    {
      RequestCoordinator.RequestState localRequestState1 = this.e;
      RequestCoordinator.RequestState localRequestState2 = RequestCoordinator.RequestState.RUNNING;
      if (localRequestState1 != localRequestState2)
      {
        this.e = localRequestState2;
        this.c.h();
      }
      return;
    }
  }
  
  public boolean i()
  {
    synchronized (this.a)
    {
      RequestCoordinator.RequestState localRequestState1 = this.e;
      RequestCoordinator.RequestState localRequestState2 = RequestCoordinator.RequestState.SUCCESS;
      boolean bool;
      if ((localRequestState1 != localRequestState2) && (this.f != localRequestState2)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
  }
  
  public boolean isRunning()
  {
    synchronized (this.a)
    {
      RequestCoordinator.RequestState localRequestState1 = this.e;
      RequestCoordinator.RequestState localRequestState2 = RequestCoordinator.RequestState.RUNNING;
      boolean bool;
      if ((localRequestState1 != localRequestState2) && (this.f != localRequestState2)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
  }
  
  public boolean j(c paramc)
  {
    synchronized (this.a)
    {
      boolean bool;
      if ((l()) && (k(paramc))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public void o(c paramc1, c paramc2)
  {
    this.c = paramc1;
    this.d = paramc2;
  }
  
  public void pause()
  {
    synchronized (this.a)
    {
      RequestCoordinator.RequestState localRequestState1 = this.e;
      RequestCoordinator.RequestState localRequestState2 = RequestCoordinator.RequestState.RUNNING;
      if (localRequestState1 == localRequestState2)
      {
        this.e = RequestCoordinator.RequestState.PAUSED;
        this.c.pause();
      }
      if (this.f == localRequestState2)
      {
        this.f = RequestCoordinator.RequestState.PAUSED;
        this.d.pause();
      }
      return;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.request.b
 * JD-Core Version:    0.7.0.1
 */