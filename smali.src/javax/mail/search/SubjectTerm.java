package javax.mail.search;

import javax.mail.Message;

public final class SubjectTerm
  extends StringTerm
{
  private static final long serialVersionUID = 7481568618055573432L;
  
  public SubjectTerm(String paramString)
  {
    super(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof SubjectTerm)) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  public boolean match(Message paramMessage)
  {
    try
    {
      paramMessage = paramMessage.o();
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
 * Qualified Name:     javax.mail.search.SubjectTerm
 * JD-Core Version:    0.7.0.1
 */