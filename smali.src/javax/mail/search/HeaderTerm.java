package javax.mail.search;

import java.util.Locale;
import javax.mail.Message;
import javax.mail.e;

public final class HeaderTerm
  extends StringTerm
{
  private static final long serialVersionUID = 8342514650333389122L;
  private String headerName;
  
  public HeaderTerm(String paramString1, String paramString2)
  {
    super(paramString2);
    this.headerName = paramString1;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof HeaderTerm;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    paramObject = (HeaderTerm)paramObject;
    bool1 = bool2;
    if (paramObject.headerName.equalsIgnoreCase(this.headerName))
    {
      bool1 = bool2;
      if (super.equals(paramObject)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String getHeaderName()
  {
    return this.headerName;
  }
  
  public int hashCode()
  {
    return this.headerName.toLowerCase(Locale.ENGLISH).hashCode() + super.hashCode();
  }
  
  public boolean match(Message paramMessage)
  {
    try
    {
      paramMessage = paramMessage.e(this.headerName);
      if (paramMessage == null) {
        return false;
      }
      for (int i = 0; i < paramMessage.length; i++) {
        if (super.match(paramMessage[i])) {
          return true;
        }
      }
    }
    catch (Exception paramMessage)
    {
      label43:
      break label43;
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.HeaderTerm
 * JD-Core Version:    0.7.0.1
 */