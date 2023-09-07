package com.xiaomi.passport.webview;

import a6.k.d;
import a6.l;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.webkit.CookieManager;
import b7.h;
import com.xiaomi.accountsdk.account.data.AccountInfo.b;
import com.xiaomi.accountsdk.account.data.NotificationAuthResult;
import com.xiaomi.accountsdk.account.data.NotificationAuthResult.b;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.utils.XMPassportUtil;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.accountmanager.g;
import java.io.IOException;
import java.util.Map;
import r6.a.a;
import r6.a.d;

public class CookieLoginUrlInterceptor
  implements UrlInterceptor
{
  private static final String AUTH_END = "auth-end";
  public static final Parcelable.Creator<CookieLoginUrlInterceptor> CREATOR = new a();
  private static final String LOGIN_END = "login-end";
  private static final String PASS_INFO = "passInfo";
  private r6.a mAuthEndTask;
  private final boolean mCloseAfterLogin;
  private final Activity mHostActivity;
  
  public CookieLoginUrlInterceptor(Activity paramActivity, boolean paramBoolean)
  {
    this.mHostActivity = paramActivity;
    this.mCloseAfterLogin = paramBoolean;
  }
  
  protected CookieLoginUrlInterceptor(Parcel paramParcel)
  {
    throw new IllegalStateException("can not be created from parcel");
  }
  
  private void handleResponse(Bundle paramBundle)
  {
    Intent localIntent = this.mHostActivity.getIntent();
    if (localIntent != null) {
      g.z(this.mHostActivity).i(localIntent.getParcelableExtra("accountAuthenticatorResponse"), paramBundle);
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void release()
  {
    r6.a locala = this.mAuthEndTask;
    if (locala != null)
    {
      locala.a();
      this.mAuthEndTask = null;
    }
  }
  
  public boolean shouldIntercept(Context paramContext, String paramString)
  {
    paramContext = CookieManager.getInstance();
    String str1 = h.a;
    paramContext = paramContext.getCookie(str1);
    String str2 = (String)h.e(paramContext).get("passInfo");
    h.f(str1, "passInfo");
    if ("login-end".equals(str2))
    {
      paramString = XMPassportUtil.c(paramContext);
      paramContext = XMPassportUtil.d(paramContext);
      paramContext = new AccountInfo.b().F(paramContext).w(paramString).r();
      if (g.z(this.mHostActivity).l() == null) {
        g.z(this.mHostActivity).q(paramContext);
      }
      paramContext = b7.a.b(paramContext, this.mHostActivity.getIntent().getBooleanExtra("need_retry_on_authenticator_response_result", false));
      handleResponse(paramContext);
      if (this.mCloseAfterLogin)
      {
        paramString = new Intent();
        paramString.putExtras(paramContext);
        this.mHostActivity.setResult(-1, paramString);
        this.mHostActivity.finish();
      }
      return false;
    }
    if (("auth-end".equals(str2)) && (this.mCloseAfterLogin))
    {
      paramString = new b(paramString);
      if (this.mCloseAfterLogin) {
        paramContext = new c(this.mHostActivity);
      } else {
        paramContext = null;
      }
      paramContext = new r6.a(paramString, paramContext, null);
      this.mAuthEndTask = paramContext;
      paramContext.c();
      return true;
    }
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    throw new IllegalStateException("can not write to parcel");
  }
  
  class a
    implements Parcelable.Creator<CookieLoginUrlInterceptor>
  {
    public CookieLoginUrlInterceptor a(Parcel paramParcel)
    {
      return new CookieLoginUrlInterceptor(paramParcel);
    }
    
    public CookieLoginUrlInterceptor[] b(int paramInt)
    {
      return new CookieLoginUrlInterceptor[paramInt];
    }
  }
  
  private static class b
    implements a.a<NotificationAuthResult>
  {
    public final String a;
    
    public b(String paramString)
    {
      this.a = paramString;
    }
    
    public NotificationAuthResult a()
    {
      try
      {
        try
        {
          Object localObject = l.h(this.a, null, null, false);
          if (localObject != null)
          {
            Map localMap = ((k.d)localObject).c();
            if (localMap != null)
            {
              localObject = new com/xiaomi/accountsdk/account/data/NotificationAuthResult$b;
              ((NotificationAuthResult.b)localObject).<init>();
              localObject = ((NotificationAuthResult.b)localObject).e((String)localMap.get("userId")).d((String)localMap.get("serviceToken")).b((String)localMap.get("passportsecurity_ph")).c((String)localMap.get("passportsecurity_slh")).a();
              return localObject;
            }
          }
        }
        catch (AuthenticationFailureException localAuthenticationFailureException)
        {
          b.h("SNSManager", "auth error", localAuthenticationFailureException);
        }
        catch (AccessDeniedException localAccessDeniedException)
        {
          b.h("SNSManager", "access denied", localAccessDeniedException);
        }
        catch (IOException localIOException)
        {
          b.h("SNSManager", "network error", localIOException);
        }
        return null;
      }
      catch (RuntimeException localRuntimeException)
      {
        b.h("SNSManager", "runtime exception", localRuntimeException);
      }
      return null;
    }
  }
  
  private static class c
    implements a.d<NotificationAuthResult>
  {
    public final Activity a;
    
    public c(Activity paramActivity)
    {
      this.a = paramActivity;
    }
    
    public void b(NotificationAuthResult paramNotificationAuthResult)
    {
      Intent localIntent = new Intent();
      if (paramNotificationAuthResult != null)
      {
        localIntent.putExtra("notification_auth_end", paramNotificationAuthResult);
        this.a.setResult(-1, localIntent);
      }
      else
      {
        this.a.setResult(0, localIntent);
      }
      this.a.finish();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.webview.CookieLoginUrlInterceptor
 * JD-Core Version:    0.7.0.1
 */