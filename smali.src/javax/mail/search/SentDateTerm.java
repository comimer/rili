package javax.mail.search;

import java.util.Date;
import javax.mail.Message;

public final class SentDateTerm
  extends DateTerm
{
  private static final long serialVersionUID = 5647755030530907263L;
  
  public SentDateTerm(int paramInt, Date paramDate)
  {
    super(paramInt, paramDate);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof SentDateTerm)) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  public boolean match(Message paramMessage)
  {
    try
    {
      paramMessage = paramMessage.n();
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
 * Qualified Name:     javax.mail.search.SentDateTerm
 * JD-Core Version:    0.7.0.1
 */