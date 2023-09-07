package javax.mail;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Date;

public abstract class Message
  implements e
{
  protected int a = 0;
  protected boolean b = false;
  protected b c = null;
  
  protected Message(h paramh) {}
  
  public abstract Flags h()
    throws MessagingException;
  
  public b i()
  {
    return this.c;
  }
  
  public abstract Address[] j()
    throws MessagingException;
  
  public int k()
  {
    return this.a;
  }
  
  public abstract Date l()
    throws MessagingException;
  
  public abstract Address[] m(RecipientType paramRecipientType)
    throws MessagingException;
  
  public abstract Date n()
    throws MessagingException;
  
  public abstract String o()
    throws MessagingException;
  
  public boolean p()
  {
    return this.b;
  }
  
  public void q(Flags.a parama, boolean paramBoolean)
    throws MessagingException
  {
    r(new Flags(parama), paramBoolean);
  }
  
  public abstract void r(Flags paramFlags, boolean paramBoolean)
    throws MessagingException;
  
  public static class RecipientType
    implements Serializable
  {
    public static final RecipientType BCC = new RecipientType("Bcc");
    public static final RecipientType CC;
    public static final RecipientType TO = new RecipientType("To");
    private static final long serialVersionUID = -7479791750606340008L;
    protected String type;
    
    static
    {
      CC = new RecipientType("Cc");
    }
    
    protected RecipientType(String paramString)
    {
      this.type = paramString;
    }
    
    protected Object readResolve()
      throws ObjectStreamException
    {
      if (this.type.equals("To")) {
        return TO;
      }
      if (this.type.equals("Cc")) {
        return CC;
      }
      if (this.type.equals("Bcc")) {
        return BCC;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Attempt to resolve unknown RecipientType: ");
      localStringBuilder.append(this.type);
      throw new InvalidObjectException(localStringBuilder.toString());
    }
    
    public String toString()
    {
      return this.type;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.Message
 * JD-Core Version:    0.7.0.1
 */