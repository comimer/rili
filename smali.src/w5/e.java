package w5;

import android.content.Context;
import com.ot.pubsub.Configuration.Builder;
import com.ot.pubsub.PubSubTrack;
import com.xiaomi.accountsdk.account.stat.AccountStatInterface;
import java.util.Map;

public class e
  extends AccountStatInterface
{
  private final PubSubTrack b;
  
  public e(Context paramContext, boolean paramBoolean)
  {
    this.b = PubSubTrack.createInstance(paramContext, new Configuration.Builder().setAppId("31000401513").setChannel("default").setInternational(paramBoolean).setPrivateKeyId("05c0962f3ced93ddb5558f1c6fcb7f0ffa86d338").setProjectId("xiaomiaccount").build());
    PubSubTrack.setAccessNetworkEnable(paramContext, false);
    PubSubTrack.setDebugMode(false);
    e(AccountStatInterface.a(paramContext));
  }
  
  public void d(c paramc) {}
  
  public void e(Map<String, Object> paramMap)
  {
    this.b.setCommonProperty(paramMap);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w5.e
 * JD-Core Version:    0.7.0.1
 */