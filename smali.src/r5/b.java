package r5;

import android.os.Binder;

public final class b
{
  public static final int a()
  {
    return b(Binder.getCallingUid());
  }
  
  public static final int b(int paramInt)
  {
    return paramInt / 100000;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r5.b
 * JD-Core Version:    0.7.0.1
 */