package com.xiaomi.accountsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.TreeMap;

public class d
{
  public static String a(long paramLong)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    Random localRandom = new Random();
    try
    {
      localDataOutputStream.writeLong(localRandom.nextLong());
      localDataOutputStream.writeInt((int)(paramLong / 60000L));
      localDataOutputStream.flush();
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return Base64.encodeToString(localByteArrayOutputStream.toByteArray(), 10);
  }
  
  public static String b(String paramString1, String paramString2, Map<String, String> paramMap, String paramString3)
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
        paramString2 = new TreeMap(paramMap).entrySet().iterator();
        while (paramString2.hasNext())
        {
          paramString1 = (Map.Entry)paramString2.next();
          localArrayList.add(String.format("%s=%s", new Object[] { paramString1.getKey(), paramString1.getValue() }));
        }
      }
      localArrayList.add(paramString3);
      paramString1 = new StringBuilder();
      paramString2 = localArrayList.iterator();
      while (paramString2.hasNext())
      {
        paramMap = (String)paramString2.next();
        if (i == 0) {
          paramString1.append('&');
        }
        paramString1.append(paramMap);
        i = 0;
      }
      return f(paramString1.toString());
    }
    throw new InvalidParameterException("security is not nullable");
  }
  
  public static String c(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length != 0)) {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
        localMessageDigest.update(paramArrayOfByte);
        paramArrayOfByte = d(localMessageDigest.digest());
        return paramArrayOfByte;
      }
      catch (Exception paramArrayOfByte)
      {
        b.h("AccountCoder", "getDataMd5Digest", paramArrayOfByte);
      }
    }
    return null;
  }
  
  public static String d(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      int j = (paramArrayOfByte[i] & 0xF0) >> 4;
      if ((j >= 0) && (j <= 9)) {
        j += 48;
      } else {
        j = j + 97 - 10;
      }
      localStringBuilder.append((char)j);
      j = paramArrayOfByte[i] & 0xF;
      if ((j >= 0) && (j <= 9)) {
        j += 48;
      } else {
        j = j + 97 - 10;
      }
      localStringBuilder.append((char)j);
    }
    return localStringBuilder.toString();
  }
  
  public static String e(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    paramString = c(paramString.getBytes());
    if (paramString == null) {
      return null;
    }
    return paramString.toUpperCase();
  }
  
  public static String f(String paramString)
  {
    return g(paramString, 2);
  }
  
  public static String g(String paramString, int paramInt)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = Base64.encodeToString(h(paramString.getBytes("UTF-8")), paramInt);
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      paramString.printStackTrace();
      throw new IllegalStateException("failed to SHA1");
    }
  }
  
  public static byte[] h(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length != 0)) {
      try
      {
        paramArrayOfByte = MessageDigest.getInstance("SHA1").digest(paramArrayOfByte);
        return paramArrayOfByte;
      }
      catch (NoSuchAlgorithmException paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
        throw new IllegalStateException("failed to SHA1");
      }
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.d
 * JD-Core Version:    0.7.0.1
 */