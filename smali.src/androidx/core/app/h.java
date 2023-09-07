package androidx.core.app;

import android.os.Bundle;
import android.os.IBinder;

public final class h
{
  public static IBinder a(Bundle paramBundle, String paramString)
  {
    return a.a(paramBundle, paramString);
  }
  
  public static void b(Bundle paramBundle, String paramString, IBinder paramIBinder)
  {
    a.b(paramBundle, paramString, paramIBinder);
  }
  
  static class a
  {
    static IBinder a(Bundle paramBundle, String paramString)
    {
      return paramBundle.getBinder(paramString);
    }
    
    static void b(Bundle paramBundle, String paramString, IBinder paramIBinder)
    {
      paramBundle.putBinder(paramString, paramIBinder);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.h
 * JD-Core Version:    0.7.0.1
 */