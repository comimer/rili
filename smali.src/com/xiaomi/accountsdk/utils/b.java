package com.xiaomi.accountsdk.utils;

import a6.k;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.net.HttpCookie;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Map<Ljava.lang.String;Ljava.lang.String;>;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class b
{
  private static final c a;
  private static volatile c b;
  
  static
  {
    a locala = new a();
    a = locala;
    b = locala;
  }
  
  private static String d(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "[empty]";
    }
    return String.format("PassportLog@A2^6C[%s]", new Object[] { Base64.encodeToString(paramString.getBytes(), 2) });
  }
  
  public static String e(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramString.trim().length() != 0)) {
      return String.format("[@L%d:H%s]", new Object[] { Integer.valueOf(paramString.length()), Integer.toHexString(paramString.hashCode()) });
    }
    return "[empty]";
  }
  
  public static void f(b paramb)
  {
    b.c(paramb);
  }
  
  public static void g(String paramString1, String paramString2)
  {
    b.a(paramString1, paramString2);
  }
  
  public static void h(String paramString1, String paramString2, Throwable paramThrowable)
  {
    b.d(paramString1, paramString2, paramThrowable);
  }
  
  public static void i(String paramString, Throwable paramThrowable)
  {
    b.b(paramString, paramThrowable);
  }
  
  private static JSONObject j(Map<String, String> paramMap)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (m(str)) {
          localJSONObject.put(str, e((String)paramMap.get(str)));
        } else {
          localJSONObject.put(str, paramMap.get(str));
        }
      }
      return localJSONObject;
    }
    catch (JSONException paramMap)
    {
      throw new IllegalStateException("should never happen", paramMap);
    }
  }
  
  private static JSONObject k(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      Iterator localIterator = paramJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = paramJSONObject.get(str);
        if ((localObject instanceof JSONObject)) {
          localJSONObject.put(str, k((JSONObject)localObject));
        } else if ((localObject instanceof JSONArray))
        {
          if (m(str)) {
            localJSONObject.put(str, String.format("[privacy data length=%d]", new Object[] { Integer.valueOf(((JSONArray)localObject).length()) }));
          } else {
            localJSONObject.put(str, localObject);
          }
        }
        else if (m(str)) {
          localJSONObject.put(str, "[privacy data]");
        } else {
          localJSONObject.put(str, paramJSONObject.get(str));
        }
      }
      return localJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
      throw new IllegalStateException("should never happen", paramJSONObject);
    }
  }
  
  private static JSONObject l(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    String str = paramString;
    if (paramString.startsWith("&&&START&&&")) {
      str = paramString.substring(11);
    }
    paramString = new JSONObject();
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(str);
      paramString.put("jsonObject", k(localJSONObject));
    }
    catch (JSONException localJSONException1)
    {
      try
      {
        JSONArray localJSONArray1 = new org/json/JSONArray;
        localJSONArray1.<init>(str);
        JSONArray localJSONArray2 = new org/json/JSONArray;
        localJSONArray2.<init>();
        for (int i = 0; i < localJSONArray1.length(); i++)
        {
          Object localObject = localJSONArray1.get(i);
          if ((localObject instanceof JSONObject)) {
            localJSONArray2.put(k((JSONObject)localObject));
          } else {
            localJSONArray2.put(String.valueOf(localObject));
          }
        }
        paramString.put("jsonArray", localJSONArray2);
      }
      catch (JSONException localJSONException2) {}
    }
    try
    {
      Map localMap = k.f(str);
      if (localMap.isEmpty()) {
        paramString.put("plainText", str);
      } else {
        paramString.put("keyValue", j(localMap));
      }
      return paramString;
    }
    catch (JSONException paramString)
    {
      throw new IllegalStateException("should never happen", paramString);
    }
  }
  
  private static boolean m(String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    if (bool1) {
      return false;
    }
    paramString = paramString.toLowerCase();
    if ((paramString.contains("token")) || (paramString.contains("ticket")) || (paramString.contains("security")) || (paramString.contains("password"))) {
      bool2 = true;
    }
    return bool2;
  }
  
  public static void n(c paramc)
  {
    if (paramc != null)
    {
      b = paramc;
      return;
    }
    throw new IllegalArgumentException("log == null");
  }
  
  class a
    implements b.c
  {
    public void a(String paramString1, String paramString2)
    {
      Log.e(paramString1, b.c(paramString2));
    }
    
    public void b(String paramString, Throwable paramThrowable)
    {
      Log.e(paramString, b.c(Log.getStackTraceString(paramThrowable)));
    }
    
    public void c(b.b paramb)
    {
      Log.e("AccountRequest", b.c(paramb.toString()));
    }
    
    public void d(String paramString1, String paramString2, Throwable paramThrowable)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString2);
      localStringBuilder.append("\n");
      localStringBuilder.append(Log.getStackTraceString(paramThrowable));
      Log.e(paramString1, b.c(localStringBuilder.toString()));
    }
  }
  
  public static class b
  {
    private String a;
    private String b;
    private long c;
    private Map<String, String> d;
    private Map<String, String> e;
    private Map<String, String> f;
    private JSONObject g;
    private int h = -2147483648;
    private JSONObject i;
    private Map<String, String> j;
    private Map<String, String> k;
    private Throwable l;
    private long m;
    
    public b(String paramString1, String paramString2)
    {
      this.a = paramString1;
      this.b = paramString2;
    }
    
    private Object a(Map<String, String> paramMap)
      throws JSONException
    {
      if ((paramMap != null) && (!paramMap.isEmpty()))
      {
        JSONObject localJSONObject = new JSONObject();
        Iterator localIterator = paramMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject1 = (Map.Entry)localIterator.next();
          Object localObject2 = (String)((Map.Entry)localObject1).getKey();
          paramMap = (Map<String, String>)localObject2;
          if (localObject2 == null) {
            paramMap = "[null]";
          }
          localObject1 = (String)((Map.Entry)localObject1).getValue();
          localObject2 = localObject1;
          if (b.b(paramMap)) {
            localObject2 = b.e((String)localObject1);
          }
          localJSONObject.put(paramMap, localObject2);
        }
        return localJSONObject;
      }
      return "[empty]";
    }
    
    private JSONObject b()
      throws JSONException
    {
      JSONObject localJSONObject1 = new JSONObject();
      localJSONObject1.put("@headers", a(this.d));
      localJSONObject1.put("@cookies", a(this.e));
      localJSONObject1.put("@params", a(this.f));
      JSONObject localJSONObject2 = this.g;
      Object localObject = localJSONObject2;
      if (localJSONObject2 == null) {
        localObject = "[empty]";
      }
      localJSONObject1.put("@body", localObject);
      return localJSONObject1;
    }
    
    private Object c()
      throws JSONException
    {
      if ((this.l == null) && (this.h == -2147483648)) {
        return "[no response]";
      }
      JSONObject localJSONObject1 = new JSONObject();
      localJSONObject1.put("@timecost", this.m);
      Object localObject = this.l;
      if (localObject != null)
      {
        localJSONObject1.put("@error", Log.getStackTraceString((Throwable)localObject));
      }
      else
      {
        localJSONObject1.put("@httpCode", this.h);
        localJSONObject1.put("@headers", a(this.j));
        localJSONObject1.put("@cookies", a(this.k));
        JSONObject localJSONObject2 = this.i;
        localObject = localJSONObject2;
        if (localJSONObject2 == null) {
          localObject = "[empty]";
        }
        localJSONObject1.put("@body", localObject);
      }
      return localJSONObject1;
    }
    
    public b d(String paramString)
    {
      this.g = b.a(paramString);
      this.c = SystemClock.elapsedRealtime();
      return this;
    }
    
    public b e(Map<String, String> paramMap1, Map<String, String> paramMap2)
    {
      this.c = SystemClock.elapsedRealtime();
      Object localObject = paramMap1;
      if (paramMap1 == null) {
        localObject = new HashMap();
      }
      this.d = new HashMap((Map)localObject);
      paramMap1 = paramMap2;
      if (paramMap2 == null) {
        paramMap1 = new HashMap();
      }
      this.e = new HashMap(paramMap1);
      this.c = SystemClock.elapsedRealtime();
      return this;
    }
    
    public b f(int paramInt, String paramString, Map<String, List<String>> paramMap, List<HttpCookie> paramList)
    {
      this.h = paramInt;
      this.i = b.a(paramString);
      this.j = new HashMap();
      if ((paramMap != null) && (!paramMap.isEmpty()))
      {
        paramString = paramMap.entrySet().iterator();
        while (paramString.hasNext())
        {
          Object localObject = (Map.Entry)paramString.next();
          paramMap = (String)((Map.Entry)localObject).getKey();
          if (!TextUtils.isEmpty(paramMap))
          {
            localObject = (List)((Map.Entry)localObject).getValue();
            if (!"Set-Cookie".equalsIgnoreCase(paramMap)) {
              if (((List)localObject).size() == 1)
              {
                this.j.put(paramMap, (String)((List)localObject).get(0));
              }
              else
              {
                localObject = ((List)localObject).iterator();
                while (((Iterator)localObject).hasNext())
                {
                  String str = (String)((Iterator)localObject).next();
                  this.j.put(String.format("%s(%s)", new Object[] { paramMap, Integer.toHexString(str.hashCode()) }), str);
                }
              }
            }
          }
        }
      }
      this.k = new HashMap();
      if ((paramList != null) && (!paramList.isEmpty()))
      {
        paramMap = paramList.iterator();
        while (paramMap.hasNext())
        {
          paramString = (HttpCookie)paramMap.next();
          this.k.put(paramString.getName(), paramString.getValue());
        }
      }
      this.m = (SystemClock.elapsedRealtime() - this.c);
      return this;
    }
    
    public b g(int paramInt, Map<String, List<String>> paramMap, List<HttpCookie> paramList)
    {
      return f(paramInt, "[no string body]", paramMap, paramList);
    }
    
    public b h(Throwable paramThrowable)
    {
      this.l = paramThrowable;
      this.m = (SystemClock.elapsedRealtime() - this.c);
      return this;
    }
    
    public String toString()
    {
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("#url#", String.format("%s: %s", new Object[] { this.b.toUpperCase(), this.a }));
        localJSONObject.put("#request#", b());
        localJSONObject.put("#response#", c());
        return localJSONObject.toString();
      }
      catch (JSONException localJSONException)
      {
        throw new IllegalStateException("should never happen", localJSONException);
      }
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(String paramString1, String paramString2);
    
    public abstract void b(String paramString, Throwable paramThrowable);
    
    public abstract void c(b.b paramb);
    
    public abstract void d(String paramString1, String paramString2, Throwable paramThrowable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.b
 * JD-Core Version:    0.7.0.1
 */