package com.sun.mail.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class m
  extends FilterInputStream
{
  private String a;
  private int b;
  private byte[] c = new byte[45];
  private int d = 0;
  private int e = 0;
  private boolean f = false;
  private boolean g = false;
  private e h;
  private boolean i;
  private boolean j;
  private String k;
  
  public m(InputStream paramInputStream)
  {
    super(paramInputStream);
    this.h = new e(paramInputStream);
    this.i = h.b("mail.mime.uudecode.ignoreerrors", false);
    this.j = h.b("mail.mime.uudecode.ignoremissingbeginend", false);
  }
  
  private boolean c()
    throws IOException
  {
    if (this.g) {
      return false;
    }
    this.d = 0;
    String str;
    int m;
    int n;
    do
    {
      do
      {
        do
        {
          str = this.k;
          if (str != null) {
            this.k = null;
          } else {
            str = this.h.c();
          }
          if (str == null)
          {
            if (this.j)
            {
              this.g = true;
              return false;
            }
            throw new DecodingException("UUDecoder: Missing end at EOF");
          }
          if (str.equals("end"))
          {
            this.g = true;
            return false;
          }
        } while (str.length() == 0);
        m = str.charAt(0);
        if (m >= 32) {
          break;
        }
      } while (this.i);
      throw new DecodingException("UUDecoder: Buffer format error");
      n = m - 32 & 0x3F;
      if (n == 0)
      {
        str = this.h.c();
        if (((str != null) && (str.equals("end"))) || (this.j))
        {
          this.g = true;
          return false;
        }
        throw new DecodingException("UUDecoder: Missing End after count 0 line");
      }
      m = (n * 8 + 5) / 6;
      if (str.length() >= m + 1) {
        break;
      }
    } while (this.i);
    throw new DecodingException("UUDecoder: Short buffer error");
    int i1 = 1;
    while (this.d < n)
    {
      int i2 = i1 + 1;
      i1 = (byte)(str.charAt(i1) - ' ' & 0x3F);
      m = i2 + 1;
      i2 = (byte)(str.charAt(i2) - ' ' & 0x3F);
      byte[] arrayOfByte = this.c;
      int i3 = this.d;
      int i4 = i3 + 1;
      this.d = i4;
      arrayOfByte[i3] = ((byte)(byte)(i1 << 2 & 0xFC | i2 >>> 4 & 0x3));
      if (i4 < n)
      {
        i1 = m + 1;
        m = (byte)(str.charAt(m) - ' ' & 0x3F);
        arrayOfByte = this.c;
        i3 = this.d;
        this.d = (i3 + 1);
        arrayOfByte[i3] = ((byte)(byte)(i2 << 4 & 0xF0 | m >>> 2 & 0xF));
        i2 = m;
        m = i1;
      }
      i1 = m;
      if (this.d < n)
      {
        i1 = (byte)(str.charAt(m) - ' ' & 0x3F);
        arrayOfByte = this.c;
        i3 = this.d;
        this.d = (i3 + 1);
        arrayOfByte[i3] = ((byte)(byte)(i1 & 0x3F | i2 << 6 & 0xC0));
        i1 = m + 1;
      }
    }
    return true;
  }
  
  private void d()
    throws IOException
  {
    if (this.f) {
      return;
    }
    this.b = 438;
    this.a = "encoder.buf";
    Object localObject;
    label139:
    label172:
    int m;
    do
    {
      do
      {
        localObject = this.h.c();
        if (localObject == null)
        {
          if (this.j)
          {
            this.f = true;
            this.g = true;
            break;
          }
          throw new DecodingException("UUDecoder: Missing begin");
        }
        if (((String)localObject).regionMatches(false, 0, "begin", 0, 5))
        {
          try
          {
            this.b = Integer.parseInt(((String)localObject).substring(6, 9));
          }
          catch (NumberFormatException localNumberFormatException)
          {
            if (!this.i) {
              break label172;
            }
          }
          if (((String)localObject).length() > 10) {
            this.a = ((String)localObject).substring(10);
          } else {
            if (!this.i) {
              break label139;
            }
          }
          this.f = true;
          break;
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("UUDecoder: Missing name: ");
          localStringBuilder.append((String)localObject);
          throw new DecodingException(localStringBuilder.toString());
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("UUDecoder: Error in mode: ");
          ((StringBuilder)localObject).append(localStringBuilder.toString());
          throw new DecodingException(((StringBuilder)localObject).toString());
        }
      } while ((!this.j) || (((String)localObject).length() == 0));
      m = ((((String)localObject).charAt(0) - ' ' & 0x3F) * 8 + 5) / 6;
    } while ((m != 0) && (((String)localObject).length() < m + 1));
    this.k = ((String)localObject);
    this.f = true;
  }
  
  public int available()
    throws IOException
  {
    return this.in.available() * 3 / 4 + (this.d - this.e);
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
    throws IOException
  {
    if (this.e >= this.d)
    {
      d();
      if (!c()) {
        return -1;
      }
      this.e = 0;
    }
    byte[] arrayOfByte = this.c;
    int m = this.e;
    this.e = (m + 1);
    return arrayOfByte[m] & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int n;
    for (int m = 0;; m++)
    {
      n = m;
      if (m >= paramInt2) {
        break;
      }
      n = read();
      if (n == -1)
      {
        n = m;
        if (m != 0) {
          break;
        }
        n = -1;
        break;
      }
      paramArrayOfByte[(paramInt1 + m)] = ((byte)(byte)n);
    }
    return n;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.m
 * JD-Core Version:    0.7.0.1
 */