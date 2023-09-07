package com.xiaomi.passport.ui.webview;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.xiaomi.passport.webview.UrlInterceptor;

public class SNSCodeUrlInterceptor
  implements UrlInterceptor
{
  public static final Parcelable.Creator<SNSCodeUrlInterceptor> CREATOR = new a();
  
  public SNSCodeUrlInterceptor() {}
  
  protected SNSCodeUrlInterceptor(Parcel paramParcel) {}
  
  public int describeContents()
  {
    return 0;
  }
  
  public void release() {}
  
  public boolean shouldIntercept(Context paramContext, String paramString)
  {
    String str = Uri.parse(paramString).getQueryParameter("code");
    if (str != null)
    {
      paramString = new Intent();
      paramString.putExtra("code", str);
      if ((paramContext instanceof Activity))
      {
        paramContext = (Activity)paramContext;
        paramContext.setResult(-1, paramString);
        paramContext.finish();
      }
      return true;
    }
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {}
  
  class a
    implements Parcelable.Creator<SNSCodeUrlInterceptor>
  {
    public SNSCodeUrlInterceptor a(Parcel paramParcel)
    {
      return new SNSCodeUrlInterceptor(paramParcel);
    }
    
    public SNSCodeUrlInterceptor[] b(int paramInt)
    {
      return new SNSCodeUrlInterceptor[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.webview.SNSCodeUrlInterceptor
 * JD-Core Version:    0.7.0.1
 */