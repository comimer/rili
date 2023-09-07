package com.miui.calendar.util;

import androidx.annotation.Keep;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/util/PatchData;", "", "()V", "configName", "", "getConfigName", "()Ljava/lang/String;", "setConfigName", "(Ljava/lang/String;)V", "configType", "", "getConfigType", "()I", "setConfigType", "(I)V", "extra", "getExtra", "setExtra", "versionCode", "getVersionCode", "setVersionCode", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
@Keep
public final class PatchData
{
  private String configName;
  private int configType;
  private String extra;
  private int versionCode;
  
  public final String getConfigName()
  {
    return this.configName;
  }
  
  public final int getConfigType()
  {
    return this.configType;
  }
  
  public final String getExtra()
  {
    return this.extra;
  }
  
  public final int getVersionCode()
  {
    return this.versionCode;
  }
  
  public final void setConfigName(String paramString)
  {
    this.configName = paramString;
  }
  
  public final void setConfigType(int paramInt)
  {
    this.configType = paramInt;
  }
  
  public final void setExtra(String paramString)
  {
    this.extra = paramString;
  }
  
  public final void setVersionCode(int paramInt)
  {
    this.versionCode = paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.PatchData
 * JD-Core Version:    0.7.0.1
 */