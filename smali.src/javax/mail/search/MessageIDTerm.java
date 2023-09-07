package javax.mail.search;

import javax.mail.Message;
import javax.mail.e;

public final class MessageIDTerm
  extends StringTerm
{
  private static final long serialVersionUID = -2121096296454691963L;
  
  public MessageIDTerm(String paramString)
  {
    super(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof MessageIDTerm)) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  public boolean match(Message paramMessage)
  {
    try
    {
      paramMessage = paramMessage.e("Message-ID");
      if (paramMessage == null) {
        return false;
      }
      for (int i = 0; i < paramMessage.length; i++) {
        if (super.match(paramMessage[i])) {
          return true;
        }
      }
    }
    catch (Exception paramMessage)
    {
      label41:
      break label41;
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.MessageIDTerm
 * JD-Core Version:    0.7.0.1
 */