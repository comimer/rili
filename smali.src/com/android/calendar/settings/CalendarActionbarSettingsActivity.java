package com.android.calendar.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.util.z0;
import com.miui.calendar.util.z0.h;
import miuix.appcompat.app.m;

public class CalendarActionbarSettingsActivity
  extends com.android.calendar.common.b
{
  private b b;
  
  private void b0(boolean paramBoolean)
  {
    if (z0.q(this, paramBoolean)) {
      z0.D(this, new a());
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    z0.r(CalendarApplication.e().getApplicationContext(), paramInt1, paramInt2, new b());
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((z0.l(this)) && (!z0.m()) && (!z0.i(this)))
    {
      z0.B(this);
      return;
    }
    this.b = new b();
    getSupportFragmentManager().m().q(16908290, this.b).h();
  }
  
  class a
    implements z0.h
  {
    a() {}
    
    public void a()
    {
      CalendarActionbarSettingsActivity.this.recreate();
    }
    
    public void b(boolean paramBoolean) {}
  }
  
  class b
    implements z0.h
  {
    b() {}
    
    public void a()
    {
      CalendarActionbarSettingsActivity.a0(CalendarActionbarSettingsActivity.this, new b());
      CalendarActionbarSettingsActivity.this.getSupportFragmentManager().m().q(16908290, CalendarActionbarSettingsActivity.Z(CalendarActionbarSettingsActivity.this)).h();
    }
    
    public void b(boolean paramBoolean)
    {
      if (paramBoolean) {
        CalendarActionbarSettingsActivity.this.finish();
      } else {
        CalendarActionbarSettingsActivity.Y(CalendarActionbarSettingsActivity.this, true);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.CalendarActionbarSettingsActivity
 * JD-Core Version:    0.7.0.1
 */