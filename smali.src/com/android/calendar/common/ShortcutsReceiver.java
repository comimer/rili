package com.android.calendar.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.calendar.util.z;

public class ShortcutsReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onReceive(): action:");
    localStringBuilder.append(str);
    z.a("Cal:D:ShortcutsReceiver", localStringBuilder.toString());
    new Thread(new x(paramIntent, paramContext)).start();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.ShortcutsReceiver
 * JD-Core Version:    0.7.0.1
 */