package com.sun.mail.util;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class l
  extends FilterOutputStream
{
  private static final char[] e = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private int a = 0;
  private int b;
  private boolean c = false;
  private boolean d = false;
  
  public l(OutputStream paramOutputStream, int paramInt)
  {
    super(paramOutputStream);
    this.b = (paramInt - 1);
  }
  
  protected void c(int paramInt, boolean paramBoolean)
    throws IOException
  {
    int i;
    if (paramBoolean)
    {
      i = this.a + 3;
      this.a = i;
      if (i > this.b)
      {
        this.out.write(61);
        this.out.write(13);
        this.out.write(10);
        this.a = 3;
      }
      this.out.write(61);
      OutputStream localOutputStream = this.out;
      char[] arrayOfChar = e;
      localOutputStream.write(arrayOfChar[(paramInt >> 4)]);
      this.out.write(arrayOfChar[(paramInt & 0xF)]);
    }
    else
    {
      i = this.a + 1;
      this.a = i;
      if (i > this.b)
      {
        this.out.write(61);
        this.out.write(13);
        this.out.write(10);
        this.a = 1;
      }
      this.out.write(paramInt);
    }
  }
  
  public void close()
    throws IOException
  {
    flush();
    this.out.close();
  }
  
  public void flush()
    throws IOException
  {
    if (this.c)
    {
      c(32, true);
      this.c = false;
    }
    this.out.flush();
  }
  
  public void write(int paramInt)
    throws IOException
  {
    throw null;
  }
  
  public void write(byte[] paramArrayOfByte)
    throws IOException
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    for (int i = 0; i < paramInt2; i++) {
      write(paramArrayOfByte[(paramInt1 + i)]);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.l
 * JD-Core Version:    0.7.0.1
 */