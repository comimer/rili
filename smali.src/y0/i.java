package y0;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.os.Process;
import android.text.TextUtils;
import androidx.work.a;
import androidx.work.k;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

public class i
{
  private static final String a = k.f("ProcessUtils");
  
  @SuppressLint({"PrivateApi", "DiscouragedPrivateApi"})
  public static String a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return h.a();
    }
    try
    {
      Object localObject1 = Class.forName("android.app.ActivityThread", false, i.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
      ((AccessibleObject)localObject1).setAccessible(true);
      localObject1 = ((Method)localObject1).invoke(null, new Object[0]);
      if ((localObject1 instanceof String))
      {
        localObject1 = (String)localObject1;
        return localObject1;
      }
    }
    finally
    {
      k.c().a(a, "Unable to check ActivityThread for processName", new Throwable[] { localObject2 });
      int i = Process.myPid();
      paramContext = (ActivityManager)paramContext.getSystemService("activity");
      if (paramContext != null)
      {
        paramContext = paramContext.getRunningAppProcesses();
        if ((paramContext != null) && (!paramContext.isEmpty()))
        {
          Iterator localIterator = paramContext.iterator();
          while (localIterator.hasNext())
          {
            paramContext = (ActivityManager.RunningAppProcessInfo)localIterator.next();
            if (paramContext.pid == i) {
              return paramContext.processName;
            }
          }
        }
      }
    }
    return null;
  }
  
  public static boolean b(Context paramContext, a parama)
  {
    String str = a(paramContext);
    if (!TextUtils.isEmpty(parama.c())) {
      return TextUtils.equals(str, parama.c());
    }
    return TextUtils.equals(str, paramContext.getApplicationInfo().processName);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.i
 * JD-Core Version:    0.7.0.1
 */