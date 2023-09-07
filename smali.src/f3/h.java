package f3;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class h
  extends FilterInputStream
{
  private int a = -2147483648;
  
  public h(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  private long c(long paramLong)
  {
    int i = this.a;
    if (i == 0) {
      return -1L;
    }
    long l = paramLong;
    if (i != -2147483648)
    {
      l = paramLong;
      if (paramLong > i) {
        l = i;
      }
    }
    return l;
  }
  
  private void d(long paramLong)
  {
    int i = this.a;
    if ((i != -2147483648) && (paramLong != -1L)) {
      this.a = ((int)(i - paramLong));
    }
  }
  
  public int available()
    throws IOException
  {
    int i = this.a;
    if (i == -2147483648) {
      i = super.available();
    } else {
      i = Math.min(i, super.available());
    }
    return i;
  }
  
  public void mark(int paramInt)
  {
    try
    {
      super.mark(paramInt);
      this.a = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int read()
    throws IOException
  {
    if (c(1L) == -1L) {
      return -1;
    }
    int i = super.read();
    d(1L);
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt2 = (int)c(paramInt2);
    if (paramInt2 == -1) {
      return -1;
    }
    paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    d(paramInt1);
    return paramInt1;
  }
  
  public void reset()
    throws IOException
  {
    try
    {
      super.reset();
      this.a = -2147483648;
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
    paramLong = c(paramLong);
    if (paramLong == -1L) {
      return 0L;
    }
    paramLong = super.skip(paramLong);
    d(paramLong);
    return paramLong;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f3.h
 * JD-Core Version:    0.7.0.1
 */