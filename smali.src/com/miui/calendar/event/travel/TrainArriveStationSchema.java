package com.miui.calendar.event.travel;

import androidx.annotation.Keep;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.util.List;

@Keep
public class TrainArriveStationSchema
{
  private static final String TAG = "Cal:D:TrainArriveStationSchema";
  public String departDate = "";
  public List<StationSchema> stationList;
  public String trainId = "";
  public String trainNo = "";
  
  public static TrainArriveStationSchema fromJsonString(String paramString)
  {
    return (TrainArriveStationSchema)x.a(paramString, TrainArriveStationSchema.class);
  }
  
  public void toLogString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("trainNo:");
    localStringBuilder.append(this.trainNo);
    localStringBuilder.append(", departDate");
    localStringBuilder.append(this.departDate);
    localStringBuilder.append(", trainId:");
    localStringBuilder.append(this.trainId);
    z.a("Cal:D:TrainArriveStationSchema", localStringBuilder.toString());
  }
  
  @Keep
  public static class StationSchema
  {
    public String arriveDate = "";
    public String arriveTime = "";
    public String bgps = "";
    public String departTime = "";
    public String ggps = "";
    public String gps = "";
    public String stationCode = "";
    public String stationName = "";
    public String stay = "";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.event.travel.TrainArriveStationSchema
 * JD-Core Version:    0.7.0.1
 */