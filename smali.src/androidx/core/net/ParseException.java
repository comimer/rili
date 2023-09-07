package androidx.core.net;

public class ParseException
  extends RuntimeException
{
  public final String response;
  
  ParseException(String paramString)
  {
    super(paramString);
    this.response = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.net.ParseException
 * JD-Core Version:    0.7.0.1
 */