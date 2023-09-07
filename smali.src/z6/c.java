package z6;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.ActivatorPhoneInfo.b;
import com.xiaomi.accountsdk.account.data.PasswordLoginParams.b;
import com.xiaomi.accountsdk.account.data.PhoneTicketLoginParams.b;
import com.xiaomi.accountsdk.account.data.PhoneTokenRegisterParams.b;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.accountsdk.account.data.d.b;
import com.xiaomi.accountsdk.account.data.e.b;
import com.xiaomi.accountsdk.account.exception.NeedNotificationException;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo.b;
import com.xiaomi.passport.data.LoginPreference;
import com.xiaomi.passport.snscorelib.internal.exception.SNSLoginException;
import com.xiaomi.passport.snscorelib.internal.request.SNSRequest.BindLimitException;
import com.xiaomi.passport.snscorelib.internal.request.SNSRequest.RedirectToWebLoginException;
import com.xiaomi.passport.ui.data.PhoneAccount;
import com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy;
import com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy.PrivacyReportInfo;
import com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy.Type;
import com.xiaomi.passport.uicontroller.PhoneLoginController;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import com.xiaomi.phonenum.data.AccountCertification;
import j6.d;
import j6.f;
import j6.h;
import java.io.IOException;
import java.util.ArrayList;
import r6.a.b;
import r6.a.d;
import s6.p;
import s6.s;

public class c
{
  public static String a(Context paramContext, PhoneLoginController.ErrorCode paramErrorCode)
  {
    String str = paramContext.getString(n5.g.M0);
    int i = c.a[paramErrorCode.ordinal()];
    if (i != 2)
    {
      if (i != 3)
      {
        if (i != 4) {
          paramContext = str;
        } else {
          paramContext = paramContext.getString(n5.g.e0);
        }
      }
      else {
        paramContext = paramContext.getString(n5.g.b0);
      }
    }
    else {
      paramContext = paramContext.getString(n5.g.W);
    }
    return paramContext;
  }
  
  public static void b(Activity paramActivity, AccountInfo paramAccountInfo, LoginAgreementAndPrivacy paramLoginAgreementAndPrivacy)
  {
    int i;
    if (paramAccountInfo == null) {
      i = 0;
    } else {
      i = -1;
    }
    Object localObject = paramActivity.getIntent();
    Parcelable localParcelable = ((Intent)localObject).getParcelableExtra("accountAuthenticatorResponse");
    localObject = b7.a.a(i, paramAccountInfo, ((Intent)localObject).getBooleanExtra("need_retry_on_authenticator_response_result", false));
    com.xiaomi.passport.accountmanager.g.z(paramActivity).i(localParcelable, (Bundle)localObject);
    p.j();
    paramActivity.setResult(i);
    if (paramAccountInfo != null) {
      i(paramActivity, paramAccountInfo, paramLoginAgreementAndPrivacy);
    }
    if (!paramActivity.isFinishing()) {
      paramActivity.finish();
    }
  }
  
  public static com.xiaomi.passport.uicontroller.a<AccountInfo> c(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, j6.a parama)
  {
    paramContext = new PasswordLoginParams.b();
    paramContext.B(paramString1);
    paramContext.y(paramString2);
    paramContext.s(paramString3);
    paramContext.z(paramString4);
    paramContext.q(paramString5);
    paramContext.r(paramString6);
    paramContext = paramContext.o();
    return new PhoneLoginController().g(paramContext, parama);
  }
  
  public static com.xiaomi.passport.uicontroller.a<AccountInfo> d(Context paramContext, String paramString, PhoneAccount paramPhoneAccount, j6.b paramb)
  {
    paramContext = new ActivatorPhoneInfo.b();
    paramContext.p(paramPhoneAccount.accountCertification.hashedPhoneNumber);
    paramContext.i(paramPhoneAccount.accountCertification.activatorToken);
    paramContext = paramContext.j();
    paramPhoneAccount = new PhoneTicketLoginParams.b();
    paramPhoneAccount.o(paramString);
    paramPhoneAccount.p(paramContext);
    paramContext = paramPhoneAccount.j();
    return new PhoneLoginController().l(paramContext, paramb);
  }
  
  public static com.xiaomi.passport.uicontroller.a<AccountInfo> e(Context paramContext, String paramString1, String paramString2, String paramString3, RegisterUserInfo paramRegisterUserInfo, j6.c paramc)
  {
    paramContext = b7.g.f(paramString2, paramString3);
    paramContext = new PhoneTicketLoginParams.b().o(paramString1).m(paramContext, paramRegisterUserInfo.ticketToken).j();
    return new PhoneLoginController().l(paramContext, paramc);
  }
  
  public static void f(Context paramContext, s6.c paramc, s6.b paramb, v6.a parama)
  {
    paramc.c(paramContext, paramb, new a(parama), new b());
  }
  
  public static com.xiaomi.passport.uicontroller.a<AccountInfo> g(Context paramContext, String paramString, PhoneAccount paramPhoneAccount, j6.e parame)
  {
    paramContext = new ActivatorPhoneInfo.b();
    paramContext.p(paramPhoneAccount.accountCertification.hashedPhoneNumber);
    paramContext.i(paramPhoneAccount.accountCertification.activatorToken);
    paramContext = paramContext.j();
    paramPhoneAccount = new PhoneTokenRegisterParams.b();
    paramPhoneAccount.m(paramString);
    paramPhoneAccount.j(paramContext);
    paramContext = paramPhoneAccount.h();
    return new PhoneLoginController().i(paramContext, parame);
  }
  
  public static com.xiaomi.passport.uicontroller.a<AccountInfo> h(String paramString1, String paramString2, String paramString3, RegisterUserInfo paramRegisterUserInfo, f paramf)
  {
    paramString2 = b7.g.f(paramString2, paramString3);
    paramString3 = new PhoneTokenRegisterParams.b();
    paramString3.m(paramString1);
    paramString3.k(paramString2, paramRegisterUserInfo.ticketToken);
    paramString1 = paramString3.h();
    return new PhoneLoginController().i(paramString1, paramf);
  }
  
  private static void i(Activity paramActivity, AccountInfo paramAccountInfo, LoginAgreementAndPrivacy paramLoginAgreementAndPrivacy)
  {
    ArrayList localArrayList = paramLoginAgreementAndPrivacy.privacyReportInfoList;
    if (paramLoginAgreementAndPrivacy.type != LoginAgreementAndPrivacy.Type.APP_CUSTOM) {
      localArrayList.add(new LoginAgreementAndPrivacy.PrivacyReportInfo("miaccount", paramAccountInfo.encryptedUserId, null, null));
    }
    com.xiaomi.passport.ui.license.a.c(paramActivity, localArrayList);
  }
  
  public static com.xiaomi.passport.uicontroller.a<LoginPreference> j(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, j6.g paramg)
  {
    return PhoneLoginController.f(b7.g.f(paramString1, paramString2), null, paramString3, paramString4, paramg);
  }
  
  public static com.xiaomi.passport.uicontroller.a<Integer> k(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, s6.g paramg, s params, h paramh)
  {
    paramContext = b7.g.f(paramString2, paramString3);
    paramContext = new e.b().p(paramString1).o(paramContext);
    if (paramg != null) {
      paramContext.n(paramg.a, paramg.b);
    }
    if (params != null)
    {
      paramContext.r(params.a);
      paramContext.l(params.b);
    }
    paramContext.q(paramString4);
    paramContext = paramContext.m();
    return new PhoneLoginController().j(paramContext, paramh);
  }
  
  public static com.xiaomi.passport.uicontroller.a<RegisterUserInfo> l(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, d paramd)
  {
    paramString2 = b7.g.f(paramString2, paramString3);
    paramContext = new d.b();
    paramContext.l(paramString2, paramString5);
    paramContext.o(paramString4);
    paramContext.m(paramString1);
    paramContext = paramContext.j();
    return new PhoneLoginController().h(paramContext, paramd);
  }
  
  public static void m(Context paramContext, AccountInfo paramAccountInfo)
  {
    if (!TextUtils.isEmpty(paramAccountInfo.passToken)) {
      com.xiaomi.passport.accountmanager.g.z(paramContext).q(paramAccountInfo);
    }
  }
  
  class a
    implements a.d<AccountInfo>
  {
    a() {}
    
    public void b(AccountInfo paramAccountInfo)
    {
      c.this.a(paramAccountInfo);
    }
  }
  
  class b
    implements a.b
  {
    b() {}
    
    public void a(Throwable paramThrowable)
    {
      if ((paramThrowable instanceof NeedNotificationException))
      {
        paramThrowable = ((NeedNotificationException)paramThrowable).getNotificationUrl();
        paramThrowable = com.xiaomi.passport.accountmanager.g.z(c.this).v("passportapi", paramThrowable, null, null);
        c.this.startActivity(paramThrowable);
        return;
      }
      Object localObject;
      if ((paramThrowable instanceof SNSRequest.RedirectToWebLoginException))
      {
        localObject = c.this;
        ((Context)localObject).startActivity(e.k((Context)localObject, ((SNSRequest.RedirectToWebLoginException)paramThrowable).getSNSBindParameter()));
        return;
      }
      if ((paramThrowable instanceof SNSRequest.BindLimitException))
      {
        a.a(c.this, n5.g.H0);
        return;
      }
      if ((paramThrowable instanceof IOException))
      {
        a.a(c.this, n5.g.w0);
        return;
      }
      if ((paramThrowable instanceof SNSLoginException))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("errorcode=");
        ((StringBuilder)localObject).append(((SNSLoginException)paramThrowable).getCode());
        ((StringBuilder)localObject).append("errormessage = ");
        ((StringBuilder)localObject).append(paramThrowable.getMessage());
        Log.e("LoginAndRegController", ((StringBuilder)localObject).toString());
        localObject = ((SNSLoginException)paramThrowable).getServerError();
        if (localObject != null)
        {
          Context localContext = c.this;
          if ((localContext instanceof Activity))
          {
            u5.c.c((Activity)localContext, (PassThroughErrorInfo)localObject, new PassThroughErrorInfo.b().c(c.this.getString(n5.g.W)).b(c.this.getString(n5.g.r0)).a());
            break label246;
          }
        }
        a.c(c.this, paramThrowable.getMessage());
        label246:
        return;
      }
      a.a(c.this, n5.g.x0);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z6.c
 * JD-Core Version:    0.7.0.1
 */