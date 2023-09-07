package com.android.calendar.common.event.schema;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import t1.b;

public class TrainEvent
  extends TravelEvent
{
  private static final String JSON_KEY_ARR_STATION = "arr_station";
  private static final String JSON_KEY_ARR_STATION_CODE = "arr_station_code";
  private static final String[] JSON_KEY_BERTHS = { "berth", "berth_1", "berth_2" };
  private static final String[] JSON_KEY_CARRIAGE_NUMS;
  private static final String JSON_KEY_DEP_STATION = "dep_station";
  private static final String[] JSON_KEY_PASSENGERS = { "passenger", "passenger_1", "passenger_2" };
  private static final String[] JSON_KEY_SEAT_NUMS;
  private static final String[] JSON_KEY_SEAT_TYPES;
  private static final String JSON_KEY_TRAIN_NUM = "train_num";
  private static final String TAG = "Cal:D:TrainEvent";
  protected String mArrStation;
  protected String mArrStationCode;
  protected String mDepStation;
  private String mEpJsonString;
  protected List<TrainPassenger> mPassengers = new ArrayList();
  protected String mTrainNum;
  
  static
  {
    JSON_KEY_CARRIAGE_NUMS = new String[] { "carriage_num", "carriage_num_1", "carriage_num_2" };
    JSON_KEY_SEAT_TYPES = new String[] { "seat_type", "seat_type_1", "seat_type_2" };
    JSON_KEY_SEAT_NUMS = new String[] { "seat_num", "seat_num_1", "seat_num_2" };
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramObject != null)
    {
      bool2 = bool1;
      if ((paramObject instanceof TrainEvent))
      {
        paramObject = (TrainEvent)paramObject;
        bool2 = bool1;
        if (TextUtils.equals(this.mDepDate, paramObject.getDepDate()))
        {
          bool2 = bool1;
          if (TextUtils.equals(this.mDepTime, paramObject.getDepTime()))
          {
            bool2 = bool1;
            if (TextUtils.equals(this.mDepCity, paramObject.getDepCity())) {
              bool2 = true;
            }
          }
        }
      }
    }
    return bool2;
  }
  
  public void fillEpInfo(String paramString)
  {
    this.mEpJsonString = paramString;
    super.fillEpInfo(paramString);
  }
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    super.fillEpInfoFromJSONObject(paramJSONObject);
    this.mDepStation = paramJSONObject.optString("dep_station");
    this.mArrStation = paramJSONObject.optString("arr_station");
    this.mTrainNum = paramJSONObject.optString("train_num");
    this.mArrStationCode = paramJSONObject.optString("arr_station_code");
    for (int i = 0;; i++)
    {
      String[] arrayOfString = JSON_KEY_PASSENGERS;
      if (i >= arrayOfString.length) {
        break;
      }
      TrainPassenger localTrainPassenger = new TrainPassenger();
      localTrainPassenger.setName(paramJSONObject.optString(arrayOfString[i]));
      localTrainPassenger.setCarriageNum(paramJSONObject.optString(JSON_KEY_CARRIAGE_NUMS[i]));
      localTrainPassenger.setSeatType(paramJSONObject.optString(JSON_KEY_SEAT_TYPES[i]));
      localTrainPassenger.setSeatNum(paramJSONObject.optString(JSON_KEY_SEAT_NUMS[i]));
      localTrainPassenger.setBerth(paramJSONObject.optString(JSON_KEY_BERTHS[i]));
      this.mPassengers.add(localTrainPassenger);
    }
  }
  
  protected void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    paramJSONObject.put("arr_station", this.mArrStation);
    paramJSONObject.put("arr_station_code", this.mArrStationCode);
  }
  
  public String getArrStation()
  {
    return this.mArrStation;
  }
  
  public String getArrStationCode()
  {
    return this.mArrStationCode;
  }
  
  public String getDepStation()
  {
    return this.mDepStation;
  }
  
  public String getEpName()
  {
    return "travel_info";
  }
  
  public int getEventType()
  {
    return 12;
  }
  
  public List<TrainPassenger> getPassengers()
  {
    return this.mPassengers;
  }
  
  public String getTrainNum()
  {
    return this.mTrainNum;
  }
  
  public void setArrStation(String paramString)
  {
    this.mArrStation = paramString;
  }
  
  public void setArrStationCode(String paramString)
  {
    this.mArrStationCode = paramString;
  }
  
  public void setDepStation(String paramString)
  {
    this.mDepStation = paramString;
  }
  
  public void setPassengers(List<TrainPassenger> paramList)
  {
    this.mPassengers = paramList;
  }
  
  public void setTrainNum(String paramString)
  {
    this.mTrainNum = paramString;
  }
  
  public String toJson()
  {
    if (this.mEpJsonString == null) {
      return "";
    }
    try
    {
      Object localObject = new org/json/JSONObject;
      ((JSONObject)localObject).<init>(this.mEpJsonString);
      fillJSONObject((JSONObject)localObject);
      localObject = ((JSONObject)localObject).toString();
      return localObject;
    }
    catch (JSONException localJSONException)
    {
      b.c("Cal:D:TrainEvent", "toJson()", localJSONException);
    }
    return "";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.TrainEvent
 * JD-Core Version:    0.7.0.1
 */