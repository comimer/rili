package com.miui.calendar.util;

import androidx.annotation.Keep;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/util/ConfigScheme;", "Lcom/miui/calendar/util/BaseScheme;", "()V", "data", "Lcom/miui/calendar/util/ConfigData;", "getData", "()Lcom/miui/calendar/util/ConfigData;", "setData", "(Lcom/miui/calendar/util/ConfigData;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
@Keep
public final class ConfigScheme
  extends BaseScheme
{
  private ConfigData data;
  
  public final ConfigData getData()
  {
    return this.data;
  }
  
  public final void setData(ConfigData paramConfigData)
  {
    this.data = paramConfigData;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.ConfigScheme
 * JD-Core Version:    0.7.0.1
 */