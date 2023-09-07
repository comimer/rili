package s6;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import b7.h;
import com.xiaomi.passport.ui.internal.ConfirmCredentialActivity;
import com.xiaomi.passport.ui.internal.PassportJsbWebViewActivity;
import com.xiaomi.passport.ui.page.AccountLoginActivity;
import com.xiaomi.passport.webview.UrlInterceptor;
import com.xiaomi.passport.webview.UrlLoadPrepareTask;
import l6.a;
import m6.e;
import m6.e.a;
import m6.e.b;
import m6.e.c;
import m6.e.d;
import m6.e.e;

public class d
  extends a
{
  public Intent b(Context paramContext)
  {
    return new Intent(paramContext, AccountLoginActivity.class);
  }
  
  public Intent d(Context paramContext, Parcelable paramParcelable, String paramString1, String paramString2, Bundle paramBundle)
  {
    paramContext = PassportJsbWebViewActivity.H(paramContext, new e.b().n(paramString1).m(true).i(true).j(e.c.a(h.a, true, null)).k(e.d.a(true)).g(e.a.b()).o(e.e.a(new UrlInterceptor[0], new UrlLoadPrepareTask[0], null)).h());
    paramContext.putExtra("service_id", paramString2);
    paramContext.putExtra("accountAuthenticatorResponse", paramParcelable);
    if (paramBundle != null) {
      paramContext.putExtras(paramBundle);
    }
    return paramContext;
  }
  
  public Intent f(Context paramContext)
  {
    return new Intent(paramContext, ConfirmCredentialActivity.class);
  }
  
  public Intent h(Context paramContext, e parame)
  {
    return PassportJsbWebViewActivity.H(paramContext, parame);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s6.d
 * JD-Core Version:    0.7.0.1
 */