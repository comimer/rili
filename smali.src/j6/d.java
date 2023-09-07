package j6;

import android.app.Activity;
import android.content.Context;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import com.xiaomi.passport.uicontroller.PhoneLoginController.p;
import n5.g;

public abstract class d
  implements PhoneLoginController.p
{
  public final Context a;
  
  public d(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public void a()
  {
    c(this.a.getString(g.V));
  }
  
  public void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    Context localContext = this.a;
    if ((localContext instanceof Activity)) {
      u5.c.b((Activity)localContext, paramPassThroughErrorInfo);
    } else {
      c(z6.c.a(localContext, paramErrorCode));
    }
  }
  
  public abstract void c(String paramString);
  
  public abstract void d(RegisterUserInfo paramRegisterUserInfo);
  
  public void e()
  {
    c(this.a.getString(g.Y));
  }
  
  public void f(RegisterUserInfo paramRegisterUserInfo)
  {
    d(paramRegisterUserInfo);
  }
  
  public void g(PhoneLoginController.ErrorCode paramErrorCode, String paramString)
  {
    c(z6.c.a(this.a, paramErrorCode));
  }
  
  public void h(RegisterUserInfo paramRegisterUserInfo)
  {
    d(paramRegisterUserInfo);
  }
  
  public void i(RegisterUserInfo paramRegisterUserInfo)
  {
    d(paramRegisterUserInfo);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j6.d
 * JD-Core Version:    0.7.0.1
 */