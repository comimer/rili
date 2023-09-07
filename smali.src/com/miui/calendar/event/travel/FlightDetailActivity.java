package com.miui.calendar.event.travel;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.android.calendar.event.EventInfoActivity;
import com.android.calendar.event.EventInfoActivity.EventInfo;
import com.miui.calendar.util.z;
import java.util.List;

public class FlightDetailActivity
  extends EventInfoActivity
{
  protected void h1(Bundle paramBundle)
  {
    String str = getIntent().getStringExtra("_id");
    try
    {
      paramBundle = T0();
      EventInfoActivity.EventInfo localEventInfo = new com/android/calendar/event/EventInfoActivity$EventInfo;
      localEventInfo.<init>(Long.parseLong(str), 11, -1L, -1L, 0, null);
      paramBundle.add(localEventInfo);
    }
    catch (Exception paramBundle)
    {
      z.d("Cal:D:FlightDetailActivity", "FlightDetailActivity parse error", paramBundle);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.event.travel.FlightDetailActivity
 * JD-Core Version:    0.7.0.1
 */