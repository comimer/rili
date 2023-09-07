package com.miui.calendar.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import l4.a;

public class SmsReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    z.h("Cal:D:SmsReceiver", "onReceive()");
    if ((y.i(paramContext)) && (z0.n(paramContext)))
    {
      paramIntent.setAction("action_parse_sms");
      a.j(paramContext, paramIntent);
      return;
    }
    z.h("Cal:D:SmsReceiver", "onReceive(): will NOT parse sms");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.sms.SmsReceiver
 * JD-Core Version:    0.7.0.1
 */