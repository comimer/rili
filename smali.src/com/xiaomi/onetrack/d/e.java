package com.xiaomi.onetrack.d;

import android.os.Build.VERSION;
import com.xiaomi.onetrack.util.p;
import java.security.KeyFactory;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class e
{
  public static final String a = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCiH0r18h2G+lOzZz0mSZT9liZY\r6ibWUv/biAioduf0zuRbWUYGb3pHobyCOaw2LpVnlf8CeCYtbRJhxL9skOyoU1Qa\rwGtoJzvVR4GbCo1MBTmZ8XThMprr0unRfzsu9GNV4+twciOdS2cNJB7INcwAYBFQ\r9vKpgXFoEjWRhIgwMwIDAQAB\r";
  private static final String b = "RsaUtils";
  private static final String c = "RSA/ECB/PKCS1Padding";
  private static final String d = "BC";
  private static final String e = "RSA";
  
  private static RSAPublicKey a(String paramString)
    throws Exception
  {
    KeyFactory localKeyFactory;
    if (Build.VERSION.SDK_INT >= 28) {
      localKeyFactory = KeyFactory.getInstance("RSA");
    } else {
      localKeyFactory = KeyFactory.getInstance("RSA", "BC");
    }
    return (RSAPublicKey)localKeyFactory.generatePublic(new X509EncodedKeySpec(c.a(paramString)));
  }
  
  public static byte[] a(byte[] paramArrayOfByte)
    throws Exception
  {
    try
    {
      RSAPublicKey localRSAPublicKey = a("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCiH0r18h2G+lOzZz0mSZT9liZY\r6ibWUv/biAioduf0zuRbWUYGb3pHobyCOaw2LpVnlf8CeCYtbRJhxL9skOyoU1Qa\rwGtoJzvVR4GbCo1MBTmZ8XThMprr0unRfzsu9GNV4+twciOdS2cNJB7INcwAYBFQ\r9vKpgXFoEjWRhIgwMwIDAQAB\r");
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding", "BC");
      localCipher.init(1, localRSAPublicKey);
      paramArrayOfByte = localCipher.doFinal(paramArrayOfByte);
    }
    catch (Exception paramArrayOfByte)
    {
      p.b(p.a("RsaUtils"), "RsaUtils encrypt exception:", paramArrayOfByte);
      paramArrayOfByte = null;
    }
    return paramArrayOfByte;
  }
  
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      paramArrayOfByte1 = b(paramArrayOfByte1);
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      localCipher.init(1, paramArrayOfByte1);
      paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte2);
    }
    catch (Exception paramArrayOfByte1)
    {
      p.b("RsaUtils", "RsaUtil encrypt exception:", paramArrayOfByte1);
      paramArrayOfByte1 = null;
    }
    return paramArrayOfByte1;
  }
  
  private static RSAPublicKey b(byte[] paramArrayOfByte)
    throws Exception
  {
    return (RSAPublicKey)KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(paramArrayOfByte));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.d.e
 * JD-Core Version:    0.7.0.1
 */