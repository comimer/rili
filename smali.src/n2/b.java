package n2;

import java.nio.charset.Charset;
import java.security.MessageDigest;

public abstract interface b
{
  public static final Charset a = Charset.forName("UTF-8");
  
  public abstract void a(MessageDigest paramMessageDigest);
  
  public abstract boolean equals(Object paramObject);
  
  public abstract int hashCode();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n2.b
 * JD-Core Version:    0.7.0.1
 */