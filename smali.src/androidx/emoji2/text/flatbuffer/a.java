package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

public final class a
  extends c
{
  public a f(int paramInt, ByteBuffer paramByteBuffer)
  {
    g(paramInt, paramByteBuffer);
    return this;
  }
  
  public void g(int paramInt, ByteBuffer paramByteBuffer)
  {
    c(paramInt, paramByteBuffer);
  }
  
  public int h(int paramInt)
  {
    int i = b(16);
    if (i != 0) {
      paramInt = this.b.getInt(d(i) + paramInt * 4);
    } else {
      paramInt = 0;
    }
    return paramInt;
  }
  
  public int i()
  {
    int i = b(16);
    if (i != 0) {
      i = e(i);
    } else {
      i = 0;
    }
    return i;
  }
  
  public boolean j()
  {
    int i = b(6);
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (i != 0)
    {
      bool2 = bool1;
      if (this.b.get(i + this.a) != 0) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public short k()
  {
    int i = b(14);
    int j;
    if (i != 0)
    {
      i = this.b.getShort(i + this.a);
      j = i;
    }
    else
    {
      i = 0;
      j = i;
    }
    return j;
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
  
  public short m()
  {
    int i = b(8);
    int j;
    if (i != 0)
    {
      i = this.b.getShort(i + this.a);
      j = i;
    }
    else
    {
      i = 0;
      j = i;
    }
    return j;
  }
  
  public short n()
  {
    int i = b(12);
    int j;
    if (i != 0)
    {
      i = this.b.getShort(i + this.a);
      j = i;
    }
    else
    {
      i = 0;
      j = i;
    }
    return j;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.flatbuffer.a
 * JD-Core Version:    0.7.0.1
 */