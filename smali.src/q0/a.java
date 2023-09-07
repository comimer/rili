package q0;

import android.os.Handler;
import android.os.Looper;
import androidx.core.os.f;
import androidx.work.p;

public class a
  implements p
{
  private final Handler a = f.a(Looper.getMainLooper());
  
  public void a(long paramLong, Runnable paramRunnable)
  {
    this.a.postDelayed(paramRunnable, paramLong);
  }
  
  public void b(Runnable paramRunnable)
  {
    this.a.removeCallbacks(paramRunnable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q0.a
 * JD-Core Version:    0.7.0.1
 */