package com.bumptech.glide.load.engine.bitmap_recycle;

public final class f
  implements a<byte[]>
{
  public String a()
  {
    return "ByteArrayPool";
  }
  
  public int b()
  {
    return 1;
  }
  
  public int d(byte[] paramArrayOfByte)
  {
    return paramArrayOfByte.length;
  }
  
  public byte[] e(int paramInt)
  {
    return new byte[paramInt];
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.f
 * JD-Core Version:    0.7.0.1
 */