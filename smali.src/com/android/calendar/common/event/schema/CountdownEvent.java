package com.android.calendar.common.event.schema;

import android.content.Context;
import android.text.format.DateUtils;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;
import t1.d;

public class CountdownEvent
  extends Event
{
  private static final String JSON_KEY_CONTENT = "content";
  private static final String JSON_KEY_REMINDER_BEFORE_3_DAY = "reminderBefore3Day";
  private static final String JSON_KEY_REPEAT_TYPE = "repeatType";
  private static final String JSON_KEY_TIME_MILLIS = "timeMillis";
  public static final int REPEAT_TYPE_MONTHLY = 1;
  public static final int REPEAT_TYPE_ONCE = 0;
  public static final int REPEAT_TYPE_YEARLY = 2;
  private static final String TAG = "Cal:D:CountdownEvent";
  protected String mContent;
  protected boolean mNeedFillEpData = false;
  protected boolean mReminderBefore3Day;
  protected int mRepeatType;
  protected long mTimeMillis;
  
  private boolean isCalendarAddValid(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    boolean bool;
    if (paramCalendar1.get(5) == paramCalendar2.get(5)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public int calDays(Calendar paramCalendar)
  {
    return d.b(calNextCountdownDay(paramCalendar)) - d.b(paramCalendar);
  }
  
  public long calNextCountdownBefore3DayTime(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    localCalendar = calNextCountdownDay(localCalendar);
    localCalendar.add(5, -3);
    return localCalendar.getTimeInMillis();
  }
  
  public Calendar calNextCountdownDay(Calendar paramCalendar)
  {
    Calendar localCalendar1 = Calendar.getInstance();
    localCalendar1.setTimeInMillis(this.mTimeMillis);
    int i = this.mRepeatType;
    if (i == 0) {
      return localCalendar1;
    }
    Calendar localCalendar2;
    if (i == 2) {
      for (i = paramCalendar.get(1);; i++)
      {
        localCalendar2 = (Calendar)localCalendar1.clone();
        localCalendar2.set(1, i);
        if ((isCalendarAddValid(localCalendar1, localCalendar2)) && (d.b(paramCalendar) <= d.b(localCalendar2))) {
          return localCalendar2;
        }
      }
    }
    if (i == 1) {
      for (i = (paramCalendar.get(1) - localCalendar1.get(1)) * 12 + paramCalendar.get(2) - localCalendar1.get(2);; i++)
      {
        localCalendar2 = (Calendar)localCalendar1.clone();
        localCalendar2.add(2, i);
        if ((isCalendarAddValid(localCalendar1, localCalendar2)) && (d.b(paramCalendar) <= d.b(localCalendar2))) {
          return localCalendar2;
        }
      }
    }
    return localCalendar1;
  }
  
  public long calNextCountdownTime(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    return calNextCountdownDay(localCalendar).getTimeInMillis();
  }
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    super.fillEpInfoFromJSONObject(paramJSONObject);
    this.mContent = paramJSONObject.optString("content");
    this.mTimeMillis = paramJSONObject.optLong("timeMillis");
    this.mReminderBefore3Day = paramJSONObject.optBoolean("reminderBefore3Day");
    this.mRepeatType = paramJSONObject.optInt("repeatType");
    this.mNeedFillEpData = false;
  }
  
  void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    paramJSONObject.put("content", this.mContent);
    paramJSONObject.put("timeMillis", this.mTimeMillis);
    paramJSONObject.put("reminderBefore3Day", this.mReminderBefore3Day);
    paramJSONObject.put("repeatType", this.mRepeatType);
  }
  
  public String getContent()
  {
    return this.mContent;
  }
  
  public String getDateString(Context paramContext, Calendar paramCalendar)
  {
    return DateUtils.formatDateTime(paramContext, calNextCountdownDay(paramCalendar).getTimeInMillis(), 4);
  }
  
  public String getEpName()
  {
    return "key_countdown_info";
  }
  
  public String getNotifyText(Context paramContext, Calendar paramCalendar)
  {
    return getDateString(paramContext, paramCalendar);
  }
  
  public int getRepeatType()
  {
    return this.mRepeatType;
  }
  
  public long getTimeMillis()
  {
    return this.mTimeMillis;
  }
  
  public boolean isReminderBefore3Day()
  {
    return this.mReminderBefore3Day;
  }
  
  public boolean needFillEpData()
  {
    return this.mNeedFillEpData;
  }
  
  public void setContent(String paramString)
  {
    this.mContent = paramString;
  }
  
  public void setNeedFillEpData(boolean paramBoolean)
  {
    this.mNeedFillEpData = paramBoolean;
  }
  
  public void setReminderBefore3Day(boolean paramBoolean)
  {
    this.mReminderBefore3Day = paramBoolean;
  }
  
  public void setRepeatType(int paramInt)
  {
    this.mRepeatType = paramInt;
  }
  
  public void setTimeMillis(long paramLong)
  {
    this.mTimeMillis = paramLong;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.CountdownEvent
 * JD-Core Version:    0.7.0.1
 */