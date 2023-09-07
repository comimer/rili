package h5;

import com.sun.mail.iap.ProtocolException;
import com.sun.mail.imap.protocol.b;
import com.sun.mail.imap.protocol.c;
import com.sun.mail.imap.protocol.e;
import javax.mail.Flags;
import javax.mail.FolderClosedException;
import javax.mail.Message;
import javax.mail.MessageRemovedException;
import javax.mail.MessagingException;
import javax.mail.MethodNotSupportedException;

public class f
  extends d
{
  private d C;
  
  f(d paramd, b paramb, c paramc, String paramString)
  {
    super(null);
    this.C = paramd;
    this.p = paramb;
    this.q = paramc;
    this.w = paramString;
    P(paramd.F());
  }
  
  protected void A()
    throws MessageRemovedException
  {
    this.C.A();
  }
  
  protected int C()
  {
    return this.C.C();
  }
  
  protected Object D()
  {
    return this.C.D();
  }
  
  protected e G()
    throws ProtocolException, FolderClosedException
  {
    return this.C.G();
  }
  
  protected int H()
  {
    return this.C.H();
  }
  
  protected boolean I()
  {
    return this.C.I();
  }
  
  protected boolean K()
    throws FolderClosedException
  {
    return this.C.K();
  }
  
  public int b()
    throws MessagingException
  {
    return this.p.d;
  }
  
  public boolean p()
  {
    return this.C.p();
  }
  
  public void r(Flags paramFlags, boolean paramBoolean)
    throws MessagingException
  {
    try
    {
      paramFlags = new javax/mail/MethodNotSupportedException;
      paramFlags.<init>("Cannot set flags on this nested message");
      throw paramFlags;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h5.f
 * JD-Core Version:    0.7.0.1
 */