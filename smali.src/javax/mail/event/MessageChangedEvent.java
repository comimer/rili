package javax.mail.event;

import javax.mail.Message;

public class MessageChangedEvent
  extends MailEvent
{
  public static final int ENVELOPE_CHANGED = 2;
  public static final int FLAGS_CHANGED = 1;
  private static final long serialVersionUID = -4974972972105535108L;
  protected transient Message msg;
  protected int type;
  
  public MessageChangedEvent(Object paramObject, int paramInt, Message paramMessage)
  {
    super(paramObject);
    this.msg = paramMessage;
    this.type = paramInt;
  }
  
  public void dispatch(Object paramObject)
  {
    ((c)paramObject).f(this);
  }
  
  public Message getMessage()
  {
    return this.msg;
  }
  
  public int getMessageChangeType()
  {
    return this.type;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.event.MessageChangedEvent
 * JD-Core Version:    0.7.0.1
 */