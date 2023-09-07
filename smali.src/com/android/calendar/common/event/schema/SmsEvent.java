package com.android.calendar.common.event.schema;

import org.json.JSONException;
import org.json.JSONObject;

public abstract class SmsEvent
  extends Event
{
  private static final String JSON_KEY_BODY = "body";
  private static final String JSON_KEY_EVENT_CREATE_TIME = "event_create_time";
  protected String mBody;
  protected long mEventCreateTimeMillis;
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    super.fillEpInfoFromJSONObject(paramJSONObject);
    this.mBody = paramJSONObject.optString("body");
    this.mEventCreateTimeMillis = paramJSONObject.optLong("event_create_time");
  }
  
  void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    paramJSONObject.put("body", this.mBody);
    paramJSONObject.put("event_create_time", this.mEventCreateTimeMillis);
  }
  
  public String getBody()
  {
    return this.mBody;
  }
  
  public long getEventCreateTimeMillis()
  {
    return this.mEventCreateTimeMillis;
  }
  
  public void setBody(String paramString)
  {
    this.mBody = paramString;
  }
  
  public void setEventCreateTimeMillis(long paramLong)
  {
    this.mEventCreateTimeMillis = paramLong;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.SmsEvent
 * JD-Core Version:    0.7.0.1
 */