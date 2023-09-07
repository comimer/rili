package com.android.calendar.common.event.schema;

import java.io.Serializable;

public class TrainPassenger
  implements Serializable
{
  private String mBerth;
  private String mCarriageNum;
  private String mName;
  private String mSeatNum;
  private String mSeatType;
  
  public String getBerth()
  {
    return this.mBerth;
  }
  
  public String getCarriageNum()
  {
    return this.mCarriageNum;
  }
  
  public String getName()
  {
    return this.mName;
  }
  
  public String getSeatNum()
  {
    return this.mSeatNum;
  }
  
  public String getSeatType()
  {
    return this.mSeatType;
  }
  
  public void setBerth(String paramString)
  {
    this.mBerth = paramString;
  }
  
  public void setCarriageNum(String paramString)
  {
    this.mCarriageNum = paramString;
  }
  
  public void setName(String paramString)
  {
    this.mName = paramString;
  }
  
  public void setSeatNum(String paramString)
  {
    this.mSeatNum = paramString;
  }
  
  public void setSeatType(String paramString)
  {
    this.mSeatType = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.TrainPassenger
 * JD-Core Version:    0.7.0.1
 */