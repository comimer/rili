package h3;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

class b
  implements Closeable
{
  private final InputStream a;
  private final Charset b;
  private byte[] c;
  private int d;
  private int e;
  
  public b(InputStream paramInputStream, int paramInt, Charset paramCharset)
  {
    if ((paramInputStream != null) && (paramCharset != null))
    {
      if (paramInt >= 0)
      {
        if (paramCharset.equals(c.a))
        {
          this.a = paramInputStream;
          this.b = paramCharset;
          this.c = new byte[paramInt];
          return;
        }
        throw new IllegalArgumentException("Unsupported encoding");
      }
      throw new IllegalArgumentException("capacity <= 0");
    }
    throw null;
  }
  
  public b(InputStream paramInputStream, Charset paramCharset)
  {
    this(paramInputStream, 8192, paramCharset);
  }
  
  private void d()
    throws IOException
  {
    InputStream localInputStream = this.a;
    byte[] arrayOfByte = this.c;
    int i = localInputStream.read(arrayOfByte, 0, arrayOfByte.length);
    if (i != -1)
    {
      this.d = 0;
      this.e = i;
      return;
    }
    throw new EOFException();
  }
  
  public void close()
    throws IOException
  {
    synchronized (this.a)
    {
      if (this.c != null)
      {
        this.c = null;
        this.a.close();
      }
      return;
    }
  }
  
  public String e()
    throws IOException
  {
    synchronized (this.a)
    {
      if (this.c != null)
      {
        if (this.d >= this.e) {
          d();
        }
        int k;
        Object localObject3;
        for (int i = this.d; i != this.e; i++)
        {
          localObject1 = this.c;
          if (localObject1[i] == 10)
          {
            int j = this.d;
            if (i != j)
            {
              k = i - 1;
              if (localObject1[k] == 13) {}
            }
            else
            {
              k = i;
            }
            localObject3 = new java/lang/String;
            ((String)localObject3).<init>((byte[])localObject1, j, k - j, this.b.name());
            this.d = (i + 1);
            return localObject3;
          }
        }
        localObject1 = new h3/b$a;
        ((a)localObject1).<init>(this, this.e - this.d + 80);
        for (;;)
        {
          localObject3 = this.c;
          i = this.d;
          ((ByteArrayOutputStream)localObject1).write((byte[])localObject3, i, this.e - i);
          this.e = -1;
          d();
          for (i = this.d; i != this.e; i++)
          {
            localObject3 = this.c;
            if (localObject3[i] == 10)
            {
              k = this.d;
              if (i != k) {
                ((ByteArrayOutputStream)localObject1).write((byte[])localObject3, k, i - k);
              }
              this.d = (i + 1);
              localObject1 = ((ByteArrayOutputStream)localObject1).toString();
              return localObject1;
            }
          }
        }
      }
      Object localObject1 = new java/io/IOException;
      ((IOException)localObject1).<init>("LineReader is closed");
      throw ((Throwable)localObject1);
    }
  }
  
  class a
    extends ByteArrayOutputStream
  {
    a(int paramInt)
    {
      super();
    }
    
    public String toString()
    {
      int i = this.count;
      int j = i;
      if (i > 0)
      {
        j = i;
        if (this.buf[(i - 1)] == 13) {
          j = i - 1;
        }
      }
      try
      {
        String str = new String(this.buf, 0, j, b.c(b.this).name());
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new AssertionError(localUnsupportedEncodingException);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h3.b
 * JD-Core Version:    0.7.0.1
 */