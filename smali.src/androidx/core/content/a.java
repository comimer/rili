package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Process;
import androidx.core.content.res.h;
import androidx.core.util.c;
import java.io.File;

@SuppressLint({"PrivateConstructorForUtilityClass"})
public class a
{
  private static final Object a = new Object();
  private static final Object b = new Object();
  
  public static int a(Context paramContext, String paramString)
  {
    c.d(paramString, "permission must be non-null");
    return paramContext.checkPermission(paramString, Process.myPid(), Process.myUid());
  }
  
  public static Context b(Context paramContext)
  {
    return e.a(paramContext);
  }
  
  public static int c(Context paramContext, int paramInt)
  {
    return d.a(paramContext, paramInt);
  }
  
  public static ColorStateList d(Context paramContext, int paramInt)
  {
    return h.c(paramContext.getResources(), paramInt, paramContext.getTheme());
  }
  
  public static Drawable e(Context paramContext, int paramInt)
  {
    return c.b(paramContext, paramInt);
  }
  
  public static File[] f(Context paramContext)
  {
    return b.a(paramContext);
  }
  
  public static File[] g(Context paramContext, String paramString)
  {
    return b.b(paramContext, paramString);
  }
  
  public static <T> T h(Context paramContext, Class<T> paramClass)
  {
    return d.b(paramContext, paramClass);
  }
  
  public static boolean i(Context paramContext, Intent[] paramArrayOfIntent, Bundle paramBundle)
  {
    a.a(paramContext, paramArrayOfIntent, paramBundle);
    return true;
  }
  
  public static void j(Context paramContext, Intent paramIntent, Bundle paramBundle)
  {
    a.b(paramContext, paramIntent, paramBundle);
  }
  
  public static void k(Context paramContext, Intent paramIntent)
  {
    f.a(paramContext, paramIntent);
  }
  
  static class a
  {
    static void a(Context paramContext, Intent[] paramArrayOfIntent, Bundle paramBundle)
    {
      paramContext.startActivities(paramArrayOfIntent, paramBundle);
    }
    
    static void b(Context paramContext, Intent paramIntent, Bundle paramBundle)
    {
      paramContext.startActivity(paramIntent, paramBundle);
    }
  }
  
  static class b
  {
    static File[] a(Context paramContext)
    {
      return paramContext.getExternalCacheDirs();
    }
    
    static File[] b(Context paramContext, String paramString)
    {
      return paramContext.getExternalFilesDirs(paramString);
    }
    
    static File[] c(Context paramContext)
    {
      return paramContext.getObbDirs();
    }
  }
  
  static class c
  {
    static File a(Context paramContext)
    {
      return paramContext.getCodeCacheDir();
    }
    
    static Drawable b(Context paramContext, int paramInt)
    {
      return paramContext.getDrawable(paramInt);
    }
    
    static File c(Context paramContext)
    {
      return paramContext.getNoBackupFilesDir();
    }
  }
  
  static class d
  {
    static int a(Context paramContext, int paramInt)
    {
      return paramContext.getColor(paramInt);
    }
    
    static <T> T b(Context paramContext, Class<T> paramClass)
    {
      return paramContext.getSystemService(paramClass);
    }
    
    static String c(Context paramContext, Class<?> paramClass)
    {
      return paramContext.getSystemServiceName(paramClass);
    }
  }
  
  static class e
  {
    static Context a(Context paramContext)
    {
      return paramContext.createDeviceProtectedStorageContext();
    }
    
    static File b(Context paramContext)
    {
      return paramContext.getDataDir();
    }
    
    static boolean c(Context paramContext)
    {
      return paramContext.isDeviceProtectedStorage();
    }
  }
  
  static class f
  {
    static ComponentName a(Context paramContext, Intent paramIntent)
    {
      return paramContext.startForegroundService(paramIntent);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.a
 * JD-Core Version:    0.7.0.1
 */