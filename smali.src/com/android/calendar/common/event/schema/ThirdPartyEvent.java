package com.android.calendar.common.event.schema;

public class ThirdPartyEvent
  extends Event
{
  private static final String TAG = "Cal:D:ThirdPartyEvent";
  protected String mExtend;
  protected String mPackageName;
  protected String mUrl;
  protected String mUrlText;
  
  public void fillEpInfo(String paramString) {}
  
  public String getEpName()
  {
    return "agenda_info";
  }
  
  public String getExtend()
  {
    return this.mExtend;
  }
  
  public String getPackageName()
  {
    return this.mPackageName;
  }
  
  public String getUrl()
  {
    return this.mUrl;
  }
  
  public String getUrlText()
  {
    return this.mUrlText;
  }
  
  public void setExtend(String paramString)
  {
    this.mExtend = paramString;
  }
  
  public void setPackageName(String paramString)
  {
    this.mPackageName = paramString;
  }
  
  public void setUrl(String paramString)
  {
    this.mUrl = paramString;
  }
  
  public void setUrlText(String paramString)
  {
    this.mUrlText = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.ThirdPartyEvent
 * JD-Core Version:    0.7.0.1
 */