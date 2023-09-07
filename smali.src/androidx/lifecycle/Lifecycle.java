package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;

public abstract class Lifecycle
{
  AtomicReference<Object> a = new AtomicReference();
  
  public abstract void a(m paramm);
  
  public abstract State b();
  
  public abstract void c(m paramm);
  
  public static enum Event
  {
    static
    {
      Event localEvent1 = new Event("ON_CREATE", 0);
      ON_CREATE = localEvent1;
      Event localEvent2 = new Event("ON_START", 1);
      ON_START = localEvent2;
      Event localEvent3 = new Event("ON_RESUME", 2);
      ON_RESUME = localEvent3;
      Event localEvent4 = new Event("ON_PAUSE", 3);
      ON_PAUSE = localEvent4;
      Event localEvent5 = new Event("ON_STOP", 4);
      ON_STOP = localEvent5;
      Event localEvent6 = new Event("ON_DESTROY", 5);
      ON_DESTROY = localEvent6;
      Event localEvent7 = new Event("ON_ANY", 6);
      ON_ANY = localEvent7;
      $VALUES = new Event[] { localEvent1, localEvent2, localEvent3, localEvent4, localEvent5, localEvent6, localEvent7 };
    }
    
    private Event() {}
    
    public static Event downFrom(Lifecycle.State paramState)
    {
      int i = Lifecycle.a.a[paramState.ordinal()];
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3) {
            return null;
          }
          return ON_PAUSE;
        }
        return ON_STOP;
      }
      return ON_DESTROY;
    }
    
    public static Event downTo(Lifecycle.State paramState)
    {
      int i = Lifecycle.a.a[paramState.ordinal()];
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 4) {
            return null;
          }
          return ON_DESTROY;
        }
        return ON_PAUSE;
      }
      return ON_STOP;
    }
    
    public static Event upFrom(Lifecycle.State paramState)
    {
      int i = Lifecycle.a.a[paramState.ordinal()];
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 5) {
            return null;
          }
          return ON_CREATE;
        }
        return ON_RESUME;
      }
      return ON_START;
    }
    
    public static Event upTo(Lifecycle.State paramState)
    {
      int i = Lifecycle.a.a[paramState.ordinal()];
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3) {
            return null;
          }
          return ON_RESUME;
        }
        return ON_START;
      }
      return ON_CREATE;
    }
    
    public Lifecycle.State getTargetState()
    {
      switch (Lifecycle.a.b[ordinal()])
      {
      default: 
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(this);
        localStringBuilder.append(" has no target state");
        throw new IllegalArgumentException(localStringBuilder.toString());
      case 6: 
        return Lifecycle.State.DESTROYED;
      case 5: 
        return Lifecycle.State.RESUMED;
      case 3: 
      case 4: 
        return Lifecycle.State.STARTED;
      }
      return Lifecycle.State.CREATED;
    }
  }
  
  public static enum State
  {
    static
    {
      State localState1 = new State("DESTROYED", 0);
      DESTROYED = localState1;
      State localState2 = new State("INITIALIZED", 1);
      INITIALIZED = localState2;
      State localState3 = new State("CREATED", 2);
      CREATED = localState3;
      State localState4 = new State("STARTED", 3);
      STARTED = localState4;
      State localState5 = new State("RESUMED", 4);
      RESUMED = localState5;
      $VALUES = new State[] { localState1, localState2, localState3, localState4, localState5 };
    }
    
    private State() {}
    
    public boolean isAtLeast(State paramState)
    {
      boolean bool;
      if (compareTo(paramState) >= 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.Lifecycle
 * JD-Core Version:    0.7.0.1
 */