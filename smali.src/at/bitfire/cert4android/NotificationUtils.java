package at.bitfire.cert4android;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import androidx.core.app.v;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/cert4android/NotificationUtils;", "", "Landroid/content/Context;", "context", "Landroidx/core/app/v;", "createChannels", "", "CHANNEL_CERTIFICATES", "Ljava/lang/String;", "<init>", "()V", "cert4android_release"}, k=1, mv={1, 7, 1})
public final class NotificationUtils
{
  public static final String CHANNEL_CERTIFICATES = "cert4android";
  public static final NotificationUtils INSTANCE = new NotificationUtils();
  
  public final v createChannels(Context paramContext)
  {
    r.f(paramContext, "context");
    Object localObject = paramContext.getSystemService("notification");
    r.d(localObject, "null cannot be cast to non-null type android.app.NotificationManager");
    ((NotificationManager)localObject).createNotificationChannel(new NotificationChannel("cert4android", paramContext.getString(R.string.certificate_notification_connection_security), 3));
    paramContext = v.c(paramContext);
    r.e(paramContext, "from(context)");
    return paramContext;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.cert4android.NotificationUtils
 * JD-Core Version:    0.7.0.1
 */