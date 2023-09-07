package javax.mail.search;

import java.io.Serializable;
import javax.mail.Message;

public abstract class SearchTerm
  implements Serializable
{
  private static final long serialVersionUID = -6652358452205992789L;
  
  public abstract boolean match(Message paramMessage);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.SearchTerm
 * JD-Core Version:    0.7.0.1
 */