package javax.mail;

import java.util.EventListener;
import java.util.Vector;
import javax.mail.event.ConnectionEvent;
import javax.mail.event.MailEvent;
import javax.mail.event.a;

public abstract class b
  implements AutoCloseable
{
  protected i a;
  protected int b;
  private volatile Vector<a> c;
  
  private void q(MailEvent paramMailEvent, Vector<? extends EventListener> paramVector)
  {
    paramMailEvent = (Vector)paramVector.clone();
    throw null;
  }
  
  public abstract void c(boolean paramBoolean)
    throws MessagingException;
  
  public void close()
    throws MessagingException
  {
    c(true);
  }
  
  public abstract String d();
  
  public int e()
  {
    try
    {
      if (isOpen())
      {
        int i = this.b;
        return i;
      }
      IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
      localIllegalStateException.<init>("Folder not open");
      throw localIllegalStateException;
    }
    finally {}
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
  
  public abstract boolean isOpen();
  
  public i j()
  {
    return this.a;
  }
  
  protected void m(int paramInt)
  {
    if (this.c != null) {
      q(new ConnectionEvent(this, paramInt), this.c);
    }
    if (paramInt != 3) {
      return;
    }
    throw null;
  }
  
  public String toString()
  {
    String str = d();
    if (str != null) {
      return str;
    }
    return super.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.b
 * JD-Core Version:    0.7.0.1
 */