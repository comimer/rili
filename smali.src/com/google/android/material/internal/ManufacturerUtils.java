package com.google.android.material.internal;

import android.os.Build;
import java.util.Locale;

public class ManufacturerUtils
{
  private static final String LGE = "lge";
  private static final String MEIZU = "meizu";
  private static final String SAMSUNG = "samsung";
  
  public static boolean isDateInputKeyboardMissingSeparatorCharacters()
  {
    boolean bool;
    if ((!isLGEDevice()) && (!isSamsungDevice())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static boolean isLGEDevice()
  {
    return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("lge");
  }
  
  public static boolean isMeizuDevice()
  {
    return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu");
  }
  
  public static boolean isSamsungDevice()
  {
    return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("samsung");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.ManufacturerUtils
 * JD-Core Version:    0.7.0.1
 */