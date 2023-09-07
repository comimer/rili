package androidx.core.content;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;
import androidx.core.app.f;

public final class c
{
  public static int a(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    if (paramContext.checkPermission(paramString1, paramInt1, paramInt2) == -1) {
      return -1;
    }
    String str = f.c(paramString1);
    int i = 0;
    if (str == null) {
      return 0;
    }
    paramString1 = paramString2;
    if (paramString2 == null)
    {
      paramString1 = paramContext.getPackageManager().getPackagesForUid(paramInt2);
      if ((paramString1 != null) && (paramString1.length > 0)) {
        paramString1 = paramString1[0];
      } else {
        return -1;
      }
    }
    paramInt1 = Process.myUid();
    paramString2 = paramContext.getPackageName();
    if ((paramInt1 == paramInt2) && (androidx.core.util.c.a(paramString2, paramString1))) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    }
    if (paramInt1 != 0) {
      paramInt1 = f.a(paramContext, paramInt2, str, paramString1);
    } else {
      paramInt1 = f.b(paramContext, str, paramString1);
    }
    if (paramInt1 == 0) {
      paramInt1 = i;
    } else {
      paramInt1 = -2;
    }
    return paramInt1;
  }
  
  public static int b(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, Process.myPid(), Process.myUid(), paramContext.getPackageName());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.c
 * JD-Core Version:    0.7.0.1
 */