package j6;

import android.app.Activity;
import android.content.Context;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import com.xiaomi.passport.uicontroller.PhoneLoginController.n;

public abstract class g
  implements PhoneLoginController.n
{
  public final Context a;
  
  public g(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public void a()
  {
    e(this.a.getString(n5.g.V));
  }
  
  public void b(PhoneLoginController.ErrorCode paramErrorCode, String paramString, PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    paramString = this.a;
    if ((paramString instanceof Activity)) {
      u5.c.b((Activity)paramString, paramPassThroughErrorInfo);
    } else {
      e(z6.c.a(paramString, paramErrorCode));
    }
  }
  
  public void d(PhoneLoginController.ErrorCode paramErrorCode, String paramString)
  {
    e(z6.c.a(this.a, paramErrorCode));
  }
  
  public abstract void e(String paramString);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j6.g
 * JD-Core Version:    0.7.0.1
 */