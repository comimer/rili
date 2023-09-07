package w6;

import android.content.Context;
import com.xiaomi.accountsdk.account.XMPassport;
import com.xiaomi.accountsdk.account.data.ActivatorPhoneInfo.b;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.accountsdk.account.data.d.b;
import com.xiaomi.accountsdk.account.exception.InvalidPhoneNumException;
import com.xiaomi.accountsdk.account.exception.InvalidVerifyCodeException;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.passport.ui.data.PhoneAccount;
import com.xiaomi.phonenum.data.AccountCertification;
import i7.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class b
  extends a
{
  public static List<PhoneAccount> a(Context paramContext, String paramString, i7.b paramb)
  {
    c localc = i7.a.a(paramContext);
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("query sid=");
    ((StringBuilder)localObject1).append(paramString);
    ((StringBuilder)localObject1).append(", flag=");
    ((StringBuilder)localObject1).append(paramb.a);
    com.xiaomi.accountsdk.utils.b.g("PhoneAutoPresenter", ((StringBuilder)localObject1).toString());
    AccountCertification[] arrayOfAccountCertification = localc.b(paramContext, paramString, paramb);
    int i = arrayOfAccountCertification.length;
    localObject1 = new PhoneAccount[i];
    int j = 0;
    for (int k = 0; k < i; k++) {
      if (arrayOfAccountCertification[k] != null)
      {
        paramb = new StringBuilder();
        paramb.append("query account slot ");
        paramb.append(k);
        paramb.append(" is valid, accountCert=");
        paramb.append(arrayOfAccountCertification[k]);
        com.xiaomi.accountsdk.utils.b.g("PhoneAutoPresenter", paramb.toString());
        try
        {
          paramb = new com/xiaomi/accountsdk/account/data/d$b;
          paramb.<init>();
          Object localObject2 = paramb.m(paramString).n(String.valueOf(arrayOfAccountCertification[k].subId));
          paramb = new com/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$b;
          paramb.<init>();
          paramb = XMPassport.y(((d.b)localObject2).k(paramb.q(k).i(arrayOfAccountCertification[k].activatorToken).p(arrayOfAccountCertification[k].hashedPhoneNumber).j()).j());
          localObject2 = new com/xiaomi/passport/ui/data/PhoneAccount;
          ((PhoneAccount)localObject2).<init>(arrayOfAccountCertification[k], paramb);
          localObject1[k] = localObject2;
          if (paramb == null) {
            continue;
          }
          y6.a.c(paramContext, paramb.avatarAddress);
        }
        catch (InvalidVerifyCodeException paramb)
        {
          localc.c(paramContext, paramString, arrayOfAccountCertification[k]);
          com.xiaomi.accountsdk.utils.b.h("PhoneAutoPresenter", "queryPhoneUserInfo", paramb);
        }
        catch (InvalidPhoneNumException paramb) {}catch (InvalidResponseException paramb) {}catch (IOException paramb) {}catch (AuthenticationFailureException paramb) {}catch (AccessDeniedException paramb) {}
        com.xiaomi.accountsdk.utils.b.h("PhoneAutoPresenter", "queryPhoneUserInfo", paramb);
      }
    }
    paramContext = new ArrayList();
    for (k = j; k < i; k++)
    {
      paramString = localObject1[k];
      if (paramString != null) {
        paramContext.add(paramString);
      }
    }
    return paramContext;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w6.b
 * JD-Core Version:    0.7.0.1
 */