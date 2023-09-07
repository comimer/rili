package p7;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import javax.mail.internet.i;

public class a
  extends ByteArrayInputStream
  implements i
{
  protected int a;
  
  public a(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
    this.a = 0;
  }
  
  public a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    super(paramArrayOfByte, paramInt1, paramInt2);
    this.a = paramInt1;
  }
  
  public InputStream c(long paramLong1, long paramLong2)
  {
    if (paramLong1 >= 0L)
    {
      long l = paramLong2;
      if (paramLong2 == -1L) {
        l = this.count - this.a;
      }
      return new a(this.buf, this.a + (int)paramLong1, (int)(l - paramLong1));
    }
    throw new IllegalArgumentException("start < 0");
  }
  
  public long getPosition()
  {
    return this.pos - this.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p7.a
 * JD-Core Version:    0.7.0.1
 */