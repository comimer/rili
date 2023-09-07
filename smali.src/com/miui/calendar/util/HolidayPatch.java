package com.miui.calendar.util;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/util/HolidayPatch;", "", "()V", "holidays", "", "Lcom/miui/calendar/util/HolidayPatchItem;", "getHolidays", "()Ljava/util/List;", "setHolidays", "(Ljava/util/List;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
@Keep
public final class HolidayPatch
{
  private List<HolidayPatchItem> holidays;
  
  public final List<HolidayPatchItem> getHolidays()
  {
    return this.holidays;
  }
  
  public final void setHolidays(List<HolidayPatchItem> paramList)
  {
    this.holidays = paramList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.HolidayPatch
 * JD-Core Version:    0.7.0.1
 */