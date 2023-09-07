package com.xiaomi.onetrack.d;

import com.xiaomi.onetrack.util.p;
import java.io.UnsupportedEncodingException;

public class c
{
  private static final String a = "Base64Util";
  private static char[] b = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static byte[] c = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1 };
  
  public static String a(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramArrayOfByte.length;
    int m;
    for (int j = 0; j < i; j = m + 1)
    {
      int k = j + 1;
      j = paramArrayOfByte[j] & 0xFF;
      if (k == i)
      {
        localStringBuffer.append(b[(j >>> 2)]);
        localStringBuffer.append(b[((j & 0x3) << 4)]);
        localStringBuffer.append("==");
        break;
      }
      m = k + 1;
      k = paramArrayOfByte[k] & 0xFF;
      if (m == i)
      {
        localStringBuffer.append(b[(j >>> 2)]);
        localStringBuffer.append(b[((j & 0x3) << 4 | (k & 0xF0) >>> 4)]);
        localStringBuffer.append(b[((k & 0xF) << 2)]);
        localStringBuffer.append("=");
        break;
      }
      int n = paramArrayOfByte[m] & 0xFF;
      localStringBuffer.append(b[(j >>> 2)]);
      localStringBuffer.append(b[((j & 0x3) << 4 | (k & 0xF0) >>> 4)]);
      localStringBuffer.append(b[((k & 0xF) << 2 | (n & 0xC0) >>> 6)]);
      localStringBuffer.append(b[(n & 0x3F)]);
    }
    return localStringBuffer.toString();
  }
  
  public static byte[] a()
  {
    return new byte[] { 84, 123, 100, 101, 118, 33, 80, 100, 101, 116, 116, 37, 94, 52, 77, 73 };
  }
  
  public static byte[] a(String paramString)
  {
    try
    {
      paramString = b(paramString);
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      p.b(p.a("Base64Util"), "decode e", paramString);
    }
    return new byte[0];
  }
  
  private static byte[] b(String paramString)
    throws UnsupportedEncodingException
  {
    StringBuffer localStringBuffer = new StringBuffer();
    paramString = paramString.getBytes("US-ASCII");
    int i = paramString.length;
    int j = 0;
    while (j < i)
    {
      byte[] arrayOfByte;
      int m;
      for (int k = j;; k = j)
      {
        arrayOfByte = c;
        j = k + 1;
        m = arrayOfByte[paramString[k]];
        if ((j >= i) || (m != -1)) {
          break;
        }
      }
      k = j;
      if (m == -1) {
        break;
      }
      int n;
      for (;;)
      {
        arrayOfByte = c;
        j = k + 1;
        n = arrayOfByte[paramString[k]];
        if ((j >= i) || (n != -1)) {
          break;
        }
        k = j;
      }
      if (n == -1) {
        break;
      }
      localStringBuffer.append((char)(m << 2 | (n & 0x30) >>> 4));
      for (k = j;; k = j)
      {
        j = k + 1;
        k = paramString[k];
        if (k == 61) {
          return localStringBuffer.toString().getBytes("iso8859-1");
        }
        m = c[k];
        if ((j >= i) || (m != -1)) {
          break;
        }
      }
      if (m == -1) {
        break;
      }
      localStringBuffer.append((char)((n & 0xF) << 4 | (m & 0x3C) >>> 2));
      for (k = j;; k = j)
      {
        j = k + 1;
        k = paramString[k];
        if (k == 61) {
          return localStringBuffer.toString().getBytes("iso8859-1");
        }
        k = c[k];
        if ((j >= i) || (k != -1)) {
          break;
        }
      }
      if (k == -1) {
        break;
      }
      localStringBuffer.append((char)(k | (m & 0x3) << 6));
    }
    return localStringBuffer.toString().getBytes("iso8859-1");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.d.c
 * JD-Core Version:    0.7.0.1
 */