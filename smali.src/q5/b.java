package q5;

import android.content.Context;
import android.content.Intent;

public class b
{
  public static void a(Context paramContext)
  {
    com.xiaomi.accountsdk.utils.b.g("SettingsRedDotHelper", "Push red dot removed");
    b(Boolean.FALSE, paramContext);
  }
  
  private static void b(Boolean paramBoolean, Context paramContext)
  {
    Intent localIntent = new Intent("miui.intent.action.SETTINGS_NOTIFICATION_RECEIVER");
    localIntent.setPackage("com.android.settings");
    localIntent.putExtra("settings_notification_state", paramBoolean);
    paramContext.sendBroadcast(localIntent);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q5.b
 * JD-Core Version:    0.7.0.1
 */