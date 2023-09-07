package javax.mail.internet;

import javax.mail.MessagingException;

public class AddressException
  extends ParseException
{
  private static final long serialVersionUID = 9134583443539323120L;
  protected int pos;
  protected String ref;
  
  public AddressException()
  {
    this.ref = null;
    this.pos = -1;
  }
  
  public AddressException(String paramString)
  {
    super(paramString);
    this.ref = null;
    this.pos = -1;
  }
  
  public AddressException(String paramString1, String paramString2)
  {
    super(paramString1);
    this.pos = -1;
    this.ref = paramString2;
  }
  
  public AddressException(String paramString1, String paramString2, int paramInt)
  {
    super(paramString1);
    this.ref = paramString2;
    this.pos = paramInt;
  }
  
  public int getPos()
  {
    return this.pos;
  }
  
  public String getRef()
  {
    return this.ref;
  }
  
  public String toString()
  {
    Object localObject1 = super.toString();
    if (this.ref == null) {
      return localObject1;
    }
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject1);
    ((StringBuilder)localObject2).append(" in string ``");
    ((StringBuilder)localObject2).append(this.ref);
    ((StringBuilder)localObject2).append("''");
    localObject2 = ((StringBuilder)localObject2).toString();
    if (this.pos < 0) {
      return localObject2;
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append((String)localObject2);
    ((StringBuilder)localObject1).append(" at position ");
    ((StringBuilder)localObject1).append(this.pos);
    return ((StringBuilder)localObject1).toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.AddressException
 * JD-Core Version:    0.7.0.1
 */