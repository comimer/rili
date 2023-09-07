package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.BaseBundle;
import android.os.Build.VERSION;
import android.util.Log;

public final class k
{
  public static Intent a(Activity paramActivity)
  {
    Object localObject = a.a(paramActivity);
    if (localObject != null) {
      return localObject;
    }
    localObject = c(paramActivity);
    if (localObject == null) {
      return null;
    }
    ComponentName localComponentName = new ComponentName(paramActivity, (String)localObject);
    try
    {
      if (d(paramActivity, localComponentName) == null)
      {
        paramActivity = Intent.makeMainActivity(localComponentName);
      }
      else
      {
        paramActivity = new android/content/Intent;
        paramActivity.<init>();
        paramActivity = paramActivity.setComponent(localComponentName);
      }
      return paramActivity;
    }
    catch (PackageManager.NameNotFoundException paramActivity)
    {
      paramActivity = new StringBuilder();
      paramActivity.append("getParentActivityIntent: bad parentActivityName '");
      paramActivity.append((String)localObject);
      paramActivity.append("' in manifest");
      Log.e("NavUtils", paramActivity.toString());
    }
    return null;
  }
  
  public static Intent b(Context paramContext, ComponentName paramComponentName)
    throws PackageManager.NameNotFoundException
  {
    String str = d(paramContext, paramComponentName);
    if (str == null) {
      return null;
    }
    paramComponentName = new ComponentName(paramComponentName.getPackageName(), str);
    if (d(paramContext, paramComponentName) == null) {
      paramContext = Intent.makeMainActivity(paramComponentName);
    } else {
      paramContext = new Intent().setComponent(paramComponentName);
    }
    return paramContext;
  }
  
  public static String c(Activity paramActivity)
  {
    try
    {
      paramActivity = d(paramActivity, paramActivity.getComponentName());
      return paramActivity;
    }
    catch (PackageManager.NameNotFoundException paramActivity)
    {
      throw new IllegalArgumentException(paramActivity);
    }
  }
  
  public static String d(Context paramContext, ComponentName paramComponentName)
    throws PackageManager.NameNotFoundException
  {
    Object localObject = paramContext.getPackageManager();
    int i;
    if (Build.VERSION.SDK_INT >= 29) {
      i = 269222528;
    } else {
      i = 787072;
    }
    localObject = ((PackageManager)localObject).getActivityInfo(paramComponentName, i);
    paramComponentName = ((ActivityInfo)localObject).parentActivityName;
    if (paramComponentName != null) {
      return paramComponentName;
    }
    paramComponentName = ((ActivityInfo)localObject).metaData;
    if (paramComponentName == null) {
      return null;
    }
    localObject = paramComponentName.getString("android.support.PARENT_ACTIVITY");
    if (localObject == null) {
      return null;
    }
    paramComponentName = (ComponentName)localObject;
    if (((String)localObject).charAt(0) == '.')
    {
      paramComponentName = new StringBuilder();
      paramComponentName.append(paramContext.getPackageName());
      paramComponentName.append((String)localObject);
      paramComponentName = paramComponentName.toString();
    }
    return paramComponentName;
  }
  
  public static void e(Activity paramActivity, Intent paramIntent)
  {
    a.b(paramActivity, paramIntent);
  }
  
  public static boolean f(Activity paramActivity, Intent paramIntent)
  {
    return a.c(paramActivity, paramIntent);
  }
  
  static class a
  {
    static Intent a(Activity paramActivity)
    {
      return paramActivity.getParentActivityIntent();
    }
    
    static boolean b(Activity paramActivity, Intent paramIntent)
    {
      return paramActivity.navigateUpTo(paramIntent);
    }
    
    static boolean c(Activity paramActivity, Intent paramIntent)
    {
      return paramActivity.shouldUpRecreateTask(paramIntent);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.k
 * JD-Core Version:    0.7.0.1
 */