package javax.mail.event;

import java.util.EventObject;

public abstract class MailEvent
  extends EventObject
{
  private static final long serialVersionUID = 1846275636325456631L;
  
  public MailEvent(Object paramObject)
  {
    super(paramObject);
  }
  
  public abstract void dispatch(Object paramObject);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.event.MailEvent
 * JD-Core Version:    0.7.0.1
 */