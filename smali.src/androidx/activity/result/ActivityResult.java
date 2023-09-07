package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

@SuppressLint({"BanParcelableUsage"})
public final class ActivityResult
  implements Parcelable
{
  public static final Parcelable.Creator<ActivityResult> CREATOR = new a();
  private final Intent mData;
  private final int mResultCode;
  
  public ActivityResult(int paramInt, Intent paramIntent)
  {
    this.mResultCode = paramInt;
    this.mData = paramIntent;
  }
  
  ActivityResult(Parcel paramParcel)
  {
    this.mResultCode = paramParcel.readInt();
    if (paramParcel.readInt() == 0) {
      paramParcel = null;
    } else {
      paramParcel = (Intent)Intent.CREATOR.createFromParcel(paramParcel);
    }
    this.mData = paramParcel;
  }
  
  public static String resultCodeToString(int paramInt)
  {
    if (paramInt != -1)
    {
      if (paramInt != 0) {
        return String.valueOf(paramInt);
      }
      return "RESULT_CANCELED";
    }
    return "RESULT_OK";
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Intent getData()
  {
    return this.mData;
  }
  
  public int getResultCode()
  {
    return this.mResultCode;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ActivityResult{resultCode=");
    localStringBuilder.append(resultCodeToString(this.mResultCode));
    localStringBuilder.append(", data=");
    localStringBuilder.append(this.mData);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mResultCode);
    int i;
    if (this.mData == null) {
      i = 0;
    } else {
      i = 1;
    }
    paramParcel.writeInt(i);
    Intent localIntent = this.mData;
    if (localIntent != null) {
      localIntent.writeToParcel(paramParcel, paramInt);
    }
  }
  
  class a
    implements Parcelable.Creator<ActivityResult>
  {
    public ActivityResult a(Parcel paramParcel)
    {
      return new ActivityResult(paramParcel);
    }
    
    public ActivityResult[] b(int paramInt)
    {
      return new ActivityResult[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.activity.result.ActivityResult
 * JD-Core Version:    0.7.0.1
 */