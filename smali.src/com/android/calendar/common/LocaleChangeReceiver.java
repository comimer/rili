package com.android.calendar.common;

import a4.d;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.q0;
import com.miui.calendar.util.y;
import java.util.Locale;
import z3.e;

public class LocaleChangeReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.intent.action.LOCALE_CHANGED".equals(paramIntent.getAction())) && ((Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) || (Locale.getDefault().equals(Locale.SIMPLIFIED_CHINESE)) || (y.f(paramContext))))
    {
      q0.n();
      a0.y();
      d.s();
      e.a();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.LocaleChangeReceiver
 * JD-Core Version:    0.7.0.1
 */