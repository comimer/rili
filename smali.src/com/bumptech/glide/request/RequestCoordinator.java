package com.bumptech.glide.request;

public abstract interface RequestCoordinator
{
  public abstract void a(c paramc);
  
  public abstract boolean b();
  
  public abstract boolean c(c paramc);
  
  public abstract boolean e(c paramc);
  
  public abstract void g(c paramc);
  
  public abstract RequestCoordinator getRoot();
  
  public abstract boolean j(c paramc);
  
  public static enum RequestState
  {
    private final boolean isComplete;
    
    static
    {
      RequestState localRequestState1 = new RequestState("RUNNING", 0, false);
      RUNNING = localRequestState1;
      RequestState localRequestState2 = new RequestState("PAUSED", 1, false);
      PAUSED = localRequestState2;
      RequestState localRequestState3 = new RequestState("CLEARED", 2, false);
      CLEARED = localRequestState3;
      RequestState localRequestState4 = new RequestState("SUCCESS", 3, true);
      SUCCESS = localRequestState4;
      RequestState localRequestState5 = new RequestState("FAILED", 4, true);
      FAILED = localRequestState5;
      $VALUES = new RequestState[] { localRequestState1, localRequestState2, localRequestState3, localRequestState4, localRequestState5 };
    }
    
    private RequestState(boolean paramBoolean)
    {
      this.isComplete = paramBoolean;
    }
    
    boolean isComplete()
    {
      return this.isComplete;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.request.RequestCoordinator
 * JD-Core Version:    0.7.0.1
 */