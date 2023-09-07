package com.miui.maml.util.net;

import android.content.ContentValues;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ObjectUtils
{
  private static Object convertObj(Object paramObject)
  {
    if ((paramObject instanceof JSONObject)) {
      return jsonToMap((JSONObject)paramObject);
    }
    if ((paramObject instanceof JSONArray))
    {
      localObject = (JSONArray)paramObject;
      int i = ((JSONArray)localObject).length();
      paramObject = new ArrayList();
      for (int j = 0; j < i; j++) {
        paramObject.add(convertObj(((JSONArray)localObject).opt(j)));
      }
      return paramObject;
    }
    Object localObject = paramObject;
    if (paramObject == JSONObject.NULL) {
      localObject = null;
    }
    return localObject;
  }
  
  public static Object convertObjectToJson(Object paramObject)
  {
    Object localObject1;
    if ((paramObject instanceof List))
    {
      localObject1 = (List)paramObject;
      paramObject = new JSONArray();
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        paramObject.put(convertObjectToJson(((Iterator)localObject1).next()));
      }
      return paramObject;
    }
    if ((paramObject instanceof Map))
    {
      localObject1 = new JSONObject();
      Map localMap = (Map)paramObject;
      paramObject = localMap.keySet().iterator();
      while (paramObject.hasNext())
      {
        Object localObject2 = paramObject.next();
        try
        {
          ((JSONObject)localObject1).put((String)localObject2, convertObjectToJson(localMap.get(localObject2)));
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
      return localObject1;
    }
    return paramObject;
  }
  
  public static String flattenMap(Map<?, ?> paramMap)
  {
    if (paramMap == null) {
      return "null";
    }
    Object localObject1 = paramMap.entrySet();
    paramMap = new StringBuilder();
    paramMap.append("{");
    Iterator localIterator = ((Set)localObject1).iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (Map.Entry)localIterator.next();
      localObject1 = ((Map.Entry)localObject2).getKey();
      localObject2 = ((Map.Entry)localObject2).getValue();
      paramMap.append("(");
      paramMap.append(localObject1);
      paramMap.append(",");
      paramMap.append(localObject2);
      paramMap.append("),");
    }
    paramMap.append("}");
    return paramMap.toString();
  }
  
  public static Map<String, Object> jsonToMap(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, convertObj(paramJSONObject.opt(str)));
    }
    return localHashMap;
  }
  
  public static Map<String, String> listToMap(Map<String, List<String>> paramMap)
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
  
  public static ContentValues mapToPairs(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return null;
    }
    ContentValues localContentValues = new ContentValues();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      String str = (String)paramMap.getKey();
      paramMap = (String)paramMap.getValue();
      if (paramMap == null) {
        paramMap = "";
      }
      localContentValues.put(str, paramMap);
    }
    return localContentValues;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.net.ObjectUtils
 * JD-Core Version:    0.7.0.1
 */