package com.miui.calendar.event.travel;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.d;
import com.android.calendar.common.b;
import com.miui.calendar.util.z;
import miuix.appcompat.app.m;

public class FlightCheckInActivity
  extends b
{
  private void Y(Intent paramIntent)
  {
    paramIntent.setComponent(new ComponentName(this, FlightCheckInService.class));
    startService(paramIntent);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    z.a("Cal:D:FlightCheckInActivity", "onCreate()");
    Y(paramBundle);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    z.a("Cal:D:FlightCheckInActivity", "onNewIntent()");
    Y(paramIntent);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.event.travel.FlightCheckInActivity
 * JD-Core Version:    0.7.0.1
 */