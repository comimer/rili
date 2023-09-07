package com.xiaomi.onetrack.util;

import android.text.TextUtils;
import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.d.d;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class r
{
  public static final String a = "onetrack_";
  public static final String b = "ot_";
  private static final String c = "ParamUtil";
  
  public static String a(Configuration paramConfiguration)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str = paramConfiguration.getAppId();
    paramConfiguration = paramConfiguration.getPluginId();
    if (!TextUtils.isEmpty(str)) {
      localStringBuilder.append(str);
    }
    if (!TextUtils.isEmpty(paramConfiguration)) {
      localStringBuilder.append(paramConfiguration);
    }
    return d.h(localStringBuilder.toString());
  }
  
  public static JSONArray a(List paramList)
    throws JSONException
  {
    if (paramList == null) {
      return null;
    }
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      Object localObject1 = localIterator1.next();
      if (b(localObject1))
      {
        localJSONArray.put(localObject1);
      }
      else if ((localObject1 instanceof Map))
      {
        paramList = new JSONObject();
        localObject1 = (Map)localObject1;
        int i = 0;
        Iterator localIterator2 = ((Map)localObject1).entrySet().iterator();
        while (localIterator2.hasNext())
        {
          Object localObject2 = (Map.Entry)localIterator2.next();
          localObject1 = ((Map.Entry)localObject2).getKey();
          localObject2 = ((Map.Entry)localObject2).getValue();
          if (((localObject1 instanceof String)) && (b(localObject2)))
          {
            paramList.put((String)localObject1, localObject2);
            i = 1;
          }
        }
        if (i != 0) {
          localJSONArray.put(paramList);
        }
      }
    }
    return localJSONArray;
  }
  
  public static JSONObject a(Map<String, Object> paramMap)
  {
    return a(paramMap, new t());
  }
  
  private static JSONObject a(Map<String, Object> paramMap, a parama)
  {
    localJSONObject = new JSONObject();
    if (paramMap == null) {
      return localJSONObject;
    }
    try
    {
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str = (String)localEntry.getKey();
        paramMap = localEntry.getValue();
        if (!parama.a(paramMap))
        {
          if (p.a) {
            a("ParamUtil", (String)localEntry.getKey());
          }
        }
        else if (b(paramMap)) {
          localJSONObject.put(str, paramMap);
        } else if ((paramMap instanceof List)) {
          localJSONObject.put(str, a((List)paramMap));
        }
      }
      return localJSONObject;
    }
    catch (Exception parama)
    {
      paramMap = new StringBuilder();
      paramMap.append("checkParam error:");
      paramMap.append(parama.toString());
      p.b("ParamUtil", paramMap.toString());
    }
  }
  
  public static JSONObject a(Map<String, Object> paramMap, boolean paramBoolean)
  {
    return a(paramMap, new s(paramBoolean));
  }
  
  public static JSONObject a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    if ((paramJSONObject1 == null) && (paramJSONObject2 == null)) {
      return new JSONObject();
    }
    if ((paramJSONObject1 == null) && (paramJSONObject2 != null)) {
      return paramJSONObject2;
    }
    if ((paramJSONObject1 != null) && (paramJSONObject2 == null)) {
      return paramJSONObject1;
    }
    try
    {
      localObject = paramJSONObject1.keys();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        paramJSONObject2.put(str, paramJSONObject1.opt(str));
      }
      return paramJSONObject2;
    }
    catch (Exception paramJSONObject2)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("merge error：");
      ((StringBuilder)localObject).append(paramJSONObject2.toString());
      p.b("ParamUtil", ((StringBuilder)localObject).toString());
    }
    return paramJSONObject1;
  }
  
  public static void a(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("key is ");
    localStringBuilder.append(paramString2);
    localStringBuilder.append(", the param value is invalid，please change the parameter type to string ,numeric, boolean！");
    p.b(paramString1, localStringBuilder.toString());
  }
  
  public static boolean a(Object paramObject)
  {
    boolean bool;
    if ((!b(paramObject)) && (!(paramObject instanceof List))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static boolean a(String paramString)
  {
    if (!c(paramString)) {
      return false;
    }
    paramString = paramString.toLowerCase();
    return (!paramString.startsWith("onetrack_")) && (!paramString.startsWith("ot_"));
  }
  
  public static boolean b(Object paramObject)
  {
    return ((paramObject instanceof Boolean)) || ((paramObject instanceof Number)) || ((paramObject instanceof String));
  }
  
  private static boolean b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    return paramString.matches("-?\\d+(\\.\\d+)?");
  }
  
  private static boolean c(String paramString)
  {
    if ((paramString != null) && (!paramString.isEmpty()))
    {
      paramString = paramString.toCharArray();
      for (int i = 0; i < paramString.length; i++)
      {
        char c1 = paramString[i];
        if ((i == 0) && (Character.isDigit(c1))) {
          return false;
        }
        if ((c1 != '_') && (!Character.isDigit(c1)) && ((c1 < 'a') || (c1 > 'z')) && ((c1 < 'A') || (c1 > 'Z'))) {
          return false;
        }
      }
      return true;
    }
    return false;
  }
  
  private static boolean d(Object paramObject)
  {
    return (paramObject instanceof Number);
  }
  
  public static abstract interface a
  {
    public abstract boolean a(Object paramObject);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.r
 * JD-Core Version:    0.7.0.1
 */