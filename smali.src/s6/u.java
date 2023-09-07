package s6;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.sina.weibo.sdk.WbSdk;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.WbAuthListener;
import com.sina.weibo.sdk.auth.sso.SsoHandler;
import n5.g;

public class u
  extends f
{
  private SsoHandler f = null;
  
  public void b()
  {
    super.b();
    this.f = null;
  }
  
  public void l(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    paramActivity = this.f;
    if (paramActivity != null) {
      paramActivity.authorizeCallBack(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void o(final Activity paramActivity)
  {
    Object localObject = paramActivity.getApplicationContext();
    WbSdk.install((Context)localObject, new AuthInfo((Context)localObject, f((Context)localObject), paramActivity.getString(g.h1), ""));
    localObject = new SsoHandler(paramActivity);
    this.f = ((SsoHandler)localObject);
    ((SsoHandler)localObject).authorize(new a(paramActivity));
  }
  
  class a
    implements WbAuthListener
  {
    a(Activity paramActivity) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s6.u
 * JD-Core Version:    0.7.0.1
 */