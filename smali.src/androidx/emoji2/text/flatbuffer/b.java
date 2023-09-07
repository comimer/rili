package androidx.emoji2.text.flatbuffer;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class b
  extends c
{
  public static b h(ByteBuffer paramByteBuffer)
  {
    return i(paramByteBuffer, new b());
  }
  
  public static b i(ByteBuffer paramByteBuffer, b paramb)
  {
    paramByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    return paramb.f(paramByteBuffer.getInt(paramByteBuffer.position()) + paramByteBuffer.position(), paramByteBuffer);
  }
  
  public b f(int paramInt, ByteBuffer paramByteBuffer)
  {
    g(paramInt, paramByteBuffer);
    return this;
  }
  
  public void g(int paramInt, ByteBuffer paramByteBuffer)
  {
    c(paramInt, paramByteBuffer);
  }
  
  public a j(a parama, int paramInt)
  {
    int i = b(6);
    if (i != 0) {
      parama = parama.f(a(d(i) + paramInt * 4), this.b);
    } else {
      parama = null;
    }
    return parama;
  }
  
  public int k()
  {
    int i = b(6);
    if (i != 0) {
      i = e(i);
    } else {
      i = 0;
    }
    return i;
  }
  
  public int l()
  {
    int i = b(4);
    if (i != 0) {
      i = this.b.getInt(i + this.a);
    } else {
      i = 0;
    }
    return i;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.flatbuffer.b
 * JD-Core Version:    0.7.0.1
 */