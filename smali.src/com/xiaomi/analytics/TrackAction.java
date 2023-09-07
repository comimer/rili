package com.xiaomi.analytics;

public class TrackAction
  extends Action
{
  public TrackAction setAction(String paramString)
  {
    c("_action_", paramString);
    return this;
  }
  
  public TrackAction setCategory(String paramString)
  {
    c("_category_", paramString);
    return this;
  }
  
  public TrackAction setLabel(String paramString)
  {
    c("_label_", paramString);
    return this;
  }
  
  public TrackAction setValue(long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramLong);
    localStringBuilder.append("");
    c("_value_", localStringBuilder.toString());
    return this;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.TrackAction
 * JD-Core Version:    0.7.0.1
 */