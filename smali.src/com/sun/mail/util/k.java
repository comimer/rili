package com.sun.mail.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

public class k
  extends FilterInputStream
{
  protected byte[] a = new byte[2];
  protected int b = 0;
  
  public k(InputStream paramInputStream)
  {
    super(new PushbackInputStream(paramInputStream, 2));
  }
  
  public int available()
    throws IOException
  {
    return this.in.available();
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
    throws IOException
  {
    int i = this.b;
    int j = 32;
    if (i > 0)
    {
      this.b = (i - 1);
      return 32;
    }
    i = this.in.read();
    if (i == 32)
    {
      for (;;)
      {
        i = this.in.read();
        if (i != 32) {
          break;
        }
        this.b += 1;
      }
      if ((i != 13) && (i != 10) && (i != -1))
      {
        ((PushbackInputStream)this.in).unread(i);
      }
      else
      {
        this.b = 0;
        j = i;
      }
      return j;
    }
    if (i == 61)
    {
      j = this.in.read();
      if (j == 10) {
        return read();
      }
      if (j == 13)
      {
        j = this.in.read();
        if (j != 10) {
          ((PushbackInputStream)this.in).unread(j);
        }
        return read();
      }
      if (j == -1) {
        return -1;
      }
      byte[] arrayOfByte = this.a;
      arrayOfByte[0] = ((byte)(byte)j);
      arrayOfByte[1] = ((byte)(byte)this.in.read());
      try
      {
        j = a.d(this.a, 0, 2, 16);
        return j;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        ((PushbackInputStream)this.in).unread(this.a);
      }
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int j;
    for (int i = 0;; i++)
    {
      j = i;
      if (i >= paramInt2) {
        break;
      }
      j = read();
      if (j == -1)
      {
        j = i;
        if (i != 0) {
          break;
        }
        j = -1;
        break;
      }
      paramArrayOfByte[(paramInt1 + i)] = ((byte)(byte)j);
    }
    return j;
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
 * Qualified Name:     com.sun.mail.util.k
 * JD-Core Version:    0.7.0.1
 */