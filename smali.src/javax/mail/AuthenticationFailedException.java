package javax.mail;

public class AuthenticationFailedException
  extends MessagingException
{
  private static final long serialVersionUID = 492080754054436511L;
  
  public AuthenticationFailedException() {}
  
  public AuthenticationFailedException(String paramString)
  {
    super(paramString);
  }
  
  public AuthenticationFailedException(String paramString, Exception paramException)
  {
    super(paramString, paramException);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.AuthenticationFailedException
 * JD-Core Version:    0.7.0.1
 */