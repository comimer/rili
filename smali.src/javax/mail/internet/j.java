package javax.mail.internet;

import java.util.concurrent.atomic.AtomicInteger;

class j
{
  private static AtomicInteger a = new AtomicInteger();
  
  public static String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long l = localStringBuilder.hashCode();
    localStringBuilder.append("----=_Part_");
    localStringBuilder.append(a.getAndIncrement());
    localStringBuilder.append("_");
    localStringBuilder.append(l);
    localStringBuilder.append('.');
    localStringBuilder.append(System.currentTimeMillis());
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.j
 * JD-Core Version:    0.7.0.1
 */