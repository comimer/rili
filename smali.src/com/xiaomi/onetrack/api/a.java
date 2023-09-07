package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.Configuration;

public class a
{
  private static final int a = 1;
  private static final int b = 2;
  private static final int c = 4;
  private static final int d = 8;
  private static final int e = 16;
  
  public static int a(Configuration paramConfiguration)
  {
    if (paramConfiguration == null) {
      return 0;
    }
    boolean bool1 = paramConfiguration.isGAIDEnable();
    boolean bool2 = bool1;
    if (paramConfiguration.isIMSIEnable()) {
      j = bool1 | true;
    }
    bool1 = j;
    if (paramConfiguration.isIMEIEnable()) {
      i = j | 0x4;
    }
    int j = i;
    if (paramConfiguration.isExceptionCatcherEnable()) {
      j = i | 0x8;
    }
    int i = j;
    if (paramConfiguration.isOverrideMiuiRegionSetting()) {
      i = j | 0x10;
    }
    return i;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.a
 * JD-Core Version:    0.7.0.1
 */