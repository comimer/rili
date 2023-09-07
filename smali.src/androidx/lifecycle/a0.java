package androidx.lifecycle;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Build.VERSION;
import android.os.Bundle;

public class a0
  extends Fragment
{
  private a a;
  
  static void a(Activity paramActivity, Lifecycle.Event paramEvent)
  {
    if ((paramActivity instanceof p))
    {
      ((p)paramActivity).getLifecycle().h(paramEvent);
      return;
    }
    if ((paramActivity instanceof n))
    {
      paramActivity = ((n)paramActivity).getLifecycle();
      if ((paramActivity instanceof o)) {
        ((o)paramActivity).h(paramEvent);
      }
    }
  }
  
  private void b(Lifecycle.Event paramEvent)
  {
    if (Build.VERSION.SDK_INT < 29) {
      a(getActivity(), paramEvent);
    }
  }
  
  private void c(a parama)
  {
    if (parama != null) {
      parama.onCreate();
    }
  }
  
  private void d(a parama)
  {
    if (parama != null) {
      parama.b();
    }
  }
  
  private void e(a parama)
  {
    if (parama != null) {
      parama.a();
    }
  }
  
  static a0 f(Activity paramActivity)
  {
    return (a0)paramActivity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
  }
  
  public static void g(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 29) {
      b.registerIn(paramActivity);
    }
    paramActivity = paramActivity.getFragmentManager();
    if (paramActivity.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null)
    {
      paramActivity.beginTransaction().add(new a0(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
      paramActivity.executePendingTransactions();
    }
  }
  
  void h(a parama)
  {
    this.a = parama;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    c(this.a);
    b(Lifecycle.Event.ON_CREATE);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    b(Lifecycle.Event.ON_DESTROY);
    this.a = null;
  }
  
  public void onPause()
  {
    super.onPause();
    b(Lifecycle.Event.ON_PAUSE);
  }
  
  public void onResume()
  {
    super.onResume();
    d(this.a);
    b(Lifecycle.Event.ON_RESUME);
  }
  
  public void onStart()
  {
    super.onStart();
    e(this.a);
    b(Lifecycle.Event.ON_START);
  }
  
  public void onStop()
  {
    super.onStop();
    b(Lifecycle.Event.ON_STOP);
  }
  
  static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
    
    public abstract void onCreate();
  }
  
  static class b
    implements Application.ActivityLifecycleCallbacks
  {
    static void registerIn(Activity paramActivity)
    {
      z.a(paramActivity, new b());
    }
    
    public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
    
    public void onActivityDestroyed(Activity paramActivity) {}
    
    public void onActivityPaused(Activity paramActivity) {}
    
    public void onActivityPostCreated(Activity paramActivity, Bundle paramBundle)
    {
      a0.a(paramActivity, Lifecycle.Event.ON_CREATE);
    }
    
    public void onActivityPostResumed(Activity paramActivity)
    {
      a0.a(paramActivity, Lifecycle.Event.ON_RESUME);
    }
    
    public void onActivityPostStarted(Activity paramActivity)
    {
      a0.a(paramActivity, Lifecycle.Event.ON_START);
    }
    
    public void onActivityPreDestroyed(Activity paramActivity)
    {
      a0.a(paramActivity, Lifecycle.Event.ON_DESTROY);
    }
    
    public void onActivityPrePaused(Activity paramActivity)
    {
      a0.a(paramActivity, Lifecycle.Event.ON_PAUSE);
    }
    
    public void onActivityPreStopped(Activity paramActivity)
    {
      a0.a(paramActivity, Lifecycle.Event.ON_STOP);
    }
    
    public void onActivityResumed(Activity paramActivity) {}
    
    public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
    
    public void onActivityStarted(Activity paramActivity) {}
    
    public void onActivityStopped(Activity paramActivity) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.a0
 * JD-Core Version:    0.7.0.1
 */