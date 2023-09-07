package javax.mail.event;

import javax.mail.Message;
import javax.mail.b;

public class MessageCountEvent
  extends MailEvent
{
  public static final int ADDED = 1;
  public static final int REMOVED = 2;
  private static final long serialVersionUID = -7447022340837897369L;
  protected transient Message[] msgs;
  protected boolean removed;
  protected int type;
  
  public MessageCountEvent(b paramb, int paramInt, boolean paramBoolean, Message[] paramArrayOfMessage)
  {
    super(paramb);
    this.type = paramInt;
    this.removed = paramBoolean;
    this.msgs = paramArrayOfMessage;
  }
  
  public void dispatch(Object paramObject)
  {
    if (this.type == 1) {
      ((d)paramObject).b(this);
    } else {
      ((d)paramObject).a(this);
    }
  }
  
  public Message[] getMessages()
  {
    return this.msgs;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public boolean isRemoved()
  {
    return this.removed;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.event.MessageCountEvent
 * JD-Core Version:    0.7.0.1
 */