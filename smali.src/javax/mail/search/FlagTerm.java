package javax.mail.search;

import javax.mail.Flags;
import javax.mail.Message;
import javax.mail.MessagingException;

public final class FlagTerm
  extends SearchTerm
{
  private static final long serialVersionUID = -142991500302030647L;
  private Flags flags;
  private boolean set;
  
  public FlagTerm(Flags paramFlags, boolean paramBoolean)
  {
    this.flags = paramFlags;
    this.set = paramBoolean;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof FlagTerm;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    paramObject = (FlagTerm)paramObject;
    bool1 = bool2;
    if (paramObject.set == this.set)
    {
      bool1 = bool2;
      if (paramObject.flags.equals(this.flags)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public Flags getFlags()
  {
    return (Flags)this.flags.clone();
  }
  
  public boolean getTestSet()
  {
    return this.set;
  }
  
  public int hashCode()
  {
    int i;
    if (this.set) {
      i = this.flags.hashCode();
    } else {
      i = this.flags.hashCode();
    }
    return i;
  }
  
  public boolean match(Message paramMessage)
  {
    try
    {
      paramMessage = paramMessage.h();
      if (this.set) {
        return paramMessage.contains(this.flags);
      }
      Object localObject = this.flags.getSystemFlags();
      for (int i = 0; i < localObject.length; i++) {
        if (paramMessage.contains(localObject[i])) {
          return false;
        }
      }
      localObject = this.flags.getUserFlags();
      for (i = 0; i < localObject.length; i++)
      {
        boolean bool = paramMessage.contains(localObject[i]);
        if (bool) {
          return false;
        }
      }
      return true;
    }
    catch (MessagingException|RuntimeException paramMessage) {}
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.FlagTerm
 * JD-Core Version:    0.7.0.1
 */