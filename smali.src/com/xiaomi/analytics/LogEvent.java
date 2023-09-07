package com.xiaomi.analytics;

import android.util.Log;
import f6.a;
import org.json.JSONObject;

public class LogEvent
{
  private LogType a = LogType.TYPE_EVENT;
  private long b = System.currentTimeMillis();
  private JSONObject c = new JSONObject();
  private JSONObject d = new JSONObject();
  private IdType e = IdType.TYPE_DEFAULT;
  
  public LogEvent() {}
  
  public LogEvent(IdType paramIdType)
  {
    if (paramIdType != null) {
      this.e = paramIdType;
    }
  }
  
  public LogEvent(LogType paramLogType)
  {
    if (paramLogType != null) {
      this.a = paramLogType;
    }
  }
  
  public LogEvent(LogType paramLogType, IdType paramIdType)
  {
    if (paramLogType != null) {
      this.a = paramLogType;
    }
    if (paramIdType != null) {
      this.e = paramIdType;
    }
  }
  
  public static LogEvent create()
  {
    return new LogEvent();
  }
  
  public static LogEvent create(IdType paramIdType)
  {
    return new LogEvent(paramIdType);
  }
  
  public static LogEvent create(LogType paramLogType)
  {
    return new LogEvent(paramLogType);
  }
  
  public static LogEvent create(LogType paramLogType, IdType paramIdType)
  {
    return new LogEvent(paramLogType, paramIdType);
  }
  
  LogEvent a(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {
      this.d = paramJSONObject;
    }
    return this;
  }
  
  LogEvent b(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {
      this.c = paramJSONObject;
    }
    return this;
  }
  
  public String pack(String paramString1, String paramString2, String paramString3)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("v", 2);
      localJSONObject.put("appId", paramString1);
      localJSONObject.put("sessionId", paramString3);
      localJSONObject.put("configKey", paramString2);
      localJSONObject.put("content", this.c.toString());
      localJSONObject.put("eventTime", this.b);
      localJSONObject.put("logType", this.a.value());
      localJSONObject.put("extra", this.d.toString());
      localJSONObject.put("idType", this.e.value());
    }
    catch (Exception paramString1)
    {
      Log.e(a.a("LogEvent"), "pack e", paramString1);
    }
    return localJSONObject.toString();
  }
  
  public static enum IdType
  {
    private int mValue;
    
    static
    {
      IdType localIdType1 = new IdType("TYPE_DEFAULT", 0, 0);
      TYPE_DEFAULT = localIdType1;
      IdType localIdType2 = new IdType("TYPE_IMEI", 1, 1);
      TYPE_IMEI = localIdType2;
      IdType localIdType3 = new IdType("TYPE_MAC", 2, 2);
      TYPE_MAC = localIdType3;
      IdType localIdType4 = new IdType("TYPE_ANDROID_ID", 3, 3);
      TYPE_ANDROID_ID = localIdType4;
      IdType localIdType5 = new IdType("TYPE_AAID", 4, 4);
      TYPE_AAID = localIdType5;
      IdType localIdType6 = new IdType("TYPE_GAID", 5, 5);
      TYPE_GAID = localIdType6;
      IdType localIdType7 = new IdType("TYPE_GUID", 6, 6);
      TYPE_GUID = localIdType7;
      $VALUES = new IdType[] { localIdType1, localIdType2, localIdType3, localIdType4, localIdType5, localIdType6, localIdType7 };
    }
    
    private IdType(int paramInt)
    {
      this.mValue = paramInt;
    }
    
    public int value()
    {
      return this.mValue;
    }
  }
  
  public static enum LogType
  {
    private int mValue;
    
    static
    {
      LogType localLogType1 = new LogType("TYPE_EVENT", 0, 0);
      TYPE_EVENT = localLogType1;
      LogType localLogType2 = new LogType("TYPE_AD", 1, 1);
      TYPE_AD = localLogType2;
      $VALUES = new LogType[] { localLogType1, localLogType2 };
    }
    
    private LogType(int paramInt)
    {
      this.mValue = paramInt;
    }
    
    public static LogType valueOf(int paramInt)
    {
      if (paramInt != 1) {
        return TYPE_EVENT;
      }
      return TYPE_AD;
    }
    
    public int value()
    {
      return this.mValue;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.LogEvent
 * JD-Core Version:    0.7.0.1
 */