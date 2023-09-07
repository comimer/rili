package com.android.calendar.common.event.schema;

import java.io.Serializable;

public class Attendee
  implements Serializable
{
  private String mEmail;
  private String mIdNamespace;
  private String mIdentity;
  private String mName;
  private int mStatus;
  
  public Attendee(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, 0, null, null);
  }
  
  public Attendee(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4)
  {
    this.mName = paramString1;
    this.mEmail = paramString2;
    this.mStatus = paramInt;
    this.mIdentity = paramString3;
    this.mIdNamespace = paramString4;
  }
  
  public String getEmail()
  {
    return this.mEmail;
  }
  
  public String getIdNamespace()
  {
    return this.mIdNamespace;
  }
  
  public String getIdentity()
  {
    return this.mIdentity;
  }
  
  public String getName()
  {
    return this.mName;
  }
  
  public int getStatus()
  {
    return this.mStatus;
  }
  
  public void setEmail(String paramString)
  {
    this.mEmail = paramString;
  }
  
  public void setIdentity(String paramString)
  {
    this.mIdentity = paramString;
  }
  
  public void setName(String paramString)
  {
    this.mName = paramString;
  }
  
  public void setStatus(int paramInt)
  {
    this.mStatus = paramInt;
  }
  
  public void setmIdNamespace(String paramString)
  {
    this.mIdNamespace = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.Attendee
 * JD-Core Version:    0.7.0.1
 */