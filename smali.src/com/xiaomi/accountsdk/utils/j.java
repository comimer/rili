package com.xiaomi.accountsdk.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class j
{
  private static Object a(Object paramObject)
  {
    if ((paramObject instanceof JSONObject)) {
      return b((JSONObject)paramObject);
    }
    if ((paramObject instanceof JSONArray))
    {
      paramObject = (JSONArray)paramObject;
      int i = paramObject.length();
      localObject = new ArrayList();
      for (int j = 0; j < i; j++) {
        ((List)localObject).add(a(paramObject.opt(j)));
      }
      return localObject;
    }
    Object localObject = paramObject;
    if (paramObject == JSONObject.NULL) {
      localObject = null;
    }
    return localObject;
  }
  
  public static Map<String, Object> b(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, a(paramJSONObject.opt(str)));
    }
    return localHashMap;
  }
  
  public static Map<String, String> c(Map<String, List<String>> paramMap)
  {
    HashMap localHashMap = new HashMap();
    if (paramMap != null)
    {
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (Map.Entry)localIterator.next();
        paramMap = (String)((Map.Entry)localObject).getKey();
        localObject = (List)((Map.Entry)localObject).getValue();
        if ((paramMap != null) && (localObject != null) && (((List)localObject).size() > 0)) {
          localHashMap.put(paramMap, (String)((List)localObject).get(0));
        }
      }
    }
    return localHashMap;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.j
 * JD-Core Version:    0.7.0.1
 */