package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

public class c
{
  protected int a;
  protected ByteBuffer b;
  private int c;
  private int d;
  Utf8 e = Utf8.a();
  
  protected int a(int paramInt)
  {
    return paramInt + this.b.getInt(paramInt);
  }
  
  protected int b(int paramInt)
  {
    if (paramInt < this.d) {
      paramInt = this.b.getShort(this.c + paramInt);
    } else {
      paramInt = 0;
    }
    return paramInt;
  }
  
  protected void c(int paramInt, ByteBuffer paramByteBuffer)
  {
    this.b = paramByteBuffer;
    if (paramByteBuffer != null)
    {
      this.a = paramInt;
      paramInt -= paramByteBuffer.getInt(paramInt);
      this.c = paramInt;
      this.d = this.b.getShort(paramInt);
    }
    else
    {
      this.a = 0;
      this.c = 0;
      this.d = 0;
    }
  }
  
  protected int d(int paramInt)
  {
    paramInt += this.a;
    return paramInt + this.b.getInt(paramInt) + 4;
  }
  
  protected int e(int paramInt)
  {
    paramInt += this.a;
    int i = this.b.getInt(paramInt);
    return this.b.getInt(paramInt + i);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.flatbuffer.c
 * JD-Core Version:    0.7.0.1
 */