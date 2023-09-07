package p6;

import android.app.Activity;
import android.content.Intent;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.xiaomi.accountsdk.utils.k;

public class c
{
  public static IWXAPIEventHandler a;
  
  public static boolean a(Activity paramActivity, Intent paramIntent)
  {
    String str = k.b(paramActivity);
    paramActivity = WXAPIFactory.createWXAPI(paramActivity, str, true);
    paramActivity.registerApp(str);
    return paramActivity.handleIntent(paramIntent, new a());
  }
  
  class a
    implements IWXAPIEventHandler
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p6.c
 * JD-Core Version:    0.7.0.1
 */