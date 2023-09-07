package com.xiaomi.analytics;

import android.text.TextUtils;
import android.util.Log;
import f6.a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONObject;

public abstract class Action
{
  protected static final String ACTION = "_action_";
  protected static final String CATEGORY = "_category_";
  protected static final String EVENT_ID = "_event_id_";
  protected static final String LABEL = "_label_";
  protected static final String VALUE = "_value_";
  private static Set<String> c;
  private JSONObject a = new JSONObject();
  private JSONObject b = new JSONObject();
  
  static
  {
    HashSet localHashSet = new HashSet();
    c = localHashSet;
    localHashSet.add("_event_id_");
    c.add("_category_");
    c.add("_action_");
    c.add("_label_");
    c.add("_value_");
  }
  
  private void f(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (c.contains(paramString)))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("this key ");
      localStringBuilder.append(paramString);
      localStringBuilder.append(" is built-in, please pick another key.");
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
  }
  
  void a(String paramString, int paramInt)
  {
    if (!TextUtils.isEmpty(paramString)) {
      try
      {
        this.a.put(paramString, paramInt);
      }
      catch (Exception paramString)
      {
        Log.e(a.a("Action"), "addContent int value e", paramString);
      }
    }
  }
  
  protected Action addEventId(String paramString)
  {
    c("_event_id_", paramString);
    return this;
  }
  
  public Action addParam(String paramString, int paramInt)
  {
    f(paramString);
    a(paramString, paramInt);
    return this;
  }
  
  public Action addParam(String paramString, long paramLong)
  {
    f(paramString);
    b(paramString, paramLong);
    return this;
  }
  
  public Action addParam(String paramString1, String paramString2)
  {
    f(paramString1);
    c(paramString1, paramString2);
    return this;
  }
  
  public Action addParam(String paramString, JSONObject paramJSONObject)
  {
    f(paramString);
    c(paramString, paramJSONObject);
    return this;
  }
  
  void b(String paramString, long paramLong)
  {
    if (!TextUtils.isEmpty(paramString)) {
      try
      {
        this.a.put(paramString, paramLong);
      }
      catch (Exception paramString)
      {
        Log.e(a.a("Action"), "addContent long value e", paramString);
      }
    }
  }
  
  void c(String paramString, Object paramObject)
  {
    if (!TextUtils.isEmpty(paramString)) {
      try
      {
        this.a.put(paramString, paramObject);
      }
      catch (Exception paramString)
      {
        Log.e(a.a("Action"), "addContent Object value e", paramString);
      }
    }
  }
  
  void d(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null)
    {
      Iterator localIterator = paramJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = localIterator.next().toString();
        f(str);
        try
        {
          this.a.put(str, paramJSONObject.get(str));
        }
        catch (Exception localException)
        {
          Log.e(a.a("Action"), "addContent e", localException);
        }
      }
    }
  }
  
  void e(String paramString1, String paramString2)
  {
    try
    {
      this.b.put(paramString1, paramString2);
    }
    catch (Exception paramString1)
    {
      Log.e(a.a("Action"), "addExtra e", paramString1);
    }
  }
  
  final JSONObject g()
  {
    return this.a;
  }
  
  final JSONObject h()
  {
    return this.b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.Action
 * JD-Core Version:    0.7.0.1
 */