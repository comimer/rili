package com.xiaomi.onetrack;

import android.os.BaseBundle;
import android.os.Bundle;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.r;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DataConverter
{
  private static final String a = "DataConverter";
  
  private static List a(JSONArray paramJSONArray)
    throws JSONException
  {
    if (paramJSONArray == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int i = paramJSONArray.length();
    for (int j = 0; j < i; j++)
    {
      Object localObject = paramJSONArray.get(j);
      if (r.b(localObject))
      {
        localArrayList.add(localObject);
      }
      else if ((localObject instanceof JSONObject))
      {
        JSONObject localJSONObject = (JSONObject)localObject;
        Iterator localIterator = localJSONObject.keys();
        HashMap localHashMap = new HashMap();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localObject = localJSONObject.get(str);
          if (r.b(localObject)) {
            localHashMap.put(str, localObject);
          }
        }
        if (localHashMap.size() > 0) {
          localArrayList.add(localHashMap);
        }
      }
    }
    return localArrayList;
  }
  
  public static Map fromBundle(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return null;
    }
    localHashMap = new HashMap();
    try
    {
      Iterator localIterator = paramBundle.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject1 = paramBundle.get(str);
        if (r.b(localObject1))
        {
          localHashMap.put(str, localObject1);
        }
        else
        {
          Object localObject2;
          Object localObject3;
          if (localObject1.getClass().isArray())
          {
            int i = Array.getLength(localObject1);
            localObject2 = new java/util/ArrayList;
            ((ArrayList)localObject2).<init>();
            for (int j = 0; j < i; j++)
            {
              localObject3 = Array.get(localObject1, j);
              if (r.b(localObject3)) {
                ((List)localObject2).add(localObject3);
              }
            }
            if (((List)localObject2).size() > 0) {
              localHashMap.put(str, localObject2);
            }
          }
          else if ((localObject1 instanceof List))
          {
            localObject2 = (List)localObject1;
            localObject1 = new java/util/ArrayList;
            ((ArrayList)localObject1).<init>();
            localObject3 = ((List)localObject2).iterator();
            while (((Iterator)localObject3).hasNext())
            {
              localObject2 = ((Iterator)localObject3).next();
              if (r.b(localObject2)) {
                ((List)localObject1).add(localObject2);
              }
            }
            if (((List)localObject1).size() > 0) {
              localHashMap.put(str, localObject1);
            }
          }
          else if (p.a)
          {
            r.a("DataConverter", str);
          }
        }
      }
      return localHashMap;
    }
    catch (Exception localException)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("convert bundle error:");
      paramBundle.append(localException.toString());
      p.b("DataConverter", paramBundle.toString());
    }
  }
  
  public static Map fromJson(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    localHashMap = new HashMap();
    try
    {
      Object localObject1 = paramJSONObject.keys();
      while (((Iterator)localObject1).hasNext())
      {
        String str = (String)((Iterator)localObject1).next();
        Object localObject2 = paramJSONObject.get(str);
        if (r.b(localObject2)) {
          localHashMap.put(str, localObject2);
        } else if ((localObject2 instanceof JSONArray)) {
          localHashMap.put(str, a((JSONArray)localObject2));
        } else if (p.a) {
          r.a("DataConverter", str);
        }
      }
      return localHashMap;
    }
    catch (Exception paramJSONObject)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("convert json to map error:");
      ((StringBuilder)localObject1).append(paramJSONObject.toString());
      p.b("DataConverter", ((StringBuilder)localObject1).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.DataConverter
 * JD-Core Version:    0.7.0.1
 */