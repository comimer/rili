package a6;

import android.text.TextUtils;
import com.xiaomi.accountsdk.account.e;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.utils.FidNonce.Type;
import com.xiaomi.accountsdk.utils.FidNonce.a;
import com.xiaomi.accountsdk.utils.f;
import com.xiaomi.accountsdk.utils.x;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class l
{
  static Map<String, String> a(Map<String, String> paramMap)
  {
    return b(paramMap, new HashedDeviceIdUtil(e.b()).c());
  }
  
  static Map<String, String> b(Map<String, String> paramMap, String paramString)
  {
    if ((paramMap != null) && (paramMap.containsKey("deviceId"))) {
      return paramMap;
    }
    if (paramMap == null) {
      paramMap = new HashMap();
    } else {
      paramMap = new HashMap(paramMap);
    }
    paramMap.put("deviceId", paramString);
    paramString = x.a();
    if (!TextUtils.isEmpty(paramString)) {
      paramMap.put("userSpaceId", paramString);
    }
    return paramMap;
  }
  
  static Map<String, String> c(Map<String, String> paramMap)
  {
    return d(paramMap, new FidNonce.a());
  }
  
  static Map<String, String> d(Map<String, String> paramMap, FidNonce.a parama)
  {
    if ((paramMap != null) && (parama != null) && (paramMap.containsKey("deviceId")) && (!paramMap.containsKey("fidNonce")) && (!paramMap.containsKey("fidNonceSign")))
    {
      parama = parama.a(FidNonce.Type.NATIVE);
      if ((parama != null) && (!TextUtils.isEmpty(parama.a)) && (!TextUtils.isEmpty(parama.b)))
      {
        paramMap = new HashMap(paramMap);
        paramMap.put("fidNonce", parama.a);
        paramMap.put("fidNonceSign", parama.b);
        return paramMap;
      }
    }
    return paramMap;
  }
  
  public static k.g e(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return k.j(paramString, paramMap1, c(a(paramMap2)), null);
  }
  
  public static k.h f(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, boolean paramBoolean)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return g(paramString, paramMap1, paramMap2, paramMap3, paramBoolean, null);
  }
  
  public static k.h g(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, boolean paramBoolean, Integer paramInteger)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return k.k(paramString, paramMap1, paramMap2, c(a(paramMap3)), paramBoolean, paramInteger);
  }
  
  public static k.h h(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return g(paramString, paramMap1, null, paramMap2, paramBoolean, null);
  }
  
  public static k.h i(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, Map<String, String> paramMap4, boolean paramBoolean, Integer paramInteger)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return k.q(paramString, paramMap1, c(a(paramMap2)), paramMap3, paramMap4, paramBoolean, paramInteger);
  }
  
  public static k.h j(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return i(paramString, paramMap1, paramMap2, null, null, paramBoolean, null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.l
 * JD-Core Version:    0.7.0.1
 */