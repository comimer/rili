package com.android.calendar.common.event.schema;

import android.text.TextUtils;
import com.miui.calendar.util.x;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import t1.b;

public class FlightEvent
  extends TravelEvent
{
  private static final String JSON_KEY_ARR_AIRPORT = "arr_airport";
  private static final String[] JSON_KEY_CIPHER_TEXTS = { "cipher_text", "cipher_text_1", "cipher_text_2" };
  private static final String JSON_KEY_DEP_AIRPORT = "dep_airport";
  private static final String JSON_KEY_FLIGHT_COMPANY = "flight_company";
  private static final String JSON_KEY_FLIGHT_NUM = "flight_num";
  private static final String[] JSON_KEY_PASSENGERS = { "passenger", "passenger_1", "passenger_2" };
  private static final String[] JSON_KEY_SEAT_NO = { "seat_no", "seat_no_1", "seat_no_2" };
  private static final String[] JSON_KEY_STATUS = { "status", "status_1", "status_2" };
  private static final String TAG = "Cal:D:FlightEvent";
  protected String mArrAirport;
  protected String mArrTerminal;
  protected String mDepAirport;
  protected String mDepTerminal;
  protected String mFlightCompany;
  protected String mFlightNum;
  protected FlightSchema mFlightSchema;
  protected List<FlightPassenger> mPassengers = new ArrayList();
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramObject != null)
    {
      bool2 = bool1;
      if ((paramObject instanceof FlightEvent))
      {
        paramObject = (FlightEvent)paramObject;
        bool2 = bool1;
        if (TextUtils.equals(this.mDepDate, paramObject.getDepDate()))
        {
          bool2 = bool1;
          if (TextUtils.equals(this.mDepTime, paramObject.getDepTime()))
          {
            bool2 = bool1;
            if (TextUtils.equals(this.mDepCity, paramObject.getDepCity()))
            {
              bool2 = bool1;
              if (TextUtils.equals(this.mFlightNum, paramObject.getFlightNum()))
              {
                bool2 = bool1;
                if (TextUtils.equals(this.mDepAirport, paramObject.getDepAirport())) {
                  bool2 = true;
                }
              }
            }
          }
        }
      }
    }
    return bool2;
  }
  
  public void fillEpInfo(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return;
    }
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(paramString1);
      paramString1 = null;
      if (!TextUtils.isEmpty(paramString2)) {
        paramString1 = (FlightSchema)x.a(paramString2, FlightSchema.class);
      }
      fillEpInfo(localJSONObject, paramString1);
    }
    catch (Exception paramString1)
    {
      b.c("Cal:D:FlightEvent", "fillEpInfo(): ", paramString1);
    }
  }
  
  public void fillEpInfo(JSONObject paramJSONObject, FlightSchema paramFlightSchema)
  {
    fillEpInfoFromJSONObject(paramJSONObject);
    if (paramFlightSchema != null)
    {
      paramFlightSchema.adjustFlightSchema();
      fillFlightInfo(paramFlightSchema);
    }
  }
  
  public void fillEpInfoFromJSONObject(JSONObject paramJSONObject)
  {
    super.fillEpInfoFromJSONObject(paramJSONObject);
    this.mFlightNum = paramJSONObject.optString("flight_num");
    this.mFlightCompany = paramJSONObject.optString("flight_company");
    this.mDepAirport = paramJSONObject.optString("dep_airport");
    this.mArrAirport = paramJSONObject.optString("arr_airport");
    for (int i = 0;; i++)
    {
      Object localObject = JSON_KEY_PASSENGERS;
      if (i >= localObject.length) {
        break;
      }
      String str = paramJSONObject.optString(localObject[i]);
      if (!TextUtils.isEmpty(str))
      {
        localObject = new FlightPassenger();
        ((FlightPassenger)localObject).setName(str);
        ((FlightPassenger)localObject).setCipherText(paramJSONObject.optString(JSON_KEY_CIPHER_TEXTS[i]));
        ((FlightPassenger)localObject).setSeatNo(paramJSONObject.optString(JSON_KEY_SEAT_NO[i]));
        ((FlightPassenger)localObject).setStatus(paramJSONObject.optInt(JSON_KEY_STATUS[i]));
        this.mPassengers.add(localObject);
      }
    }
  }
  
  public void fillFlightInfo(FlightSchema paramFlightSchema)
  {
    this.mFlightSchema = paramFlightSchema;
    this.mFlightNum = paramFlightSchema.FlightNo;
    this.mFlightCompany = paramFlightSchema.FlightCompany;
    this.mDepDate = paramFlightSchema.FlightDeptimePlanDate.split(" ")[0];
    this.mDepTime = paramFlightSchema.FlightDeptimePlanDate.split(" ")[1];
    this.mDepCity = paramFlightSchema.FlightDep;
    this.mDepAirport = paramFlightSchema.FlightDepAirport;
    this.mDepTerminal = paramFlightSchema.FlightHTerminal;
    this.mArrDate = paramFlightSchema.FlightArrtimePlanDate.split(" ")[0];
    this.mArrTime = paramFlightSchema.FlightArrtimePlanDate.split(" ")[1];
    this.mArrCity = paramFlightSchema.FlightArr;
    this.mArrAirport = paramFlightSchema.FlightArrAirport;
    this.mArrTerminal = paramFlightSchema.FlightTerminal;
  }
  
  protected void fillJSONObject(JSONObject paramJSONObject)
    throws JSONException
  {
    super.fillJSONObject(paramJSONObject);
    fillEpInfo(paramJSONObject, null);
  }
  
  public String getArrAirport()
  {
    return this.mArrAirport;
  }
  
  public String getArrTerminal()
  {
    return this.mArrTerminal;
  }
  
  public String getDepAirport()
  {
    return this.mDepAirport;
  }
  
  public String getDepTerminal()
  {
    return this.mDepTerminal;
  }
  
  public int getEventType()
  {
    return 11;
  }
  
  public String getFlightCompany()
  {
    return this.mFlightCompany;
  }
  
  public String getFlightNum()
  {
    return this.mFlightNum;
  }
  
  public FlightSchema getFlightSchema()
  {
    return this.mFlightSchema;
  }
  
  public List<FlightPassenger> getPassengers()
  {
    return this.mPassengers;
  }
  
  public void setArrAirport(String paramString)
  {
    this.mArrAirport = paramString;
  }
  
  public void setArrTerminal(String paramString)
  {
    this.mArrTerminal = paramString;
  }
  
  public void setDepAirport(String paramString)
  {
    this.mDepAirport = paramString;
  }
  
  public void setDepTerminal(String paramString)
  {
    this.mDepTerminal = paramString;
  }
  
  public void setFlightCompany(String paramString)
  {
    this.mFlightCompany = paramString;
  }
  
  public void setFlightNum(String paramString)
  {
    this.mFlightNum = paramString;
  }
  
  public void setFlightSchema(FlightSchema paramFlightSchema)
  {
    this.mFlightSchema = this.mFlightSchema;
  }
  
  public void setPassengers(List<FlightPassenger> paramList)
  {
    this.mPassengers = paramList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.FlightEvent
 * JD-Core Version:    0.7.0.1
 */