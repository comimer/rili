package s6;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelmsg.SendAuth.Req;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import n5.g;
import z6.a;

public class t
  extends p
{
  public t()
  {
    super("weixin");
  }
  
  public static boolean t(final Activity paramActivity, Intent paramIntent)
  {
    t localt = new t();
    String str = localt.f(paramActivity);
    IWXAPI localIWXAPI = WXAPIFactory.createWXAPI(paramActivity, str, true);
    localIWXAPI.registerApp(str);
    return localIWXAPI.handleIntent(paramIntent, new a(localt, paramActivity));
  }
  
  private boolean u(Context paramContext, String paramString)
  {
    boolean bool = false;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      if (paramContext != null) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  private boolean v(Context paramContext)
  {
    return u(paramContext, "com.tencent.mm");
  }
  
  public String f(Context paramContext)
  {
    return paramContext.getString(g.f1);
  }
  
  public void o(Activity paramActivity)
  {
    if (!v(paramActivity))
    {
      a.c(paramActivity, paramActivity.getString(g.a1));
      return;
    }
    Object localObject = f(paramActivity);
    paramActivity = WXAPIFactory.createWXAPI(paramActivity, (String)localObject, true);
    paramActivity.registerApp((String)localObject);
    localObject = new SendAuth.Req();
    ((SendAuth.Req)localObject).scope = r();
    ((SendAuth.Req)localObject).state = s();
    paramActivity.sendReq((BaseReq)localObject);
  }
  
  public String r()
  {
    return "snsapi_userinfo";
  }
  
  public String s()
  {
    return "wx_api_passport";
  }
  
  class a
    implements IWXAPIEventHandler
  {
    a(Activity paramActivity) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s6.t
 * JD-Core Version:    0.7.0.1
 */