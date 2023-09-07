package javax.mail.search;

import javax.mail.Message;

public final class MessageNumberTerm
  extends IntegerComparisonTerm
{
  private static final long serialVersionUID = -5379625829658623812L;
  
  public MessageNumberTerm(int paramInt)
  {
    super(3, paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof MessageNumberTerm)) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  public boolean match(Message paramMessage)
  {
    try
    {
      int i = paramMessage.k();
      return super.match(i);
    }
    catch (Exception paramMessage) {}
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.MessageNumberTerm
 * JD-Core Version:    0.7.0.1
 */