package com.miui.calendar.weather;

import android.content.Context;
import androidx.annotation.Keep;

@Keep
public class WeatherInfo
{
  public int aqiLevel;
  public String cityName;
  public String humidity;
  public String temperature;
  public String temperatureHigh;
  public String temperatureLow;
  public String temperatureRange;
  public String weatherFrom;
  public String weatherTo;
  public int weatherType;
  public String weatherTypeDesc;
  public String wind;
  
  public String getHumidityDesc(Context paramContext)
  {
    return paramContext.getString(2131887819, new Object[] { this.humidity });
  }
  
  public String getWindDesc()
  {
    return this.wind.replace(",", "").replace("，", "");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.weather.WeatherInfo
 * JD-Core Version:    0.7.0.1
 */