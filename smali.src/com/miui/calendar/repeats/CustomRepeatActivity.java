package com.miui.calendar.repeats;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import com.android.calendar.common.b;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.v;
import miuix.appcompat.app.m;

public class CustomRepeatActivity
  extends b
{
  private a b;
  private RepeatSchema c;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558514);
    this.b = new a();
    getSupportFragmentManager().m().q(2131362207, this.b).h();
  }
  
  protected void onDestroy()
  {
    g.c(g.v.h(this.c));
    super.onDestroy();
  }
  
  protected void onPause()
  {
    super.onPause();
    a locala = this.b;
    if (locala != null) {
      this.c = locala.N();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.repeats.CustomRepeatActivity
 * JD-Core Version:    0.7.0.1
 */