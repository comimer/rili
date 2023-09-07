package com.xiaomi.passport.ui.webview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import b7.h;
import com.xiaomi.passport.webview.UrlLoadPrepareTask;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class SNSCookieBindULPT
  implements UrlLoadPrepareTask
{
  public static final Parcelable.Creator<SNSCookieBindULPT> CREATOR = new a();
  public final String snsTokenPh;
  public final String snsWeixinOpenId;
  
  protected SNSCookieBindULPT(Parcel paramParcel)
  {
    this.snsTokenPh = paramParcel.readString();
    this.snsWeixinOpenId = paramParcel.readString();
  }
  
  public SNSCookieBindULPT(String paramString1, String paramString2)
  {
    this.snsTokenPh = paramString1;
    this.snsWeixinOpenId = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void execute(Context paramContext, WeakReference<Context> paramWeakReference, Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    paramContext = new HashMap();
    paramContext.put("sns_token_ph", this.snsTokenPh);
    paramContext.put("sns_weixin_openId", this.snsWeixinOpenId);
    h.g(h.a, paramContext);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.snsTokenPh);
    paramParcel.writeString(this.snsWeixinOpenId);
  }
  
  class a
    implements Parcelable.Creator<SNSCookieBindULPT>
  {
    public SNSCookieBindULPT a(Parcel paramParcel)
    {
      return new SNSCookieBindULPT(paramParcel);
    }
    
    public SNSCookieBindULPT[] b(int paramInt)
    {
      return new SNSCookieBindULPT[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.webview.SNSCookieBindULPT
 * JD-Core Version:    0.7.0.1
 */