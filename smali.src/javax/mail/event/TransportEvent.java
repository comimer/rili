package javax.mail.event;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.j;

public class TransportEvent
  extends MailEvent
{
  public static final int MESSAGE_DELIVERED = 1;
  public static final int MESSAGE_NOT_DELIVERED = 2;
  public static final int MESSAGE_PARTIALLY_DELIVERED = 3;
  private static final long serialVersionUID = -4729852364684273073L;
  protected transient Address[] invalid;
  protected transient Message msg;
  protected int type;
  protected transient Address[] validSent;
  protected transient Address[] validUnsent;
  
  public TransportEvent(j paramj, int paramInt, Address[] paramArrayOfAddress1, Address[] paramArrayOfAddress2, Address[] paramArrayOfAddress3, Message paramMessage)
  {
    super(paramj);
    this.type = paramInt;
    this.validSent = paramArrayOfAddress1;
    this.validUnsent = paramArrayOfAddress2;
    this.invalid = paramArrayOfAddress3;
    this.msg = paramMessage;
  }
  
  public void dispatch(Object paramObject)
  {
    int i = this.type;
    if (i == 1) {
      ((f)paramObject).c(this);
    } else if (i == 2) {
      ((f)paramObject).h(this);
    } else {
      ((f)paramObject).j(this);
    }
  }
  
  public Address[] getInvalidAddresses()
  {
    return this.invalid;
  }
  
  public Message getMessage()
  {
    return this.msg;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public Address[] getValidSentAddresses()
  {
    return this.validSent;
  }
  
  public Address[] getValidUnsentAddresses()
  {
    return this.validUnsent;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.event.TransportEvent
 * JD-Core Version:    0.7.0.1
 */