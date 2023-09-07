package o5;

import android.content.Context;
import android.os.Process;

public class b
{
  public static boolean a(Context paramContext, String paramString)
  {
    boolean bool;
    if (paramContext.checkPermission(paramString, Process.myPid(), Process.myUid()) == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o5.b
 * JD-Core Version:    0.7.0.1
 */