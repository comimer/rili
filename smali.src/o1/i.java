package o1;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.app.v;
import b2.a;
import com.android.calendar.settings.ReminderModeActivity;
import miuix.appcompat.app.l.b;

public class i
{
  public static boolean a(Context paramContext)
  {
    if (paramContext == null) {
      return false;
    }
    return v.c(paramContext.getApplicationContext()).a();
  }
  
  public static void b(Context paramContext)
  {
    paramContext = (NotificationManager)paramContext.getSystemService("notification");
    if (paramContext != null) {
      paramContext.cancelAll();
    }
  }
  
  public static void c(Context paramContext, int paramInt)
  {
    paramContext = (NotificationManager)paramContext.getSystemService("notification");
    if (paramContext != null) {
      paramContext.cancel(paramInt);
    }
  }
  
  @TargetApi(26)
  private static boolean d(NotificationManager paramNotificationManager, String paramString, Uri paramUri, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString)) {
      return true;
    }
    paramNotificationManager = paramNotificationManager.getNotificationChannel(paramString);
    if (paramNotificationManager == null) {
      return true;
    }
    if ((paramUri == null) && (paramNotificationManager.getSound() != null)) {
      return true;
    }
    if ((paramUri != null) && (!paramUri.equals(paramNotificationManager.getSound()))) {
      return true;
    }
    return paramNotificationManager.shouldVibrate() != paramBoolean;
  }
  
  @TargetApi(26)
  private static String e(Context paramContext)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("calendar_channel_01");
    ((StringBuilder)localObject1).append(System.currentTimeMillis());
    String str1 = ((StringBuilder)localObject1).toString();
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService(NotificationManager.class);
    localObject1 = g.f(paramContext);
    boolean bool = g.d(paramContext);
    if (localNotificationManager == null) {
      return "";
    }
    if (localNotificationManager.getNotificationChannel("calendar_channel_01") != null) {
      localNotificationManager.deleteNotificationChannel("calendar_channel_01");
    }
    String str2 = a.c(paramContext, "preferences_notification_channel_id", "");
    if (d(localNotificationManager, str2, (Uri)localObject1, bool))
    {
      localNotificationManager.deleteNotificationChannel(str2);
      Object localObject2 = paramContext.getString(2131887052);
      str2 = paramContext.getString(2131887051);
      localObject2 = new NotificationChannel(str1, (CharSequence)localObject2, 4);
      ((NotificationChannel)localObject2).setDescription(str2);
      if (localObject1 != null) {
        ((NotificationChannel)localObject2).setSound((Uri)localObject1, Notification.AUDIO_ATTRIBUTES_DEFAULT);
      } else {
        ((NotificationChannel)localObject2).setSound(null, null);
      }
      ((NotificationChannel)localObject2).enableLights(true);
      ((NotificationChannel)localObject2).enableVibration(bool);
      localNotificationManager.createNotificationChannel((NotificationChannel)localObject2);
      a.k(paramContext, "preferences_notification_channel_id", str1);
      return str1;
    }
    return str2;
  }
  
  @TargetApi(26)
  private static String f(Context paramContext)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService(NotificationManager.class);
    if (localNotificationManager == null) {
      return "calendar_channel_low_priority";
    }
    Object localObject = paramContext.getString(2131887052);
    paramContext = paramContext.getString(2131887051);
    localObject = new NotificationChannel("calendar_channel_low_priority", (CharSequence)localObject, 4);
    ((NotificationChannel)localObject).setDescription(paramContext);
    ((NotificationChannel)localObject).setSound(null, null);
    ((NotificationChannel)localObject).enableLights(false);
    ((NotificationChannel)localObject).enableVibration(false);
    localNotificationManager.createNotificationChannel((NotificationChannel)localObject);
    return "calendar_channel_low_priority";
  }
  
  public static Notification.Builder g(Context paramContext)
  {
    return h(paramContext, true);
  }
  
  private static Notification.Builder h(Context paramContext, boolean paramBoolean)
  {
    String str;
    if (paramBoolean) {
      str = e(paramContext);
    } else {
      str = f(paramContext);
    }
    return new Notification.Builder(paramContext, str);
  }
  
  public static void i(Context paramContext)
  {
    paramContext.startActivity(new Intent(paramContext, ReminderModeActivity.class));
  }
  
  public static void j(Context paramContext)
  {
    if (paramContext == null) {
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
    localIntent.putExtra("android.provider.extra.APP_PACKAGE", paramContext.getApplicationContext().getPackageName());
    paramContext.startActivity(localIntent);
  }
  
  public static void k(Context paramContext, d paramd)
  {
    new l.b(paramContext).m(2131887058).d(false).F(2131887059).z(2131887057, new c(paramd)).r(2131887056, new b(paramd)).v(new a(paramd)).J();
  }
  
  class a
    implements DialogInterface.OnCancelListener
  {
    a() {}
    
    public void onCancel(DialogInterface paramDialogInterface)
    {
      i.this.b();
    }
  }
  
  class b
    implements DialogInterface.OnClickListener
  {
    b() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      i.this.b();
    }
  }
  
  class c
    implements DialogInterface.OnClickListener
  {
    c() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      i.this.a();
    }
  }
  
  public static abstract interface d
  {
    public abstract void a();
    
    public abstract void b();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o1.i
 * JD-Core Version:    0.7.0.1
 */