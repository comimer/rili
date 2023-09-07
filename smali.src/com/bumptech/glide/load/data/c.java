package com.bumptech.glide.load.data;

import com.bumptech.glide.load.engine.bitmap_recycle.b;
import java.io.IOException;
import java.io.OutputStream;

public final class c
  extends OutputStream
{
  private final OutputStream a;
  private byte[] b;
  private b c;
  private int d;
  
  public c(OutputStream paramOutputStream, b paramb)
  {
    this(paramOutputStream, paramb, 65536);
  }
  
  c(OutputStream paramOutputStream, b paramb, int paramInt)
  {
    this.a = paramOutputStream;
    this.c = paramb;
    this.b = ((byte[])paramb.d(paramInt, [B.class));
  }
  
  private void c()
    throws IOException
  {
    int i = this.d;
    if (i > 0)
    {
      this.a.write(this.b, 0, i);
      this.d = 0;
    }
  }
  
  private void d()
    throws IOException
  {
    if (this.d == this.b.length) {
      c();
    }
  }
  
  private void e()
  {
    byte[] arrayOfByte = this.b;
    if (arrayOfByte != null)
    {
      this.c.put(arrayOfByte);
      this.b = null;
    }
  }
  
  public void close()
    throws IOException
  {
    try
    {
      flush();
      this.a.close();
      e();
      return;
    }
    finally
    {
      this.a.close();
    }
  }
  
  public void flush()
    throws IOException
  {
    c();
    this.a.flush();
  }
  
  public void write(int paramInt)
    throws IOException
  {
    byte[] arrayOfByte = this.b;
    int i = this.d;
    this.d = (i + 1);
    arrayOfByte[i] = ((byte)(byte)paramInt);
    d();
  }
  
  public void write(byte[] paramArrayOfByte)
    throws IOException
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = 0;
    int k;
    do
    {
      int j = paramInt2 - i;
      k = paramInt1 + i;
      int m = this.d;
      if ((m == 0) && (j >= this.b.length))
      {
        this.a.write(paramArrayOfByte, k, j);
        return;
      }
      j = Math.min(j, this.b.length - m);
      System.arraycopy(paramArrayOfByte, k, this.b, this.d, j);
      this.d += j;
      k = i + j;
      d();
      i = k;
    } while (k < paramInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.data.c
 * JD-Core Version:    0.7.0.1
 */