package com.miui.calendar.thirdparty;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import androidx.annotation.Keep;

@Keep
public class EventInfo
  implements Parcelable
{
  public static final Parcelable.Creator<EventInfo> CREATOR = new a();
  public static int MAX_REMINDER_MINUTE = 1439;
  public static int MIN_REMINDER_MINUTE = 0;
  public static String NOTIFICATION_TYPE_DETAIL = "detail";
  public String dates;
  public String description;
  public String intentAction;
  public String intentData;
  public String intentData2;
  public String intentPackageName;
  public String intentText;
  public String location;
  public int needAlarm = 0;
  public String notificationType;
  public int reminderMinute;
  public String title;
  public String token;
  
  public EventInfo() {}
  
  protected EventInfo(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    this.title = paramParcel.readString();
    this.description = paramParcel.readString();
    this.location = paramParcel.readString();
    this.dates = paramParcel.readString();
    this.reminderMinute = paramParcel.readInt();
    this.token = paramParcel.readString();
    this.intentText = paramParcel.readString();
    this.intentAction = paramParcel.readString();
    this.intentData = paramParcel.readString();
    this.intentPackageName = paramParcel.readString();
    this.intentData2 = paramParcel.readString();
    this.notificationType = paramParcel.readString();
    this.needAlarm = paramParcel.readInt();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("EventInfo{");
    localStringBuilder.append("title='");
    localStringBuilder.append(this.title);
    localStringBuilder.append('\'');
    localStringBuilder.append(", description='");
    localStringBuilder.append(this.description);
    localStringBuilder.append('\'');
    localStringBuilder.append(", location='");
    localStringBuilder.append(this.location);
    localStringBuilder.append('\'');
    localStringBuilder.append(", dates='");
    localStringBuilder.append(this.dates);
    localStringBuilder.append('\'');
    localStringBuilder.append(", reminderMinute=");
    localStringBuilder.append(this.reminderMinute);
    localStringBuilder.append(", token='");
    localStringBuilder.append(this.token);
    localStringBuilder.append('\'');
    localStringBuilder.append(", intentText='");
    localStringBuilder.append(this.intentText);
    localStringBuilder.append('\'');
    localStringBuilder.append(", intentAction='");
    localStringBuilder.append(this.intentAction);
    localStringBuilder.append('\'');
    localStringBuilder.append(", intentData='");
    localStringBuilder.append(this.intentData);
    localStringBuilder.append('\'');
    localStringBuilder.append(", intentPackageName='");
    localStringBuilder.append(this.intentPackageName);
    localStringBuilder.append('\'');
    localStringBuilder.append(", intentData2='");
    localStringBuilder.append(this.intentData2);
    localStringBuilder.append('\'');
    localStringBuilder.append(", notificationType='");
    localStringBuilder.append(this.notificationType);
    localStringBuilder.append('\'');
    localStringBuilder.append(", needAlarm='");
    localStringBuilder.append(this.needAlarm);
    localStringBuilder.append('\'');
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.title);
    paramParcel.writeString(this.description);
    paramParcel.writeString(this.location);
    paramParcel.writeString(this.dates);
    paramParcel.writeInt(this.reminderMinute);
    paramParcel.writeString(this.token);
    paramParcel.writeString(this.intentText);
    paramParcel.writeString(this.intentAction);
    paramParcel.writeString(this.intentData);
    paramParcel.writeString(this.intentPackageName);
    paramParcel.writeString(this.intentData2);
    paramParcel.writeString(this.notificationType);
    paramParcel.writeInt(this.needAlarm);
  }
  
  class a
    implements Parcelable.Creator<EventInfo>
  {
    public EventInfo a(Parcel paramParcel)
    {
      return new EventInfo(paramParcel);
    }
    
    public EventInfo[] b(int paramInt)
    {
      return new EventInfo[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.thirdparty.EventInfo
 * JD-Core Version:    0.7.0.1
 */