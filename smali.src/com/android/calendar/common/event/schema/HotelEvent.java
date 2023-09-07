package com.android.calendar.common.event.schema;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class HotelEvent
  extends SmsEvent
{
  public static final String JSON_KEY_ADDRESS = "address";
  public static final String JSON_KEY_CHECK_IN_DATE = "checkInDate";
  public static final String JSON_KEY_CHECK_IN_TIME_MILLIS = "checkInTimeMillis";
  public static final String JSON_KEY_CHECK_OUT_DATE = "checkOutDate";
  public static final String JSON_KEY_CHECK_OUT_TIME_MILLIS = "checkOutTimeMillis";
  public static final String JSON_KEY_HOTEL_NAME = "hotelName";
  public static final String JSON_KEY_PHONE_NUM = "phoneNum";
  public static final String JSON_KEY_ROOM_TYPE = "roomType";
  private static final String TAG = "Cal:D:HotelEvent";
  protected String mAddress;
  protected String mCheckInDate;
  protected long mCheckInTimeMillis = -1L;
  protected String mCheckOutDate;
  protected long mCheckOutTimeMillis = -1L;
  protected String mHotelName;
  protected String mPhoneNum;
  protected String mRoomType;
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramObject != null)
    {
      bool2 = bool1;
      if ((paramObject instanceof HotelEvent))
      {
        paramObject = (HotelEvent)paramObject;
        bool2 = bool1;
        if (TextUtils.equals(this.mHotelName, paramObject.getHotelName()))
        {
          bool2 = bool1;
          if (TextUtils.equals(this.mAddress, paramObject.getAddress()))
          {
            bool2 = bool1;
            if (TextUtils.equals(this.mRoomType, paramObject.getRoomType()))
            {
              bool2 = bool1;
              if (TextUtils.equals(this.mPhoneNum, paramObject.getPhoneNum()))
              {
                bool2 = bool1;
                if (this.mCheckInTimeMillis == paramObject.getCheckInTimeMillis())
                {
                  bool2 = bool1;
                  if (this.mCheckOutTimeMillis == paramObject.getCheckOutTimeMillis()) {
                    bool2 = true;
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool2;
  }
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    super.fillEpInfoFromJSONObject(paramJSONObject);
    this.mHotelName = paramJSONObject.optString("hotelName");
    this.mCheckInDate = paramJSONObject.optString("checkInDate");
    this.mCheckOutDate = paramJSONObject.optString("checkOutDate");
    this.mAddress = paramJSONObject.optString("address");
    this.mRoomType = paramJSONObject.optString("roomType");
    this.mPhoneNum = paramJSONObject.optString("phoneNum");
    this.mCheckInTimeMillis = paramJSONObject.optLong("checkInTimeMillis", -1L);
    this.mCheckOutTimeMillis = paramJSONObject.optLong("checkOutTimeMillis", -1L);
  }
  
  void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    paramJSONObject.put("hotelName", this.mHotelName);
    paramJSONObject.put("checkInDate", this.mCheckInDate);
    paramJSONObject.put("checkOutDate", this.mCheckOutDate);
    paramJSONObject.put("address", this.mAddress);
    paramJSONObject.put("roomType", this.mRoomType);
    paramJSONObject.put("phoneNum", this.mPhoneNum);
    paramJSONObject.optLong("checkInTimeMillis", this.mCheckInTimeMillis);
    paramJSONObject.optLong("checkOutTimeMillis", this.mCheckOutTimeMillis);
  }
  
  public String getAddress()
  {
    return this.mAddress;
  }
  
  public String getCheckInDate()
  {
    return this.mCheckInDate;
  }
  
  public long getCheckInTimeMillis()
  {
    return this.mCheckInTimeMillis;
  }
  
  public String getCheckOutDate()
  {
    return this.mCheckOutDate;
  }
  
  public long getCheckOutTimeMillis()
  {
    return this.mCheckOutTimeMillis;
  }
  
  public String getEpName()
  {
    return "hotel_info";
  }
  
  public int getEventType()
  {
    return 15;
  }
  
  public String getHotelName()
  {
    return this.mHotelName;
  }
  
  public String getPhoneNum()
  {
    return this.mPhoneNum;
  }
  
  public String getRoomType()
  {
    return this.mRoomType;
  }
  
  public void setAddress(String paramString)
  {
    this.mAddress = paramString;
  }
  
  public void setCheckInDate(String paramString)
  {
    this.mCheckInDate = paramString;
  }
  
  public void setCheckInTimeMillis(long paramLong)
  {
    this.mCheckInTimeMillis = paramLong;
  }
  
  public void setCheckOutDate(String paramString)
  {
    this.mCheckOutDate = paramString;
  }
  
  public void setCheckOutTimeMillis(long paramLong)
  {
    this.mCheckOutTimeMillis = paramLong;
  }
  
  public void setHotelName(String paramString)
  {
    this.mHotelName = paramString;
  }
  
  public void setPhoneNum(String paramString)
  {
    this.mPhoneNum = paramString;
  }
  
  public void setRoomType(String paramString)
  {
    this.mRoomType = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.HotelEvent
 * JD-Core Version:    0.7.0.1
 */