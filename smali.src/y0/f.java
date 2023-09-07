package y0;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import androidx.work.k;

public class f
{
  private static final String a = k.f("PackageManagerHelper");
  
  public static void a(Context paramContext, Class<?> paramClass, boolean paramBoolean)
  {
    String str1 = "enabled";
    try
    {
      localObject1 = paramContext.getPackageManager();
      localObject2 = new android/content/ComponentName;
      ((ComponentName)localObject2).<init>(paramContext, paramClass.getName());
      int i;
      if (paramBoolean) {
        i = 1;
      } else {
        i = 2;
      }
      ((PackageManager)localObject1).setComponentEnabledSetting((ComponentName)localObject2, i, 1);
      localObject2 = k.c();
      localObject1 = a;
      String str2 = paramClass.getName();
      if (paramBoolean) {
        paramContext = "enabled";
      } else {
        paramContext = "disabled";
      }
      ((k)localObject2).a((String)localObject1, String.format("%s %s", new Object[] { str2, paramContext }), new Throwable[0]);
    }
    catch (Exception localException)
    {
      Object localObject1 = k.c();
      Object localObject2 = a;
      paramClass = paramClass.getName();
      if (paramBoolean) {
        paramContext = str1;
      } else {
        paramContext = "disabled";
      }
      ((k)localObject1).a((String)localObject2, String.format("%s could not be %s", new Object[] { paramClass, paramContext }), new Throwable[] { localException });
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.f
 * JD-Core Version:    0.7.0.1
 */