package com.android.calendar.common.event.schema;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class TravelEvent
  extends SmsEvent
{
  private static final String DEFAULT_TIME = "00:00:00";
  private static final String JSON_KEY_ARR_CITY = "arr_city";
  private static final String JSON_KEY_ARR_DATE = "arr_date";
  private static final String JSON_KEY_ARR_TIME = "arr_time";
  private static final String JSON_KEY_DEP_CITY = "dep_city";
  private static final String JSON_KEY_DEP_DATE = "dep_date";
  private static final String JSON_KEY_DEP_TIME = "dep_time";
  private static final String JSON_KEY_SMS_MILLIS = "sms_millis";
  private static final String JSON_KEY_TRAVEL_TYPE = "travel_type";
  private static final String TAG = "Cal:D:TravelEvent";
  protected String mArrCity;
  protected String mArrDate;
  protected String mArrTime;
  protected String mDepCity;
  protected String mDepDate;
  protected String mDepTime;
  protected long mSmsMillis;
  protected int mTravelType;
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    super.fillEpInfoFromJSONObject(paramJSONObject);
    this.mTravelType = paramJSONObject.optInt("travel_type");
    this.mDepDate = paramJSONObject.optString("dep_date");
    String str = paramJSONObject.optString("dep_time");
    this.mDepTime = str;
    if (TextUtils.isEmpty(str)) {
      this.mDepTime = "00:00:00";
    }
    this.mDepCity = paramJSONObject.optString("dep_city");
    this.mArrDate = paramJSONObject.optString("arr_date");
    this.mArrTime = paramJSONObject.optString("arr_time");
    this.mArrCity = paramJSONObject.optString("arr_city");
    this.mSmsMillis = paramJSONObject.optLong("sms_millis", -1L);
  }
  
  protected void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    paramJSONObject.put("travel_type", this.mTravelType);
    paramJSONObject.put("dep_date", this.mDepDate);
    paramJSONObject.put("dep_time", this.mDepTime);
    paramJSONObject.put("dep_city", this.mDepCity);
    paramJSONObject.put("arr_date", this.mArrDate);
    paramJSONObject.put("arr_time", this.mArrTime);
    paramJSONObject.put("arr_city", this.mArrCity);
  }
  
  public String getArrCity()
  {
    return this.mArrCity;
  }
  
  public String getArrDate()
  {
    return this.mArrDate;
  }
  
  public String getArrTime()
  {
    return this.mArrTime;
  }
  
  public String getDepCity()
  {
    return this.mDepCity;
  }
  
  public String getDepDate()
  {
    return this.mDepDate;
  }
  
  public String getDepTime()
  {
    return this.mDepTime;
  }
  
  public String getEpName()
  {
    return "travel_info";
  }
  
  public long getSmsMillis()
  {
    return this.mSmsMillis;
  }
  
  public int getTravelType()
  {
    return this.mTravelType;
  }
  
  public void setArrCity(String paramString)
  {
    this.mArrCity = paramString;
  }
  
  public void setArrDate(String paramString)
  {
    this.mArrDate = paramString;
  }
  
  public void setArrTime(String paramString)
  {
    this.mArrTime = paramString;
  }
  
  public void setDepCity(String paramString)
  {
    this.mDepCity = paramString;
  }
  
  public void setDepDate(String paramString)
  {
    this.mDepDate = paramString;
  }
  
  public void setDepTime(String paramString)
  {
    this.mDepTime = paramString;
  }
  
  public void setSmsMillis(long paramLong)
  {
    this.mSmsMillis = paramLong;
  }
  
  public void setTravelType(int paramInt)
  {
    this.mTravelType = paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.TravelEvent
 * JD-Core Version:    0.7.0.1
 */