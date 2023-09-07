package a6;

import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.CipherException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.e;
import java.io.IOException;
import java.util.Map;

public class j
{
  public static k.f a(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2)
    throws IOException, CipherException, AccessDeniedException, InvalidResponseException, AuthenticationFailureException
  {
    return b(paramString1, paramMap1, paramMap2, paramBoolean, paramString2, null);
  }
  
  public static k.f b(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2, e parame)
    throws IOException, CipherException, AccessDeniedException, InvalidResponseException, AuthenticationFailureException
  {
    return i.c(paramString1, paramMap1, l.c(l.a(paramMap2)), paramBoolean, paramString2, parame, null, null);
  }
  
  public static k.h c(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2)
    throws IOException, CipherException, AccessDeniedException, InvalidResponseException, AuthenticationFailureException
  {
    return d(paramString1, paramMap1, paramMap2, paramBoolean, paramString2, null, null);
  }
  
  public static k.h d(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2, e parame, Integer paramInteger)
    throws IOException, CipherException, AccessDeniedException, InvalidResponseException, AuthenticationFailureException
  {
    return i.d(paramString1, paramMap1, l.c(l.a(paramMap2)), paramBoolean, paramString2, parame, paramInteger, null);
  }
  
  public static k.f e(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2)
    throws IOException, AccessDeniedException, InvalidResponseException, CipherException, AuthenticationFailureException
  {
    return f(paramString1, paramMap1, paramMap2, paramBoolean, paramString2, null);
  }
  
  public static k.f f(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2, e parame)
    throws IOException, AccessDeniedException, InvalidResponseException, CipherException, AuthenticationFailureException
  {
    return i.e(paramString1, paramMap1, l.c(l.a(paramMap2)), paramBoolean, paramString2, parame, null, null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.j
 * JD-Core Version:    0.7.0.1
 */