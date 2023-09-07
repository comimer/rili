package javax.mail.internet;

import com.sun.mail.util.FolderClosedIOException;
import com.sun.mail.util.MessageRemovedIOException;
import com.sun.mail.util.g;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import javax.mail.Address;
import javax.mail.Flags;
import javax.mail.Flags.a;
import javax.mail.FolderClosedException;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessageRemovedException;
import javax.mail.MessagingException;
import p7.a;

public class MimeMessage
  extends Message
  implements f
{
  private static final MailDateFormat n = new MailDateFormat();
  private static final Flags o = new Flags(Flags.a.b);
  protected o7.e d;
  protected byte[] e;
  protected InputStream f;
  protected c g = new c();
  protected Flags h = new Flags();
  protected boolean i = true;
  protected boolean j = false;
  protected Object k;
  private boolean l = true;
  private boolean m = false;
  
  public MimeMessage(javax.mail.h paramh)
  {
    super(paramh);
    w();
  }
  
  private Address[] s(String paramString)
    throws MessagingException
  {
    paramString = g(paramString, ",");
    if (paramString == null) {
      paramString = null;
    } else {
      paramString = InternetAddress.parseHeader(paramString, this.l);
    }
    return paramString;
  }
  
  private String v(Message.RecipientType paramRecipientType)
    throws MessagingException
  {
    if (paramRecipientType == Message.RecipientType.TO)
    {
      paramRecipientType = "To";
    }
    else if (paramRecipientType == Message.RecipientType.CC)
    {
      paramRecipientType = "Cc";
    }
    else if (paramRecipientType == Message.RecipientType.BCC)
    {
      paramRecipientType = "Bcc";
    }
    else
    {
      if (paramRecipientType != RecipientType.NEWSGROUPS) {
        break label51;
      }
      paramRecipientType = "Newsgroups";
    }
    return paramRecipientType;
    label51:
    throw new MessagingException("Invalid Recipient Type");
  }
  
  private void w() {}
  
  public String a()
    throws MessagingException
  {
    String str1 = g.a(this, g("Content-Type", null));
    String str2 = str1;
    if (str1 == null) {
      str2 = "text/plain";
    }
    return str2;
  }
  
  public int b()
    throws MessagingException
  {
    Object localObject = this.e;
    if (localObject != null) {
      return localObject.length;
    }
    localObject = this.f;
    if (localObject != null) {}
    try
    {
      int i1 = ((InputStream)localObject).available();
      if (i1 > 0) {
        return i1;
      }
    }
    catch (IOException localIOException)
    {
      label32:
      break label32;
    }
    return -1;
  }
  
  public boolean c(String paramString)
    throws MessagingException
  {
    return d.l(this, paramString);
  }
  
  public Object d()
    throws IOException, MessagingException
  {
    Object localObject = this.k;
    if (localObject != null) {
      return localObject;
    }
    try
    {
      localObject = u().e();
      if ((d.m) && (((localObject instanceof javax.mail.d)) || ((localObject instanceof Message))) && ((this.e != null) || (this.f != null)))
      {
        this.k = localObject;
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
  
  public String[] e(String paramString)
    throws MessagingException
  {
    return this.g.c(paramString);
  }
  
  public String f()
    throws MessagingException
  {
    return d.k(this);
  }
  
  public String g(String paramString1, String paramString2)
    throws MessagingException
  {
    return this.g.b(paramString1, paramString2);
  }
  
  public Flags h()
    throws MessagingException
  {
    try
    {
      Flags localFlags = (Flags)this.h.clone();
      return localFlags;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Address[] j()
    throws MessagingException
  {
    Address[] arrayOfAddress1 = s("From");
    Address[] arrayOfAddress2 = arrayOfAddress1;
    if (arrayOfAddress1 == null) {
      arrayOfAddress2 = s("Sender");
    }
    return arrayOfAddress2;
  }
  
  public Date l()
    throws MessagingException
  {
    return null;
  }
  
  public Address[] m(Message.RecipientType paramRecipientType)
    throws MessagingException
  {
    if (paramRecipientType == RecipientType.NEWSGROUPS)
    {
      paramRecipientType = g("Newsgroups", ",");
      if (paramRecipientType == null) {
        paramRecipientType = null;
      } else {
        paramRecipientType = NewsAddress.parse(paramRecipientType);
      }
      return paramRecipientType;
    }
    return s(v(paramRecipientType));
  }
  
  public Date n()
    throws MessagingException
  {
    Object localObject1 = g("Date", null);
    if (localObject1 != null) {}
    try
    {
      synchronized (n)
      {
        localObject1 = ???.parse((String)localObject1);
        return localObject1;
      }
    }
    catch (ParseException localParseException)
    {
      label33:
      break label33;
    }
    return null;
  }
  
  public String o()
    throws MessagingException
  {
    Object localObject = g("Subject", null);
    if (localObject == null) {
      return null;
    }
    try
    {
      String str = h.d(h.u((String)localObject));
      localObject = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      label24:
      break label24;
    }
    return localObject;
  }
  
  public void r(Flags paramFlags, boolean paramBoolean)
    throws MessagingException
  {
    if (paramBoolean) {}
    try
    {
      this.h.add(paramFlags);
      break label25;
      this.h.remove(paramFlags);
      label25:
      return;
    }
    finally {}
  }
  
  protected InputStream t()
    throws MessagingException
  {
    InputStream localInputStream = this.f;
    if (localInputStream != null) {
      return ((i)localInputStream).c(0L, -1L);
    }
    if (this.e != null) {
      return new a(this.e);
    }
    throw new MessagingException("No MimeMessage content");
  }
  
  public o7.e u()
    throws MessagingException
  {
    try
    {
      if (this.d == null)
      {
        localObject1 = new javax/mail/internet/d$a;
        ((d.a)localObject1).<init>(this);
        this.d = ((o7.e)localObject1);
      }
      Object localObject1 = this.d;
      return localObject1;
    }
    finally {}
  }
  
  public boolean x(Flags.a parama)
    throws MessagingException
  {
    try
    {
      boolean bool = this.h.contains(parama);
      return bool;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  public static class RecipientType
    extends Message.RecipientType
  {
    public static final RecipientType NEWSGROUPS = new RecipientType("Newsgroups");
    private static final long serialVersionUID = -5468290701714395543L;
    
    protected RecipientType(String paramString)
    {
      super();
    }
    
    protected Object readResolve()
      throws ObjectStreamException
    {
      if (this.type.equals("Newsgroups")) {
        return NEWSGROUPS;
      }
      return super.readResolve();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.MimeMessage
 * JD-Core Version:    0.7.0.1
 */