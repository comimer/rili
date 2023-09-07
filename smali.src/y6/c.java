package y6;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class c
{
  private static final String a = Build.MANUFACTURER.toLowerCase();
  
  @SuppressLint({"PrivateApi"})
  private static String a()
  {
    try
    {
      Object localObject = Class.forName("android.os.SystemProperties");
      localObject = (String)((Class)localObject).getDeclaredMethod("get", new Class[] { String.class }).invoke(localObject, new Object[] { "ro.product.mod_device" });
      return localObject;
    }
    catch (InvocationTargetException localInvocationTargetException) {}catch (IllegalArgumentException localIllegalArgumentException) {}catch (IllegalAccessException localIllegalAccessException) {}catch (NoSuchMethodException localNoSuchMethodException) {}catch (ClassNotFoundException localClassNotFoundException) {}
    localClassNotFoundException.printStackTrace();
    return null;
  }
  
  public static void b(Activity paramActivity, int paramInt)
  {
    Object localObject1 = a;
    if (((String)localObject1).contains("xiaomi"))
    {
      localObject1 = a();
      if ((localObject1 != null) && (!((String)localObject1).contains("_global")))
      {
        localObject1 = new Intent("miui.intent.action.APP_PERM_EDITOR");
        ((Intent)localObject1).putExtra("extra_pkgname", paramActivity.getPackageName());
        break label158;
      }
    }
    else if ((!((String)localObject1).contains("huawei")) && (!((String)localObject1).contains("oppo")))
    {
      if (((String)localObject1).contains("vivo"))
      {
        localObject1 = new Intent();
        ((Intent)localObject1).putExtra("packagename", paramActivity.getPackageName());
        ((Intent)localObject1).setComponent(new ComponentName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity"));
        break label158;
      }
      if ((!((String)localObject1).contains("samsung")) && (!((String)localObject1).contains("meizu"))) {
        ((String)localObject1).contains("smartisan");
      }
    }
    localObject1 = null;
    label158:
    Object localObject2 = localObject1;
    if (localObject1 != null) {
      try
      {
        paramActivity.startActivityForResult((Intent)localObject1, paramInt);
        localObject2 = localObject1;
      }
      catch (ActivityNotFoundException|SecurityException localActivityNotFoundException)
      {
        localObject2 = null;
      }
    }
    if (localObject2 == null)
    {
      Intent localIntent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
      localIntent.setData(Uri.fromParts("package", paramActivity.getPackageName(), null));
      paramActivity.startActivityForResult(localIntent, paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y6.c
 * JD-Core Version:    0.7.0.1
 */