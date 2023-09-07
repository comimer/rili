package javax.mail.search;

import javax.mail.Message;
import javax.mail.Message.RecipientType;

public final class RecipientStringTerm
  extends AddressStringTerm
{
  private static final long serialVersionUID = -8293562089611618849L;
  private Message.RecipientType type;
  
  public RecipientStringTerm(Message.RecipientType paramRecipientType, String paramString)
  {
    super(paramString);
    this.type = paramRecipientType;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof RecipientStringTerm;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    bool1 = bool2;
    if (((RecipientStringTerm)paramObject).type.equals(this.type))
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
 * Qualified Name:     javax.mail.search.RecipientStringTerm
 * JD-Core Version:    0.7.0.1
 */