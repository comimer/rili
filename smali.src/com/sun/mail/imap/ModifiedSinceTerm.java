package com.sun.mail.imap;

import h5.d;
import javax.mail.Message;
import javax.mail.search.SearchTerm;

public final class ModifiedSinceTerm
  extends SearchTerm
{
  private static final long serialVersionUID = 5151457469634727992L;
  private long modseq;
  
  public ModifiedSinceTerm(long paramLong)
  {
    this.modseq = paramLong;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof ModifiedSinceTerm;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    if (this.modseq == ((ModifiedSinceTerm)paramObject).modseq) {
      bool2 = true;
    }
    return bool2;
  }
  
  public long getModSeq()
  {
    return this.modseq;
  }
  
  public int hashCode()
  {
    return (int)this.modseq;
  }
  
  public boolean match(Message paramMessage)
  {
    bool1 = false;
    bool2 = bool1;
    try
    {
      if ((paramMessage instanceof d))
      {
        long l = ((d)paramMessage).E();
        bool2 = bool1;
        if (l >= this.modseq) {
          bool2 = true;
        }
      }
    }
    catch (Exception paramMessage)
    {
      for (;;)
      {
        bool2 = bool1;
      }
    }
    return bool2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.imap.ModifiedSinceTerm
 * JD-Core Version:    0.7.0.1
 */