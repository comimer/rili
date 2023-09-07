package at.bitfire.dav4jvm;

import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/Dav4jvm;", "", "()V", "log", "Ljava/util/logging/Logger;", "getLog", "()Ljava/util/logging/Logger;", "setLog", "(Ljava/util/logging/Logger;)V", "build"}, k=1, mv={1, 1, 16})
public final class Dav4jvm
{
  public static final Dav4jvm INSTANCE = new Dav4jvm();
  private static Logger log;
  
  static
  {
    Logger localLogger = Logger.getLogger("dav4jvm");
    if (localLogger == null) {
      r.r();
    }
    log = localLogger;
  }
  
  public final Logger getLog()
  {
    return log;
  }
  
  public final void setLog(Logger paramLogger)
  {
    r.g(paramLogger, "<set-?>");
    log = paramLogger;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.Dav4jvm
 * JD-Core Version:    0.7.0.1
 */