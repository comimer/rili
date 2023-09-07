package com.android.calendar.alerts;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.miui.calendar.util.z;

public class NotificationMiddleActivity
  extends androidx.appcompat.app.d
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    z.h("Cal:D NotificationMiddleActivity", "onCreate");
    paramBundle = getIntent();
    paramBundle.setClass(this, DismissAlarmsService.class);
    startService(paramBundle);
    finish();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.alerts.NotificationMiddleActivity
 * JD-Core Version:    0.7.0.1
 */