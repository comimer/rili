package com.miui.calendar.util;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/util/HolidayPatchItem;", "", "()V", "day", "", "getDay", "()I", "setDay", "(I)V", "holidays", "", "", "getHolidays", "()Ljava/util/List;", "setHolidays", "(Ljava/util/List;)V", "year", "getYear", "setYear", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
@Keep
public final class HolidayPatchItem
{
  private int day;
  private List<String> holidays;
  private int year;
  
  public final int getDay()
  {
    return this.day;
  }
  
  public final List<String> getHolidays()
  {
    return this.holidays;
  }
  
  public final int getYear()
  {
    return this.year;
  }
  
  public final void setDay(int paramInt)
  {
    this.day = paramInt;
  }
  
  public final void setHolidays(List<String> paramList)
  {
    this.holidays = paramList;
  }
  
  public final void setYear(int paramInt)
  {
    this.year = paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.HolidayPatchItem
 * JD-Core Version:    0.7.0.1
 */