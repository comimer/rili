package javax.mail;

public class StoreClosedException
  extends MessagingException
{
  private static final long serialVersionUID = -3145392336120082655L;
  private transient i store;
  
  public StoreClosedException(i parami)
  {
    this(parami, null);
  }
  
  public StoreClosedException(i parami, String paramString)
  {
    super(paramString);
    this.store = parami;
  }
  
  public StoreClosedException(i parami, String paramString, Exception paramException)
  {
    super(paramString, paramException);
    this.store = parami;
  }
  
  public i getStore()
  {
    return this.store;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.StoreClosedException
 * JD-Core Version:    0.7.0.1
 */