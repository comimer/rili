package com.miui.calendar.holiday;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.j;
import androidx.core.app.y;
import com.miui.calendar.util.z;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public class CommonJobIntentService
  extends y
{
  private static final Queue<Runnable> j = new ConcurrentLinkedQueue();
  
  public static void j(Context paramContext, Intent paramIntent, Runnable paramRunnable)
  {
    if ((paramContext != null) && (paramIntent != null) && (paramRunnable != null))
    {
      if (j.offer(paramRunnable)) {
        j.d(paramContext, CommonJobIntentService.class, 273, paramIntent);
      } else {
        z.c("Cal:D CommonJobIntentService", "enqueueWork offered failed");
      }
      return;
    }
    z.c("Cal:D CommonJobIntentService", "enqueueWork params is null");
  }
  
  protected void g(Intent paramIntent)
  {
    z.g("Cal:D CommonJobIntentService", "onHandleWork start");
    for (;;)
    {
      paramIntent = (Runnable)j.poll();
      if (paramIntent == null)
      {
        z.g("Cal:D CommonJobIntentService", "onHandleWork end");
        return;
      }
      paramIntent.run();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.holiday.CommonJobIntentService
 * JD-Core Version:    0.7.0.1
 */