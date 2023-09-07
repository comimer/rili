package androidx.core.provider;

import android.os.Handler;
import android.os.Looper;

class b
{
  static Handler a()
  {
    Handler localHandler;
    if (Looper.myLooper() == null) {
      localHandler = new Handler(Looper.getMainLooper());
    } else {
      localHandler = new Handler();
    }
    return localHandler;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.provider.b
 * JD-Core Version:    0.7.0.1
 */