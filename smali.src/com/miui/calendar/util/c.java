package com.miui.calendar.util;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class c
{
  private static final String[] a = { "com.android", "com.miui", "com.xiaomi", "com.duokan", "com.mipay" };
  
  public static String a(Context paramContext)
  {
    int i = Binder.getCallingUid();
    int j = Binder.getCallingPid();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("getCallerPkgName(): uid:");
    localStringBuilder.append(i);
    localStringBuilder.append(", pid:");
    localStringBuilder.append(j);
    z.a("Cal:D:UserNoticeUtil", localStringBuilder.toString());
    List localList = b(paramContext, i);
    if ((localList != null) && (!localList.isEmpty()))
    {
      if (localList.size() == 1)
      {
        paramContext = new StringBuilder();
        paramContext.append("getCallerPkgName(): ");
        paramContext.append((String)localList.get(0));
        z.a("Cal:D:UserNoticeUtil", paramContext.toString());
        return (String)localList.get(0);
      }
      localStringBuilder = null;
      try
      {
        Iterator localIterator = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
        do
        {
          paramContext = localStringBuilder;
          if (!localIterator.hasNext()) {
            break;
          }
          paramContext = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        } while (paramContext.pid != j);
        paramContext = paramContext.pkgList;
      }
      catch (Exception paramContext)
      {
        z.d("Cal:D:UserNoticeUtil", "getCallerPkgNames()", paramContext);
        paramContext = localStringBuilder;
      }
      if (paramContext != null)
      {
        j = paramContext.length;
        for (i = 0; i < j; i++)
        {
          localStringBuilder = paramContext[i];
          if (localList.contains(localStringBuilder))
          {
            paramContext = new StringBuilder();
            paramContext.append("getCallerPkgName(): ");
            paramContext.append(localStringBuilder);
            z.a("Cal:D:UserNoticeUtil", paramContext.toString());
            return localStringBuilder;
          }
        }
      }
      paramContext = new StringBuilder();
      paramContext.append("getCallerPkgName(): ");
      paramContext.append((String)localList.get(0));
      z.a("Cal:D:UserNoticeUtil", paramContext.toString());
      return (String)localList.get(0);
    }
    z.a("Cal:D:UserNoticeUtil", "getCallerPkgName(): get NOTHING, return default package name");
    return "default_package_name";
  }
  
  private static List<String> b(Context paramContext, int paramInt)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackagesForUid(paramInt);
      if (paramContext != null)
      {
        paramContext = Arrays.asList(paramContext);
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:UserNoticeUtil", "getCallerPkgNames", paramContext);
    }
    return null;
  }
  
  public static boolean c(Context paramContext, String paramString)
  {
    boolean bool1 = false;
    try
    {
      for (String str : a) {
        if (paramString.startsWith(str))
        {
          paramContext = new java/lang/StringBuilder;
          paramContext.<init>();
          paramContext.append("isSystemApp(): match prefix:");
          paramContext.append(str);
          z.a("Cal:D:UserNoticeUtil", paramContext.toString());
          return true;
        }
      }
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0).applicationInfo;
      boolean bool2 = bool1;
      if (paramContext != null)
      {
        ??? = paramContext.flags;
        bool2 = bool1;
        if ((??? & 0x1) != 0) {
          bool2 = true;
        }
      }
      return bool2;
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:UserNoticeUtil", "isSystemApp()", paramContext);
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.c
 * JD-Core Version:    0.7.0.1
 */