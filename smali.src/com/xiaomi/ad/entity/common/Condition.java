package com.xiaomi.ad.entity.common;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.xiaomi.ad.entity.contract.GsonEntityBase;
import com.xiaomi.ad.entity.util.GsonUtils;
import d6.a;
import d6.d;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class Condition
  extends GsonEntityBase
{
  private static final double GSON_CONTENT_VERSION = 1.0D;
  private static final String TAG = "Condition";
  @Expose
  @SerializedName("deviceStat")
  private DeviceState deviceState;
  @Expose
  private long interval;
  @Expose
  private boolean isOffLine;
  @Expose
  private Slot location;
  @Expose
  private List<Slot> locations;
  @Expose
  @SerializedName("packageStats")
  private List<PackageState> packageStates;
  @Expose
  private long timeLimit;
  @Expose
  private TimeRange timeRange;
  @Expose
  @SerializedName("userStat")
  private UserState userState;
  
  public static Condition deserialize(String paramString)
  {
    return (Condition)GsonUtils.fromJsonString(Condition.class, paramString, "Condition");
  }
  
  public static List<Condition> parse(JSONArray paramJSONArray)
  {
    if (paramJSONArray == null) {
      return null;
    }
    localArrayList = new ArrayList();
    int i = 0;
    try
    {
      while (i < paramJSONArray.length())
      {
        JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
        if (localJSONObject != null) {
          localArrayList.add(deserialize(localJSONObject.toString()));
        }
        i++;
      }
      return localArrayList;
    }
    catch (Exception paramJSONArray)
    {
      d.d("Condition", "condition paser:", paramJSONArray);
    }
  }
  
  public DeviceState getDeviceState()
  {
    return this.deviceState;
  }
  
  public long getInterval()
  {
    return this.interval;
  }
  
  public Slot getLocation()
  {
    return this.location;
  }
  
  public List<Slot> getLocations()
  {
    return this.locations;
  }
  
  public List<PackageState> getPackageStates()
  {
    return this.packageStates;
  }
  
  protected String getTag()
  {
    return "Condition";
  }
  
  public long getTimeLimit()
  {
    return this.timeLimit;
  }
  
  public TimeRange getTimeRange()
  {
    return this.timeRange;
  }
  
  public UserState getUserState()
  {
    return this.userState;
  }
  
  public boolean hasDeviceStates()
  {
    boolean bool;
    if (this.deviceState != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean hasLocation()
  {
    boolean bool;
    if (this.location != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean hasLocations()
  {
    return a.e(this.locations);
  }
  
  public boolean hasOnlyTimeRange()
  {
    boolean bool;
    if ((!hasLocations()) && (!hasPackageStates()) && (!hasDeviceStates()) && (!hasUserState())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean hasPackageStates()
  {
    return a.e(this.packageStates);
  }
  
  public boolean hasTimeRange()
  {
    boolean bool;
    if (this.timeRange != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean hasUserState()
  {
    boolean bool;
    if (this.userState != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isOffLine()
  {
    return this.isOffLine;
  }
  
  public boolean isValid()
  {
    boolean bool;
    if ((this.location == null) && (this.timeRange == null)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static class DeviceState
    extends GsonEntityBase
  {
    private static final double GSON_CONTENT_VERSION = 1.0D;
    private static final String TAG = "DeviceState";
    @Expose
    @SerializedName("bluetooth")
    private List<String> bluetooths;
    @Expose
    private Condition.ValueRange brightness;
    @Expose
    private Condition.ValueRange clockVolume;
    @Expose
    private boolean isCharging;
    @Expose
    private Condition.ValueRange mediaVolume;
    @Expose
    private Condition.ValueRange power;
    @Expose
    private Condition.ValueRange sysVolume;
    
    public List<String> getBluetooths()
    {
      return this.bluetooths;
    }
    
    public Condition.ValueRange getBrightness()
    {
      return this.brightness;
    }
    
    public Condition.ValueRange getClockVolume()
    {
      return this.clockVolume;
    }
    
    public Condition.ValueRange getMediaVolume()
    {
      return this.mediaVolume;
    }
    
    public Condition.ValueRange getPower()
    {
      return this.power;
    }
    
    public Condition.ValueRange getSysVolume()
    {
      return this.sysVolume;
    }
    
    protected String getTag()
    {
      return "DeviceState";
    }
    
    public boolean hasBluetooths()
    {
      return a.e(this.bluetooths);
    }
    
    public boolean hasBrightness()
    {
      boolean bool;
      if (this.brightness != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean hasClockVolume()
    {
      boolean bool;
      if (this.clockVolume != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean hasMediaVolume()
    {
      boolean bool;
      if (this.mediaVolume != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean hasPower()
    {
      boolean bool;
      if (this.power != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean hasSysVolume()
    {
      boolean bool;
      if (this.sysVolume != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean isCharging()
    {
      return this.isCharging;
    }
  }
  
  public static class PackageState
    extends GsonEntityBase
  {
    private static final double GSON_CONTENT_VERSION = 1.0D;
    private static final String TAG = "PackageState";
    @Expose
    private boolean isActive;
    @Expose
    @SerializedName("musicPlaying")
    private boolean isMusicPlay;
    @Expose
    private String packageName;
    @Expose
    private List<String> type;
    
    public String getPackageName()
    {
      return this.packageName;
    }
    
    protected String getTag()
    {
      return "PackageState";
    }
    
    public List<String> getType()
    {
      return this.type;
    }
    
    public boolean hasType()
    {
      return a.e(this.type);
    }
    
    public boolean isActive()
    {
      return this.isActive;
    }
    
    public boolean isMusicPlay()
    {
      return this.isMusicPlay;
    }
  }
  
  public static class Slot
    extends GsonEntityBase
  {
    private static final double GSON_CONTENT_VERSION = 1.0D;
    private static final String TAG = "Slot";
    @Expose
    @SerializedName("lat")
    private double latitude;
    @Expose
    @SerializedName("lng")
    private double longitude;
    @Expose
    @SerializedName("r")
    private double radius;
    
    public double getLatitude()
    {
      return this.latitude;
    }
    
    public double getLongitude()
    {
      return this.longitude;
    }
    
    public double getRadius()
    {
      return this.radius;
    }
    
    protected String getTag()
    {
      return "Slot";
    }
  }
  
  public static class TimeRange
    extends GsonEntityBase
  {
    private static final double GSON_CONTENT_VERSION = 1.0D;
    private static final String TAG = "TimeRange";
    @Expose
    private long endTime;
    @Expose
    private long startTime;
    
    public long getEndTime()
    {
      return this.endTime;
    }
    
    public long getStartTime()
    {
      return this.startTime;
    }
    
    protected String getTag()
    {
      return "TimeRange";
    }
    
    public boolean hasValidTime()
    {
      long l1 = this.startTime;
      if (l1 > 0L)
      {
        long l2 = this.endTime;
        if ((l2 > 0L) && (l1 < l2) && (System.currentTimeMillis() < this.endTime))
        {
          bool = true;
          break label48;
        }
      }
      boolean bool = false;
      label48:
      return bool;
    }
    
    public boolean isTimeMatch()
    {
      long l1 = System.currentTimeMillis();
      long l2 = this.startTime;
      long l3 = this.endTime;
      boolean bool;
      if ((l2 <= l3) && (l1 >= l2) && (l1 <= l3)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public class UserState
    extends GsonEntityBase
  {
    private static final double GSON_CONTENT_VERSION = 1.0D;
    private static final String TAG = "UserState";
    @Expose
    private Condition.ValueRange speed;
    
    public UserState() {}
    
    public Condition.ValueRange getSpeed()
    {
      return this.speed;
    }
    
    protected String getTag()
    {
      return "UserState";
    }
  }
  
  public class ValueRange
    extends GsonEntityBase
  {
    private static final double GSON_CONTENT_VERSION = 1.0D;
    private static final String TAG = "ValueRange";
    @Expose
    int max;
    @Expose
    int min;
    
    public ValueRange() {}
    
    public int getMax()
    {
      return this.max;
    }
    
    public int getMin()
    {
      return this.min;
    }
    
    protected String getTag()
    {
      return "ValueRange";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.common.Condition
 * JD-Core Version:    0.7.0.1
 */