package com.xiaomi.ad.entity.unified;

import com.xiaomi.ad.entity.contract.AdResponseEntityBase;
import com.xiaomi.ad.entity.util.GsonUtils;

public class UnifiedAdResponse
  extends AdResponseEntityBase<UnifiedAdInfo>
{
  private static final double GSON_CONTENT_VERSION = 1.0D;
  private static final String TAG = "UnifiedAdResponse";
  
  public static final UnifiedAdResponse deserialize(String paramString)
  {
    return (UnifiedAdResponse)GsonUtils.fromJsonString(UnifiedAdResponse.class, paramString, "UnifiedAdResponse");
  }
  
  protected String getTag()
  {
    return "UnifiedAdResponse";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.unified.UnifiedAdResponse
 * JD-Core Version:    0.7.0.1
 */