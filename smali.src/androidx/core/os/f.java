package androidx.core.os;

import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.util.Log;
import i.b;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public final class f
{
  public static Handler a(Looper paramLooper)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return a.a(paramLooper);
    }
    try
    {
      Handler localHandler = (Handler)Handler.class.getDeclaredConstructor(new Class[] { Looper.class, Handler.Callback.class, Boolean.TYPE }).newInstance(new Object[] { paramLooper, null, Boolean.TRUE });
      return localHandler;
    }
    catch (InvocationTargetException paramLooper)
    {
      paramLooper = paramLooper.getCause();
      if (!(paramLooper instanceof RuntimeException))
      {
        if ((paramLooper instanceof Error)) {
          throw ((Error)paramLooper);
        }
        throw new RuntimeException(paramLooper);
      }
      throw ((RuntimeException)paramLooper);
    }
    catch (NoSuchMethodException localNoSuchMethodException) {}catch (InstantiationException localInstantiationException) {}catch (IllegalAccessException localIllegalAccessException) {}
    Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", localIllegalAccessException);
    return new Handler(paramLooper);
  }
  
  private static class a
  {
    public static Handler a(Looper paramLooper)
    {
      return b.a(paramLooper);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.os.f
 * JD-Core Version:    0.7.0.1
 */