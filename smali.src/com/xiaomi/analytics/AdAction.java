package com.xiaomi.analytics;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

public class AdAction
  extends TrackAction
{
  protected static final String AD_MONITOR = "_ad_monitor_";
  
  public AdAction(String paramString)
  {
    setCategory("ad");
    setAction(paramString);
  }
  
  public AdAction(String paramString1, String paramString2)
  {
    setCategory(paramString1);
    setAction(paramString2);
  }
  
  public AdAction addAdMonitor(List<String> paramList)
  {
    if (paramList != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        String str = (String)paramList.next();
        if (!TextUtils.isEmpty(str))
        {
          if (localStringBuilder.length() > 0) {
            localStringBuilder.append("|");
          }
          localStringBuilder.append(str);
        }
      }
      if (localStringBuilder.length() > 0) {
        e("_ad_monitor_", localStringBuilder.toString());
      }
    }
    return this;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.AdAction
 * JD-Core Version:    0.7.0.1
 */