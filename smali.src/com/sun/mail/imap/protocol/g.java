package com.sun.mail.imap.protocol;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.mail.internet.MailDateFormat;

public class g
  implements h
{
  static final char[] b = { 73, 78, 84, 69, 82, 78, 65, 76, 68, 65, 84, 69 };
  private static final MailDateFormat c = new MailDateFormat();
  private static SimpleDateFormat d = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss ", Locale.US);
  protected Date a;
  
  public Date a()
  {
    return this.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.imap.protocol.g
 * JD-Core Version:    0.7.0.1
 */