package com.miui.calendar.util;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.provider.Settings.System;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class d0
{
  public static boolean a(Context paramContext)
  {
    boolean bool1 = b();
    try
    {
      Class localClass = Class.forName("android.provider.MiuiSettings$System");
      Field localField = localClass.getField("DELETE_SOUND_EFFECT");
      boolean bool2 = ((Boolean)localClass.getMethod("getBooleanForUser", new Class[] { ContentResolver.class, String.class, Boolean.TYPE, Integer.TYPE }).invoke(null, new Object[] { paramContext.getContentResolver(), localField.get(localClass).toString(), Boolean.valueOf(b()), Integer.valueOf(0) })).booleanValue();
      bool1 = bool2;
    }
    catch (Exception paramContext)
    {
      z.d("MiuiSettingsUtils", "getDeleteSoundEffect()", paramContext);
    }
    return bool1;
  }
  
  private static boolean b()
  {
    boolean bool;
    try
    {
      int i = Resources.getSystem().getIdentifier("default_file_delete_sound_is_on", "bool", "android.miui");
      bool = Resources.getSystem().getBoolean(i);
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getDeleteSoundEffectDefaultValue error =  ");
      localStringBuilder.append(localException.toString());
      z.m("MiuiSettingsUtils", localStringBuilder.toString());
      bool = true;
    }
    return bool;
  }
  
  public static boolean c(Context paramContext)
  {
    paramContext = paramContext.getContentResolver();
    boolean bool = false;
    if (Settings.System.getInt(paramContext, "power_supersave_mode_open", 0) != 0) {
      bool = true;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.d0
 * JD-Core Version:    0.7.0.1
 */