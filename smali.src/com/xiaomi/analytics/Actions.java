package com.xiaomi.analytics;

public class Actions
{
  public static AdAction newAdAction(String paramString)
  {
    return new AdAction(paramString);
  }
  
  public static AdAction newAdAction(String paramString1, String paramString2)
  {
    return new AdAction(paramString1, paramString2);
  }
  
  public static CustomAction newCustomAction()
  {
    return new CustomAction();
  }
  
  public static EventAction newEventAction(String paramString)
  {
    return new EventAction(paramString);
  }
  
  public static EventAction newEventAction(String paramString1, String paramString2)
  {
    return new EventAction(paramString1, paramString2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.Actions
 * JD-Core Version:    0.7.0.1
 */