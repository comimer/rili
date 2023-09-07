package javax.mail;

import java.util.EventListener;
import java.util.Vector;
import javax.mail.event.ConnectionEvent;
import javax.mail.event.MailEvent;
import javax.mail.event.a;

public abstract class g
  implements AutoCloseable
{
  protected volatile k a;
  private boolean b;
  private final Vector<a> c;
  
  public k c()
  {
    k localk = this.a;
    if ((localk != null) && ((localk.g() != null) || (localk.d() != null))) {
      return new k(localk.i(), localk.e(), localk.h(), null, localk.j(), null);
    }
    return localk;
  }
  
  public void close()
    throws MessagingException
  {
    try
    {
      m(false);
      e(3);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean d()
  {
    try
    {
      boolean bool = this.b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected void e(int paramInt)
  {
    if (this.c.size() > 0) {
      j(new ConnectionEvent(this, paramInt), this.c);
    }
    if (paramInt != 3) {
      return;
    }
    throw null;
  }
  
  protected void finalize()
    throws Throwable
  {
    try
    {
      throw null;
    }
    finally
    {
      super.finalize();
    }
  }
  
  protected void j(MailEvent paramMailEvent, Vector<? extends EventListener> paramVector)
  {
    paramMailEvent = (Vector)paramVector.clone();
    throw null;
  }
  
  protected void m(boolean paramBoolean)
  {
    try
    {
      this.b = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public String toString()
  {
    k localk = c();
    if (localk != null) {
      return localk.toString();
    }
    return super.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.g
 * JD-Core Version:    0.7.0.1
 */