package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build.VERSION;

public final class f
{
  public static int a(Context paramContext, int paramInt, String paramString1, String paramString2)
  {
    if (Build.VERSION.SDK_INT >= 29)
    {
      AppOpsManager localAppOpsManager = b.c(paramContext);
      int i = b.a(localAppOpsManager, paramString1, Binder.getCallingUid(), paramString2);
      if (i != 0) {
        return i;
      }
      return b.a(localAppOpsManager, paramString1, paramInt, b.b(paramContext));
    }
    return b(paramContext, paramString1, paramString2);
  }
  
  public static int b(Context paramContext, String paramString1, String paramString2)
  {
    return a.c((AppOpsManager)a.a(paramContext, AppOpsManager.class), paramString1, paramString2);
  }
  
  public static String c(String paramString)
  {
    return a.d(paramString);
  }
  
  static class a
  {
    static <T> T a(Context paramContext, Class<T> paramClass)
    {
      return paramContext.getSystemService(paramClass);
    }
    
    static int b(AppOpsManager paramAppOpsManager, String paramString1, String paramString2)
    {
      return paramAppOpsManager.noteProxyOp(paramString1, paramString2);
    }
    
    static int c(AppOpsManager paramAppOpsManager, String paramString1, String paramString2)
    {
      return paramAppOpsManager.noteProxyOpNoThrow(paramString1, paramString2);
    }
    
    static String d(String paramString)
    {
      return AppOpsManager.permissionToOp(paramString);
    }
  }
  
  static class b
  {
    static int a(AppOpsManager paramAppOpsManager, String paramString1, int paramInt, String paramString2)
    {
      if (paramAppOpsManager == null) {
        return 1;
      }
      return paramAppOpsManager.checkOpNoThrow(paramString1, paramInt, paramString2);
    }
    
    static String b(Context paramContext)
    {
      return g.a(paramContext);
    }
    
    static AppOpsManager c(Context paramContext)
    {
      return (AppOpsManager)paramContext.getSystemService(AppOpsManager.class);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.f
 * JD-Core Version:    0.7.0.1
 */