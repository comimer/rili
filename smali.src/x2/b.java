package x2;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.bumptech.glide.load.engine.bitmap_recycle.d;
import m2.a.a;

public final class b
  implements a.a
{
  private final d a;
  private final com.bumptech.glide.load.engine.bitmap_recycle.b b;
  
  public b(d paramd, com.bumptech.glide.load.engine.bitmap_recycle.b paramb)
  {
    this.a = paramd;
    this.b = paramb;
  }
  
  public Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return this.a.e(paramInt1, paramInt2, paramConfig);
  }
  
  public int[] b(int paramInt)
  {
    com.bumptech.glide.load.engine.bitmap_recycle.b localb = this.b;
    if (localb == null) {
      return new int[paramInt];
    }
    return (int[])localb.d(paramInt, [I.class);
  }
  
  public void c(Bitmap paramBitmap)
  {
    this.a.c(paramBitmap);
  }
  
  public void d(byte[] paramArrayOfByte)
  {
    com.bumptech.glide.load.engine.bitmap_recycle.b localb = this.b;
    if (localb == null) {
      return;
    }
    localb.put(paramArrayOfByte);
  }
  
  public byte[] e(int paramInt)
  {
    com.bumptech.glide.load.engine.bitmap_recycle.b localb = this.b;
    if (localb == null) {
      return new byte[paramInt];
    }
    return (byte[])localb.d(paramInt, [B.class);
  }
  
  public void f(int[] paramArrayOfInt)
  {
    com.bumptech.glide.load.engine.bitmap_recycle.b localb = this.b;
    if (localb == null) {
      return;
    }
    localb.put(paramArrayOfInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x2.b
 * JD-Core Version:    0.7.0.1
 */