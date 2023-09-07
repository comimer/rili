package com.android.calendar.common.event.schema;

import android.graphics.Color;
import android.text.TextUtils;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;
import t1.b;

public abstract class Event
  implements Serializable, Cloneable
{
  public static final String JSON_KEY_NEED_ALARM = "need_alarm";
  private static final String TAG = "Cal:D:Event";
  protected int mColor = Color.parseColor("#6bd697");
  protected long mCreateTimeMillis;
  protected String mDescription;
  protected long mEndTimeMillis;
  protected EventEx mEx;
  protected long mId = -1L;
  protected boolean mIsAllDay;
  protected String mLocation;
  protected boolean mNeedAlarm;
  protected long mStartTimeMillis;
  protected String mTitle;
  
  public static Event createEventByHasEP(int paramInt)
  {
    Event localEvent = createEventByType(paramInt & 0xFF);
    if (localEvent != null) {
      localEvent.getEx().setHasExtendedProperties(paramInt);
    }
    return localEvent;
  }
  
  public static Event createEventByType(int paramInt)
  {
    Object localObject;
    if (paramInt != 3)
    {
      if (paramInt != 7)
      {
        if (paramInt != 8)
        {
          if (paramInt != 9) {
            switch (paramInt)
            {
            default: 
              localObject = new AgendaEvent();
              break;
            case 17: 
              localObject = new MovieEvent();
              break;
            case 16: 
              localObject = new LoanEvent();
              break;
            case 15: 
              localObject = new HotelEvent();
              break;
            case 14: 
              localObject = new GasBillEvent();
              break;
            case 13: 
              localObject = new ElectricityBillEvent();
              break;
            case 12: 
              localObject = new TrainEvent();
              break;
            case 11: 
              localObject = new FlightEvent();
              break;
            }
          } else {
            localObject = new CountdownEvent();
          }
        }
        else {
          localObject = new AnniversaryEvent();
        }
      }
      else {
        localObject = new BirthdayEvent();
      }
    }
    else {
      localObject = new CreditEvent();
    }
    ((Event)localObject).setEventType(paramInt);
    return localObject;
  }
  
  public void fillEpInfo(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(paramString);
      fillEpInfoFromJSONObject(localJSONObject);
    }
    catch (JSONException paramString)
    {
      b.c("Cal:D:Event", "fillEpInfo(): ", paramString);
    }
  }
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    this.mNeedAlarm = paramJSONObject.optBoolean("need_alarm", false);
  }
  
  void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    paramJSONObject.put("need_alarm", this.mNeedAlarm);
  }
  
  public int getColor()
  {
    return this.mColor;
  }
  
  public long getCreateTimeMillis()
  {
    return this.mCreateTimeMillis;
  }
  
  public String getDescription()
  {
    return this.mDescription;
  }
  
  public long getEndTimeMillis()
  {
    return this.mEndTimeMillis;
  }
  
  public abstract String getEpName();
  
  public int getEventType()
  {
    return getEx().getHasExtendedProperties() & 0xFF;
  }
  
  public EventEx getEx()
  {
    if (this.mEx == null) {
      this.mEx = new EventEx(this);
    }
    return this.mEx;
  }
  
  public long getId()
  {
    return this.mId;
  }
  
  public String getLocation()
  {
    return this.mLocation;
  }
  
  public long getStartTimeMillis()
  {
    return this.mStartTimeMillis;
  }
  
  public String getTitle()
  {
    return this.mTitle;
  }
  
  public boolean isAllDay()
  {
    return this.mIsAllDay;
  }
  
  public boolean isEmpty()
  {
    String str = this.mTitle;
    if ((str != null) && (str.length() > 0)) {
      return false;
    }
    str = this.mLocation;
    if ((str != null) && (str.length() > 0)) {
      return false;
    }
    str = this.mDescription;
    return (str == null) || (str.length() <= 0);
  }
  
  public boolean isNeedAlarm()
  {
    return this.mNeedAlarm;
  }
  
  public void resetEx()
  {
    this.mEx = null;
  }
  
  public void setAllDay(boolean paramBoolean)
  {
    this.mIsAllDay = paramBoolean;
  }
  
  public void setColor(int paramInt)
  {
    this.mColor = paramInt;
  }
  
  public void setCreateTimeMillis(long paramLong)
  {
    this.mCreateTimeMillis = paramLong;
  }
  
  public void setDescription(String paramString)
  {
    this.mDescription = paramString;
  }
  
  public void setEndTimeMillis(long paramLong)
  {
    this.mEndTimeMillis = paramLong;
  }
  
  public void setEventType(int paramInt)
  {
    getEx().setHasExtendedProperties(paramInt & 0xFF | getEx().getHasExtendedProperties() & 0xFFFFFF00);
  }
  
  public void setId(long paramLong)
  {
    this.mId = paramLong;
  }
  
  public void setLocation(String paramString)
  {
    this.mLocation = paramString;
  }
  
  public void setNeedAlarm(boolean paramBoolean)
  {
    this.mNeedAlarm = paramBoolean;
  }
  
  public void setStartTimeMillis(long paramLong)
  {
    this.mStartTimeMillis = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    this.mTitle = paramString;
  }
  
  public String toJson()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      fillJSONObject(localJSONObject);
    }
    catch (JSONException localJSONException)
    {
      b.c("Cal:D:Event", "toJson()", localJSONException);
    }
    return localJSONObject.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.Event
 * JD-Core Version:    0.7.0.1
 */