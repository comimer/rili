package com.xiaomi.verificationsdk.internal;

import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.accountsdk.request.CipherException;
import com.xiaomi.accountsdk.utils.a;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.UUID;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

public class EnvEncryptUtils
{
  private static String a = "-----BEGIN CERTIFICATE-----\nMIIDXTCCAkWgAwIBAgIJAOMjETkYAg3lMA0GCSqGSIb3DQEBCwUAMEUxCzAJBgNV\nBAYTAkFVMRMwEQYDVQQIDApTb21lLVN0YXRlMSEwHwYDVQQKDBhJbnRlcm5ldCBX\naWRnaXRzIFB0eSBMdGQwHhcNMTgwMTExMDk0ODQ3WhcNMTgwMjEwMDk0ODQ3WjBF\nMQswCQYDVQQGEwJBVTETMBEGA1UECAwKU29tZS1TdGF0ZTEhMB8GA1UECgwYSW50\nZXJuZXQgV2lkZ2l0cyBQdHkgTHRkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB\nCgKCAQEArxfNLkuAQ/BYHzkzVwtug+0abmYRBVCEScSzGxJIOsfxVzcuqaKO87H2\no2wBcacD3bRHhMjTkhSEqxPjQ/FEXuJ1cdbmr3+b3EQR6wf/cYcMx2468/QyVoQ7\nBADLSPecQhtgGOllkC+cLYN6Md34Uii6U+VJf0p0q/saxUTZvhR2ka9fqJ4+6C6c\nOghIecjMYQNHIaNW+eSKunfFsXVU+QfMD0q2EM9wo20aLnos24yDzRjh9HJc6xfr\n37jRlv1/boG/EABMG9FnTm35xWrVR0nw3cpYF7GZg13QicS/ZwEsSd4HyboAruMx\nJBPvK3Jdr4ZS23bpN0cavWOJsBqZVwIDAQABo1AwTjAdBgNVHQ4EFgQU0AWcCdJQ\nruwyc3Hjt2dEmYXmUCUwHwYDVR0jBBgwFoAU0AWcCdJQruwyc3Hjt2dEmYXmUCUw\nDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEASssjoOG4RbRjy6ivCDkZ\nteOLur7jQ6/AZru8n8Fow8WGd9zM1uFZs9+c6okvlmUeCPuOiYDxps6xfL23hkQc\nKghkMofjBn2eLoqTiQ+woAoZHAqLuiFUHae85KH7185EV8NTm2LpJJoqh2x5KU4Q\nlCWm+5uadtqPEbO9wmI1er5Kob/njPI0QtQn2/5H9u7t71MCjHIGuQ5OSrZmmyzV\nTFUVbdkf0mwoL44JO7ErbdOQ/nq+dElYiGnq7tI9gdt78k3Pgi7ykU5W7pnDbxLN\no66M6umwCy2ies0zzsxS9pKzurddXd+Zt4NBh74MV0RCf2PbDCtUODTBowLeDluq\nXw==\n-----END CERTIFICATE-----\n";
  private static volatile PublicKey b;
  private static volatile SecretKey c;
  private static volatile String d;
  
  private static String a(String paramString, SecretKey paramSecretKey)
    throws EnvEncryptUtils.EncryptException
  {
    paramSecretKey = new a(paramSecretKey.getEncoded());
    try
    {
      paramString = paramSecretKey.a(paramString);
      return paramString;
    }
    catch (CipherException paramString)
    {
      throw new EncryptException(paramString);
    }
  }
  
  public static a b(String paramString)
    throws EnvEncryptUtils.EncryptException
  {
    a locala = new a();
    try
    {
      if ((c == null) || (d == null))
      {
        c = e();
        d = h(Base64.encodeToString(c.getEncoded(), 10), f());
      }
      locala.a = a(paramString, c);
      locala.b = d;
      return locala;
    }
    finally {}
  }
  
  private static String c(String paramString1, Key paramKey, String paramString2)
    throws EnvEncryptUtils.EncryptException
  {
    if (TextUtils.isEmpty(paramString1)) {
      return "";
    }
    try
    {
      paramString1 = new String(Base64.encode(d(paramString1.getBytes("UTF-8"), paramKey, paramString2), 10), "UTF-8");
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new EncryptException(paramString1);
    }
  }
  
  private static byte[] d(byte[] paramArrayOfByte, Key paramKey, String paramString)
    throws EnvEncryptUtils.EncryptException
  {
    try
    {
      paramString = Cipher.getInstance(paramString);
      paramString.init(1, paramKey);
      paramArrayOfByte = paramString.doFinal(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (InvalidKeyException paramArrayOfByte)
    {
      throw new EncryptException(paramArrayOfByte);
    }
    catch (NoSuchPaddingException paramArrayOfByte)
    {
      throw new EncryptException(paramArrayOfByte);
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      throw new EncryptException(paramArrayOfByte);
    }
    catch (BadPaddingException paramArrayOfByte)
    {
      throw new EncryptException(paramArrayOfByte);
    }
    catch (IllegalBlockSizeException paramArrayOfByte)
    {
      throw new EncryptException(paramArrayOfByte);
    }
  }
  
  private static SecretKey e()
    throws EnvEncryptUtils.EncryptException
  {
    try
    {
      Object localObject = KeyGenerator.getInstance("AES");
      SecureRandom localSecureRandom = new java/security/SecureRandom;
      localSecureRandom.<init>();
      ((KeyGenerator)localObject).init(128, localSecureRandom);
      localObject = ((KeyGenerator)localObject).generateKey();
      return localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new EncryptException(localNoSuchAlgorithmException);
    }
  }
  
  private static PublicKey f()
    throws EnvEncryptUtils.EncryptException
  {
    if (b != null) {
      return b;
    }
    try
    {
      CertificateFactory localCertificateFactory = CertificateFactory.getInstance("X.509");
      Object localObject = new java/io/ByteArrayInputStream;
      ((ByteArrayInputStream)localObject).<init>(a.getBytes("UTF-8"));
      b = ((X509Certificate)localCertificateFactory.generateCertificate((InputStream)localObject)).getPublicKey();
      localObject = b;
      return localObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new EncryptException(localUnsupportedEncodingException);
    }
    catch (CertificateException localCertificateException)
    {
      throw new EncryptException(localCertificateException);
    }
  }
  
  public static String g()
  {
    return UUID.randomUUID().toString().trim().replaceAll("-", "");
  }
  
  private static String h(String paramString, PublicKey paramPublicKey)
    throws EnvEncryptUtils.EncryptException
  {
    return c(paramString, paramPublicKey, "RSA/ECB/PKCS1Padding");
  }
  
  public static class EncryptException
    extends Exception
  {
    public EncryptException(Throwable paramThrowable)
    {
      super();
    }
  }
  
  public static class a
  {
    public String a;
    public String b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.verificationsdk.internal.EnvEncryptUtils
 * JD-Core Version:    0.7.0.1
 */