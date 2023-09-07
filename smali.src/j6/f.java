package j6;

import android.app.Activity;
import android.content.Context;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import com.xiaomi.passport.uicontroller.PhoneLoginController.o;
import n5.g;
import z6.e;

public abstract class f
  implements PhoneLoginController.o
{
  public final Context a;
  public final String b;
  
  public f(Context paramContext, String paramString)
  {
    this.a = paramContext;
    this.b = paramString;
  }
  
  public void a()
  {
    f(this.a.getString(g.v0));
    Context localContext = this.a;
    localContext.startActivity(e.j(localContext, this.b, null, null));
  }
  
  public void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    Context localContext = this.a;
    if ((localContext instanceof Activity)) {
      u5.c.b((Activity)localContext, paramPassThroughErrorInfo);
    } else {
      f(z6.c.a(localContext, paramErrorCode));
    }
  }
  
  public void c()
  {
    f(this.a.getString(g.q0));
  }
  
  public void d(PhoneLoginController.ErrorCode paramErrorCode, String paramString)
  {
    f(z6.c.a(this.a, paramErrorCode));
  }
  
  public abstract void f(String paramString);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j6.f
 * JD-Core Version:    0.7.0.1
 */