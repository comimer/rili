package com.xiaomi.onetrack.util;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.onetrack.f.a;
import java.util.HashSet;
import java.util.Set;

public class u
{
  private static final String a = "PermissionUtil";
  private static final String b = "android.permission.READ_PRIVILEGED_PHONE_STATE";
  private static Set<String> c;
  
  static
  {
    try
    {
      HashSet localHashSet = new java/util/HashSet;
      localHashSet.<init>();
      c = localHashSet;
      localHashSet.add("android");
      c.add("com.miui.analytics");
      c.add("com.miui.cit");
      c.add("com.xiaomi.finddevice");
      c.add("com.miui.securitycenter");
      c.add("com.android.settings");
      c.add("com.android.vending");
      c.add("com.google.android.gms");
      c.add("com.xiaomi.factory.mmi");
      c.add("com.miui.qr");
      c.add("com.android.contacts");
      c.add("com.qualcomm.qti.autoregistration");
      c.add("com.miui.tsmclient");
      c.add("com.miui.sekeytool");
      c.add("com.android.updater");
      if (("cn_chinamobile".equals(ab.a("ro.miui.cust_variant"))) || ("cn_chinatelecom".equals(ab.a("ro.miui.cust_variant"))))
      {
        c.add("com.mobiletools.systemhelper");
        c.add("com.miui.dmregservice");
      }
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("static initializer: ");
      localStringBuilder.append(localException.toString());
      Log.e("PermissionUtil", localStringBuilder.toString());
    }
  }
  
  private static boolean a()
  {
    boolean bool1 = false;
    try
    {
      if (!q.a()) {
        return false;
      }
      boolean bool2 = bool1;
      if (!q.h())
      {
        boolean bool3 = "1".equals(ab.a("ro.miui.restrict_imei"));
        bool2 = bool1;
        if (bool3) {
          bool2 = true;
        }
      }
      return bool2;
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("isRestrictIMEI ");
      localStringBuilder.append(localException.toString());
      p.b("PermissionUtil", localStringBuilder.toString());
    }
    return false;
  }
  
  public static boolean a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 29) {
      return a(paramContext, "android.permission.READ_PHONE_STATE");
    }
    if (a())
    {
      boolean bool;
      if ((a(a.e())) && (a(paramContext, "android.permission.READ_PRIVILEGED_PHONE_STATE"))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    return a(paramContext, "android.permission.READ_PRIVILEGED_PHONE_STATE");
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    boolean bool;
    if (paramContext.checkPermission(paramString, Process.myPid(), Process.myUid()) == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      Set localSet = c;
      if ((localSet != null) && (localSet.contains(paramString))) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public static boolean b(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 29) {
      return a(paramContext, "android.permission.READ_PHONE_STATE");
    }
    return a(paramContext, "android.permission.READ_PRIVILEGED_PHONE_STATE");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.u
 * JD-Core Version:    0.7.0.1
 */