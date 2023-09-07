package com.xiaomi.passport.ui.webview;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.webkit.CookieManager;
import b7.h;
import com.xiaomi.accountsdk.account.data.AccountInfo.b;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.webview.UrlInterceptor;
import java.util.Map;

public class SNSCookieBindUrlInterceptor
  implements UrlInterceptor
{
  public static final Parcelable.Creator<SNSCookieBindUrlInterceptor> CREATOR = new a();
  public static final String EXTRA_PARCEL_ACCOUNT_INFO = "account_info";
  public final Boolean hasLocalChannel;
  
  protected SNSCookieBindUrlInterceptor(Parcel paramParcel)
  {
    this.hasLocalChannel = ((Boolean)paramParcel.readValue(Boolean.class.getClassLoader()));
  }
  
  public SNSCookieBindUrlInterceptor(Boolean paramBoolean)
  {
    this.hasLocalChannel = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void release() {}
  
  public boolean shouldIntercept(Context paramContext, String paramString)
  {
    paramString = h.e(CookieManager.getInstance().getCookie(paramString));
    if (paramString.containsKey("sns-bind-step"))
    {
      Object localObject = (String)paramString.get("sns-bind-step");
      if (("bind-finish".equals(localObject)) || ("bind-cancel".equals(localObject)))
      {
        localObject = (String)paramString.get("passToken");
        paramString = (String)paramString.get("userId");
        paramString = new AccountInfo.b().F(paramString).w((String)localObject).t(this.hasLocalChannel).r();
        g.z(paramContext).q(paramString);
        if ((paramContext instanceof Activity))
        {
          paramContext = (Activity)paramContext;
          localObject = new Intent();
          ((Intent)localObject).putExtra("account_info", paramString);
          paramContext.setResult(-1, (Intent)localObject);
          paramContext.finish();
        }
        return true;
      }
    }
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(this.hasLocalChannel);
  }
  
  class a
    implements Parcelable.Creator<SNSCookieBindUrlInterceptor>
  {
    public SNSCookieBindUrlInterceptor a(Parcel paramParcel)
    {
      return new SNSCookieBindUrlInterceptor(paramParcel);
    }
    
    public SNSCookieBindUrlInterceptor[] b(int paramInt)
    {
      return new SNSCookieBindUrlInterceptor[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.webview.SNSCookieBindUrlInterceptor
 * JD-Core Version:    0.7.0.1
 */