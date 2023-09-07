package javax.mail.event;

import javax.mail.i;

public class StoreEvent
  extends MailEvent
{
  public static final int ALERT = 1;
  public static final int NOTICE = 2;
  private static final long serialVersionUID = 1938704919992515330L;
  protected String message;
  protected int type;
  
  public StoreEvent(i parami, int paramInt, String paramString)
  {
    super(parami);
    this.type = paramInt;
    this.message = paramString;
  }
  
  public void dispatch(Object paramObject)
  {
    ((e)paramObject).i(this);
  }
  
  public String getMessage()
  {
    return this.message;
  }
  
  public int getMessageType()
  {
    return this.type;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.event.StoreEvent
 * JD-Core Version:    0.7.0.1
 */