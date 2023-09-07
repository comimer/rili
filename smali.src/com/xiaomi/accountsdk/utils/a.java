package com.xiaomi.accountsdk.utils;

import android.util.Base64;
import com.xiaomi.accountsdk.request.CipherException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class a
  implements e
{
  public static final byte[] b = "0102030405060708".getBytes();
  private SecretKeySpec a;
  
  public a(String paramString)
  {
    this(paramString);
  }
  
  public a(byte[] paramArrayOfByte)
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
  
  public String a(String paramString)
    throws CipherException
  {
    return d(paramString, f());
  }
  
  public String b(String paramString)
    throws CipherException
  {
    if (paramString == null)
    {
      b.g("AESCoder", "decrypt failed for empty data");
      return null;
    }
    try
    {
      paramString = new String(c(Base64.decode(paramString, 2)), "UTF-8");
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new CipherException("fail to decrypt by aescoder", paramString);
    }
  }
  
  public byte[] c(byte[] paramArrayOfByte)
    throws CipherException
  {
    try
    {
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      IvParameterSpec localIvParameterSpec = new javax/crypto/spec/IvParameterSpec;
      localIvParameterSpec.<init>(f());
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
  
  public String d(String paramString, byte[] paramArrayOfByte)
    throws CipherException
  {
    try
    {
      paramString = Base64.encodeToString(e(paramString.getBytes("UTF-8"), paramArrayOfByte), 2);
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new CipherException("fail to encrypt by aescoder", paramString);
    }
  }
  
  public byte[] e(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws CipherException
  {
    try
    {
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      IvParameterSpec localIvParameterSpec = new javax/crypto/spec/IvParameterSpec;
      localIvParameterSpec.<init>(paramArrayOfByte2);
      localCipher.init(1, this.a, localIvParameterSpec);
      paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (Exception paramArrayOfByte1)
    {
      throw new CipherException("fail to encrypt by aescoder", paramArrayOfByte1);
    }
  }
  
  protected byte[] f()
  {
    return b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.a
 * JD-Core Version:    0.7.0.1
 */