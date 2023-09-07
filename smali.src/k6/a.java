package k6;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build.VERSION;

public class a
{
  public static void a(Context paramContext, BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 33)
    {
      int i;
      if (paramBoolean) {
        i = 2;
      } else {
        i = 4;
      }
      paramContext.registerReceiver(paramBroadcastReceiver, paramIntentFilter, i);
    }
    else
    {
      paramContext.registerReceiver(paramBroadcastReceiver, paramIntentFilter);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k6.a
 * JD-Core Version:    0.7.0.1
 */