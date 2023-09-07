package com.miui.systemAdSolution.landingPageV2.task.action;

import android.os.IBinder;
import android.os.Parcel;
import android.text.TextUtils;
import d6.d;
import e5.a;
import e5.a.a;

public class DeeplinkAction
  extends Action<a>
{
  private static final String TAG = "DeeplinkAction";
  private String mTargetPackageName;
  private String mUrl;
  
  protected DeeplinkAction(Parcel paramParcel)
  {
    super(paramParcel);
    String str1 = null;
    if (paramParcel != null) {}
    try
    {
      str1 = paramParcel.readString();
      String str2 = paramParcel.readString();
      paramParcel = str1;
      break label30;
      str2 = null;
      paramParcel = str1;
      label30:
      if (TextUtils.isEmpty(paramParcel))
      {
        d.c("DeeplinkAction", "url is null");
      }
      else
      {
        this.mUrl = paramParcel;
        this.mTargetPackageName = str2;
      }
    }
    catch (Exception paramParcel)
    {
      d.d("DeeplinkAction", "DeeplinkAction parse parcel e : ", paramParcel);
    }
  }
  
  public DeeplinkAction(Action<a>.a paramAction, a parama, boolean paramBoolean, String paramString1, String paramString2)
  {
    super(paramAction, parama, paramBoolean);
    this.mUrl = paramString1;
    this.mTargetPackageName = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected int getActionType()
  {
    return 1;
  }
  
  public String getTargetPackageName()
  {
    return this.mTargetPackageName;
  }
  
  public String getUrl()
  {
    return this.mUrl;
  }
  
  protected a readBinder(IBinder paramIBinder)
  {
    return a.a.n0(paramIBinder);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.mUrl);
    paramParcel.writeString(this.mTargetPackageName);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.landingPageV2.task.action.DeeplinkAction
 * JD-Core Version:    0.7.0.1
 */