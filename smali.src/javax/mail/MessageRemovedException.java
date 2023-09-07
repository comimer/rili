package javax.mail;

public class MessageRemovedException
  extends MessagingException
{
  private static final long serialVersionUID = 1951292550679528690L;
  
  public MessageRemovedException() {}
  
  public MessageRemovedException(String paramString)
  {
    super(paramString);
  }
  
  public MessageRemovedException(String paramString, Exception paramException)
  {
    super(paramString, paramException);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.MessageRemovedException
 * JD-Core Version:    0.7.0.1
 */