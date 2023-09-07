package com.android.calendar.common.event.schema;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.format.DateUtils;
import android.util.Pair;
import com.android.calendar.common.r;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.miui.calendar.util.a0;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

public class BirthdayEvent
  extends Event
{
  private static final String JSON_KEY_CONTACT_ID = "contactId";
  private static final String JSON_KEY_DATE_TYPE = "dateType";
  private static final String JSON_KEY_FIRST_BIRTH_MILLIS = "firstBirthMillis";
  private static final String JSON_KEY_NAME = "name";
  private static final String JSON_KEY_USE_YEAR = "userYear";
  private static final String TAG = "Cal:D:BirthdayEvent";
  @SerializedName("contactId")
  protected int mContactId = -1;
  @SerializedName("dateType")
  protected int mDateType = 0;
  @SerializedName("firstBirthMillis")
  protected long mFirstBirthMillis;
  @SerializedName("name")
  protected String mName;
  @SerializedName("userYear")
  protected boolean mUseYear = true;
  
  public static BirthdayEvent fromJson(String paramString)
  {
    return (BirthdayEvent)new Gson().fromJson(paramString, BirthdayEvent.class);
  }
  
  public static Pair<Integer, Integer> makeContactKey(int paramInt1, int paramInt2)
  {
    return new Pair(Integer.valueOf(paramInt1), Integer.valueOf(paramInt2));
  }
  
  public boolean equals(BirthdayEvent paramBirthdayEvent)
  {
    boolean bool;
    if ((this.mDateType == paramBirthdayEvent.getDateType()) && (this.mUseYear == paramBirthdayEvent.isUseYear()) && (this.mFirstBirthMillis == paramBirthdayEvent.getFirstBirthMillis()) && (this.mName.equals(paramBirthdayEvent.getName())) && (this.mContactId == paramBirthdayEvent.getContactId())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    super.fillEpInfoFromJSONObject(paramJSONObject);
    this.mDateType = paramJSONObject.optInt("dateType");
    this.mUseYear = paramJSONObject.optBoolean("userYear");
    this.mFirstBirthMillis = paramJSONObject.optLong("firstBirthMillis");
    this.mName = paramJSONObject.optString("name");
    this.mContactId = paramJSONObject.optInt("contactId");
  }
  
  void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    paramJSONObject.put("dateType", this.mDateType);
    paramJSONObject.put("userYear", this.mUseYear);
    paramJSONObject.put("firstBirthMillis", this.mFirstBirthMillis);
    paramJSONObject.put("name", this.mName);
    paramJSONObject.put("contactId", this.mContactId);
  }
  
  public int getContactId()
  {
    return this.mContactId;
  }
  
  public Pair<Integer, Integer> getContactKey()
  {
    return makeContactKey(this.mContactId, this.mDateType);
  }
  
  @TargetApi(3)
  public String getDateString(Context paramContext)
  {
    if (this.mDateType == 1)
    {
      Object localObject = Calendar.getInstance();
      ((Calendar)localObject).setTimeInMillis(this.mFirstBirthMillis);
      int i = ((Calendar)localObject).get(1);
      int j = ((Calendar)localObject).get(2);
      int k = ((Calendar)localObject).get(5);
      int[] arrayOfInt = a0.d(i, j, k);
      String str = a0.z(paramContext.getResources(), i, j, k);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(arrayOfInt[0]);
      ((StringBuilder)localObject).append(paramContext.getString(r.J0));
      ((StringBuilder)localObject).append(str);
      paramContext = ((StringBuilder)localObject).toString();
    }
    else
    {
      paramContext = DateUtils.formatDateTime(paramContext, this.mStartTimeMillis, 4);
    }
    return paramContext;
  }
  
  public int getDateType()
  {
    return this.mDateType;
  }
  
  public String getEpName()
  {
    return "key_birthday_info";
  }
  
  public long getFirstBirthMillis()
  {
    return this.mFirstBirthMillis;
  }
  
  public String getName()
  {
    return this.mName;
  }
  
  public int getYear()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(this.mFirstBirthMillis);
    if (this.mDateType == 1) {
      return a0.d(localCalendar.get(1), localCalendar.get(2), localCalendar.get(5))[0];
    }
    return localCalendar.get(1);
  }
  
  public boolean isUseYear()
  {
    return this.mUseYear;
  }
  
  public void setContactId(int paramInt)
  {
    this.mContactId = paramInt;
  }
  
  public void setDateType(int paramInt)
  {
    this.mDateType = paramInt;
  }
  
  public void setFirstBirthMillis(long paramLong)
  {
    this.mFirstBirthMillis = paramLong;
  }
  
  public void setName(String paramString)
  {
    this.mName = paramString;
  }
  
  public void setUseYear(boolean paramBoolean)
  {
    this.mUseYear = paramBoolean;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.BirthdayEvent
 * JD-Core Version:    0.7.0.1
 */