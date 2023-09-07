package javax.mail.search;

import javax.mail.Message;
import javax.mail.e;

public final class SizeTerm
  extends IntegerComparisonTerm
{
  private static final long serialVersionUID = -2556219451005103709L;
  
  public SizeTerm(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof SizeTerm)) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  public boolean match(Message paramMessage)
  {
    try
    {
      int i = paramMessage.b();
      if (i == -1) {
        return false;
      }
      return super.match(i);
    }
    catch (Exception paramMessage) {}
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.SizeTerm
 * JD-Core Version:    0.7.0.1
 */