package com.sun.mail.imap;

import java.util.Date;
import javax.mail.Message;
import javax.mail.search.SearchTerm;

public final class YoungerTerm
  extends SearchTerm
{
  private static final long serialVersionUID = 1592714210688163496L;
  private int interval;
  
  public YoungerTerm(int paramInt)
  {
    this.interval = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof YoungerTerm;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    if (this.interval == ((YoungerTerm)paramObject).interval) {
      bool2 = true;
    }
    return bool2;
  }
  
  public int getInterval()
  {
    return this.interval;
  }
  
  public int hashCode()
  {
    return this.interval;
  }
  
  public boolean match(Message paramMessage)
  {
    boolean bool = false;
    try
    {
      paramMessage = paramMessage.l();
      if (paramMessage == null) {
        return false;
      }
      if (paramMessage.getTime() >= System.currentTimeMillis() - this.interval * 1000L) {
        bool = true;
      }
    }
    catch (Exception paramMessage)
    {
      label36:
      break label36;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.imap.YoungerTerm
 * JD-Core Version:    0.7.0.1
 */