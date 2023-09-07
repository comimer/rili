package com.miui.calendar.util;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import b2.a;
import com.android.calendar.settings.j;
import java.util.Locale;
import miui.os.Build;

public class y
{
  public static final boolean a = Build.IS_INTERNATIONAL_BUILD;
  public static final boolean b;
  
  static
  {
    boolean bool;
    if ((!Build.IS_CM_CUSTOMIZATION) && (!Build.IS_CM_CUSTOMIZATION_TEST)) {
      bool = false;
    } else {
      bool = true;
    }
    b = bool;
  }
  
  public static boolean a()
  {
    return Locale.getDefault().getLanguage().equals(Locale.CHINESE.getLanguage());
  }
  
  public static boolean b()
  {
    return Locale.getDefault().equals(Locale.SIMPLIFIED_CHINESE);
  }
  
  public static boolean c()
  {
    return Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE);
  }
  
  public static boolean d(Context paramContext, String paramString)
  {
    return TextUtils.equals(Locale.getDefault().toString(), a.c(paramContext, paramString, ""));
  }
  
  public static boolean e(Context paramContext)
  {
    boolean bool;
    if ((Locale.getDefault().getLanguage().equals(Locale.ENGLISH.getLanguage())) && (!j.f(paramContext))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean f(Context paramContext)
  {
    boolean bool;
    if ((Locale.getDefault().getLanguage().equals(Locale.ENGLISH.getLanguage())) && (j.f(paramContext))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean g()
  {
    return Locale.getDefault().getLanguage().equals(Locale.ENGLISH.getLanguage());
  }
  
  public static boolean h(Context paramContext)
  {
    return paramContext.getResources().getBoolean(2131034124);
  }
  
  public static boolean i(Context paramContext)
  {
    boolean bool;
    if ((j(paramContext)) && (b())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean j(Context paramContext)
  {
    return paramContext.getResources().getBoolean(2131034125);
  }
  
  public static void k(Context paramContext, String paramString)
  {
    a.k(paramContext, paramString, Locale.getDefault().toString());
  }
  
  public static boolean l(Context paramContext)
  {
    return i(paramContext);
  }
  
  public static boolean m(Context paramContext)
  {
    boolean bool;
    if ((j(paramContext)) && ((b()) || (c()))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static boolean n(Context paramContext)
  {
    boolean bool;
    if ((h(paramContext)) && (a())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean o(Context paramContext)
  {
    boolean bool;
    if ((j(paramContext)) && (b())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean p(Context paramContext)
  {
    boolean bool;
    if ((h(paramContext)) && (a()) && (!DeviceUtils.M())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean q(Context paramContext)
  {
    boolean bool;
    if ((h(paramContext)) && ((a()) || (f(paramContext)))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean r(Context paramContext)
  {
    boolean bool;
    if ((h(paramContext)) && (a())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean s(Context paramContext)
  {
    boolean bool;
    if ((h(paramContext)) && (a())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean t(Context paramContext)
  {
    return j(paramContext);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.y
 * JD-Core Version:    0.7.0.1
 */