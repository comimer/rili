package com.miui.calendar.util;

import androidx.annotation.Keep;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/util/HuangliPatchItem;", "", "()V", "day", "", "getDay", "()I", "setDay", "(I)V", "ji", "", "getJi", "()Ljava/lang/String;", "setJi", "(Ljava/lang/String;)V", "year", "getYear", "setYear", "yi", "getYi", "setYi", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
@Keep
public final class HuangliPatchItem
{
  private int day;
  private String ji;
  private int year;
  private String yi;
  
  public final int getDay()
  {
    return this.day;
  }
  
  public final String getJi()
  {
    return this.ji;
  }
  
  public final int getYear()
  {
    return this.year;
  }
  
  public final String getYi()
  {
    return this.yi;
  }
  
  public final void setDay(int paramInt)
  {
    this.day = paramInt;
  }
  
  public final void setJi(String paramString)
  {
    this.ji = paramString;
  }
  
  public final void setYear(int paramInt)
  {
    this.year = paramInt;
  }
  
  public final void setYi(String paramString)
  {
    this.yi = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.HuangliPatchItem
 * JD-Core Version:    0.7.0.1
 */