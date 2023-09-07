package com.xiaomi.phonenum.utils;

import android.text.TextUtils;
import android.util.Base64;
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
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

public class RSAEncryptUtil
{
  private static String c = "-----BEGIN CERTIFICATE-----\nMIICDzCCAXigAwIBAgIEWMX4OjANBgkqhkiG9w0BAQUFADBMMQswCQYDVQQGEwJD\nTjEPMA0GA1UEChMGeGlhb21pMQ8wDQYDVQQLEwZ4aWFvbWkxGzAZBgNVBAMTEmFj\nY291bnQueGlhb21pLmNvbTAeFw0xNzAzMTMwMTM5MDZaFw0xODAzMTMwMTM5MDZa\nMEwxCzAJBgNVBAYTAkNOMQ8wDQYDVQQKEwZ4aWFvbWkxDzANBgNVBAsTBnhpYW9t\naTEbMBkGA1UEAxMSYWNjb3VudC54aWFvbWkuY29tMIGfMA0GCSqGSIb3DQEBAQUA\nA4GNADCBiQKBgQCRDQSxAwWUmA57Isfphgl7H+QHgw9qObsvZM0Xx1YeDzKYVB62\nypGPcPfxnvD0+EfpdhbsMQYeO495BPPzFk+TsFJl4aR47k9sstxrIu7AFeFbdvGg\nubcEu3y/cAk7CcFE7aqKaW7+WFJzLaPVTj6tn0IUe7lFpHXnBFkpzZMVxwIDAQAB\nMA0GCSqGSIb3DQEBBQUAA4GBAICkoEOZ9OtLeZDSQpTqzq8GfU19C/aJCD6Ex7sl\nYqqXVn/p6AozxihEyvIilM56hyaKlLzNJdxPVRYUim6nv6r+kOwE8i7yDRAfcaZD\nnbBeTATPI7E3iKXLF64gjm3Syq8Pw30Yi2azEdB9U+57GBRa0cxAU6wfhn5GSXM6\nW+j0\n-----END CERTIFICATE-----\n";
  private static volatile PublicKey d;
  private final SecretKey a;
  private final String b;
  
  public RSAEncryptUtil()
    throws RSAEncryptUtil.EncryptException
  {
    SecretKey localSecretKey = g();
    this.a = localSecretKey;
    this.b = i(Base64.encodeToString(localSecretKey.getEncoded(), 10), h());
  }
  
  private static String b(String paramString, SecretKey paramSecretKey)
    throws RSAEncryptUtil.EncryptException
  {
    paramSecretKey = new AESCoder(paramSecretKey.getEncoded());
    try
    {
      paramString = paramSecretKey.a(paramString);
      return paramString;
    }
    catch (AESCoder.CipherException paramString)
    {
      throw new EncryptException(paramString);
    }
  }
  
  private static String c(String paramString, SecretKey paramSecretKey)
    throws RSAEncryptUtil.EncryptException
  {
    paramSecretKey = new AESCoder(paramSecretKey.getEncoded());
    try
    {
      paramString = paramSecretKey.c(paramString);
      return paramString;
    }
    catch (AESCoder.CipherException paramString)
    {
      throw new EncryptException(paramString);
    }
  }
  
  private static String e(String paramString1, Key paramKey, String paramString2)
    throws RSAEncryptUtil.EncryptException
  {
    if (TextUtils.isEmpty(paramString1)) {
      return "";
    }
    try
    {
      paramString1 = new String(Base64.encode(f(paramString1.getBytes("UTF-8"), paramKey, paramString2), 10), "UTF-8");
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new EncryptException(paramString1);
    }
  }
  
  private static byte[] f(byte[] paramArrayOfByte, Key paramKey, String paramString)
    throws RSAEncryptUtil.EncryptException
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
  
  private static SecretKey g()
    throws RSAEncryptUtil.EncryptException
  {
    try
    {
      Object localObject = KeyGenerator.getInstance("AES");
      new SecureRandom();
      ((KeyGenerator)localObject).init(128);
      localObject = ((KeyGenerator)localObject).generateKey();
      return localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new EncryptException(localNoSuchAlgorithmException);
    }
  }
  
  private static PublicKey h()
    throws RSAEncryptUtil.EncryptException
  {
    if (d != null) {
      return d;
    }
    try
    {
      CertificateFactory localCertificateFactory = CertificateFactory.getInstance("X.509");
      Object localObject = new java/io/ByteArrayInputStream;
      ((ByteArrayInputStream)localObject).<init>(c.getBytes("UTF-8"));
      d = ((X509Certificate)localCertificateFactory.generateCertificate((InputStream)localObject)).getPublicKey();
      localObject = d;
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
  
  private static String i(String paramString, PublicKey paramPublicKey)
    throws RSAEncryptUtil.EncryptException
  {
    return e(paramString, paramPublicKey, "RSA/ECB/PKCS1Padding");
  }
  
  public String a(String paramString)
    throws RSAEncryptUtil.EncryptException
  {
    return b(paramString, this.a);
  }
  
  public a d(String paramString)
    throws RSAEncryptUtil.EncryptException
  {
    a locala = new a();
    locala.a = c(paramString, this.a);
    locala.b = this.b;
    return locala;
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
 * Qualified Name:     com.xiaomi.phonenum.utils.RSAEncryptUtil
 * JD-Core Version:    0.7.0.1
 */