package w5;

import com.xiaomi.accountsdk.account.stat.AccountStatInterface;
import java.net.SocketTimeoutException;

public class b
  implements b6.c
{
  private void d(c paramc)
  {
    try
    {
      AccountStatInterface.b().d(paramc);
    }
    catch (Exception paramc)
    {
      com.xiaomi.accountsdk.utils.b.h("MiStatsNetworkReporter", "Why does trackNetAvailable() throw exception?", paramc);
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    d(new c.a().f(paramString3).c(System.currentTimeMillis()).a());
  }
  
  public void b(String paramString1, String paramString2, String paramString3, long paramLong, Exception paramException, Integer paramInteger)
  {
    int i;
    if ((paramException instanceof SocketTimeoutException)) {
      i = 2;
    } else {
      i = 1;
    }
    paramString1 = new c.a().f(paramString3).c(paramLong).b(paramException.getClass().getSimpleName()).e(i);
    if (paramInteger != null) {
      paramString1.d(paramInteger.intValue());
    }
    d(paramString1.a());
  }
  
  public void c(String paramString1, String paramString2, String paramString3, long paramLong, int paramInt1, int paramInt2)
  {
    d(new c.a().f(paramString3).c(paramLong).d(paramInt1).e(0).a());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w5.b
 * JD-Core Version:    0.7.0.1
 */