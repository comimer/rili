package at.bitfire.cert4android;

import android.util.Log;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(d1={""}, d2={"Lat/bitfire/cert4android/Constants;", "", "()V", "NOTIFICATION_CERT_DECISION", "", "TAG", "", "log", "Ljava/util/logging/Logger;", "getLog", "()Ljava/util/logging/Logger;", "setLog", "(Ljava/util/logging/Logger;)V", "cert4android_release"}, k=1, mv={1, 7, 1}, xi=48)
public final class Constants
{
  public static final Constants INSTANCE = new Constants();
  public static final int NOTIFICATION_CERT_DECISION = 88809;
  public static final String TAG = "cert4android";
  private static Logger log;
  
  static
  {
    Logger localLogger = Logger.getLogger("cert4android");
    r.e(localLogger, "getLogger(TAG)");
    log = localLogger;
    Level localLevel;
    if (Log.isLoggable("cert4android", 2)) {
      localLevel = Level.ALL;
    } else {
      localLevel = Level.INFO;
    }
    localLogger.setLevel(localLevel);
  }
  
  public final Logger getLog()
  {
    return log;
  }
  
  public final void setLog(Logger paramLogger)
  {
    r.f(paramLogger, "<set-?>");
    log = paramLogger;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.cert4android.Constants
 * JD-Core Version:    0.7.0.1
 */