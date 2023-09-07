package javax.mail.search;

import java.util.Date;
import javax.mail.Message;

public final class ReceivedDateTerm
  extends DateTerm
{
  private static final long serialVersionUID = -2756695246195503170L;
  
  public ReceivedDateTerm(int paramInt, Date paramDate)
  {
    super(paramInt, paramDate);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ReceivedDateTerm)) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  public boolean match(Message paramMessage)
  {
    try
    {
      paramMessage = paramMessage.l();
      if (paramMessage == null) {
        return false;
      }
      return super.match(paramMessage);
    }
    catch (Exception paramMessage) {}
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.ReceivedDateTerm
 * JD-Core Version:    0.7.0.1
 */