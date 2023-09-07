package f6;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.io.File;
import java.util.List;

public class b
{
  public static Context a(Context paramContext)
  {
    Context localContext = paramContext;
    if (paramContext != null)
    {
      localContext = paramContext;
      if (paramContext.getApplicationContext() != null) {
        localContext = paramContext.getApplicationContext();
      }
    }
    return localContext;
  }
  
  public static Signature[] b(Context paramContext, File paramFile)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageArchiveInfo(paramFile.getPath(), 64).signatures;
      return paramContext;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  public static Signature[] c(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 64).signatures;
      return paramContext;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  public static boolean d(Context paramContext)
  {
    try
    {
      List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1);
      if ((localList != null) && (!localList.isEmpty()))
      {
        boolean bool = ((ActivityManager.RunningTaskInfo)localList.get(0)).topActivity.getPackageName().equals(paramContext.getPackageName());
        if (bool) {
          return true;
        }
      }
    }
    catch (Exception paramContext)
    {
      label57:
      break label57;
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.b
 * JD-Core Version:    0.7.0.1
 */