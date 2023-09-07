package m3;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.calendar.util.z;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import n3.c;
import o1.i;

public class b
{
  private NotificationManager a;
  private Context b;
  
  private b(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    this.a = ((NotificationManager)paramContext.getSystemService("notification"));
  }
  
  private void a(Notification.Builder paramBuilder, a.a parama)
  {
    if (parama == null) {
      return;
    }
    if (parama.d())
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("miui.showAction", true);
      paramBuilder.setExtras(localBundle);
    }
    paramBuilder.addAction(parama.a(), parama.c(), parama.b());
  }
  
  private static void b(Notification paramNotification, a parama)
  {
    z.h("Cal:D:CalendarNotificationManager", "addNotificationOptions()");
    paramNotification.flags |= 0x1;
    paramNotification.defaults |= 0x4;
  }
  
  @TargetApi(26)
  private void c(Context paramContext, String paramString1, String paramString2, Uri paramUri, boolean paramBoolean)
  {
    paramContext = paramContext.getString(2131887051);
    paramString1 = new NotificationChannel(paramString1, paramString2, 4);
    paramString1.setDescription(paramContext);
    if (paramUri == null) {
      paramString1.setSound(null, null);
    } else {
      paramString1.setSound(paramUri, Notification.AUDIO_ATTRIBUTES_DEFAULT);
    }
    paramString1.enableLights(true);
    paramString1.enableVibration(paramBoolean);
    this.a.createNotificationChannel(paramString1);
  }
  
  private String d(a parama)
  {
    Uri localUri = parama.y();
    boolean bool = parama.B();
    String str;
    if ((localUri != null) && (bool))
    {
      str = this.b.getString(2131887052);
      parama = "calendar_channel_normal";
    }
    else
    {
      if (localUri == null) {
        break label56;
      }
      str = this.b.getString(2131887054);
      parama = "calendar_normal_no_vibration";
    }
    for (;;)
    {
      break;
      label56:
      if (bool)
      {
        str = this.b.getString(2131887053);
        parama = "calendar_normal_no_sound";
      }
      else
      {
        str = this.b.getString(2131887055);
        parama = "calendar_channel_silent";
      }
    }
    c(this.b, parama, str, localUri, bool);
    return parama;
  }
  
  public static b e(Context paramContext)
  {
    return new b(paramContext);
  }
  
  private Notification f(a parama)
  {
    String str = parama.s();
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    Object localObject = g(parama);
    ((Notification.Builder)localObject).setContentTitle(str).setContentText(parama.r()).setSmallIcon(parama.x()).setContentIntent(parama.q()).setDeleteIntent(parama.t()).setFullScreenIntent(parama.v(), true).setShowWhen(true);
    a((Notification.Builder)localObject, parama.p());
    localObject = ((Notification.Builder)localObject).build();
    if (!parama.o())
    {
      ((Notification)localObject).flags |= 0x2;
      k((Notification)localObject, parama.t());
    }
    if (parama.A())
    {
      j((Notification)localObject, true);
      l((Notification)localObject, parama.u());
    }
    else
    {
      j((Notification)localObject, false);
    }
    b((Notification)localObject, parama);
    return localObject;
  }
  
  private Notification.Builder g(a parama)
  {
    parama = d(parama);
    return new Notification.Builder(this.b, parama);
  }
  
  private static void j(Notification paramNotification, boolean paramBoolean)
  {
    try
    {
      paramNotification = paramNotification.getClass().getDeclaredField("extraNotification").get(paramNotification);
      paramNotification.getClass().getDeclaredMethod("setEnableFloat", new Class[] { Boolean.TYPE }).invoke(paramNotification, new Object[] { Boolean.valueOf(paramBoolean) });
    }
    catch (Exception paramNotification)
    {
      z.d("Cal:D:CalendarNotificationManager", "setMiuiNotificationEnableFloat()", paramNotification);
    }
  }
  
  private static void k(Notification paramNotification, PendingIntent paramPendingIntent)
  {
    try
    {
      Object localObject = Class.forName("android.app.MiuiNotification").newInstance();
      Field localField = localObject.getClass().getDeclaredField("exitFloatingIntent");
      localField.setAccessible(true);
      localField.set(localObject, paramPendingIntent);
      paramNotification.getClass().getField("extraNotification").set(paramNotification, localObject);
    }
    catch (Exception paramNotification)
    {
      z.d("Cal:D:CalendarNotificationManager", "setMiuiNotificationExitFloatingIntent()", paramNotification);
    }
  }
  
  private static void l(Notification paramNotification, int paramInt)
  {
    try
    {
      paramNotification = paramNotification.getClass().getDeclaredField("extraNotification").get(paramNotification);
      paramNotification.getClass().getDeclaredMethod("setFloatTime", new Class[] { Integer.TYPE }).invoke(paramNotification, new Object[] { Integer.valueOf(paramInt) });
    }
    catch (Exception paramNotification)
    {
      paramNotification.printStackTrace();
    }
  }
  
  public void h(a parama)
  {
    Notification localNotification = f(parama);
    if (localNotification == null) {
      return;
    }
    this.a.notify(parama.w(), localNotification);
    if ((parama.z()) && (i.a(this.b))) {
      o1.a.j(this.b);
    }
  }
  
  public void i(c paramc)
  {
    h(paramc.m());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m3.b
 * JD-Core Version:    0.7.0.1
 */