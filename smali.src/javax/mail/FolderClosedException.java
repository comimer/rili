package javax.mail;

public class FolderClosedException
  extends MessagingException
{
  private static final long serialVersionUID = 1687879213433302315L;
  private transient b folder;
  
  public FolderClosedException(b paramb)
  {
    this(paramb, null);
  }
  
  public FolderClosedException(b paramb, String paramString)
  {
    super(paramString);
    this.folder = paramb;
  }
  
  public FolderClosedException(b paramb, String paramString, Exception paramException)
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
 * Qualified Name:     javax.mail.FolderClosedException
 * JD-Core Version:    0.7.0.1
 */