package com.miui.calendar.util;

import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroid/content/Context;", "context", "Lkotlin/u;", "a", "Landroid/content/Intent;", "intent", "b", "app_chinaNormalRelease"}, k=2, mv={1, 7, 1})
public final class e1
{
  public static final void a(Context paramContext)
  {
    r.f(paramContext, "context");
    Intent localIntent = new Intent("android.intent.action.ASSIST");
    localIntent.putExtra("voice_assist_start_from_key", "mi-calendar");
    localIntent.setClassName("com.miui.voiceassist", "com.xiaomi.voiceassistant.VoiceService");
    b(paramContext, localIntent);
  }
  
  private static final void b(Context paramContext, Intent paramIntent)
  {
    try
    {
      paramContext.startForegroundService(paramIntent);
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.e1
 * JD-Core Version:    0.7.0.1
 */