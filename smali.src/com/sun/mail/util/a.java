package com.sun.mail.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class a
{
  public static byte[] a(InputStream paramInputStream)
    throws IOException
  {
    int i;
    byte[] arrayOfByte;
    if ((paramInputStream instanceof ByteArrayInputStream))
    {
      i = paramInputStream.available();
      arrayOfByte = new byte[i];
      paramInputStream.read(arrayOfByte, 0, i);
      paramInputStream = arrayOfByte;
    }
    else
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      arrayOfByte = new byte[1024];
      for (;;)
      {
        i = paramInputStream.read(arrayOfByte, 0, 1024);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      paramInputStream = localByteArrayOutputStream.toByteArray();
    }
    return paramInputStream;
  }
  
  public static byte[] b(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    int i = arrayOfChar.length;
    paramString = new byte[i];
    for (int j = 0; j < i; j++) {
      paramString[j] = ((byte)(byte)arrayOfChar[j]);
    }
    return paramString;
  }
  
  public static int c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws NumberFormatException
  {
    return d(paramArrayOfByte, paramInt1, paramInt2, 10);
  }
  
  public static int d(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
    throws NumberFormatException
  {
    if (paramArrayOfByte != null)
    {
      if (paramInt2 > paramInt1)
      {
        int i = paramArrayOfByte[paramInt1];
        int j = 0;
        int k;
        int m;
        if (i == 45)
        {
          k = -2147483648;
          i = paramInt1 + 1;
          m = 1;
        }
        else
        {
          k = -2147483647;
          i = paramInt1;
          m = 0;
        }
        int n = k / paramInt3;
        int i1 = i;
        if (i < paramInt2)
        {
          i1 = Character.digit((char)paramArrayOfByte[i], paramInt3);
          if (i1 >= 0)
          {
            j = -i1;
            i1 = i + 1;
          }
          else
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("illegal number: ");
            localStringBuilder.append(e(paramArrayOfByte, paramInt1, paramInt2));
            throw new NumberFormatException(localStringBuilder.toString());
          }
        }
        while (i1 < paramInt2)
        {
          i = Character.digit((char)paramArrayOfByte[i1], paramInt3);
          if (i >= 0)
          {
            if (j >= n)
            {
              j *= paramInt3;
              if (j >= k + i)
              {
                j -= i;
                i1++;
              }
              else
              {
                throw new NumberFormatException("illegal number");
              }
            }
            else
            {
              throw new NumberFormatException("illegal number");
            }
          }
          else {
            throw new NumberFormatException("illegal number");
          }
        }
        if (m != 0)
        {
          if (i1 > paramInt1 + 1) {
            return j;
          }
          throw new NumberFormatException("illegal number");
        }
        return -j;
      }
      throw new NumberFormatException("illegal number");
    }
    throw new NumberFormatException("null");
  }
  
  public static String e(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt2 - paramInt1;
    char[] arrayOfChar = new char[i];
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      arrayOfChar[paramInt2] = ((char)(char)(paramArrayOfByte[paramInt1] & 0xFF));
      paramInt2++;
      paramInt1++;
    }
    return new String(arrayOfChar);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.a
 * JD-Core Version:    0.7.0.1
 */