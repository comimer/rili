package com.xiaomi.phonenum.utils;

import android.util.Base64;
import com.xiaomi.accountsdk.utils.b;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class AESCoder
{
  private SecretKeySpec a;
  
  public AESCoder(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      if (paramArrayOfByte.length != 16) {
        b.g("AESCoder", "aesKey is invalid");
      }
      this.a = new SecretKeySpec(paramArrayOfByte, "AES");
      return;
    }
    throw new SecurityException("aes key is null");
  }
  
  private byte[] b(byte[] paramArrayOfByte)
    throws AESCoder.CipherException
  {
    try
    {
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      IvParameterSpec localIvParameterSpec = new javax/crypto/spec/IvParameterSpec;
      localIvParameterSpec.<init>(e());
      localCipher.init(2, this.a, localIvParameterSpec);
      if (paramArrayOfByte != null) {
        return localCipher.doFinal(paramArrayOfByte);
      }
      paramArrayOfByte = new javax/crypto/IllegalBlockSizeException;
      paramArrayOfByte.<init>("no block data");
      throw paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      throw new CipherException("fail to decrypt by aescoder", paramArrayOfByte);
    }
  }
  
  private byte[] d(byte[] paramArrayOfByte)
    throws AESCoder.CipherException
  {
    try
    {
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      IvParameterSpec localIvParameterSpec = new javax/crypto/spec/IvParameterSpec;
      localIvParameterSpec.<init>(e());
      localCipher.init(1, this.a, localIvParameterSpec);
      paramArrayOfByte = localCipher.doFinal(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      throw new CipherException("fail to encrypt by aescoder", paramArrayOfByte);
    }
  }
  
  private byte[] e()
  {
    return "0102030405060708".getBytes();
  }
  
  public String a(String paramString)
    throws AESCoder.CipherException
  {
    if (paramString == null)
    {
      b.g("AESCoder", "decrypt failed for empty data");
      return null;
    }
    try
    {
      paramString = new String(b(Base64.decode(paramString, 2)), "UTF-8");
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new CipherException("fail to decrypt by aescoder", paramString);
    }
  }
  
  public String c(String paramString)
    throws AESCoder.CipherException
  {
    try
    {
      paramString = Base64.encodeToString(d(paramString.getBytes("UTF-8")), 10);
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new CipherException("fail to encrypt by aescoder", paramString);
    }
  }
  
  public class CipherException
    extends Exception
  {
    private static final long serialVersionUID = -1479750857131098427L;
    
    public CipherException(String paramString)
    {
      super();
    }
    
    public CipherException(String paramString, Throwable paramThrowable)
    {
      super(paramThrowable);
    }
    
    public CipherException(Throwable paramThrowable)
    {
      super();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.phonenum.utils.AESCoder
 * JD-Core Version:    0.7.0.1
 */