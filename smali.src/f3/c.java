package f3;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class c
  extends FilterInputStream
{
  private final long a;
  private int b;
  
  private c(InputStream paramInputStream, long paramLong)
  {
    super(paramInputStream);
    this.a = paramLong;
  }
  
  private int c(int paramInt)
    throws IOException
  {
    if (paramInt >= 0) {
      this.b += paramInt;
    } else {
      if (this.a - this.b > 0L) {
        break label34;
      }
    }
    return paramInt;
    label34:
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Failed to read all expected data, expected: ");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", but read: ");
    localStringBuilder.append(this.b);
    throw new IOException(localStringBuilder.toString());
  }
  
  public static InputStream d(InputStream paramInputStream, long paramLong)
  {
    return new c(paramInputStream, paramLong);
  }
  
  public int available()
    throws IOException
  {
    try
    {
      long l = Math.max(this.a - this.b, this.in.available());
      int i = (int)l;
      return i;
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
    try
    {
      int i = super.read();
      int j;
      if (i >= 0) {
        j = 1;
      } else {
        j = -1;
      }
      c(j);
      return i;
    }
    finally {}
  }
  
  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      paramInt1 = c(super.read(paramArrayOfByte, paramInt1, paramInt2));
      return paramInt1;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f3.c
 * JD-Core Version:    0.7.0.1
 */