package o6;

import android.app.Activity;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import p6.b;

public class a
{
  private IWXAPI a;
  private String b;
  private WeakReference<Activity> c;
  
  public a(Activity paramActivity, String paramString)
  {
    this.b = paramString;
    this.c = new WeakReference(paramActivity);
    if (!TextUtils.isEmpty(this.b))
    {
      paramActivity = WXAPIFactory.createWXAPI(paramActivity, this.b, true);
      this.a = paramActivity;
      paramActivity.registerApp(this.b);
      return;
    }
    throw new IllegalArgumentException("weixin app id is empty , set up  first !");
  }
  
  public void a(final int paramInt, final String paramString1, final String paramString2)
  {
    final IWXAPI localIWXAPI = this.a;
    if (localIWXAPI != null)
    {
      if ((localIWXAPI.isWXAppInstalled()) && (this.a.registerApp(this.b))) {
        AsyncTask.THREAD_POOL_EXECUTOR.execute(new a(localIWXAPI, paramInt, paramString1, paramString2));
      }
      return;
    }
    throw new IllegalStateException("mWeixinApi null");
  }
  
  class a
    implements Runnable
  {
    a(IWXAPI paramIWXAPI, int paramInt, String paramString1, String paramString2) {}
    
    public void run()
    {
      new b(localIWXAPI).g(paramInt, paramString1, paramString2);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o6.a
 * JD-Core Version:    0.7.0.1
 */