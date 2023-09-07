package com.xiaomi.onetrack.util;

import android.text.TextUtils;
import java.io.File;
import java.io.FilenameFilter;

final class c
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return TextUtils.isDigitsOnly(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.c
 * JD-Core Version:    0.7.0.1
 */