package javax.mail.event;

public class ConnectionEvent
  extends MailEvent
{
  public static final int CLOSED = 3;
  public static final int DISCONNECTED = 2;
  public static final int OPENED = 1;
  private static final long serialVersionUID = -1855480171284792957L;
  protected int type;
  
  public ConnectionEvent(Object paramObject, int paramInt)
  {
    super(paramObject);
    this.type = paramInt;
  }
  
  public void dispatch(Object paramObject)
  {
    int i = this.type;
    if (i == 1) {
      ((a)paramObject).e(this);
    } else if (i == 2) {
      ((a)paramObject).k(this);
    } else if (i == 3) {
      ((a)paramObject).g(this);
    }
  }
  
  public int getType()
  {
    return this.type;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.event.ConnectionEvent
 * JD-Core Version:    0.7.0.1
 */