package z6;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import b7.h;
import b7.j;
import com.xiaomi.accountsdk.account.d;
import com.xiaomi.passport.a;
import com.xiaomi.passport.jsb.ParcelablePassportJsbMethod;
import com.xiaomi.passport.snscorelib.internal.entity.SNSBindParameter;
import com.xiaomi.passport.ui.internal.PassportJsbWebViewActivity;
import com.xiaomi.passport.ui.webview.SNSCookieBindULPT;
import com.xiaomi.passport.ui.webview.SNSCookieBindUrlInterceptor;
import com.xiaomi.passport.webview.UrlInterceptor;
import com.xiaomi.passport.webview.UrlLoadPrepareTask;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import m6.e.a;
import m6.e.b;
import m6.e.c;
import m6.e.d;
import m6.e.e;

public class e
{
  public static Intent a(Context paramContext, String paramString)
  {
    return PassportJsbWebViewActivity.G(paramContext, paramString);
  }
  
  public static Intent b(Context paramContext, String paramString)
  {
    Intent localIntent1 = new Intent("android.intent.action.VIEW");
    localIntent1.setData(Uri.parse(paramString));
    Intent localIntent2 = localIntent1;
    if (paramContext.getPackageManager().queryIntentActivities(localIntent1, 0).isEmpty()) {
      localIntent2 = a(paramContext, paramString);
    }
    return localIntent2;
  }
  
  public static Intent c(Context paramContext)
  {
    return a(paramContext, "https://account.xiaomi.com/helpcenter/faq/_/02.faqs/05.sms-and-email-verification-code/faq-1");
  }
  
  public static Intent d(Context paramContext, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("_bannerBiz", paramString);
    return PassportJsbWebViewActivity.H(paramContext, new e.b().n(j.a(a.a, localHashMap)).g(e.a.b()).m(true).k(e.d.a(true)).i(true).h());
  }
  
  public static Intent e(Context paramContext)
  {
    return a(paramContext, "https://account.xiaomi.com/helpcenter");
  }
  
  public static Intent f(Context paramContext)
  {
    return i(paramContext, "bindEmail");
  }
  
  public static Intent g(Context paramContext)
  {
    return i(paramContext, "bindPhone");
  }
  
  public static Intent h(Context paramContext)
  {
    return i(paramContext, "setPassword");
  }
  
  private static Intent i(Context paramContext, String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(d.b);
    ((StringBuilder)localObject).append("/fe/service/account");
    localObject = ((StringBuilder)localObject).toString();
    HashMap localHashMap = new HashMap();
    localHashMap.put("_service", paramString);
    localHashMap.put("_dc", String.valueOf(System.currentTimeMillis()));
    return PassportJsbWebViewActivity.H(paramContext, new e.b().n(j.a((String)localObject, localHashMap)).m(true).j(e.c.a(h.a, true, "passportapi")).h());
  }
  
  public static Intent j(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("sid", paramString1);
    localHashMap.put("_uRegion", paramString2);
    localHashMap.put("_bannerBiz", paramString3);
    return PassportJsbWebViewActivity.H(paramContext, new e.b().n(j.a(d.s0, localHashMap)).g(e.a.b()).m(true).k(e.d.a(true)).i(true).h());
  }
  
  public static Intent k(Context paramContext, SNSBindParameter paramSNSBindParameter)
  {
    e.b localb = new e.b().n(paramSNSBindParameter.snsBindUrl).m(true).g(e.a.a("none", null));
    SNSCookieBindUrlInterceptor localSNSCookieBindUrlInterceptor = new SNSCookieBindUrlInterceptor(paramSNSBindParameter.hasLocalChannel);
    paramSNSBindParameter = new SNSCookieBindULPT(paramSNSBindParameter.sns_token_ph, paramSNSBindParameter.sns_weixin_openId);
    return PassportJsbWebViewActivity.H(paramContext, localb.o(e.e.a(new UrlInterceptor[] { localSNSCookieBindUrlInterceptor }, new UrlLoadPrepareTask[] { paramSNSBindParameter }, new ParcelablePassportJsbMethod[0])).h());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z6.e
 * JD-Core Version:    0.7.0.1
 */