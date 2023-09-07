package p6;

import android.app.Activity;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import java.lang.ref.WeakReference;

public class a
  implements IWXAPIEventHandler
{
  WeakReference<Activity> a;
  
  public a(Activity paramActivity)
  {
    this.a = new WeakReference(paramActivity);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p6.a
 * JD-Core Version:    0.7.0.1
 */