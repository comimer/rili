package com.xiaomi.passport.webview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import b7.b;
import java.lang.ref.WeakReference;
import java.util.Map;

public class HeaderFillActivatorTokenULPT
  implements UrlLoadPrepareTask
{
  public static final Parcelable.Creator<HeaderFillActivatorTokenULPT> CREATOR = new a();
  
  public HeaderFillActivatorTokenULPT() {}
  
  protected HeaderFillActivatorTokenULPT(Parcel paramParcel) {}
  
  public int describeContents()
  {
    return 0;
  }
  
  public void execute(Context paramContext, WeakReference<Context> paramWeakReference, Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    b.a(paramContext, paramMap1);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {}
  
  class a
    implements Parcelable.Creator<HeaderFillActivatorTokenULPT>
  {
    public HeaderFillActivatorTokenULPT a(Parcel paramParcel)
    {
      return new HeaderFillActivatorTokenULPT(paramParcel);
    }
    
    public HeaderFillActivatorTokenULPT[] b(int paramInt)
    {
      return new HeaderFillActivatorTokenULPT[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.webview.HeaderFillActivatorTokenULPT
 * JD-Core Version:    0.7.0.1
 */