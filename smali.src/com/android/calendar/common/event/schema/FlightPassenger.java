package com.android.calendar.common.event.schema;

import java.io.Serializable;

public class FlightPassenger
  implements Serializable
{
  private String mCipherText;
  private String mName;
  private String mSeatNo;
  private int mStatus;
  
  public String getCipherText()
  {
    return this.mCipherText;
  }
  
  public String getName()
  {
    return this.mName;
  }
  
  public String getSeatNo()
  {
    return this.mSeatNo;
  }
  
  public int getStatus()
  {
    return this.mStatus;
  }
  
  public void setCipherText(String paramString)
  {
    this.mCipherText = paramString;
  }
  
  public void setName(String paramString)
  {
    this.mName = paramString;
  }
  
  public void setSeatNo(String paramString)
  {
    this.mSeatNo = paramString;
  }
  
  public void setStatus(int paramInt)
  {
    this.mStatus = paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.FlightPassenger
 * JD-Core Version:    0.7.0.1
 */