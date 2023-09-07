package j6;

import android.app.Activity;
import android.content.Context;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import com.xiaomi.passport.uicontroller.PhoneLoginController.r;
import n5.g;

public abstract class h
  implements PhoneLoginController.r
{
  public final Context a;
  
  public h(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public void a()
  {
    h(this.a.getString(g.V));
  }
  
  public void b(PhoneLoginController.ErrorCode paramErrorCode, String paramString, PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    paramString = this.a;
    if ((paramString instanceof Activity)) {
      u5.c.b((Activity)paramString, paramPassThroughErrorInfo);
    } else {
      h(z6.c.a(paramString, paramErrorCode));
    }
  }
  
  public void c()
  {
    h(this.a.getString(g.Z));
  }
  
  public void d(PhoneLoginController.ErrorCode paramErrorCode, String paramString)
  {
    h(z6.c.a(this.a, paramErrorCode));
  }
  
  public void f()
  {
    h(this.a.getString(g.X));
  }
  
  public void g(int paramInt)
  {
    i(paramInt);
  }
  
  public abstract void h(String paramString);
  
  public abstract void i(int paramInt);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j6.h
 * JD-Core Version:    0.7.0.1
 */