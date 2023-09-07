package a6;

import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.CipherException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.a;
import com.xiaomi.accountsdk.utils.e;
import com.xiaomi.accountsdk.utils.q;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class i
{
  private static String a(String paramString, e parame)
    throws CipherException, InvalidResponseException
  {
    if (parame != null) {
      try
      {
        paramString = parame.b(paramString);
        return paramString;
      }
      catch (CipherException paramString)
      {
        throw new InvalidResponseException("failed to decrypt response", paramString);
      }
    }
    throw new CipherException("no invalid coder");
  }
  
  public static Map<String, String> b(String paramString1, String paramString2, Map<String, String> paramMap, String paramString3, e parame)
    throws CipherException
  {
    if (parame != null)
    {
      HashMap localHashMap = new HashMap();
      if ((paramMap != null) && (!paramMap.isEmpty()))
      {
        Iterator localIterator = paramMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
          paramMap = (Map.Entry)localIterator.next();
          String str1 = (String)paramMap.getKey();
          String str2 = (String)paramMap.getValue();
          if ((str1 != null) && (str2 != null))
          {
            paramMap = str2;
            if (!str1.startsWith("_")) {
              paramMap = parame.a(str2);
            }
            localHashMap.put(str1, paramMap);
          }
        }
      }
      localHashMap.put("signature", q.a(paramString1, paramString2, localHashMap, paramString3));
      return localHashMap;
    }
    throw new CipherException("no invalid cypt coder");
  }
  
  public static k.f c(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2, e parame, Integer paramInteger, Map<String, String> paramMap3)
    throws IOException, CipherException, AccessDeniedException, InvalidResponseException, AuthenticationFailureException
  {
    return k.d(d(paramString1, paramMap1, paramMap2, paramBoolean, paramString2, parame, paramInteger, paramMap3));
  }
  
  public static k.h d(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2, e parame, Integer paramInteger, Map<String, String> paramMap3)
    throws IOException, CipherException, AccessDeniedException, InvalidResponseException, AuthenticationFailureException
  {
    Object localObject = parame;
    if (parame == null) {
      localObject = new a(paramString2);
    }
    return g(k.l(paramString1, b("GET", paramString1, paramMap1, paramString2, (e)localObject), paramMap3, paramMap2, paramBoolean, paramInteger, new h.c.a().b(paramString2).a()), paramString2, (e)localObject);
  }
  
  public static k.f e(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2, e parame, Integer paramInteger, Map<String, String> paramMap3)
    throws IOException, AccessDeniedException, InvalidResponseException, CipherException, AuthenticationFailureException
  {
    return k.d(f(paramString1, paramMap1, paramMap2, paramBoolean, paramString2, parame, paramInteger, paramMap3));
  }
  
  public static k.h f(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2, e parame, Integer paramInteger, Map<String, String> paramMap3)
    throws IOException, CipherException, AccessDeniedException, InvalidResponseException, AuthenticationFailureException
  {
    if (parame == null) {
      parame = new a(paramString2);
    }
    return g(k.r(paramString1, b("POST", paramString1, paramMap1, paramString2, parame), paramMap2, paramMap3, null, paramBoolean, paramInteger, new h.c.a().b(paramString2).a()), paramString2, parame);
  }
  
  private static k.h g(k.h paramh, String paramString, e parame)
    throws IOException, InvalidResponseException, CipherException
  {
    if (paramh != null)
    {
      paramString = paramh.h();
      if (paramString != null)
      {
        paramString = new k.h(a(paramString, parame));
        paramString.f(paramh.c());
        paramString.g(paramh.d());
        return paramString;
      }
      throw new InvalidResponseException("invalid response from server");
    }
    throw new IOException("no response from server");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.i
 * JD-Core Version:    0.7.0.1
 */