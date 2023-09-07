package f3;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public final class d
  extends InputStream
{
  private static final Queue<d> c = k.e(0);
  private InputStream a;
  private IOException b;
  
  public static d d(InputStream paramInputStream)
  {
    synchronized (c)
    {
      d locald = (d)((Queue)???).poll();
      ??? = locald;
      if (locald == null) {
        ??? = new d();
      }
      ((d)???).j(paramInputStream);
      return ???;
    }
  }
  
  public int available()
    throws IOException
  {
    return this.a.available();
  }
  
  public IOException c()
  {
    return this.b;
  }
  
  public void close()
    throws IOException
  {
    this.a.close();
  }
  
  public void e()
  {
    this.b = null;
    this.a = null;
    synchronized (c)
    {
      ???.offer(this);
      return;
    }
  }
  
  void j(InputStream paramInputStream)
  {
    this.a = paramInputStream;
  }
  
  public void mark(int paramInt)
  {
    this.a.mark(paramInt);
  }
  
  public boolean markSupported()
  {
    return this.a.markSupported();
  }
  
  public int read()
    throws IOException
  {
    try
    {
      int i = this.a.read();
      return i;
    }
    catch (IOException localIOException)
    {
      this.b = localIOException;
      throw localIOException;
    }
  }
  
  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      int i = this.a.read(paramArrayOfByte);
      return i;
    }
    catch (IOException paramArrayOfByte)
    {
      this.b = paramArrayOfByte;
      throw paramArrayOfByte;
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      paramInt1 = this.a.read(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      this.b = paramArrayOfByte;
      throw paramArrayOfByte;
    }
  }
  
  public void reset()
    throws IOException
  {
    try
    {
      this.a.reset();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    try
    {
      paramLong = this.a.skip(paramLong);
      return paramLong;
    }
    catch (IOException localIOException)
    {
      this.b = localIOException;
      throw localIOException;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f3.d
 * JD-Core Version:    0.7.0.1
 */