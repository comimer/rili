package com.xiaomi.passport.webview;

import android.accounts.Account;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Base64;
import b7.h;
import com.xiaomi.accountsdk.utils.FidNonce.Type;
import com.xiaomi.passport.accountmanager.g;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class CookieFillAccountDeviceParamsULPT
  implements UrlLoadPrepareTask
{
  public static final Parcelable.Creator<CookieFillAccountDeviceParamsULPT> CREATOR = new a();
  public final String userAgent;
  
  protected CookieFillAccountDeviceParamsULPT(Parcel paramParcel)
  {
    this.userAgent = paramParcel.readString();
  }
  
  public CookieFillAccountDeviceParamsULPT(String paramString)
  {
    this.userAgent = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void execute(Context paramContext, WeakReference<Context> paramWeakReference, Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    paramWeakReference = new HashMap();
    h.b(paramWeakReference);
    h.c(paramWeakReference, FidNonce.Type.WEB_VIEW);
    paramMap1 = g.z(paramContext);
    paramContext = paramMap1.l();
    if (paramContext != null)
    {
      paramMap1 = paramMap1.b(paramContext);
      paramWeakReference.put("userId", paramContext.name);
      paramWeakReference.put("passToken", paramMap1);
    }
    paramWeakReference.put("NativeUserAgent", Base64.encodeToString(this.userAgent.getBytes(), 2));
    h.g(h.a, paramWeakReference);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.userAgent);
  }
  
  class a
    implements Parcelable.Creator<CookieFillAccountDeviceParamsULPT>
  {
    public CookieFillAccountDeviceParamsULPT a(Parcel paramParcel)
    {
      return new CookieFillAccountDeviceParamsULPT(paramParcel);
    }
    
    public CookieFillAccountDeviceParamsULPT[] b(int paramInt)
    {
      return new CookieFillAccountDeviceParamsULPT[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.webview.CookieFillAccountDeviceParamsULPT
 * JD-Core Version:    0.7.0.1
 */