package com.miui.calendar.util;

import androidx.annotation.Keep;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/util/BaseScheme;", "", "()V", "code", "", "getCode", "()I", "setCode", "(I)V", "description", "", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "result", "getResult", "setResult", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
@Keep
public class BaseScheme
{
  private int code;
  private String description;
  private String result;
  
  public final int getCode()
  {
    return this.code;
  }
  
  public final String getDescription()
  {
    return this.description;
  }
  
  public final String getResult()
  {
    return this.result;
  }
  
  public final void setCode(int paramInt)
  {
    this.code = paramInt;
  }
  
  public final void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public final void setResult(String paramString)
  {
    this.result = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.BaseScheme
 * JD-Core Version:    0.7.0.1
 */