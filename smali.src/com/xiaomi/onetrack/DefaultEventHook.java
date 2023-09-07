package com.xiaomi.onetrack;

public class DefaultEventHook
  implements OneTrack.IEventHook
{
  public boolean isCustomDauEvent(String paramString)
  {
    return false;
  }
  
  public boolean isRecommendEvent(String paramString)
  {
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.DefaultEventHook
 * JD-Core Version:    0.7.0.1
 */