package com.sun.mail.util;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class c
  extends FilterOutputStream
{
  private static byte[] h = { 13, 10 };
  private static final char[] i = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private byte[] a = new byte[3];
  private int b = 0;
  private byte[] c;
  private int d = 0;
  private int e;
  private int f;
  private boolean g = false;
  
  public c(OutputStream paramOutputStream, int paramInt)
  {
    super(paramOutputStream);
    int j;
    if (paramInt != 2147483647)
    {
      j = paramInt;
      if (paramInt >= 4) {}
    }
    else
    {
      this.g = true;
      j = 76;
    }
    paramInt = j / 4 * 4;
    this.e = paramInt;
    this.f = (paramInt / 4 * 3);
    if (this.g)
    {
      this.c = new byte[paramInt];
    }
    else
    {
      paramOutputStream = new byte[paramInt + 2];
      this.c = paramOutputStream;
      paramOutputStream[paramInt] = ((byte)13);
      paramOutputStream[(paramInt + 1)] = ((byte)10);
    }
  }
  
  private void c()
    throws IOException
  {
    int j = e(this.b);
    this.out.write(d(this.a, 0, this.b, this.c), 0, j);
    j = this.d + j;
    this.d = j;
    if (j >= this.e)
    {
      if (!this.g) {
        this.out.write(h);
      }
      this.d = 0;
    }
  }
  
  private static byte[] d(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = paramArrayOfByte2;
    if (paramArrayOfByte2 == null) {
      arrayOfByte = new byte[e(paramInt2)];
    }
    int j = 0;
    int k = paramInt1;
    paramInt1 = j;
    while (paramInt2 >= 3)
    {
      j = k + 1;
      int m = paramArrayOfByte1[k];
      k = j + 1;
      j = ((m & 0xFF) << 8 | paramArrayOfByte1[j] & 0xFF) << 8 | paramArrayOfByte1[k] & 0xFF;
      paramArrayOfByte2 = i;
      arrayOfByte[(paramInt1 + 3)] = ((byte)(byte)paramArrayOfByte2[(j & 0x3F)]);
      j >>= 6;
      arrayOfByte[(paramInt1 + 2)] = ((byte)(byte)paramArrayOfByte2[(j & 0x3F)]);
      j >>= 6;
      arrayOfByte[(paramInt1 + 1)] = ((byte)(byte)paramArrayOfByte2[(j & 0x3F)]);
      arrayOfByte[(paramInt1 + 0)] = ((byte)(byte)paramArrayOfByte2[(j >> 6 & 0x3F)]);
      paramInt2 -= 3;
      paramInt1 += 4;
      k++;
    }
    if (paramInt2 == 1)
    {
      paramInt2 = (paramArrayOfByte1[k] & 0xFF) << 4;
      arrayOfByte[(paramInt1 + 3)] = ((byte)61);
      arrayOfByte[(paramInt1 + 2)] = ((byte)61);
      paramArrayOfByte1 = i;
      arrayOfByte[(paramInt1 + 1)] = ((byte)(byte)paramArrayOfByte1[(paramInt2 & 0x3F)]);
      arrayOfByte[(paramInt1 + 0)] = ((byte)(byte)paramArrayOfByte1[(paramInt2 >> 6 & 0x3F)]);
    }
    else if (paramInt2 == 2)
    {
      paramInt2 = paramArrayOfByte1[k];
      paramInt2 = (paramArrayOfByte1[(k + 1)] & 0xFF | (paramInt2 & 0xFF) << 8) << 2;
      arrayOfByte[(paramInt1 + 3)] = ((byte)61);
      paramArrayOfByte1 = i;
      arrayOfByte[(paramInt1 + 2)] = ((byte)(byte)paramArrayOfByte1[(paramInt2 & 0x3F)]);
      paramInt2 >>= 6;
      arrayOfByte[(paramInt1 + 1)] = ((byte)(byte)paramArrayOfByte1[(paramInt2 & 0x3F)]);
      arrayOfByte[(paramInt1 + 0)] = ((byte)(byte)paramArrayOfByte1[(paramInt2 >> 6 & 0x3F)]);
    }
    return arrayOfByte;
  }
  
  private static int e(int paramInt)
  {
    return (paramInt + 2) / 3 * 4;
  }
  
  public void close()
    throws IOException
  {
    try
    {
      flush();
      if ((this.d > 0) && (!this.g))
      {
        this.out.write(h);
        this.out.flush();
      }
      this.out.close();
      return;
    }
    finally {}
  }
  
  public void flush()
    throws IOException
  {
    try
    {
      if (this.b > 0)
      {
        c();
        this.b = 0;
      }
      this.out.flush();
      return;
    }
    finally {}
  }
  
  public void write(int paramInt)
    throws IOException
  {
    try
    {
      byte[] arrayOfByte = this.a;
      int j = this.b;
      int k = j + 1;
      this.b = k;
      arrayOfByte[j] = ((byte)(byte)paramInt);
      if (k == 3)
      {
        c();
        this.b = 0;
      }
      return;
    }
    finally {}
  }
  
  public void write(byte[] paramArrayOfByte)
    throws IOException
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int j = paramInt2 + paramInt1;
    paramInt2 = paramInt1;
    try
    {
      while ((this.b != 0) && (paramInt2 < j))
      {
        write(paramArrayOfByte[paramInt2]);
        paramInt2++;
      }
      int k = (this.e - this.d) / 4 * 3;
      int m = paramInt2 + k;
      paramInt1 = paramInt2;
      if (m <= j)
      {
        int n = e(k);
        paramInt1 = n;
        if (!this.g)
        {
          byte[] arrayOfByte = this.c;
          int i1 = n + 1;
          arrayOfByte[n] = ((byte)13);
          paramInt1 = i1 + 1;
          arrayOfByte[i1] = ((byte)10);
        }
        this.out.write(d(paramArrayOfByte, paramInt2, k, this.c), 0, paramInt1);
        this.d = 0;
        paramInt1 = m;
      }
      for (;;)
      {
        paramInt2 = this.f;
        if (paramInt1 + paramInt2 > j) {
          break;
        }
        this.out.write(d(paramArrayOfByte, paramInt1, paramInt2, this.c));
        paramInt1 += this.f;
      }
      paramInt2 = paramInt1;
      if (paramInt1 + 3 <= j)
      {
        paramInt2 = (j - paramInt1) / 3 * 3;
        m = e(paramInt2);
        this.out.write(d(paramArrayOfByte, paramInt1, paramInt2, this.c), 0, m);
        paramInt2 = paramInt1 + paramInt2;
        this.d += m;
      }
      while (paramInt2 < j)
      {
        write(paramArrayOfByte[paramInt2]);
        paramInt2++;
      }
      return;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.c
 * JD-Core Version:    0.7.0.1
 */