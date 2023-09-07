package com.miui.systemAdSolution.landingPageV2.task.action;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.ad.entity.contract.GsonEntityBase;
import com.xiaomi.ad.entity.util.GsonUtils;
import d6.d;

public class Action<T extends IInterface>
  implements Parcelable
{
  public static final Parcelable.Creator<Action> CREATOR = new a();
  private static final String TAG = "Action";
  protected Action<T>.a mAdTracKInfo;
  protected boolean mIsForwardWhenSuccess;
  protected T mListener;
  protected int mType = getActionType();
  
  protected Action(Parcel paramParcel)
  {
    if (paramParcel != null)
    {
      this.mType = getActionType();
      this.mAdTracKInfo = parseAdTrackInfo(paramParcel.readString());
      this.mListener = readBinder(paramParcel.readStrongBinder());
      this.mIsForwardWhenSuccess = parseIntToBoolean(paramParcel.readInt());
    }
  }
  
  protected Action(Action<T>.a paramAction, T paramT, boolean paramBoolean)
  {
    this.mAdTracKInfo = paramAction;
    this.mListener = paramT;
    this.mIsForwardWhenSuccess = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected int getActionType()
  {
    return 0;
  }
  
  public Action<T>.a getAdTracKInfo()
  {
    return this.mAdTracKInfo;
  }
  
  public boolean getIsForwardWhenSuccess()
  {
    return this.mIsForwardWhenSuccess;
  }
  
  public T getListener()
  {
    return this.mListener;
  }
  
  protected final Action<T>.a parseAdTrackInfo(String paramString)
  {
    try
    {
      paramString = (a)GsonUtils.fromJsonString(a.class, paramString, "Action");
      return paramString;
    }
    catch (Exception paramString)
    {
      d.d("Action", "parseAdTrackInfo e : ", paramString);
    }
    return null;
  }
  
  protected int parseBooleanToInt(boolean paramBoolean)
  {
    int i = 1;
    if (paramBoolean != true) {
      i = 0;
    }
    return i;
  }
  
  protected boolean parseIntToBoolean(int paramInt)
  {
    boolean bool;
    if (paramInt > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected T readBinder(IBinder paramIBinder)
  {
    return null;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mType);
    Object localObject = this.mAdTracKInfo;
    if (localObject == null) {
      localObject = "";
    } else {
      localObject = ((GsonEntityBase)localObject).serialize();
    }
    paramParcel.writeString((String)localObject);
    paramParcel.writeStrongInterface(this.mListener);
    paramParcel.writeInt(parseBooleanToInt(this.mIsForwardWhenSuccess));
  }
  
  public class a
    extends GsonEntityBase
  {
    protected String getTag()
    {
      return "AdTrackInfo";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.landingPageV2.task.action.Action
 * JD-Core Version:    0.7.0.1
 */