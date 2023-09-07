package javax.mail;

public class FolderNotFoundException
  extends MessagingException
{
  private static final long serialVersionUID = 472612108891249403L;
  private transient b folder;
  
  public FolderNotFoundException() {}
  
  public FolderNotFoundException(String paramString, b paramb)
  {
    super(paramString);
    this.folder = paramb;
  }
  
  public FolderNotFoundException(b paramb)
  {
    this.folder = paramb;
  }
  
  public FolderNotFoundException(b paramb, String paramString)
  {
    super(paramString);
    this.folder = paramb;
  }
  
  public FolderNotFoundException(b paramb, String paramString, Exception paramException)
  {
    super(paramString, paramException);
    this.folder = paramb;
  }
  
  public b getFolder()
  {
    return this.folder;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.FolderNotFoundException
 * JD-Core Version:    0.7.0.1
 */