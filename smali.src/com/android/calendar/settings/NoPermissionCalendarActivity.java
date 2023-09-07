package com.android.calendar.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.core.content.a;
import com.android.calendar.common.b;
import miuix.appcompat.app.m;

public class NoPermissionCalendarActivity
  extends b
{
  private Button b;
  
  public void finish()
  {
    if (a.a(this, "android.permission.READ_CALENDAR") != 0)
    {
      Intent localIntent = new Intent("android.intent.action.MAIN");
      localIntent.setFlags(268435456);
      localIntent.addCategory("android.intent.category.HOME");
      startActivity(localIntent);
    }
    else
    {
      super.finish();
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1) && (a.a(this, "android.permission.READ_CALENDAR") == 0)) {
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558831);
    paramBundle = (Button)findViewById(2131363148);
    this.b = paramBundle;
    paramBundle.setOnClickListener(new d(this));
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.NoPermissionCalendarActivity
 * JD-Core Version:    0.7.0.1
 */