package javax.mail.event;

public class FolderEvent
  extends MailEvent
{
  public static final int CREATED = 1;
  public static final int DELETED = 2;
  public static final int RENAMED = 3;
  private static final long serialVersionUID = 5278131310563694307L;
  protected transient javax.mail.b folder;
  protected transient javax.mail.b newFolder;
  protected int type;
  
  public FolderEvent(Object paramObject, javax.mail.b paramb, int paramInt)
  {
    this(paramObject, paramb, paramb, paramInt);
  }
  
  public FolderEvent(Object paramObject, javax.mail.b paramb1, javax.mail.b paramb2, int paramInt)
  {
    super(paramObject);
    this.folder = paramb1;
    this.newFolder = paramb2;
    this.type = paramInt;
  }
  
  public void dispatch(Object paramObject)
  {
    int i = this.type;
    if (i == 1) {
      ((b)paramObject).d(this);
    } else if (i == 2) {
      ((b)paramObject).m(this);
    } else if (i == 3) {
      ((b)paramObject).l(this);
    }
  }
  
  public javax.mail.b getFolder()
  {
    return this.folder;
  }
  
  public javax.mail.b getNewFolder()
  {
    return this.newFolder;
  }
  
  public int getType()
  {
    return this.type;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.event.FolderEvent
 * JD-Core Version:    0.7.0.1
 */