package j6;

import android.app.Activity;
import android.content.Context;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import com.xiaomi.passport.uicontroller.PhoneLoginController.s;

public abstract class c
  implements PhoneLoginController.s
{
  public final Context a;
  
  protected c(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public void a()
  {
    h(this.a.getString(n5.g.V));
  }
  
  public void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    Context localContext = this.a;
    if ((localContext instanceof Activity)) {
      u5.c.b((Activity)localContext, paramPassThroughErrorInfo);
    } else {
      h(z6.c.a(localContext, paramErrorCode));
    }
  }
  
  public void c(String paramString1, String paramString2)
  {
    Context localContext = this.a;
    localContext.startActivity(com.xiaomi.passport.accountmanager.g.z(localContext).v(paramString1, paramString2, null, null));
  }
  
  public void e()
  {
    h(this.a.getString(n5.g.Y));
  }
  
  public void f(PhoneLoginController.ErrorCode paramErrorCode, String paramString, boolean paramBoolean)
  {
    h(z6.c.a(this.a, paramErrorCode));
  }
  
  public void g()
  {
    h(this.a.getString(n5.g.M0));
    b.g("LoginPhoneUserInfoCallback", "onTzSignInvalid");
  }
  
  public abstract void h(String paramString);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j6.c
 * JD-Core Version:    0.7.0.1
 */