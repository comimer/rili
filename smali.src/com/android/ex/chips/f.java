package com.android.ex.chips;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class f
{
  private static final Pattern a = Pattern.compile("(\\+[0-9]+[\\- \\.]*)?(1?[ ]*\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])");
  
  public static boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    return a.matcher(paramString).matches();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.f
 * JD-Core Version:    0.7.0.1
 */