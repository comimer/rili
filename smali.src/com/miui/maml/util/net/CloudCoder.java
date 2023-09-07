package com.miui.maml.util.net;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class CloudCoder
{
  private static final Integer INT_0 = Integer.valueOf(0);
  private static final String RC4_ALGORITHM_NAME = "RC4";
  
  public static String generateSignature(String paramString1, String paramString2, Map<String, String> paramMap, String paramString3)
  {
    if (!TextUtils.isEmpty(paramString3))
    {
      ArrayList localArrayList = new ArrayList();
      if (paramString1 != null) {
        localArrayList.add(paramString1.toUpperCase());
      }
      if (paramString2 != null) {
        localArrayList.add(Uri.parse(paramString2).getEncodedPath());
      }
      int i = 1;
      if ((paramMap != null) && (!paramMap.isEmpty()))
      {
        paramString1 = new TreeMap(paramMap).entrySet().iterator();
        while (paramString1.hasNext())
        {
          paramString2 = (Map.Entry)paramString1.next();
          localArrayList.add(String.format("%s=%s", new Object[] { paramString2.getKey(), paramString2.getValue() }));
        }
      }
      localArrayList.add(paramString3);
      paramString1 = new StringBuilder();
      paramMap = localArrayList.iterator();
      while (paramMap.hasNext())
      {
        paramString2 = (String)paramMap.next();
        if (i == 0) {
          paramString1.append('&');
        }
        paramString1.append(paramString2);
        i = 0;
      }
      return hash4SHA1(paramString1.toString());
    }
    throw new InvalidParameterException("security is not nullable");
  }
  
  public static String hash4SHA1(String paramString)
  {
    try
    {
      paramString = Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(paramString.getBytes("UTF-8")), 2);
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      paramString.printStackTrace();
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
    }
    throw new IllegalStateException("failed to SHA1");
  }
  
  public static Cipher newAESCipher(String paramString, int paramInt)
  {
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(Base64.decode(paramString, 2), "AES");
    try
    {
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      paramString = new javax/crypto/spec/IvParameterSpec;
      paramString.<init>("0102030405060708".getBytes());
      localCipher.init(paramInt, localSecretKeySpec, paramString);
      return localCipher;
    }
    catch (InvalidKeyException paramString)
    {
      paramString.printStackTrace();
    }
    catch (InvalidAlgorithmParameterException paramString)
    {
      paramString.printStackTrace();
    }
    catch (NoSuchPaddingException paramString)
    {
      paramString.printStackTrace();
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.net.CloudCoder
 * JD-Core Version:    0.7.0.1
 */