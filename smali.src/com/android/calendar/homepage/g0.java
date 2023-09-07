package com.android.calendar.homepage;

import android.view.View;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.x0;
import java.util.Calendar;
import java.util.List;

public class g0
  extends c0
{
  private boolean F0;
  private String G0;
  private List<List<c0.k>> H0;
  private c0.k I0;
  
  private void l0()
  {
    setSelectedDay(Calendar.getInstance());
    setWeekFirstDay(Calendar.getInstance());
    setFocusDay(Calendar.getInstance());
    Calendar localCalendar = e0.s(this.b, Calendar.getInstance());
    setWeekNum(e0.n(this.b, localCalendar));
  }
  
  protected boolean V()
  {
    return false;
  }
  
  public void Y()
  {
    l0();
    super.Y();
  }
  
  protected void c0()
  {
    super.c0();
    this.I0.b(null);
  }
  
  protected float getDrawCenterYOffset()
  {
    return 0.0F;
  }
  
  protected List<List<c0.k>> getPaintInfos()
  {
    if (this.F0) {
      return this.H0;
    }
    return super.getPaintInfos();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt1 = (int)x0.j0(this.b);
    setMeasuredDimension(paramInt1, paramInt1);
  }
  
  public void setShowToday(boolean paramBoolean)
  {
    this.F0 = paramBoolean;
    invalidate();
  }
  
  public void setTodayText(String paramString)
  {
    this.G0 = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.g0
 * JD-Core Version:    0.7.0.1
 */