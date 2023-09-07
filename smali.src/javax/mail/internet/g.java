package javax.mail.internet;

import com.sun.mail.util.FolderClosedIOException;
import java.io.IOException;
import java.io.InputStream;
import javax.mail.FolderClosedException;
import javax.mail.MessagingException;
import javax.mail.e;

public class g
  implements o7.g
{
  protected f a;
  
  public g(f paramf)
  {
    this.a = paramf;
  }
  
  public String a()
  {
    try
    {
      String str = this.a.a();
      return str;
    }
    catch (MessagingException localMessagingException) {}
    return "application/octet-stream";
  }
  
  public InputStream b()
    throws IOException
  {
    try
    {
      Object localObject1 = this.a;
      if ((localObject1 instanceof d))
      {
        localObject1 = ((d)localObject1).i();
      }
      else
      {
        if (!(localObject1 instanceof MimeMessage)) {
          break label68;
        }
        localObject1 = ((MimeMessage)localObject1).t();
      }
      localObject2 = this.a;
      String str = d.m((f)localObject2, ((f)localObject2).f());
      localObject2 = localObject1;
      if (str != null) {
        localObject2 = h.b((InputStream)localObject1, str);
      }
      return localObject2;
      label68:
      localObject1 = new javax/mail/MessagingException;
      ((MessagingException)localObject1).<init>("Unknown part");
      throw ((Throwable)localObject1);
    }
    catch (MessagingException localMessagingException)
    {
      Object localObject2 = new IOException(localMessagingException.getMessage());
      ((Throwable)localObject2).initCause(localMessagingException);
      throw ((Throwable)localObject2);
    }
    catch (FolderClosedException localFolderClosedException)
    {
      throw new FolderClosedIOException(localFolderClosedException.getFolder(), localFolderClosedException.getMessage());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.g
 * JD-Core Version:    0.7.0.1
 */