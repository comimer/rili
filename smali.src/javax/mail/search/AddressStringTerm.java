package javax.mail.search;

import javax.mail.Address;
import javax.mail.internet.InternetAddress;

public abstract class AddressStringTerm
  extends StringTerm
{
  private static final long serialVersionUID = 3086821234204980368L;
  
  protected AddressStringTerm(String paramString)
  {
    super(paramString, true);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AddressStringTerm)) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  protected boolean match(Address paramAddress)
  {
    if ((paramAddress instanceof InternetAddress)) {
      return super.match(((InternetAddress)paramAddress).toUnicodeString());
    }
    return super.match(paramAddress.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.AddressStringTerm
 * JD-Core Version:    0.7.0.1
 */