package com.xiaomi.accountsdk.utils;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class XMPassportUtil
{
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramString;
    }
    Object localObject = Uri.parse(paramString);
    paramString = ((Uri)localObject).getQueryParameter("_locale");
    Uri.Builder localBuilder = ((Uri)localObject).buildUpon();
    localObject = f(Locale.getDefault());
    if ((TextUtils.isEmpty(paramString)) && (!TextUtils.isEmpty((CharSequence)localObject))) {
      localBuilder.appendQueryParameter("_locale", (String)localObject);
    }
    return localBuilder.build().toString();
  }
  
  public static String b(String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
      for (paramString1 : paramString1.split(";")) {
        if ((paramString1.contains(paramString2)) && (paramString1.split("=")[0].trim().equals(paramString2))) {
          return paramString1.substring(paramString1.indexOf("=") + 1);
        }
      }
    }
    return null;
  }
  
  public static String c(String paramString)
  {
    return b(paramString, "passToken");
  }
  
  public static String d(String paramString)
  {
    return b(paramString, "userId");
  }
  
  public static Map<String, String> e()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("_locale", f(Locale.getDefault()));
    return localHashMap;
  }
  
  public static String f(Locale paramLocale)
  {
    String str = paramLocale.getLanguage();
    paramLocale = paramLocale.getCountry();
    if (TextUtils.isEmpty(paramLocale)) {
      paramLocale = str;
    } else {
      paramLocale = String.format("%s_%s", new Object[] { str, paramLocale });
    }
    return paramLocale;
  }
  
  private static enum SimpleDateFormat
  {
    private String value;
    
    static
    {
      SimpleDateFormat localSimpleDateFormat1 = new SimpleDateFormat("en_US", 0, "MM-dd-yyyy");
      en_US = localSimpleDateFormat1;
      SimpleDateFormat localSimpleDateFormat2 = new SimpleDateFormat("en_not_US", 1, "dd-MM-yyyy");
      en_not_US = localSimpleDateFormat2;
      SimpleDateFormat localSimpleDateFormat3 = new SimpleDateFormat("default_not_en", 2, "yyyy-MM-dd");
      default_not_en = localSimpleDateFormat3;
      $VALUES = new SimpleDateFormat[] { localSimpleDateFormat1, localSimpleDateFormat2, localSimpleDateFormat3 };
    }
    
    private SimpleDateFormat(String paramString)
    {
      this.value = paramString;
    }
    
    public String toString()
    {
      return this.value;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.XMPassportUtil
 * JD-Core Version:    0.7.0.1
 */