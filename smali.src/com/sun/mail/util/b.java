package com.sun.mail.util;

import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class b
  extends FilterInputStream
{
  private static final char[] h = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] i = new byte[256];
  private byte[] a = new byte[3];
  private int b = 0;
  private int c = 0;
  private byte[] d = new byte[8190];
  private int e = 0;
  private int f = 0;
  private boolean g = false;
  
  static
  {
    int j = 0;
    int m;
    for (int k = 0;; k++)
    {
      m = j;
      if (k >= 255) {
        break;
      }
      i[k] = ((byte)-1);
    }
    for (;;)
    {
      char[] arrayOfChar = h;
      if (m >= arrayOfChar.length) {
        break;
      }
      i[arrayOfChar[m]] = ((byte)(byte)m);
      m++;
    }
  }
  
  public b(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  private int c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int j = paramInt1;
    int k = paramInt2;
    for (paramInt2 = j; k >= 3; paramInt2 += 3)
    {
      int m = 0;
      int n = 0;
      j = n;
      while (n < 4)
      {
        int i1 = d();
        if ((i1 != -1) && (i1 != -2))
        {
          n++;
          j = j << 6 | i1;
        }
        else
        {
          if (i1 == -1)
          {
            if (n == 0) {
              return paramInt2 - paramInt1;
            }
            if (this.g)
            {
              m = 1;
            }
            else
            {
              paramArrayOfByte = new StringBuilder();
              paramArrayOfByte.append("BASE64Decoder: Error in encoded stream: needed 4 valid base64 characters but only got ");
              paramArrayOfByte.append(n);
              paramArrayOfByte.append(" before EOF");
              paramArrayOfByte.append(e());
              throw new DecodingException(paramArrayOfByte.toString());
            }
          }
          else
          {
            if ((n < 2) && (!this.g))
            {
              paramArrayOfByte = new StringBuilder();
              paramArrayOfByte.append("BASE64Decoder: Error in encoded stream: needed at least 2 valid base64 characters, but only got ");
              paramArrayOfByte.append(n);
              paramArrayOfByte.append(" before padding character (=)");
              paramArrayOfByte.append(e());
              throw new DecodingException(paramArrayOfByte.toString());
            }
            if (n == 0) {
              return paramInt2 - paramInt1;
            }
          }
          i1 = n - 1;
          k = i1;
          if (i1 == 0) {
            k = 1;
          }
          n++;
          j <<= 6;
          while (n < 4)
          {
            if (m == 0)
            {
              i1 = d();
              if (i1 == -1)
              {
                if (!this.g)
                {
                  paramArrayOfByte = new StringBuilder();
                  paramArrayOfByte.append("BASE64Decoder: Error in encoded stream: hit EOF while looking for padding characters (=)");
                  paramArrayOfByte.append(e());
                  throw new DecodingException(paramArrayOfByte.toString());
                }
              }
              else if ((i1 != -2) && (!this.g))
              {
                paramArrayOfByte = new StringBuilder();
                paramArrayOfByte.append("BASE64Decoder: Error in encoded stream: found valid base64 character after a padding character (=)");
                paramArrayOfByte.append(e());
                throw new DecodingException(paramArrayOfByte.toString());
              }
            }
            j <<= 6;
            n++;
          }
          j >>= 8;
          if (k == 2) {
            paramArrayOfByte[(paramInt2 + 1)] = ((byte)(byte)(j & 0xFF));
          }
          paramArrayOfByte[paramInt2] = ((byte)(byte)(j >> 8 & 0xFF));
          return paramInt2 + k - paramInt1;
        }
      }
      paramArrayOfByte[(paramInt2 + 2)] = ((byte)(byte)(j & 0xFF));
      j >>= 8;
      paramArrayOfByte[(paramInt2 + 1)] = ((byte)(byte)(j & 0xFF));
      paramArrayOfByte[paramInt2] = ((byte)(byte)(j >> 8 & 0xFF));
      k -= 3;
    }
    return paramInt2 - paramInt1;
  }
  
  private int d()
    throws IOException
  {
    int j;
    do
    {
      if (this.e >= this.f) {
        try
        {
          j = this.in.read(this.d);
          this.f = j;
          if (j <= 0) {
            return -1;
          }
          this.e = 0;
        }
        catch (EOFException localEOFException)
        {
          return -1;
        }
      }
      byte[] arrayOfByte = this.d;
      j = this.e;
      this.e = (j + 1);
      j = arrayOfByte[j] & 0xFF;
      if (j == 61) {
        return -2;
      }
      j = i[j];
    } while (j == -1);
    return j;
  }
  
  private String e()
  {
    int j = this.e;
    int k = j;
    if (j > 10) {
      k = 10;
    }
    Object localObject = "";
    if (k > 0)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("");
      ((StringBuilder)localObject).append(", the ");
      ((StringBuilder)localObject).append(k);
      ((StringBuilder)localObject).append(" most recent characters were: \"");
      localObject = ((StringBuilder)localObject).toString();
      for (k = this.e - k; k < this.e; k++)
      {
        char c1 = (char)(this.d[k] & 0xFF);
        if (c1 != '\t')
        {
          if (c1 != '\n')
          {
            if (c1 != '\r')
            {
              if ((c1 >= ' ') && (c1 < ''))
              {
                localStringBuilder = new StringBuilder();
                localStringBuilder.append((String)localObject);
                localStringBuilder.append(c1);
                localObject = localStringBuilder.toString();
              }
              else
              {
                localStringBuilder = new StringBuilder();
                localStringBuilder.append((String)localObject);
                localStringBuilder.append("\\");
                localStringBuilder.append(c1);
                localObject = localStringBuilder.toString();
              }
            }
            else
            {
              localStringBuilder = new StringBuilder();
              localStringBuilder.append((String)localObject);
              localStringBuilder.append("\\r");
              localObject = localStringBuilder.toString();
            }
          }
          else
          {
            localStringBuilder = new StringBuilder();
            localStringBuilder.append((String)localObject);
            localStringBuilder.append("\\n");
            localObject = localStringBuilder.toString();
          }
        }
        else
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append((String)localObject);
          localStringBuilder.append("\\t");
          localObject = localStringBuilder.toString();
        }
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append((String)localObject);
      localStringBuilder.append("\"");
      localObject = localStringBuilder.toString();
    }
    return localObject;
  }
  
  public int available()
    throws IOException
  {
    return this.in.available() * 3 / 4 + (this.b - this.c);
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
    throws IOException
  {
    if (this.c >= this.b)
    {
      arrayOfByte = this.a;
      j = c(arrayOfByte, 0, arrayOfByte.length);
      this.b = j;
      if (j <= 0) {
        return -1;
      }
      this.c = 0;
    }
    byte[] arrayOfByte = this.a;
    int j = this.c;
    this.c = (j + 1);
    return arrayOfByte[j] & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 == 0) {
      return 0;
    }
    for (int j = paramInt1;; j++)
    {
      k = this.c;
      m = this.b;
      if ((k >= m) || (paramInt2 <= 0)) {
        break;
      }
      byte[] arrayOfByte = this.a;
      this.c = (k + 1);
      paramArrayOfByte[j] = ((byte)arrayOfByte[k]);
      paramInt2--;
    }
    if (k >= m)
    {
      this.c = 0;
      this.b = 0;
    }
    int n = paramInt2 / 3 * 3;
    int k = j;
    int m = paramInt2;
    if (n > 0)
    {
      int i1 = c(paramArrayOfByte, j, n);
      j += i1;
      m = paramInt2 - i1;
      k = j;
      if (i1 != n)
      {
        if (j == paramInt1) {
          return -1;
        }
        return j - paramInt1;
      }
    }
    while (m > 0)
    {
      paramInt2 = read();
      if (paramInt2 == -1) {
        break;
      }
      paramArrayOfByte[k] = ((byte)(byte)paramInt2);
      m--;
      k++;
    }
    if (k == paramInt1) {
      return -1;
    }
    return k - paramInt1;
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    long l = 0L;
    while ((paramLong > 0L) && (read() >= 0))
    {
      l += 1L;
      paramLong -= 1L;
    }
    return l;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.b
 * JD-Core Version:    0.7.0.1
 */