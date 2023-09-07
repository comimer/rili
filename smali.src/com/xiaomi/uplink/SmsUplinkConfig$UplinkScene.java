package com.xiaomi.uplink;

public enum SmsUplinkConfig$UplinkScene
{
  String sceneId;
  
  static
  {
    UplinkScene localUplinkScene1 = new UplinkScene("LOGIN", 0, "LG");
    LOGIN = localUplinkScene1;
    UplinkScene localUplinkScene2 = new UplinkScene("REGISTER", 1, "RG");
    REGISTER = localUplinkScene2;
    $VALUES = new UplinkScene[] { localUplinkScene1, localUplinkScene2 };
  }
  
  private SmsUplinkConfig$UplinkScene(String paramString)
  {
    this.sceneId = paramString;
  }
  
  public String getSceneId()
  {
    return this.sceneId;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.uplink.SmsUplinkConfig.UplinkScene
 * JD-Core Version:    0.7.0.1
 */