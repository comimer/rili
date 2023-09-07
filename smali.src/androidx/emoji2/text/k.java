package androidx.emoji2.text;

import androidx.emoji2.text.flatbuffer.b;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

class k
{
  private static b a(c paramc)
    throws IOException
  {
    paramc.b(4);
    int i = paramc.readUnsignedShort();
    if (i <= 100)
    {
      paramc.b(6);
      int j = 0;
      for (int k = 0; k < i; k++)
      {
        int m = paramc.a();
        paramc.b(4);
        l1 = paramc.c();
        paramc.b(4);
        if (1835365473 == m) {
          break label88;
        }
      }
      long l1 = -1L;
      label88:
      if (l1 != -1L)
      {
        paramc.b((int)(l1 - paramc.getPosition()));
        paramc.b(12);
        long l2 = paramc.c();
        k = j;
        while (k < l2)
        {
          j = paramc.a();
          long l3 = paramc.c();
          long l4 = paramc.c();
          if ((1164798569 != j) && (1701669481 != j)) {
            k++;
          } else {
            return new b(l3 + l1, l4);
          }
        }
      }
      throw new IOException("Cannot read metadata.");
    }
    throw new IOException("Cannot read metadata.");
  }
  
  static b b(ByteBuffer paramByteBuffer)
    throws IOException
  {
    paramByteBuffer = paramByteBuffer.duplicate();
    paramByteBuffer.position((int)a(new a(paramByteBuffer)).a());
    return b.h(paramByteBuffer);
  }
  
  static long c(int paramInt)
  {
    return paramInt & 0xFFFFFFFF;
  }
  
  static int d(short paramShort)
  {
    return paramShort & 0xFFFF;
  }
  
  private static class a
    implements k.c
  {
    private final ByteBuffer a;
    
    a(ByteBuffer paramByteBuffer)
    {
      this.a = paramByteBuffer;
      paramByteBuffer.order(ByteOrder.BIG_ENDIAN);
    }
    
    public int a()
      throws IOException
    {
      return this.a.getInt();
    }
    
    public void b(int paramInt)
      throws IOException
    {
      ByteBuffer localByteBuffer = this.a;
      localByteBuffer.position(localByteBuffer.position() + paramInt);
    }
    
    public long c()
      throws IOException
    {
      return k.c(this.a.getInt());
    }
    
    public long getPosition()
    {
      return this.a.position();
    }
    
    public int readUnsignedShort()
      throws IOException
    {
      return k.d(this.a.getShort());
    }
  }
  
  private static class b
  {
    private final long a;
    private final long b;
    
    b(long paramLong1, long paramLong2)
    {
      this.a = paramLong1;
      this.b = paramLong2;
    }
    
    long a()
    {
      return this.a;
    }
  }
  
  private static abstract interface c
  {
    public abstract int a()
      throws IOException;
    
    public abstract void b(int paramInt)
      throws IOException;
    
    public abstract long c()
      throws IOException;
    
    public abstract long getPosition();
    
    public abstract int readUnsignedShort()
      throws IOException;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.k
 * JD-Core Version:    0.7.0.1
 */