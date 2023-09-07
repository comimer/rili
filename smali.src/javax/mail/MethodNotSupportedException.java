package javax.mail;

public class MethodNotSupportedException
  extends MessagingException
{
  private static final long serialVersionUID = -3757386618726131322L;
  
  public MethodNotSupportedException() {}
  
  public MethodNotSupportedException(String paramString)
  {
    super(paramString);
  }
  
  public MethodNotSupportedException(String paramString, Exception paramException)
  {
    super(paramString, paramException);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.MethodNotSupportedException
 * JD-Core Version:    0.7.0.1
 */