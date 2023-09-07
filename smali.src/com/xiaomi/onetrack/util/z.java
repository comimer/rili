package com.xiaomi.onetrack.util;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class z
{
  public static final String a = "\\.";
  public static final String b = ",";
  private static final String c = "com.xiaomi.onetrack.util.z";
  
  public static List<String> a(String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString1)) {
      try
      {
        paramString1 = paramString1.split(paramString2);
        if ((paramString1 != null) && (paramString1.length > 0))
        {
          paramString1 = Arrays.asList(paramString1);
          return paramString1;
        }
      }
      catch (Exception paramString2)
      {
        String str = c;
        paramString1 = new StringBuilder();
        paramString1.append("StringToList error: ");
        paramString1.append(paramString2.getMessage());
        p.b(str, paramString1.toString());
      }
    }
    return null;
  }
  
  public static Set<String> a(String paramString1, String paramString2, String paramString3)
  {
    HashSet localHashSet = new HashSet();
    try
    {
      boolean bool = TextUtils.isEmpty(paramString1);
      Object localObject = null;
      if (bool) {
        paramString1 = null;
      } else {
        paramString1 = paramString1.split(paramString3);
      }
      if ((paramString1 != null) && (paramString1.length > 0)) {
        localHashSet.addAll(Arrays.asList(paramString1));
      }
      if (TextUtils.isEmpty(paramString2)) {
        paramString1 = localObject;
      } else {
        paramString1 = paramString2.split(paramString3);
      }
      if ((paramString1 != null) && (paramString1.length > 0)) {
        localHashSet.addAll(Arrays.asList(paramString1));
      }
    }
    catch (Exception paramString2)
    {
      paramString1 = c;
      paramString3 = new StringBuilder();
      paramString3.append("mergeParams error: ");
      paramString3.append(paramString2.getMessage());
      p.b(paramString1, paramString3.toString());
    }
    return localHashSet;
  }
  
  public static boolean a(CharSequence paramCharSequence)
  {
    boolean bool;
    if ((paramCharSequence != null) && (paramCharSequence.length() != 0)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static boolean a(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    int i = paramString.length();
    for (int j = 0; j < i; j++) {
      if (!Character.isDigit(paramString.charAt(j))) {
        return false;
      }
    }
    return true;
  }
  
  public static boolean b(CharSequence paramCharSequence)
  {
    return a(paramCharSequence) ^ true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.z
 * JD-Core Version:    0.7.0.1
 */