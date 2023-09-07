package at.bitfire.dav4jvm.exception;

import at.bitfire.dav4jvm.Dav4jvm;
import at.bitfire.dav4jvm.HttpUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.a0;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;", "Lat/bitfire/dav4jvm/exception/HttpException;", "Ljava/util/Date;", "retryAfter", "Ljava/util/Date;", "getRetryAfter", "()Ljava/util/Date;", "setRetryAfter", "(Ljava/util/Date;)V", "", "message", "<init>", "(Ljava/lang/String;)V", "Lokhttp3/a0;", "response", "(Lokhttp3/a0;)V", "build"}, k=1, mv={1, 4, 0})
public final class ServiceUnavailableException
  extends HttpException
{
  private Date retryAfter;
  
  public ServiceUnavailableException(String paramString)
  {
    super(503, paramString);
  }
  
  public ServiceUnavailableException(a0 parama0)
  {
    super(parama0);
    Object localObject = null;
    String str = a0.z(parama0, "Retry-After", null, 2, null);
    if (str != null)
    {
      parama0 = HttpUtils.INSTANCE.parseDate(str);
      if (parama0 == null) {
        try
        {
          int i = Integer.parseInt(str);
          parama0 = Calendar.getInstance();
          parama0.add(13, i);
          r.b(parama0, "cal");
          parama0 = parama0.getTime();
        }
        catch (NumberFormatException parama0)
        {
          Dav4jvm.INSTANCE.getLog().warning("Received Retry-After which was not a HTTP-date nor delta-seconds");
          parama0 = localObject;
        }
      }
      this.retryAfter = parama0;
    }
  }
  
  public final Date getRetryAfter()
  {
    return this.retryAfter;
  }
  
  public final void setRetryAfter(Date paramDate)
  {
    this.retryAfter = paramDate;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.exception.ServiceUnavailableException
 * JD-Core Version:    0.7.0.1
 */