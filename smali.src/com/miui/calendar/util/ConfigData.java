package com.miui.calendar.util;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/util/ConfigData;", "", "()V", "configList", "", "Lcom/miui/calendar/util/ConfigModel;", "getConfigList", "()Ljava/util/List;", "setConfigList", "(Ljava/util/List;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
@Keep
public final class ConfigData
{
  private List<ConfigModel> configList;
  
  public final List<ConfigModel> getConfigList()
  {
    return this.configList;
  }
  
  public final void setConfigList(List<ConfigModel> paramList)
  {
    this.configList = paramList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.ConfigData
 * JD-Core Version:    0.7.0.1
 */