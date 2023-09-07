package at.bitfire.ical4android;

import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/Ical4Android;", "", "Lkotlin/u;", "checkThreadContextClassLoader", "Ljava/util/logging/Logger;", "log", "Ljava/util/logging/Logger;", "getLog", "()Ljava/util/logging/Logger;", "", "ical4jVersion", "Ljava/lang/String;", "<init>", "()V", "ical4android_release"}, k=1, mv={1, 7, 1})
public final class Ical4Android
{
  public static final Ical4Android INSTANCE = new Ical4Android();
  public static final String ical4jVersion = "3.0.19";
  private static final Logger log;
  
  static
  {
    Logger localLogger = Logger.getLogger("ical4android");
    r.e(localLogger, "getLogger(\"ical4android\")");
    log = localLogger;
  }
  
  public final void checkThreadContextClassLoader()
  {
    if (Thread.currentThread().getContextClassLoader() != null) {
      return;
    }
    throw new IllegalStateException("Thread.currentThread().contextClassLoader must be set");
  }
  
  public final Logger getLog()
  {
    return log;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.Ical4Android
 * JD-Core Version:    0.7.0.1
 */