package com.miui.calendar.holiday.model;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Keep;
import b2.a;
import com.android.calendar.common.ModuleSchema;
import com.google.gson.annotations.SerializedName;
import com.google.gson.reflect.TypeToken;
import com.miui.calendar.util.z;
import com.miui.calendar.web.PageData.ExtraData;
import com.miui.calendar.web.PageData.StyleData;
import java.lang.reflect.Type;
import java.util.List;
import java.util.TimeZone;
import z3.d;

@Keep
public class HolidaySchema
{
  private static final String PREFERENCES_HOLIDAY_HAS_NOTIFY_PREFIX = "preferences_holiday_has_notify";
  public static final String TAG = "Cal:D:HolidaySchema";
  public ModuleSchema action;
  public int categoryId;
  public long date = -1L;
  public String description;
  public int end;
  public PageData.ExtraData extra;
  @SerializedName("reminder")
  public boolean hasReminder = false;
  public int hide;
  @SerializedName("id")
  public int holidayId;
  public long holidayMillis = -1L;
  public String name;
  @SerializedName("nDesc")
  public String notificationDesc;
  @SerializedName("nTitle")
  public String notificationTitle;
  @SerializedName("notifyEndTime")
  public long notifyEndTime;
  @SerializedName("notifyStartTime")
  public long notifyStartTime;
  private long reminderSecond = -1L;
  public int start;
  public PageData.StyleData style;
  
  public static Type getListType()
  {
    return new a().getType();
  }
  
  public void adjustHolidayMillis()
  {
    long l = this.date;
    if (l != -1L) {
      this.holidayMillis = (l * 1000L + 28800000L);
    }
  }
  
  public boolean getHasNotify(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("preferences_holiday_has_notify_");
    localStringBuilder.append(getKey());
    return a.d(paramContext, localStringBuilder.toString(), false);
  }
  
  public String getKey()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.name);
    localStringBuilder.append(":");
    localStringBuilder.append(this.holidayMillis);
    return localStringBuilder.toString();
  }
  
  public long getNotifyEndTime()
  {
    return this.notifyEndTime;
  }
  
  public long getNotifyStartTime()
  {
    return this.notifyStartTime;
  }
  
  public long getReminderMillis(Context paramContext)
  {
    long l1 = this.holidayMillis;
    long l2 = this.reminderSecond;
    if (l2 <= 0L) {
      l2 = d.h(paramContext).a(paramContext, this.notifyStartTime, this.notifyEndTime);
    }
    return l1 + l2 * 1000L - TimeZone.getDefault().getRawOffset();
  }
  
  public int hashCode()
  {
    return getKey().hashCode();
  }
  
  public boolean isValid()
  {
    boolean bool;
    if ((!TextUtils.isEmpty(this.name)) && ((!this.hasReminder) || (!TextUtils.isEmpty(this.notificationTitle))) && (this.holidayMillis != -1L)) {
      bool = true;
    } else {
      bool = false;
    }
    if (!bool)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("isValid(): holiday invalid:");
      localStringBuilder.append(toString());
      z.m("Cal:D:HolidaySchema", localStringBuilder.toString());
    }
    return bool;
  }
  
  public void setHasNotify(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("preferences_holiday_has_notify_");
    localStringBuilder.append(getKey());
    a.l(paramContext, localStringBuilder.toString(), true);
  }
  
  public void setReminderSecond(long paramLong)
  {
    this.reminderSecond = paramLong;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("HolidaySchema{");
    localStringBuilder.append("name='");
    localStringBuilder.append(this.name);
    localStringBuilder.append('\'');
    localStringBuilder.append(", description='");
    localStringBuilder.append(this.description);
    localStringBuilder.append('\'');
    localStringBuilder.append(", holidayMillis=");
    localStringBuilder.append(this.holidayMillis);
    localStringBuilder.append(", hasReminder=");
    localStringBuilder.append(this.hasReminder);
    localStringBuilder.append(", notificationTitle='");
    localStringBuilder.append(this.notificationTitle);
    localStringBuilder.append('\'');
    localStringBuilder.append(", notificationDesc='");
    localStringBuilder.append(this.notificationDesc);
    localStringBuilder.append('\'');
    localStringBuilder.append(", notifyStartTime='");
    localStringBuilder.append(this.notifyStartTime);
    localStringBuilder.append('\'');
    localStringBuilder.append(", notifyEndTime='");
    localStringBuilder.append(this.notifyEndTime);
    localStringBuilder.append('\'');
    localStringBuilder.append(", categoryId=");
    localStringBuilder.append(this.categoryId);
    localStringBuilder.append(", action=");
    localStringBuilder.append(this.action);
    localStringBuilder.append(", hide=");
    localStringBuilder.append(this.hide);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  class a
    extends TypeToken<List<HolidaySchema>>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.holiday.model.HolidaySchema
 * JD-Core Version:    0.7.0.1
 */