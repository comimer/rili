package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;

class k
{
  private static AtomicBoolean a = new AtomicBoolean(false);
  
  static void a(Context paramContext)
  {
    if (a.getAndSet(true)) {
      return;
    }
    ((Application)paramContext.getApplicationContext()).registerActivityLifecycleCallbacks(new a());
  }
  
  static class a
    extends f
  {
    public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
    {
      a0.g(paramActivity);
    }
    
    public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
    
    public void onActivityStopped(Activity paramActivity) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.k
 * JD-Core Version:    0.7.0.1
 */