package w5;

import android.content.Context;
import android.net.Uri;
import com.xiaomi.accountsdk.account.stat.AccountStatInterface;
import com.xiaomi.onetrack.Configuration.Builder;
import com.xiaomi.onetrack.OneTrack;
import com.xiaomi.onetrack.OneTrack.Mode;
import com.xiaomi.onetrack.ServiceQualityEvent.Builder;
import com.xiaomi.onetrack.ServiceQualityEvent.ResultType;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class d
  extends AccountStatInterface
{
  private final OneTrack b;
  
  public d(Context paramContext, boolean paramBoolean)
  {
    this.b = OneTrack.createInstance(paramContext, new Configuration.Builder().setAppId("31000000503").setMode(OneTrack.Mode.APP).setChannel("default").setAutoTrackActivityAction(true).setExceptionCatcherEnable(true).setInternational(paramBoolean).build());
    OneTrack.setAccessNetworkEnable(paramContext, false);
    OneTrack.setDebugMode(false);
    f(AccountStatInterface.a(paramContext));
    b6.d.b(new b());
  }
  
  private ServiceQualityEvent.Builder e(String paramString)
  {
    HashMap localHashMap = new HashMap();
    paramString = Uri.parse(paramString);
    String str1 = paramString.getScheme();
    String str2 = paramString.getPath();
    String str3 = paramString.getHost();
    if (!paramString.isOpaque())
    {
      Iterator localIterator = paramString.getQueryParameterNames().iterator();
      while (localIterator.hasNext())
      {
        String str4 = (String)localIterator.next();
        localHashMap.put(str4, paramString.getQueryParameter(str4));
      }
    }
    return new ServiceQualityEvent.Builder().setScheme(str1).setHost(str2).setPath(str3).setExtraParams(localHashMap);
  }
  
  public void d(c paramc)
  {
    ServiceQualityEvent.ResultType localResultType = ServiceQualityEvent.ResultType.SUCCESS;
    int i = paramc.e;
    if (i == 1) {
      localResultType = ServiceQualityEvent.ResultType.FAILED;
    } else if (i == 2) {
      localResultType = ServiceQualityEvent.ResultType.TIMEOUT;
    }
    paramc = e(paramc.a).setResponseCode(Integer.valueOf(paramc.f)).setResultType(localResultType).setRequestTimestamp(Long.valueOf(paramc.b)).setRetryCount(Integer.valueOf(paramc.g)).setDuration(Long.valueOf(paramc.c)).setExceptionTag(paramc.h).build();
    this.b.trackServiceQualityEvent(paramc);
  }
  
  public void f(Map<String, Object> paramMap)
  {
    this.b.setCommonProperty(paramMap);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w5.d
 * JD-Core Version:    0.7.0.1
 */