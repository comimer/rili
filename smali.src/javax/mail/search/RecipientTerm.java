package javax.mail.search;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Message.RecipientType;

public final class RecipientTerm
  extends AddressTerm
{
  private static final long serialVersionUID = 6548700653122680468L;
  private Message.RecipientType type;
  
  public RecipientTerm(Message.RecipientType paramRecipientType, Address paramAddress)
  {
    super(paramAddress);
    this.type = paramRecipientType;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof RecipientTerm;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    bool1 = bool2;
    if (((RecipientTerm)paramObject).type.equals(this.type))
    {
      bool1 = bool2;
      if (super.equals(paramObject)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public Message.RecipientType getRecipientType()
  {
    return this.type;
  }
  
  public int hashCode()
  {
    return this.type.hashCode() + super.hashCode();
  }
  
  public boolean match(Message paramMessage)
  {
    try
    {
      paramMessage = paramMessage.m(this.type);
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
 * Qualified Name:     javax.mail.search.RecipientTerm
 * JD-Core Version:    0.7.0.1
 */