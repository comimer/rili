package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ParsingException;
import com.sun.mail.iap.c;
import java.util.ArrayList;
import java.util.List;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

class IMAPAddress
  extends InternetAddress
{
  private static final long serialVersionUID = -3835822029483122232L;
  private boolean group = false;
  private InternetAddress[] grouplist;
  private String groupname;
  
  IMAPAddress(c paramc)
    throws ParsingException
  {
    paramc.g();
    if (paramc.d() == 40)
    {
      this.encodedPersonal = paramc.f();
      paramc.f();
      Object localObject1 = paramc.f();
      Object localObject2 = paramc.f();
      paramc.g();
      if (paramc.a(')'))
      {
        if (localObject2 == null)
        {
          this.group = true;
          this.groupname = ((String)localObject1);
          if (localObject1 == null) {
            return;
          }
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append(this.groupname);
          localStringBuilder.append(':');
          localObject2 = new ArrayList();
          while (paramc.c() != 41)
          {
            localObject1 = new IMAPAddress(paramc);
            if (((IMAPAddress)localObject1).isEndOfGroup()) {
              break;
            }
            if (((List)localObject2).size() != 0) {
              localStringBuilder.append(',');
            }
            localStringBuilder.append(((InternetAddress)localObject1).toString());
            ((List)localObject2).add(localObject1);
          }
          localStringBuilder.append(';');
          this.address = localStringBuilder.toString();
          this.grouplist = ((InternetAddress[])((List)localObject2).toArray(new IMAPAddress[((List)localObject2).size()]));
        }
        else if ((localObject1 != null) && (((String)localObject1).length() != 0))
        {
          if (((String)localObject2).length() == 0)
          {
            this.address = ((String)localObject1);
          }
          else
          {
            paramc = new StringBuilder();
            paramc.append((String)localObject1);
            paramc.append("@");
            paramc.append((String)localObject2);
            this.address = paramc.toString();
          }
        }
        else
        {
          this.address = ((String)localObject2);
        }
        return;
      }
      throw new ParsingException("ADDRESS parse error");
    }
    throw new ParsingException("ADDRESS parse error");
  }
  
  public InternetAddress[] getGroup(boolean paramBoolean)
    throws AddressException
  {
    InternetAddress[] arrayOfInternetAddress = this.grouplist;
    if (arrayOfInternetAddress == null) {
      return null;
    }
    return (InternetAddress[])arrayOfInternetAddress.clone();
  }
  
  boolean isEndOfGroup()
  {
    boolean bool;
    if ((this.group) && (this.groupname == null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isGroup()
  {
    return this.group;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.imap.protocol.IMAPAddress
 * JD-Core Version:    0.7.0.1
 */