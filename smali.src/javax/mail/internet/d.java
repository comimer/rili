package javax.mail.internet;

import com.sun.mail.util.FolderClosedIOException;
import com.sun.mail.util.MessageRemovedIOException;
import com.sun.mail.util.h;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.mail.FolderClosedException;
import javax.mail.Message;
import javax.mail.MessageRemovedException;
import javax.mail.MessagingException;

public class d
  extends javax.mail.a
  implements f
{
  private static final boolean g = h.b("mail.mime.setdefaulttextcharset", true);
  private static final boolean h = h.b("mail.mime.setcontenttypefilename", true);
  private static final boolean i = h.b("mail.mime.encodefilename", false);
  private static final boolean j = h.b("mail.mime.decodefilename", false);
  private static final boolean k = h.b("mail.mime.ignoremultipartencoding", true);
  private static final boolean l = h.b("mail.mime.allowutf8", true);
  static final boolean m = h.b("mail.mime.cachemultipart", true);
  protected o7.e b;
  protected byte[] c;
  protected InputStream d;
  protected c e;
  protected Object f;
  
  public d()
  {
    this.e = new c();
  }
  
  public d(InputStream paramInputStream)
    throws MessagingException
  {
    Object localObject = paramInputStream;
    if (!(paramInputStream instanceof ByteArrayInputStream))
    {
      localObject = paramInputStream;
      if (!(paramInputStream instanceof BufferedInputStream))
      {
        localObject = paramInputStream;
        if (!(paramInputStream instanceof i)) {
          localObject = new BufferedInputStream(paramInputStream);
        }
      }
    }
    this.e = new c((InputStream)localObject);
    if ((localObject instanceof i))
    {
      paramInputStream = (i)localObject;
      this.d = paramInputStream.c(paramInputStream.getPosition(), -1L);
    }
    try
    {
      this.c = com.sun.mail.util.a.a((InputStream)localObject);
      return;
    }
    catch (IOException paramInputStream)
    {
      throw new MessagingException("Error reading input stream", paramInputStream);
    }
  }
  
  public d(c paramc, byte[] paramArrayOfByte)
    throws MessagingException
  {
    this.e = paramc;
    this.c = paramArrayOfByte;
  }
  
  static String k(f paramf)
    throws MessagingException
  {
    paramf = paramf.g("Content-Transfer-Encoding", null);
    if (paramf == null) {
      return null;
    }
    String str = paramf.trim();
    if (str.length() == 0) {
      return null;
    }
    paramf = str;
    if (!str.equalsIgnoreCase("7bit"))
    {
      paramf = str;
      if (!str.equalsIgnoreCase("8bit"))
      {
        paramf = str;
        if (!str.equalsIgnoreCase("quoted-printable"))
        {
          paramf = str;
          if (!str.equalsIgnoreCase("binary")) {
            if (str.equalsIgnoreCase("base64"))
            {
              paramf = str;
            }
            else
            {
              paramf = new b(str, "()<>@,;:\\\"\t []/?=");
              b.a locala;
              int n;
              do
              {
                locala = paramf.e();
                n = locala.a();
                if (n == -4) {
                  return str;
                }
              } while (n != -1);
              paramf = locala.b();
            }
          }
        }
      }
    }
    return paramf;
  }
  
  static boolean l(f paramf, String paramString)
    throws MessagingException
  {
    paramf = paramf.a();
    boolean bool;
    try
    {
      a locala1 = new javax/mail/internet/a;
      locala1.<init>(paramf);
      bool = locala1.d(paramString);
      return bool;
    }
    catch (ParseException localParseException1) {}
    try
    {
      int n = paramf.indexOf(';');
      if (n > 0)
      {
        a locala2 = new javax/mail/internet/a;
        locala2.<init>(paramf.substring(0, n));
        bool = locala2.d(paramString);
        return bool;
      }
    }
    catch (ParseException localParseException2)
    {
      label61:
      break label61;
    }
    return paramf.equalsIgnoreCase(paramString);
  }
  
  static String m(f paramf, String paramString)
    throws MessagingException
  {
    if ((k) && (paramString != null) && (!paramString.equalsIgnoreCase("7bit")) && (!paramString.equalsIgnoreCase("8bit")) && (!paramString.equalsIgnoreCase("binary")))
    {
      paramf = paramf.a();
      if (paramf == null) {
        return paramString;
      }
    }
    try
    {
      a locala = new javax/mail/internet/a;
      locala.<init>(paramf);
      if (locala.d("multipart/*")) {
        return null;
      }
      if (locala.d("message/*"))
      {
        boolean bool = h.b("mail.mime.allowencodedmessages", false);
        if (!bool) {
          return null;
        }
      }
    }
    catch (ParseException paramf)
    {
      label98:
      break label98;
    }
    return paramString;
  }
  
  public String a()
    throws MessagingException
  {
    String str1 = com.sun.mail.util.g.a(this, g("Content-Type", null));
    String str2 = str1;
    if (str1 == null) {
      str2 = "text/plain";
    }
    return str2;
  }
  
  public boolean c(String paramString)
    throws MessagingException
  {
    return l(this, paramString);
  }
  
  public Object d()
    throws IOException, MessagingException
  {
    Object localObject = this.f;
    if (localObject != null) {
      return localObject;
    }
    try
    {
      localObject = j().e();
      if ((m) && (((localObject instanceof javax.mail.d)) || ((localObject instanceof Message))) && ((this.c != null) || (this.d != null)))
      {
        this.f = localObject;
        if ((localObject instanceof e)) {
          ((e)localObject).j();
        }
      }
      return localObject;
    }
    catch (MessageRemovedIOException localMessageRemovedIOException)
    {
      throw new MessageRemovedException(localMessageRemovedIOException.getMessage());
    }
    catch (FolderClosedIOException localFolderClosedIOException)
    {
      throw new FolderClosedException(localFolderClosedIOException.getFolder(), localFolderClosedIOException.getMessage());
    }
  }
  
  public String f()
    throws MessagingException
  {
    return k(this);
  }
  
  public String g(String paramString1, String paramString2)
    throws MessagingException
  {
    return this.e.b(paramString1, paramString2);
  }
  
  protected InputStream i()
    throws MessagingException
  {
    InputStream localInputStream = this.d;
    if (localInputStream != null) {
      return ((i)localInputStream).c(0L, -1L);
    }
    if (this.c != null) {
      return new ByteArrayInputStream(this.c);
    }
    throw new MessagingException("No MimeBodyPart content");
  }
  
  public o7.e j()
    throws MessagingException
  {
    if (this.b == null) {
      this.b = new a(this);
    }
    return this.b;
  }
  
  static class a
    extends o7.e
  {
    f m;
    
    public a(f paramf)
    {
      super();
      this.m = paramf;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.d
 * JD-Core Version:    0.7.0.1
 */