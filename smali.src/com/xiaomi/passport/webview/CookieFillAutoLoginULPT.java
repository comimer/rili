package com.xiaomi.passport.webview;

import android.accounts.Account;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import b7.h;
import b7.q;
import com.xiaomi.passport.accountmanager.g;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class CookieFillAutoLoginULPT
  implements UrlLoadPrepareTask
{
  public static final Parcelable.Creator<CookieFillAutoLoginULPT> CREATOR = new a();
  private final String autoLoginServiceId;
  private final String cookieUrl;
  
  protected CookieFillAutoLoginULPT(Parcel paramParcel)
  {
    this.autoLoginServiceId = paramParcel.readString();
    this.cookieUrl = paramParcel.readString();
  }
  
  public CookieFillAutoLoginULPT(String paramString1, String paramString2)
  {
    this.autoLoginServiceId = paramString1;
    this.cookieUrl = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void execute(Context paramContext, WeakReference<Context> paramWeakReference, Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    paramMap1 = g.z(paramContext).l();
    if (paramMap1 == null) {
      return;
    }
    paramWeakReference = new HashMap();
    paramMap2.put("userId", paramMap1.name);
    q.a(paramContext, this.autoLoginServiceId, paramWeakReference);
    h.g(this.cookieUrl, paramWeakReference);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.autoLoginServiceId);
    paramParcel.writeString(this.cookieUrl);
  }
  
  class a
    implements Parcelable.Creator<CookieFillAutoLoginULPT>
  {
    public CookieFillAutoLoginULPT a(Parcel paramParcel)
    {
      return new CookieFillAutoLoginULPT(paramParcel);
    }
    
    public CookieFillAutoLoginULPT[] b(int paramInt)
    {
      return new CookieFillAutoLoginULPT[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.webview.CookieFillAutoLoginULPT
 * JD-Core Version:    0.7.0.1
 */