package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.engine.bitmap_recycle.b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class RecyclableBufferedInputStream
  extends FilterInputStream
{
  private volatile byte[] a;
  private int b;
  private int c;
  private int d = -1;
  private int e;
  private final b f;
  
  public RecyclableBufferedInputStream(InputStream paramInputStream, b paramb)
  {
    this(paramInputStream, paramb, 65536);
  }
  
  RecyclableBufferedInputStream(InputStream paramInputStream, b paramb, int paramInt)
  {
    super(paramInputStream);
    this.f = paramb;
    this.a = ((byte[])paramb.d(paramInt, [B.class));
  }
  
  private int c(InputStream paramInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    int i = this.d;
    if (i != -1)
    {
      int j = this.e;
      k = this.c;
      if (j - i < k)
      {
        byte[] arrayOfByte;
        if ((i == 0) && (k > paramArrayOfByte.length) && (this.b == paramArrayOfByte.length))
        {
          i = paramArrayOfByte.length * 2;
          if (i <= k) {
            k = i;
          }
          arrayOfByte = (byte[])this.f.d(k, [B.class);
          System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
          this.a = arrayOfByte;
          this.f.put(paramArrayOfByte);
        }
        else
        {
          arrayOfByte = paramArrayOfByte;
          if (i > 0)
          {
            System.arraycopy(paramArrayOfByte, i, paramArrayOfByte, 0, paramArrayOfByte.length - i);
            arrayOfByte = paramArrayOfByte;
          }
        }
        k = this.e - this.d;
        this.e = k;
        this.d = 0;
        this.b = 0;
        i = paramInputStream.read(arrayOfByte, k, arrayOfByte.length - k);
        k = this.e;
        if (i > 0) {
          k += i;
        }
        this.b = k;
        return i;
      }
    }
    int k = paramInputStream.read(paramArrayOfByte);
    if (k > 0)
    {
      this.d = -1;
      this.e = 0;
      this.b = k;
    }
    return k;
  }
  
  private static IOException j()
    throws IOException
  {
    throw new IOException("BufferedInputStream is closed");
  }
  
  public int available()
    throws IOException
  {
    try
    {
      InputStream localInputStream = this.in;
      if ((this.a != null) && (localInputStream != null))
      {
        int i = this.b;
        int j = this.e;
        int k = localInputStream.available();
        return i - j + k;
      }
      throw j();
    }
    finally {}
  }
  
  public void close()
    throws IOException
  {
    if (this.a != null)
    {
      this.f.put(this.a);
      this.a = null;
    }
    InputStream localInputStream = this.in;
    this.in = null;
    if (localInputStream != null) {
      localInputStream.close();
    }
  }
  
  public void d()
  {
    try
    {
      this.c = this.a.length;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void e()
  {
    try
    {
      if (this.a != null)
      {
        this.f.put(this.a);
        this.a = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void mark(int paramInt)
  {
    try
    {
      this.c = Math.max(this.c, paramInt);
      this.d = this.e;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean markSupported()
  {
    return true;
  }
  
  public int read()
    throws IOException
  {
    try
    {
      byte[] arrayOfByte = this.a;
      Object localObject1 = this.in;
      if ((arrayOfByte != null) && (localObject1 != null))
      {
        if (this.e >= this.b)
        {
          i = c((InputStream)localObject1, arrayOfByte);
          if (i == -1) {
            return -1;
          }
        }
        localObject1 = arrayOfByte;
        if (arrayOfByte != this.a)
        {
          localObject1 = this.a;
          if (localObject1 == null) {
            throw j();
          }
        }
        int i = this.b;
        int j = this.e;
        if (i - j > 0)
        {
          this.e = (j + 1);
          i = localObject1[j];
          return i & 0xFF;
        }
        return -1;
      }
      throw j();
    }
    finally {}
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      Object localObject1 = this.a;
      if (localObject1 != null)
      {
        if (paramInt2 == 0) {
          return 0;
        }
        InputStream localInputStream = this.in;
        if (localInputStream != null)
        {
          int i = this.e;
          int j = this.b;
          if (i < j)
          {
            if (j - i >= paramInt2) {
              j = paramInt2;
            } else {
              j -= i;
            }
            System.arraycopy(localObject1, i, paramArrayOfByte, paramInt1, j);
            this.e += j;
            if (j != paramInt2)
            {
              i = localInputStream.available();
              if (i != 0)
              {
                i = paramInt1 + j;
                paramInt1 = paramInt2 - j;
                j = i;
                break label148;
              }
            }
            return j;
          }
          else
          {
            i = paramInt2;
            j = paramInt1;
            paramInt1 = i;
          }
          for (;;)
          {
            label148:
            int k = this.d;
            i = -1;
            Object localObject2;
            if ((k == -1) && (paramInt1 >= localObject1.length))
            {
              int m = localInputStream.read(paramArrayOfByte, j, paramInt1);
              localObject2 = localObject1;
              k = m;
              if (m == -1)
              {
                if (paramInt1 != paramInt2) {
                  i = paramInt2 - paramInt1;
                }
                return i;
              }
            }
            else
            {
              k = c(localInputStream, (byte[])localObject1);
              if (k == -1)
              {
                if (paramInt1 != paramInt2) {
                  i = paramInt2 - paramInt1;
                }
                return i;
              }
              localObject2 = localObject1;
              if (localObject1 != this.a)
              {
                localObject2 = this.a;
                if (localObject2 == null) {
                  throw j();
                }
              }
              i = this.b;
              k = this.e;
              if (i - k >= paramInt1) {
                i = paramInt1;
              } else {
                i -= k;
              }
              System.arraycopy(localObject2, k, paramArrayOfByte, j, i);
              this.e += i;
              k = i;
            }
            paramInt1 -= k;
            if (paramInt1 == 0) {
              return paramInt2;
            }
            i = localInputStream.available();
            if (i == 0) {
              return paramInt2 - paramInt1;
            }
            j += k;
            localObject1 = localObject2;
          }
        }
        throw j();
      }
      throw j();
    }
    finally {}
  }
  
  public void reset()
    throws IOException
  {
    try
    {
      if (this.a != null)
      {
        int i = this.d;
        if (-1 != i)
        {
          this.e = i;
          return;
        }
        InvalidMarkException localInvalidMarkException = new com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
        localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        ((StringBuilder)localObject1).append("Mark has been invalidated, pos: ");
        ((StringBuilder)localObject1).append(this.e);
        ((StringBuilder)localObject1).append(" markLimit: ");
        ((StringBuilder)localObject1).append(this.c);
        localInvalidMarkException.<init>(((StringBuilder)localObject1).toString());
        throw localInvalidMarkException;
      }
      Object localObject1 = new java/io/IOException;
      ((IOException)localObject1).<init>("Stream is closed");
      throw ((Throwable)localObject1);
    }
    finally {}
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    if (paramLong < 1L) {
      return 0L;
    }
    try
    {
      byte[] arrayOfByte = this.a;
      if (arrayOfByte != null)
      {
        InputStream localInputStream = this.in;
        if (localInputStream != null)
        {
          int i = this.b;
          int j = this.e;
          if (i - j >= paramLong)
          {
            this.e = ((int)(j + paramLong));
            return paramLong;
          }
          long l1 = i - j;
          this.e = i;
          if ((this.d != -1) && (paramLong <= this.c))
          {
            j = c(localInputStream, arrayOfByte);
            if (j == -1) {
              return l1;
            }
            j = this.b;
            i = this.e;
            if (j - i >= paramLong - l1)
            {
              this.e = ((int)(i + paramLong - l1));
              return paramLong;
            }
            long l2 = j;
            paramLong = i;
            this.e = j;
            return l1 + l2 - paramLong;
          }
          paramLong = localInputStream.skip(paramLong - l1);
          if (paramLong > 0L) {
            this.d = -1;
          }
          return l1 + paramLong;
        }
        throw j();
      }
      throw j();
    }
    finally {}
  }
  
  static class InvalidMarkException
    extends IOException
  {
    private static final long serialVersionUID = -4338378848813561757L;
    
    InvalidMarkException(String paramString)
    {
      super();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream
 * JD-Core Version:    0.7.0.1
 */