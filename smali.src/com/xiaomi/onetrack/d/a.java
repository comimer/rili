package com.xiaomi.onetrack.d;

import android.util.Base64;
import com.xiaomi.onetrack.util.m;
import com.xiaomi.onetrack.util.p;
import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;

public class a
{
  private static final String a = "AES";
  private static final String b = "AES/ECB/PKCS5Padding";
  private static final String c = "AES";
  private static KeyGenerator d;
  
  static
  {
    try
    {
      KeyGenerator localKeyGenerator = KeyGenerator.getInstance("AES");
      d = localKeyGenerator;
      localKeyGenerator.init(128);
    }
    catch (Exception localException)
    {
      p.b(p.a("AES"), "AesUtil e", localException);
    }
  }
  
  public static String a(String paramString)
  {
    String str = "";
    try
    {
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append(b.a);
      localObject = ((StringBuilder)localObject).toString().toCharArray();
      for (int i = 0; i < localObject.length; i++) {
        for (int j = 0; j < localObject.length - 1; j++)
        {
          int k = localObject[i];
          int m = localObject[j];
          if (k < m)
          {
            localObject[i] = ((char)m);
            localObject[j] = ((char)k);
          }
        }
      }
      paramString = new java/lang/String;
      paramString.<init>((char[])localObject);
      paramString = d.h(paramString);
    }
    catch (Exception paramString)
    {
      paramString = new StringBuilder();
      paramString.append("encodeFromSalt ");
      paramString.append("");
      p.b("AES", paramString.toString());
      paramString = str;
    }
    return paramString;
  }
  
  public static String a(String paramString1, String paramString2)
  {
    return m.a(e(paramString1, paramString2));
  }
  
  public static byte[] a()
  {
    return d.generateKey().getEncoded();
  }
  
  private static byte[] a(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      Object localObject = b(paramString);
      paramString = new javax/crypto/spec/SecretKeySpec;
      paramString.<init>((byte[])localObject, "AES");
      localObject = Cipher.getInstance("AES/ECB/PKCS5Padding");
      ((Cipher)localObject).init(2, paramString);
      paramArrayOfByte = ((Cipher)localObject).doFinal(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      p.b(p.a("AES"), "decrypt exception:", paramArrayOfByte);
    }
    return null;
  }
  
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new javax/crypto/spec/SecretKeySpec;
      localSecretKeySpec.<init>(paramArrayOfByte2, "AES");
      paramArrayOfByte2 = Cipher.getInstance("AES/ECB/PKCS5Padding");
      paramArrayOfByte2.init(1, localSecretKeySpec);
      paramArrayOfByte1 = paramArrayOfByte2.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (Exception paramArrayOfByte1)
    {
      p.b(p.a("AES"), "encrypt exception:", paramArrayOfByte1);
    }
    return null;
  }
  
  public static String b(String paramString1, String paramString2)
  {
    return Base64.encodeToString(e(paramString1, paramString2), 10);
  }
  
  private static byte[] b(String paramString)
  {
    if (paramString != null) {
      return paramString.getBytes();
    }
    return null;
  }
  
  public static byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      Object localObject = new javax/crypto/spec/SecretKeySpec;
      ((SecretKeySpec)localObject).<init>(paramArrayOfByte2, "AES");
      Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
      localCipher.init(2, (Key)localObject);
      localObject = localCipher.doFinal(paramArrayOfByte1);
      return localObject;
    }
    catch (Exception localException)
    {
      p.b("AES", "decrypt exception:", localException);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("content len=");
      localStringBuilder.append(paramArrayOfByte1.length);
      localStringBuilder.append(", passwd len=");
      localStringBuilder.append(paramArrayOfByte2.length);
      p.b("AES", localStringBuilder.toString());
    }
    return null;
  }
  
  public static String c(String paramString1, String paramString2)
  {
    return new String(a(c(paramString1), paramString2));
  }
  
  private static byte[] c(String paramString)
  {
    if ((paramString != null) && (paramString.length() >= 1))
    {
      byte[] arrayOfByte = new byte[paramString.length() / 2];
      for (int i = 0; i < paramString.length() / 2; i++)
      {
        int j = i * 2;
        int k = j + 1;
        arrayOfByte[i] = ((byte)(byte)(Integer.parseInt(paramString.substring(j, k), 16) * 16 + Integer.parseInt(paramString.substring(k, j + 2), 16)));
      }
      return arrayOfByte;
    }
    return null;
  }
  
  public static String d(String paramString1, String paramString2)
  {
    return new String(a(Base64.decode(paramString1, 10), paramString2));
  }
  
  private static byte[] e(String paramString1, String paramString2)
  {
    return a(paramString1.getBytes(), paramString2.getBytes());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.d.a
 * JD-Core Version:    0.7.0.1
 */