package javax.mail;

public class NoSuchProviderException
  extends MessagingException
{
  private static final long serialVersionUID = 8058319293154708827L;
  
  public NoSuchProviderException() {}
  
  public NoSuchProviderException(String paramString)
  {
    super(paramString);
  }
  
  public NoSuchProviderException(String paramString, Exception paramException)
  {
    super(paramString, paramException);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.NoSuchProviderException
 * JD-Core Version:    0.7.0.1
 */