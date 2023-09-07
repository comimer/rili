package javax.mail;

public class SendFailedException
  extends MessagingException
{
  private static final long serialVersionUID = -6457531621682372913L;
  protected transient Address[] invalid;
  protected transient Address[] validSent;
  protected transient Address[] validUnsent;
  
  public SendFailedException() {}
  
  public SendFailedException(String paramString)
  {
    super(paramString);
  }
  
  public SendFailedException(String paramString, Exception paramException)
  {
    super(paramString, paramException);
  }
  
  public SendFailedException(String paramString, Exception paramException, Address[] paramArrayOfAddress1, Address[] paramArrayOfAddress2, Address[] paramArrayOfAddress3)
  {
    super(paramString, paramException);
    this.validSent = paramArrayOfAddress1;
    this.validUnsent = paramArrayOfAddress2;
    this.invalid = paramArrayOfAddress3;
  }
  
  public Address[] getInvalidAddresses()
  {
    return this.invalid;
  }
  
  public Address[] getValidSentAddresses()
  {
    return this.validSent;
  }
  
  public Address[] getValidUnsentAddresses()
  {
    return this.validUnsent;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.SendFailedException
 * JD-Core Version:    0.7.0.1
 */