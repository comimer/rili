package f6;

import android.annotation.TargetApi;
import android.content.Context;
import android.provider.Settings.Global;
import java.lang.reflect.Field;

public class h
{
  public static boolean a()
  {
    try
    {
      boolean bool = ((Boolean)Class.forName("miui.os.Build").getField("IS_ALPHA_BUILD").get(null)).booleanValue();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public static boolean b()
  {
    try
    {
      boolean bool = ((Boolean)Class.forName("miui.os.Build").getField("IS_CTA_BUILD").get(null)).booleanValue();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public static boolean c()
  {
    try
    {
      boolean bool = ((Boolean)Class.forName("miui.os.Build").getField("IS_DEVELOPMENT_VERSION").get(null)).booleanValue();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  @TargetApi(17)
  public static boolean d(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getContentResolver();
      boolean bool = false;
      if (Settings.Global.getInt(paramContext, "device_provisioned", 0) != 0) {
        bool = true;
      }
      if (!bool)
      {
        paramContext = new java/lang/StringBuilder;
        paramContext.<init>();
        paramContext.append("Provisioned: ");
        paramContext.append(bool);
        a.f("MIUI", paramContext.toString());
      }
      return bool;
    }
    catch (Exception paramContext)
    {
      a.d("MIUI", "isDeviceProvisioned exception", paramContext);
    }
    return true;
  }
  
  public static boolean e()
  {
    try
    {
      boolean bool = ((Boolean)Class.forName("miui.os.Build").getField("IS_INTERNATIONAL_BUILD").get(null)).booleanValue();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public static boolean f()
  {
    try
    {
      boolean bool = ((Boolean)Class.forName("miui.os.Build").getField("IS_STABLE_VERSION").get(null)).booleanValue();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public static boolean g(Context paramContext, String paramString)
  {
    if (b())
    {
      a.f(paramString, "should not access network or location, cta");
      return true;
    }
    if (!d(paramContext))
    {
      a.f(paramString, "should not access network or location, not provisioned");
      return true;
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.h
 * JD-Core Version:    0.7.0.1
 */