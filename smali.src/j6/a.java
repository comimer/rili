package j6;

import android.app.Activity;
import android.content.Context;
import com.xiaomi.accountsdk.account.data.Step2LoginParams;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import com.xiaomi.passport.uicontroller.PhoneLoginController.m;

public abstract class a
  implements PhoneLoginController.m
{
  public final Context a;
  
  public a(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public abstract void a(String paramString);
  
  public void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    Context localContext = this.a;
    if ((localContext instanceof Activity)) {
      u5.c.b((Activity)localContext, paramPassThroughErrorInfo);
    } else {
      a(z6.c.a(localContext, paramErrorCode));
    }
  }
  
  public void f(PhoneLoginController.ErrorCode paramErrorCode, String paramString, boolean paramBoolean)
  {
    a(z6.c.a(this.a, paramErrorCode));
  }
  
  public void g(Step2LoginParams paramStep2LoginParams)
  {
    throw new IllegalStateException("should never happens");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j6.a
 * JD-Core Version:    0.7.0.1
 */