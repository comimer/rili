package r6;

import android.accounts.Account;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import com.xiaomi.accountsdk.account.XMPassport;
import com.xiaomi.accountsdk.account.data.XiaomiUserCoreInfo;
import com.xiaomi.accountsdk.account.data.XiaomiUserCoreInfo.Flag;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.CipherException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.data.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import x5.e;

public class b
  extends AsyncTask<Void, Void, XiaomiUserCoreInfo>
{
  @SuppressLint({"StaticFieldLeak"})
  private final Context a;
  private final a b;
  private final Account c;
  
  public b(Context paramContext, a parama)
  {
    this.a = paramContext;
    this.b = parama;
    this.c = g.z(paramContext).l();
  }
  
  public static XiaomiUserCoreInfo b(Context paramContext)
  {
    Account localAccount = g.z(paramContext).l();
    if (localAccount == null)
    {
      com.xiaomi.accountsdk.utils.b.g("QueryUserInfoTask", "no Xiaomi account, skip to query user info");
      return null;
    }
    a locala = a.h(paramContext, "passportapi");
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(XiaomiUserCoreInfo.Flag.BASE_INFO);
    localArrayList.add(XiaomiUserCoreInfo.Flag.BIND_ADDRESS);
    localArrayList.add(XiaomiUserCoreInfo.Flag.EXTRA_INFO);
    localArrayList.add(XiaomiUserCoreInfo.Flag.SETTING_INFO);
    localArrayList.add(XiaomiUserCoreInfo.Flag.FAMILY_INFO);
    if (locala == null)
    {
      com.xiaomi.accountsdk.utils.b.g("QueryUserInfoTask", "passportInfo is null");
      return null;
    }
    int i = 0;
    for (;;)
    {
      if (i < 2) {
        try
        {
          XiaomiUserCoreInfo localXiaomiUserCoreInfo = XMPassport.j(locala, "passportapi", localArrayList);
          if (localXiaomiUserCoreInfo != null)
          {
            e.b(paramContext, localAccount, localXiaomiUserCoreInfo);
            return localXiaomiUserCoreInfo;
          }
        }
        catch (AccessDeniedException paramContext)
        {
          com.xiaomi.accountsdk.utils.b.h("QueryUserInfoTask", "access denied when get user info", paramContext);
        }
        catch (AuthenticationFailureException localAuthenticationFailureException)
        {
          com.xiaomi.accountsdk.utils.b.h("QueryUserInfoTask", "auth failure when get user info", localAuthenticationFailureException);
          locala.i(paramContext);
          i++;
        }
        catch (IOException paramContext)
        {
          com.xiaomi.accountsdk.utils.b.h("QueryUserInfoTask", "IOException when get user info", paramContext);
        }
        catch (CipherException paramContext)
        {
          com.xiaomi.accountsdk.utils.b.h("QueryUserInfoTask", "CipherException when get user info", paramContext);
        }
        catch (InvalidResponseException paramContext)
        {
          com.xiaomi.accountsdk.utils.b.h("QueryUserInfoTask", "invalid response when get user info", paramContext);
        }
      }
    }
    return null;
  }
  
  protected XiaomiUserCoreInfo a(Void[] paramArrayOfVoid)
  {
    return b(this.a);
  }
  
  protected void c(XiaomiUserCoreInfo paramXiaomiUserCoreInfo)
  {
    a locala = this.b;
    if (locala != null) {
      locala.a(paramXiaomiUserCoreInfo);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(XiaomiUserCoreInfo paramXiaomiUserCoreInfo);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r6.b
 * JD-Core Version:    0.7.0.1
 */