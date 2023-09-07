package com.xiaomi.passport.webview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import b7.h;
import java.lang.ref.WeakReference;
import java.util.Map;

public class RemoveAllCookiesULPT
  implements UrlLoadPrepareTask
{
  public static final Parcelable.Creator<RemoveAllCookiesULPT> CREATOR = new a();
  
  public RemoveAllCookiesULPT() {}
  
  protected RemoveAllCookiesULPT(Parcel paramParcel) {}
  
  public int describeContents()
  {
    return 0;
  }
  
  public void execute(Context paramContext, WeakReference<Context> paramWeakReference, Map<String, String> paramMap1, Map<String, String> paramMap2) {}
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {}
  
  class a
    implements Parcelable.Creator<RemoveAllCookiesULPT>
  {
    public RemoveAllCookiesULPT a(Parcel paramParcel)
    {
      return new RemoveAllCookiesULPT(paramParcel);
    }
    
    public RemoveAllCookiesULPT[] b(int paramInt)
    {
      return new RemoveAllCookiesULPT[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.webview.RemoveAllCookiesULPT
 * JD-Core Version:    0.7.0.1
 */