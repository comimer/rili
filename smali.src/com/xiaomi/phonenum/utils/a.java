package com.xiaomi.phonenum.utils;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  public static String a(List<String> paramList, String paramString)
  {
    if (paramList == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 1;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      paramList = (String)localIterator.next();
      if (!TextUtils.isEmpty(paramList))
      {
        if (i != 0) {
          i = 0;
        } else {
          localStringBuilder.append(paramString);
        }
        localStringBuilder.append(paramList);
      }
    }
    return localStringBuilder.toString();
  }
  
  public static JSONObject b(Map<String, List<String>> paramMap)
    throws JSONException
  {
    if (paramMap == null) {
      return null;
    }
    JSONObject localJSONObject = new JSONObject();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Object localObject = (Map.Entry)paramMap.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = a((List)((Map.Entry)localObject).getValue(), ";");
      if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty((CharSequence)localObject))) {
        localJSONObject.put(str, localObject);
      }
    }
    return localJSONObject;
  }
  
  public static String c(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 1;
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      paramMap = (String)((Map.Entry)localObject).getKey();
      localObject = (String)((Map.Entry)localObject).getValue();
      if ((!TextUtils.isEmpty(paramMap)) && (!TextUtils.isEmpty((CharSequence)localObject)))
      {
        if (i != 0) {
          i = 0;
        } else {
          localStringBuilder.append("&");
        }
        localStringBuilder.append(paramMap);
        localStringBuilder.append("=");
        localStringBuilder.append((String)localObject);
      }
    }
    return localStringBuilder.toString();
  }
  
  public static Map<String, String> d(JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject == null) {
      return null;
    }
    Iterator localIterator = paramJSONObject.keys();
    HashMap localHashMap = new HashMap();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramJSONObject.getString(str));
    }
    return localHashMap;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.phonenum.utils.a
 * JD-Core Version:    0.7.0.1
 */