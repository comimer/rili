package com.android.calendar.common.event.schema;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.format.DateUtils;
import com.android.calendar.common.r;
import com.miui.calendar.util.a0;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;
import t1.d;

public class AnniversaryEvent
  extends Event
{
  private static final String JSON_KEY_CONTENT = "content";
  public static final String JSON_KEY_DATE_TYPE = "dateType";
  private static final String JSON_KEY_REMINDER_BEFORE_3_DAY = "reminderBefore3Day";
  public static final String JSON_KEY_TIME_MILLIS = "timeMillis";
  private static final String TAG = "Cal:D:AnniversaryEvent";
  protected String mContent;
  protected int mDateType = 0;
  protected boolean mNeedFillEpData;
  protected boolean mReminderBefore3Day;
  protected long mTimeMillis;
  
  public int calAnniversary(Calendar paramCalendar)
  {
    Object localObject;
    int i;
    int j;
    if (this.mDateType == 1)
    {
      localObject = Calendar.getInstance();
      ((Calendar)localObject).setTimeInMillis(this.mTimeMillis);
      localObject = a0.d(((Calendar)localObject).get(1), ((Calendar)localObject).get(2), ((Calendar)localObject).get(5));
      paramCalendar = a0.d(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5));
      if ((localObject[1] != paramCalendar[1]) || (localObject[2] != paramCalendar[2])) {
        break label193;
      }
      i = localObject[3];
      j = paramCalendar[3];
      if (i == j)
      {
        i = paramCalendar[0];
        j = localObject[0];
      }
    }
    for (;;)
    {
      return i - j;
      if ((i != 1) || (j != 0) || (a0.v(paramCalendar[0]) == paramCalendar[1])) {
        break;
      }
      i = paramCalendar[0];
      j = localObject[0];
      continue;
      localObject = Calendar.getInstance();
      ((Calendar)localObject).setTimeInMillis(this.mTimeMillis);
      if ((((Calendar)localObject).get(2) != paramCalendar.get(2)) || (((Calendar)localObject).get(5) != paramCalendar.get(5))) {
        break;
      }
      i = paramCalendar.get(1);
      j = ((Calendar)localObject).get(1);
    }
    label193:
    return -1;
  }
  
  public int calDays(Calendar paramCalendar)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(this.mTimeMillis);
    return d.b(paramCalendar) - d.b(localCalendar) + 1;
  }
  
  public long calNextAnniversaryBefore3DayTime(long paramLong)
  {
    return calNextAnniversaryTime(paramLong) - 259200000L;
  }
  
  public long calNextAnniversaryTime(long paramLong)
  {
    if (this.mDateType == 1)
    {
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.setTimeInMillis(this.mTimeMillis);
      int[] arrayOfInt = a0.d(localCalendar.get(1), localCalendar.get(2), localCalendar.get(5));
      int i = arrayOfInt[0];
      do
      {
        int j = i + 1;
        int k = arrayOfInt[1];
        i = k;
        if (arrayOfInt[3] == 1)
        {
          i = k;
          if (a0.v(j) == arrayOfInt[1]) {
            i = k + 12;
          }
        }
        localObject = a0.w(j, i, arrayOfInt[2]);
        localCalendar.set(localObject[0], localObject[1] - 1, localObject[2]);
        i = j;
      } while (localCalendar.getTimeInMillis() < paramLong);
      return localCalendar.getTimeInMillis();
    }
    Object localObject = Calendar.getInstance();
    ((Calendar)localObject).setTimeInMillis(this.mTimeMillis);
    ((Calendar)localObject).add(1, 1);
    while (d.b((Calendar)localObject) < d.a(paramLong)) {
      ((Calendar)localObject).add(1, 1);
    }
    return ((Calendar)localObject).getTimeInMillis();
  }
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    super.fillEpInfoFromJSONObject(paramJSONObject);
    this.mContent = paramJSONObject.optString("content");
    this.mTimeMillis = paramJSONObject.optLong("timeMillis");
    this.mReminderBefore3Day = paramJSONObject.optBoolean("reminderBefore3Day");
    this.mDateType = paramJSONObject.optInt("dateType");
    this.mNeedFillEpData = false;
  }
  
  void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    paramJSONObject.put("content", this.mContent);
    paramJSONObject.put("timeMillis", this.mTimeMillis);
    paramJSONObject.put("reminderBefore3Day", this.mReminderBefore3Day);
    paramJSONObject.put("dateType", this.mDateType);
  }
  
  public String getContent()
  {
    return this.mContent;
  }
  
  @TargetApi(3)
  public String getDateString(Context paramContext)
  {
    if (this.mDateType == 1)
    {
      Object localObject = Calendar.getInstance();
      ((Calendar)localObject).setTimeInMillis(this.mTimeMillis);
      int i = ((Calendar)localObject).get(1);
      int j = ((Calendar)localObject).get(2);
      int k = ((Calendar)localObject).get(5);
      int[] arrayOfInt = a0.d(i, j, k);
      localObject = a0.z(paramContext.getResources(), i, j, k);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(arrayOfInt[0]);
      localStringBuilder.append(paramContext.getString(r.J0));
      localStringBuilder.append((String)localObject);
      paramContext = localStringBuilder.toString();
    }
    else
    {
      paramContext = DateUtils.formatDateTime(paramContext, this.mTimeMillis, 4);
    }
    return paramContext;
  }
  
  public int getDateType()
  {
    return this.mDateType;
  }
  
  public String getEpName()
  {
    return "key_anniversary_info";
  }
  
  public String getNotifyText(Context paramContext)
  {
    return getDateString(paramContext);
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
  
  public void setDateType(int paramInt)
  {
    this.mDateType = paramInt;
  }
  
  public void setNeedFillEpData(boolean paramBoolean)
  {
    this.mNeedFillEpData = paramBoolean;
  }
  
  public void setReminderBefore3Day(boolean paramBoolean)
  {
    this.mReminderBefore3Day = paramBoolean;
  }
  
  public void setTimeMillis(long paramLong)
  {
    this.mTimeMillis = paramLong;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.AnniversaryEvent
 * JD-Core Version:    0.7.0.1
 */