package javax.mail.search;

import java.io.IOException;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.d;
import javax.mail.e;

public final class BodyTerm
  extends StringTerm
{
  private static final long serialVersionUID = -4888862527916911385L;
  
  public BodyTerm(String paramString)
  {
    super(paramString);
  }
  
  private boolean matchPart(e parame)
  {
    try
    {
      if (parame.c("text/*"))
      {
        parame = (String)parame.d();
        if (parame == null) {
          return false;
        }
        return super.match(parame);
      }
      if (parame.c("multipart/*"))
      {
        parame = (d)parame.d();
        int i = parame.c();
        for (int j = 0; j < i; j++) {
          if (matchPart(parame.b(j))) {
            return true;
          }
        }
      }
      if (parame.c("message/rfc822"))
      {
        boolean bool = matchPart((e)parame.d());
        return bool;
      }
    }
    catch (MessagingException|IOException|RuntimeException parame)
    {
      label115:
      break label115;
    }
    return false;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof BodyTerm)) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  public boolean match(Message paramMessage)
  {
    return matchPart(paramMessage);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.BodyTerm
 * JD-Core Version:    0.7.0.1
 */