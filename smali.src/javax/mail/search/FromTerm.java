package javax.mail.search;

import javax.mail.Address;
import javax.mail.Message;

public final class FromTerm
  extends AddressTerm
{
  private static final long serialVersionUID = 5214730291502658665L;
  
  public FromTerm(Address paramAddress)
  {
    super(paramAddress);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof FromTerm)) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  public boolean match(Message paramMessage)
  {
    try
    {
      paramMessage = paramMessage.j();
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
      label37:
      break label37;
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.FromTerm
 * JD-Core Version:    0.7.0.1
 */