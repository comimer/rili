package a6;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.e;
import com.xiaomi.accountsdk.utils.b;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

class h
{
  private static final Object a = new Object();
  private static volatile Set<String> b = new HashSet();
  private static final ConcurrentHashMap<String, b> c = new ConcurrentHashMap();
  private static SharedPreferences d;
  
  public static void a(String paramString, k.h paramh, c paramc)
  {
    paramString = c(paramString);
    if ((!TextUtils.isEmpty(paramString)) && (paramh != null))
    {
      Object localObject = paramh.b("Result-Code");
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        return;
      }
      if (((String)localObject).equals(String.valueOf(0)))
      {
        localObject = paramh.b("Version-Code");
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          h(paramString, (String)localObject, paramh.h(), paramc);
        }
      }
      else if (((String)localObject).equals(String.valueOf(304)))
      {
        localObject = (b)c.get(paramString);
        if ((localObject != null) && (!TextUtils.isEmpty(((b)localObject).b)))
        {
          paramc = new StringBuilder();
          paramc.append("fillOrCacheRequestResult>>>use cache data, url=");
          paramc.append(paramString);
          b.g("RequestWithVersionCodeControl", paramc.toString());
          paramh.i(((b)localObject).b);
        }
        else
        {
          paramh = new StringBuilder();
          paramh.append("fillOrCacheRequestResult>>>cache data should not be empty, url=");
          paramh.append(paramString);
          b.g("RequestWithVersionCodeControl", paramh.toString());
        }
      }
    }
  }
  
  public static Map<String, String> b(String paramString, Map<String, String> paramMap, c paramc)
  {
    String str1 = c(paramString);
    if (TextUtils.isEmpty(str1)) {
      return paramMap;
    }
    b localb = e(str1);
    if (localb == null) {
      return paramMap;
    }
    if ((paramc != null) && (paramc.a()))
    {
      paramc = paramc.a;
      String str2 = localb.c;
      paramString = new StringBuilder();
      paramString.append("fillRequestHeadersWithVersionCode>>>security request:url=");
      paramString.append(str1);
      paramString.append("  newSecurity=");
      paramString.append(paramc);
      paramString.append("  localSecurity=");
      paramString.append(str2);
      b.g("RequestWithVersionCodeControl", paramString.toString());
      if (!TextUtils.equals(paramc, str2))
      {
        g(str1);
        return paramMap;
      }
    }
    paramString = paramMap;
    if (paramMap == null) {
      paramString = new HashMap();
    }
    paramString.put("Version-Code", localb.a);
    paramMap = new StringBuilder();
    paramMap.append("fillRequestHeadersWithVersionCode>>>url=");
    paramMap.append(str1);
    paramMap.append("  versionCode=");
    paramMap.append(localb.a);
    b.g("RequestWithVersionCodeControl", paramMap.toString());
    return paramString;
  }
  
  private static String c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramString;
    }
    try
    {
      Object localObject = new java/net/URL;
      ((URL)localObject).<init>(paramString);
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append(((URL)localObject).getProtocol());
      localStringBuilder.append("://");
      localStringBuilder.append(((URL)localObject).getHost());
      localStringBuilder.append(((URL)localObject).getPath());
      localObject = localStringBuilder.toString();
      paramString = (String)localObject;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      b.h("RequestWithVersionCodeControl", "formatUrl>>>format url err,", localMalformedURLException);
    }
    return paramString;
  }
  
  private static SharedPreferences d()
  {
    if (d == null)
    {
      long l1 = System.currentTimeMillis();
      d = e.b().getSharedPreferences("sp_name_request_with_version_code", 0);
      long l2 = System.currentTimeMillis();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getSp>>>load sp speed time:");
      localStringBuilder.append(l2 - l1);
      b.g("RequestWithVersionCodeControl", localStringBuilder.toString());
    }
    return d;
  }
  
  private static b e(String paramString)
  {
    b localb = (b)c.get(paramString);
    if (localb != null) {
      return localb;
    }
    if (b.contains(paramString)) {
      return null;
    }
    return f(paramString);
  }
  
  private static b f(String paramString)
  {
    synchronized (a)
    {
      if (b.contains(paramString))
      {
        paramString = (b)c.get(paramString);
        return paramString;
      }
      b.add(paramString);
      Object localObject2 = d().getString(paramString, "");
      Object localObject3;
      try
      {
        localObject2 = b.a((String)localObject2);
      }
      catch (JSONException localJSONException)
      {
        b.h("RequestWithVersionCodeControl", "loadVersionInfoFromSp>>>bad localData", localJSONException);
        g(paramString);
        localObject3 = null;
      }
      if (localObject3 == null) {
        return null;
      }
      c.put(paramString, localObject3);
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("loadVersionInfoFromSp>>>load sp data, url=");
      localStringBuilder.append(paramString);
      localStringBuilder.append("  versionCode=");
      localStringBuilder.append(localObject3.a);
      b.g("RequestWithVersionCodeControl", localStringBuilder.toString());
      return localObject3;
    }
  }
  
  private static void g(String paramString)
  {
    d().edit().remove(paramString).apply();
  }
  
  private static void h(String paramString1, String paramString2, String paramString3, c paramc)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("saveVersionInfoToCacheAndLocal>>>url=");
    ((StringBuilder)localObject1).append(paramString1);
    ((StringBuilder)localObject1).append("  versionCode=");
    ((StringBuilder)localObject1).append(paramString2);
    b.g("RequestWithVersionCodeControl", ((StringBuilder)localObject1).toString());
    if (TextUtils.isEmpty(paramString3))
    {
      b.g("RequestWithVersionCodeControl", "saveVersionInfoToCacheAndLocal>>>data should not be empty");
      return;
    }
    ConcurrentHashMap localConcurrentHashMap = c;
    b localb = (b)localConcurrentHashMap.get(paramString1);
    Object localObject2 = null;
    localObject1 = localb;
    if (localb == null)
    {
      localObject1 = new b(null);
      localConcurrentHashMap.put(paramString1, localObject1);
    }
    ((b)localObject1).a = paramString2;
    ((b)localObject1).b = paramString3;
    paramString2 = localObject2;
    if (paramc != null) {
      paramString2 = paramc.a;
    }
    ((b)localObject1).c = paramString2;
    try
    {
      d().edit().putString(paramString1, ((b)localObject1).b()).apply();
    }
    catch (JSONException paramString1)
    {
      b.h("RequestWithVersionCodeControl", "saveVersionInfoToCacheAndLocal>>>info to jsonStr err", paramString1);
    }
  }
  
  private static class b
  {
    String a;
    String b;
    String c;
    
    static b a(String paramString)
      throws JSONException
    {
      if (TextUtils.isEmpty(paramString)) {
        return null;
      }
      b localb = new b();
      paramString = new JSONObject(paramString);
      localb.a = paramString.optString("version_code");
      localb.b = paramString.optString("data");
      localb.c = paramString.optString("security");
      return localb;
    }
    
    String b()
      throws JSONException
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("version_code", this.a);
      localJSONObject.put("data", this.b);
      String str = this.c;
      if (str != null) {
        localJSONObject.put("security", str);
      }
      return localJSONObject.toString();
    }
  }
  
  public static class c
  {
    public final String a;
    
    private c(String paramString)
    {
      this.a = paramString;
    }
    
    public boolean a()
    {
      return TextUtils.isEmpty(this.a) ^ true;
    }
    
    public static class a
    {
      private String a;
      
      public h.c a()
      {
        return new h.c(this.a, null);
      }
      
      public a b(String paramString)
      {
        this.a = paramString;
        return this;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.h
 * JD-Core Version:    0.7.0.1
 */