package com.xiaomi.onetrack.util;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

public class m
{
  public static final int a = -1;
  private static final String b = "onetrack";
  private static final int c = 4096;
  
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    return a(paramInputStream, paramOutputStream, 4096);
  }
  
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt)
    throws IOException
  {
    byte[] arrayOfByte = new byte[paramInt];
    for (long l = 0L;; l += paramInt)
    {
      paramInt = paramInputStream.read(arrayOfByte);
      if (-1 == paramInt) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, paramInt);
    }
    return l;
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return "";
    }
    StringBuilder localStringBuilder1 = new StringBuilder();
    int i = paramArrayOfByte.length;
    for (int j = 0; j < i; j++)
    {
      StringBuilder localStringBuilder2;
      for (String str = Integer.toHexString(paramArrayOfByte[j] & 0xFF); str.length() < 2; str = localStringBuilder2.toString())
      {
        localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append("0");
        localStringBuilder2.append(str);
      }
      localStringBuilder1.append(str);
    }
    return localStringBuilder1.toString();
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {
      try
      {
        paramCloseable.close();
      }
      catch (Exception paramCloseable)
      {
        Log.e("onetrack", "closeQuietly e", paramCloseable);
      }
    }
  }
  
  public static void a(InputStream paramInputStream)
  {
    a(paramInputStream);
  }
  
  public static void a(OutputStream paramOutputStream)
  {
    a(paramOutputStream);
  }
  
  public static void a(HttpURLConnection paramHttpURLConnection)
  {
    if (paramHttpURLConnection != null) {
      try
      {
        paramHttpURLConnection.disconnect();
      }
      catch (Exception paramHttpURLConnection)
      {
        Log.e("onetrack", "close e", paramHttpURLConnection);
      }
    }
  }
  
  public static void b(Closeable paramCloseable)
  {
    if (paramCloseable != null) {
      try
      {
        paramCloseable.close();
      }
      catch (Exception paramCloseable)
      {
        Log.e("onetrack", "closeSafely e", paramCloseable);
      }
    }
  }
  
  public static byte[] b(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    a(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.m
 * JD-Core Version:    0.7.0.1
 */