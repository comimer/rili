package com.xiaomi.onetrack.d;

import android.text.TextUtils;
import com.xiaomi.onetrack.util.p;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class d
{
  private static final String a = "DigestUtil";
  private static final char[] b = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final char[] c = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  
  public static String a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    char[] arrayOfChar;
    if (paramBoolean) {
      arrayOfChar = b;
    } else {
      arrayOfChar = c;
    }
    return new String(a(paramArrayOfByte, arrayOfChar));
  }
  
  private static MessageDigest a()
  {
    return a("MD5");
  }
  
  static MessageDigest a(String paramString)
  {
    try
    {
      paramString = MessageDigest.getInstance(paramString);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException(paramString.getMessage());
    }
  }
  
  private static byte[] a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return null;
    }
    try
    {
      paramString1 = paramString1.getBytes(paramString2);
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1) {}
    return null;
  }
  
  public static byte[] a(byte[] paramArrayOfByte)
  {
    return a().digest(paramArrayOfByte);
  }
  
  private static char[] a(byte[] paramArrayOfByte, char[] paramArrayOfChar)
  {
    int i = paramArrayOfByte.length;
    char[] arrayOfChar = new char[i << 1];
    int j = 0;
    int k = 0;
    while (j < i)
    {
      int m = k + 1;
      int n = paramArrayOfByte[j];
      arrayOfChar[k] = ((char)paramArrayOfChar[((n & 0xF0) >>> 4)]);
      k = m + 1;
      arrayOfChar[m] = ((char)paramArrayOfChar[(n & 0xF)]);
      j++;
    }
    return arrayOfChar;
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    return a(a(paramArrayOfByte), true);
  }
  
  private static MessageDigest b()
  {
    return a("SHA-256");
  }
  
  public static byte[] b(String paramString)
  {
    return a(a(paramString, "UTF-8"));
  }
  
  public static String c(String paramString)
  {
    return a(b(paramString), true);
  }
  
  private static MessageDigest c()
  {
    return a("SHA1");
  }
  
  public static byte[] c(byte[] paramArrayOfByte)
  {
    return b().digest(paramArrayOfByte);
  }
  
  public static String d(String paramString)
  {
    return a(g(paramString), true);
  }
  
  public static String d(byte[] paramArrayOfByte)
  {
    return a(c(paramArrayOfByte), true);
  }
  
  public static String e(String paramString)
  {
    return a(f(paramString), true);
  }
  
  public static String e(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
        localMessageDigest.update(paramArrayOfByte);
        paramArrayOfByte = new java/math/BigInteger;
        paramArrayOfByte.<init>(1, localMessageDigest.digest());
        paramArrayOfByte = String.format("%1$032X", new Object[] { paramArrayOfByte });
      }
      catch (Exception localException)
      {
        paramArrayOfByte = new StringBuilder();
        paramArrayOfByte.append("getMD5 exception: ");
        paramArrayOfByte.append(localException);
        p.b("DigestUtil", paramArrayOfByte.toString());
      }
    } else {
      paramArrayOfByte = "";
    }
    return paramArrayOfByte.toLowerCase();
  }
  
  public static byte[] f(String paramString)
  {
    return c(a(paramString, "UTF-8"));
  }
  
  public static byte[] g(String paramString)
  {
    return c().digest(a(paramString, "UTF-8"));
  }
  
  public static String h(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    return e(paramString.getBytes());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.d.d
 * JD-Core Version:    0.7.0.1
 */