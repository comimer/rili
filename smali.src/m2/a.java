package m2;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import java.nio.ByteBuffer;

public abstract interface a
{
  public abstract Bitmap a();
  
  public abstract void b();
  
  public abstract int c();
  
  public abstract void clear();
  
  public abstract int d();
  
  public abstract void e(Bitmap.Config paramConfig);
  
  public abstract void f();
  
  public abstract int g();
  
  public abstract ByteBuffer getData();
  
  public abstract int h();
  
  public static abstract interface a
  {
    public abstract Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig);
    
    public abstract int[] b(int paramInt);
    
    public abstract void c(Bitmap paramBitmap);
    
    public abstract void d(byte[] paramArrayOfByte);
    
    public abstract byte[] e(int paramInt);
    
    public abstract void f(int[] paramArrayOfInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m2.a
 * JD-Core Version:    0.7.0.1
 */