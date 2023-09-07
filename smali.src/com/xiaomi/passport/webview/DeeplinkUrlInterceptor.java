package com.xiaomi.passport.webview;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.xiaomi.accountsdk.utils.b;
import java.net.URISyntaxException;

public class DeeplinkUrlInterceptor
  implements UrlInterceptor
{
  public static final Parcelable.Creator<DeeplinkUrlInterceptor> CREATOR = new a();
  public static final String TAG = "DeeplinkUrlInterceptor";
  
  public DeeplinkUrlInterceptor() {}
  
  protected DeeplinkUrlInterceptor(Parcel paramParcel) {}
  
  public int describeContents()
  {
    return 0;
  }
  
  public void release() {}
  
  public boolean shouldIntercept(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    if ((!paramString.startsWith("http:")) && (!paramString.startsWith("https:"))) {
      try
      {
        Intent localIntent = Intent.parseUri(paramString, 1);
        if ((paramString.startsWith("smsto")) || (paramString.startsWith("tel")) || (paramString.startsWith("mailto"))) {
          localIntent.addFlags(268435456);
        }
        localIntent.setComponent(null);
        localIntent.setSelector(null);
        localIntent.addCategory("android.intent.category.BROWSABLE");
        try
        {
          paramContext.startActivity(localIntent);
          return true;
        }
        catch (Exception paramString)
        {
          paramContext = new StringBuilder();
          paramContext.append("Exception ");
          paramContext.append(paramString.getLocalizedMessage());
          b.g("WebViewWithState", paramContext.toString());
          return false;
        }
        return false;
      }
      catch (URISyntaxException paramString)
      {
        paramContext = new StringBuilder();
        paramContext.append("URISyntaxException ");
        paramContext.append(paramString.getLocalizedMessage());
        b.g("WebViewWithState", paramContext.toString());
      }
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {}
  
  class a
    implements Parcelable.Creator<DeeplinkUrlInterceptor>
  {
    public DeeplinkUrlInterceptor a(Parcel paramParcel)
    {
      return new DeeplinkUrlInterceptor(paramParcel);
    }
    
    public DeeplinkUrlInterceptor[] b(int paramInt)
    {
      return new DeeplinkUrlInterceptor[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.webview.DeeplinkUrlInterceptor
 * JD-Core Version:    0.7.0.1
 */