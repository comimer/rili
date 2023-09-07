package com.miui.systemAdSolution.landingPageV2.task.action;

import android.os.IBinder;
import android.os.Parcel;
import android.text.TextUtils;
import d6.d;
import e5.c;
import e5.c.a;

public class H5Action
  extends Action<c>
{
  private static final String TAG = "H5Action";
  private String mH5Url;
  
  protected H5Action(Parcel paramParcel)
  {
    super(paramParcel);
    String str = null;
    if (paramParcel != null) {}
    try
    {
      str = paramParcel.readString();
      this.mH5Url = str;
    }
    catch (Exception paramParcel)
    {
      d.d("H5Action", "H5Action parse parcel e : ", paramParcel);
    }
  }
  
  public H5Action(Action<c>.a paramAction, c paramc, boolean paramBoolean, String paramString)
  {
    super(paramAction, paramc, paramBoolean);
    if (TextUtils.isEmpty(paramString)) {
      d.c("H5Action", "h5 url is null!");
    }
    this.mH5Url = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected int getActionType()
  {
    return 2;
  }
  
  public String getH5Url()
  {
    return this.mH5Url;
  }
  
  protected c readBinder(IBinder paramIBinder)
  {
    return c.a.n0(paramIBinder);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.mH5Url);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.landingPageV2.task.action.H5Action
 * JD-Core Version:    0.7.0.1
 */