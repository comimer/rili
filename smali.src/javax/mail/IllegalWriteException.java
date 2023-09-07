package javax.mail;

public class IllegalWriteException
  extends MessagingException
{
  private static final long serialVersionUID = 3974370223328268013L;
  
  public IllegalWriteException() {}
  
  public IllegalWriteException(String paramString)
  {
    super(paramString);
  }
  
  public IllegalWriteException(String paramString, Exception paramException)
  {
    super(paramString, paramException);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.IllegalWriteException
 * JD-Core Version:    0.7.0.1
 */