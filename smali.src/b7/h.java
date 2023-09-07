package b7;

import android.text.TextUtils;
import android.webkit.CookieManager;
import com.xiaomi.accountsdk.account.XMPassport;
import com.xiaomi.accountsdk.account.e;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil;
import com.xiaomi.accountsdk.utils.FidNonce.Type;
import com.xiaomi.accountsdk.utils.FidNonce.a;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.accountsdk.utils.f;
import com.xiaomi.accountsdk.utils.x;
import java.net.HttpCookie;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class h
{
  public static final String a;
  
  static
  {
    String str;
    if (XMPassport.a) {
      str = "http://.account.preview.n.xiaomi.net";
    } else {
      str = "https://.account.xiaomi.com";
    }
    a = str;
  }
  
  public static void a()
  {
    CookieManager.getInstance().removeAllCookie();
    b.g("HttpCookies", "cookie clear all");
  }
  
  public static void b(Map<String, String> paramMap)
  {
    if (paramMap.containsKey("deviceId")) {
      return;
    }
    paramMap.put("deviceId", new HashedDeviceIdUtil(e.b()).c());
    paramMap.put("userSpaceId", x.a());
  }
  
  public static void c(Map<String, String> paramMap, FidNonce.Type paramType)
  {
    if ((!paramMap.containsKey("fidNonce")) && (!paramMap.containsKey("fidNonceSign")))
    {
      paramType = new FidNonce.a().a(paramType);
      if ((paramType != null) && (!TextUtils.isEmpty(paramType.a)) && (!TextUtils.isEmpty(paramType.b)))
      {
        paramMap.put("fidNonce", paramType.a);
        paramMap.put("fidNonceSign", paramType.b);
      }
    }
  }
  
  public static List<String> d(Map<String, String> paramMap)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      if (!TextUtils.isEmpty((CharSequence)paramMap.getKey()))
      {
        Object localObject = paramMap.getKey();
        if (TextUtils.isEmpty((CharSequence)paramMap.getValue())) {
          paramMap = "";
        } else {
          paramMap = paramMap.getValue();
        }
        localArrayList.add(String.format("%s%s%s", new Object[] { localObject, "=", paramMap }));
      }
    }
    return localArrayList;
  }
  
  public static Map<String, String> e(String paramString)
  {
    HashMap localHashMap = new HashMap();
    if (TextUtils.isEmpty(paramString)) {
      return localHashMap;
    }
    for (CharSequence localCharSequence : paramString.split("; ")) {
      if (!TextUtils.isEmpty(localCharSequence))
      {
        int k = localCharSequence.indexOf("=");
        if (k != -1) {
          localHashMap.put(localCharSequence.substring(0, k), localCharSequence.substring(k + 1));
        }
      }
    }
    return localHashMap;
  }
  
  public static void f(String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(paramString2, null);
    g(paramString1, localHashMap);
  }
  
  public static void g(String paramString, Map<String, String> paramMap)
  {
    Object localObject = CookieManager.getInstance();
    ((CookieManager)localObject).setAcceptCookie(true);
    CookieManager.setAcceptFileSchemeCookies(true);
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("cookie-set ");
      localStringBuilder.append(String.format("%s=%s", new Object[] { localEntry.getKey(), k.a((String)localEntry.getValue()) }));
      b.g("HttpCookies", localStringBuilder.toString());
    }
    paramMap = d(paramMap).iterator();
    while (paramMap.hasNext()) {
      ((CookieManager)localObject).setCookie(paramString, (String)paramMap.next());
    }
    ((CookieManager)localObject).flush();
    localObject = ((CookieManager)localObject).getCookie(paramString);
    paramMap = e((String)localObject);
    paramString = new StringBuilder();
    paramString.append("cookie-after-set ");
    paramString.append(k.a((String)localObject));
    paramString.append(" -> ");
    paramString.append(paramMap.keySet());
    b.g("HttpCookies", paramString.toString());
  }
  
  public static void h(List<HttpCookie> paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      CookieManager localCookieManager = CookieManager.getInstance();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        paramList = (HttpCookie)localIterator.next();
        StringBuilder localStringBuilder1 = new StringBuilder(String.format("%s=%s; ", new Object[] { paramList.getName(), paramList.getValue() }));
        if (paramList.getSecure()) {
          localStringBuilder1.append("Secure; ");
        }
        if (paramList.isHttpOnly()) {
          localStringBuilder1.append("HttpOnly; ");
        }
        if (paramList.getMaxAge() > 0L) {
          localStringBuilder1.append(String.format("Max-Age=%d; ", new Object[] { Long.valueOf(paramList.getMaxAge()) }));
        }
        if (!TextUtils.isEmpty(paramList.getPath())) {
          localStringBuilder1.append(String.format("Path=%s; ", new Object[] { paramList.getPath() }));
        }
        if (paramList.getSecure())
        {
          StringBuilder localStringBuilder2 = new StringBuilder();
          localStringBuilder2.append("https://");
          localStringBuilder2.append(paramList.getDomain());
          paramList = localStringBuilder2.toString();
        }
        else
        {
          paramList = paramList.getDomain();
        }
        localCookieManager.setCookie(paramList, localStringBuilder1.toString());
      }
    }
  }
  
  public static String i(Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramMap = d(paramMap).iterator();
    while (paramMap.hasNext())
    {
      String str = (String)paramMap.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("; ");
      }
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.h
 * JD-Core Version:    0.7.0.1
 */