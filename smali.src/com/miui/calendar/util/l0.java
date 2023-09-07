package com.miui.calendar.util;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import miui.util.CoderUtils;

public class l0
{
  public static final boolean a;
  public static final String b;
  public static final String c;
  public static final String d;
  public static final String e;
  public static final String f;
  
  static
  {
    boolean bool = new File("/data/system/xiaomi_account_preview").exists();
    a = bool;
    String str;
    if (bool) {
      str = "http://staging.comm.miui.com/holiday/";
    } else {
      str = "https://api.comm.miui.com/holiday/";
    }
    b = str;
    if (bool) {
      str = "http://staging.comm.miui.com/calendar/";
    } else {
      str = "https://api.comm.miui.com/calendar/";
    }
    c = str;
    if (bool) {
      str = "http://staging.comm.miui.com/calendar/activity/detail";
    } else {
      str = "https://api.comm.miui.com/calendar/activity/detail";
    }
    d = str;
    if (bool) {
      str = "http://staging.comm.miui.com/calendar/native/card/train";
    } else {
      str = "https://api.comm.miui.com/calendar/native/card/train";
    }
    e = str;
    if (bool) {
      str = "http://staging.comm.miui.com/calendar/adcard/get";
    } else {
      str = "https://api.comm.miui.com/calendar/adcard/get";
    }
    f = str;
  }
  
  public static Map<String, String> a(Context paramContext, HashMap<String, String> paramHashMap)
  {
    Object localObject = paramHashMap;
    if (paramHashMap == null) {
      localObject = new HashMap();
    }
    DeviceUtils.d(paramContext, (Map)localObject);
    paramContext = d((HashMap)localObject, "calendar", "77eb2e8a5755abd016c0d69ba74b219c");
    if (paramContext.length() != 0)
    {
      ((HashMap)localObject).put("appkey", "calendar");
      ((HashMap)localObject).put("sign", paramContext);
    }
    return localObject;
  }
  
  public static String b(String paramString)
  {
    try
    {
      localObject = CoderUtils.base6AesDecode(paramString, "d101b17c77ff93cs");
      return localObject;
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("decryptData() data:");
      ((StringBuilder)localObject).append(paramString);
      z.d("Cal:D:RequestUtils", ((StringBuilder)localObject).toString(), localException);
    }
    return null;
  }
  
  public static String c(String paramString)
  {
    try
    {
      localObject = CoderUtils.base64AesEncode(paramString, "d101b17c77ff93cs");
      return localObject;
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("decryptData() data:");
      ((StringBuilder)localObject).append(paramString);
      z.d("Cal:D:RequestUtils", ((StringBuilder)localObject).toString(), localException);
    }
    return null;
  }
  
  private static String d(HashMap<String, String> paramHashMap, String paramString1, String paramString2)
  {
    if (paramHashMap.isEmpty()) {
      return "";
    }
    Object localObject = paramHashMap.keySet();
    int i = 0;
    localObject = (String[])((Set)localObject).toArray(new String[0]);
    Arrays.sort((Object[])localObject);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1);
    int j = localObject.length;
    while (i < j)
    {
      paramString1 = localObject[i];
      localStringBuilder.append(paramString1);
      localStringBuilder.append((String)paramHashMap.get(paramString1));
      i++;
    }
    localStringBuilder.append(paramString2);
    return CoderUtils.encodeSHA(localStringBuilder.toString()).toUpperCase();
  }
  
  public static String e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    if (paramString.startsWith("http")) {
      return paramString;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("https://file.market.xiaomi.com/download/f1b/");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  private static String f(HashMap<String, String> paramHashMap)
  {
    return h(paramHashMap, "calendar", "77eb2e8a5755abd016c0d69ba74b219c");
  }
  
  public static String g(Context paramContext, String paramString, HashMap<String, String> paramHashMap)
  {
    Object localObject = paramHashMap;
    if (paramHashMap == null) {
      localObject = new HashMap();
    }
    DeviceUtils.d(paramContext, (Map)localObject);
    paramContext = f((HashMap)localObject);
    if (!TextUtils.isEmpty(paramContext)) {
      paramString = String.format("%s?%s", new Object[] { paramString, paramContext });
    }
    return paramString;
  }
  
  public static String h(HashMap<String, String> paramHashMap, String paramString1, String paramString2)
  {
    String str = d(paramHashMap, paramString1, paramString2);
    if (str.length() == 0) {
      return str;
    }
    paramString2 = new StringBuilder();
    paramString2.append("appkey=");
    paramString2.append(paramString1);
    paramString2.append("&sign=");
    paramString2.append(str);
    paramHashMap = paramHashMap.entrySet().iterator();
    while (paramHashMap.hasNext())
    {
      paramString1 = (Map.Entry)paramHashMap.next();
      paramString2.append('&');
      paramString2.append((String)paramString1.getKey());
      paramString2.append('=');
      paramString2.append((String)paramString1.getValue());
    }
    return paramString2.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.l0
 * JD-Core Version:    0.7.0.1
 */