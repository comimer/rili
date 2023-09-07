package com.xiaomi.accountsdk.utils;

import com.xiaomi.accountsdk.account.XMPassport;
import java.security.MessageDigest;
import java.util.Map;

public class CloudCoder
{
  private static final String a;
  private static final String b;
  private static final Integer c = Integer.valueOf(0);
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str = XMPassport.g;
    localStringBuilder.append(str);
    localStringBuilder.append("/user/getSecurityToken");
    a = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append("/user/getPlanText");
    b = localStringBuilder.toString();
  }
  
  public static String a(String paramString1, String paramString2, Map<String, String> paramMap, String paramString3)
  {
    return d.b(paramString1, paramString2, paramMap, paramString3);
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    return d.c(paramArrayOfByte);
  }
  
  public static String c(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length != 0)) {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
        localMessageDigest.update(paramArrayOfByte);
        paramArrayOfByte = d(localMessageDigest.digest());
        return paramArrayOfByte;
      }
      catch (Exception paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static String d(byte[] paramArrayOfByte)
  {
    return d.d(paramArrayOfByte);
  }
  
  public static String e(String paramString)
  {
    return d.e(paramString);
  }
  
  public static String f(String paramString)
  {
    return d.f(paramString);
  }
  
  public static enum CIPHER_MODE
  {
    static
    {
      CIPHER_MODE localCIPHER_MODE1 = new CIPHER_MODE("ENCRYPT", 0);
      ENCRYPT = localCIPHER_MODE1;
      CIPHER_MODE localCIPHER_MODE2 = new CIPHER_MODE("DECRYPT", 1);
      DECRYPT = localCIPHER_MODE2;
      $VALUES = new CIPHER_MODE[] { localCIPHER_MODE1, localCIPHER_MODE2 };
    }
    
    private CIPHER_MODE() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.CloudCoder
 * JD-Core Version:    0.7.0.1
 */