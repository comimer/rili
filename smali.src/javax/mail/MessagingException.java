package javax.mail;

public class MessagingException
  extends Exception
{
  private static final long serialVersionUID = -7569192289819959253L;
  private Exception next;
  
  public MessagingException()
  {
    initCause(null);
  }
  
  public MessagingException(String paramString)
  {
    super(paramString);
    initCause(null);
  }
  
  public MessagingException(String paramString, Exception paramException)
  {
    super(paramString);
    this.next = paramException;
    initCause(null);
  }
  
  private final String superToString()
  {
    return super.toString();
  }
  
  public Throwable getCause()
  {
    try
    {
      Exception localException = this.next;
      return localException;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Exception getNextException()
  {
    try
    {
      Exception localException = this.next;
      return localException;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean setNextException(Exception paramException)
  {
    Object localObject = this;
    try
    {
      while (((localObject instanceof MessagingException)) && (((MessagingException)localObject).next != null)) {
        localObject = ((MessagingException)localObject).next;
      }
      if ((localObject instanceof MessagingException))
      {
        ((MessagingException)localObject).next = paramException;
        return true;
      }
      return false;
    }
    finally {}
  }
  
  public String toString()
  {
    try
    {
      String str = super.toString();
      Exception localException = this.next;
      if (localException == null) {
        return str;
      }
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      Object localObject1 = str;
      if (str == null) {
        localObject1 = "";
      }
      localStringBuilder.<init>((String)localObject1);
      localObject1 = localException;
      while (localObject1 != null)
      {
        localStringBuilder.append(";\n  nested exception is:\n\t");
        if ((localObject1 instanceof MessagingException))
        {
          localObject1 = (MessagingException)localObject1;
          localStringBuilder.append(((MessagingException)localObject1).superToString());
          localObject1 = ((MessagingException)localObject1).next;
        }
        else
        {
          localStringBuilder.append(localObject1.toString());
          localObject1 = null;
        }
      }
      localObject1 = localStringBuilder.toString();
      return localObject1;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.MessagingException
 * JD-Core Version:    0.7.0.1
 */