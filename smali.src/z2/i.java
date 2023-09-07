package z2;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

final class i
  implements k, ComponentCallbacks2
{
  public void a(Activity paramActivity) {}
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory()
  {
    onTrimMemory(20);
  }
  
  public void onTrimMemory(int paramInt) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z2.i
 * JD-Core Version:    0.7.0.1
 */