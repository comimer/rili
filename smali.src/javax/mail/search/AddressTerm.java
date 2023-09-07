package javax.mail.search;

import javax.mail.Address;

public abstract class AddressTerm
  extends SearchTerm
{
  private static final long serialVersionUID = 2005405551929769980L;
  protected Address address;
  
  protected AddressTerm(Address paramAddress)
  {
    this.address = paramAddress;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AddressTerm)) {
      return false;
    }
    return ((AddressTerm)paramObject).address.equals(this.address);
  }
  
  public Address getAddress()
  {
    return this.address;
  }
  
  public int hashCode()
  {
    return this.address.hashCode();
  }
  
  protected boolean match(Address paramAddress)
  {
    return paramAddress.equals(this.address);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.AddressTerm
 * JD-Core Version:    0.7.0.1
 */