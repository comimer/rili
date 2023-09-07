package f5;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.ad.entity.unified.UnifiedAdInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;

public class c
{
  private static final ExecutorService g = ;
  private static final Set<Long> h = new ConcurrentSkipListSet();
  private static volatile c i = null;
  private static long j;
  private Context a;
  private d5.a b = null;
  private Object c = new Object();
  private Map<String, c> d = new ConcurrentHashMap();
  private d e;
  private ServiceConnection f = new a(this);
  
  private c(Context paramContext)
  {
    if (paramContext != null)
    {
      Context localContext = paramContext.getApplicationContext();
      this.a = localContext;
      if (localContext == null) {
        this.a = paramContext;
      }
      this.e = new d(this.a);
      return;
    }
    throw new IllegalArgumentException("the context is null");
  }
  
  private List<UnifiedAdInfo> k(String paramString)
  {
    boolean bool = TextUtils.isEmpty(paramString);
    ArrayList localArrayList = null;
    if (bool) {
      return null;
    }
    JSONArray localJSONArray = new JSONArray(paramString);
    int k = localJSONArray.length();
    paramString = localArrayList;
    if (k > 0)
    {
      localArrayList = new ArrayList();
      for (int m = 0;; m++)
      {
        paramString = localArrayList;
        if (m >= k) {
          break;
        }
        paramString = localJSONArray.optString(m);
        if (!TextUtils.isEmpty(paramString))
        {
          paramString = UnifiedAdInfo.deserialize(paramString);
          if (paramString != null) {
            localArrayList.add(paramString);
          }
        }
      }
    }
    return paramString;
  }
  
  private void l()
  {
    if (q(this.a)) {
      try
      {
        Object localObject = m();
        this.a.bindService((Intent)localObject, this.f, 1);
        j = System.currentTimeMillis();
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("start bind service ");
        ((StringBuilder)localObject).append(j);
        Log.d("RemoteUnifiedAdService", ((StringBuilder)localObject).toString());
      }
      catch (Exception localException)
      {
        Log.e("RemoteUnifiedAdService", "could not bind the service.", localException);
      }
    }
  }
  
  private static Intent m()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("miui.intent.action.ad.CHANGE_SKIN");
    localIntent.setPackage("com.miui.systemAdSolution");
    return localIntent;
  }
  
  public static c o(Context paramContext)
  {
    try
    {
      if (i == null)
      {
        c localc = new f5/c;
        localc.<init>(paramContext);
        i = localc;
      }
      paramContext = i;
      return paramContext;
    }
    finally {}
  }
  
  private boolean p()
  {
    boolean bool;
    if ((q(this.a)) && (this.b != null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean q(Context paramContext)
  {
    try
    {
      Intent localIntent = m();
      if ((paramContext != null) && (paramContext.getPackageManager() != null))
      {
        paramContext = paramContext.getPackageManager().queryIntentServices(localIntent, 0);
        if ((paramContext != null) && (paramContext.size() > 0))
        {
          Log.d("RemoteUnifiedAdService", "find the ad service in systemAdSolution.");
          return true;
        }
      }
    }
    catch (Exception paramContext)
    {
      Log.e("RemoteUnifiedAdService", "some exceptions occur when judge if there is the system ad app.", paramContext);
      Log.e("RemoteUnifiedAdService", "there is no a systemAdSolution app.");
    }
    return false;
  }
  
  private void r()
  {
    if (this.b == null) {
      l();
    }
  }
  
  public void n(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    try
    {
      ExecutorService localExecutorService = g;
      b localb = new f5/c$b;
      localb.<init>(this, paramString, null);
      localExecutorService.execute(localb);
    }
    catch (Exception paramString)
    {
      Log.e("RemoteUnifiedAdService", "colud not get skin info from system ad app. becuase some exceptions occur.", paramString);
    }
  }
  
  abstract class a<P, R>
    implements Runnable
  {
    P a;
    
    protected a()
    {
      Object localObject;
      this.a = localObject;
    }
    
    private R c()
    {
      synchronized (c.a(c.this))
      {
        c.j(c.this);
        Object localObject2;
        if (!c.c(c.this))
        {
          c.a(c.this).wait(1000L);
          if (c.c(c.this)) {
            localObject2 = a(c.b(c.this), this.a);
          } else {
            localObject2 = null;
          }
        }
        else
        {
          localObject2 = a(c.b(c.this), this.a);
        }
        return localObject2;
      }
    }
    
    abstract R a(d5.a parama, P paramP);
    
    abstract void b(R paramR);
    
    public void run()
    {
      try
      {
        Object localObject = c();
        Handler localHandler = new android/os/Handler;
        localHandler.<init>(c.f(c.this).getMainLooper());
        b localb = new f5/b;
        localb.<init>(this, localObject);
        localHandler.post(localb);
      }
      catch (Exception localException)
      {
        Log.e("RemoteUnifiedAdService", "colud not invoke the remote method.", localException);
      }
    }
  }
  
  private class b
    extends c.a<String, Void>
  {
    private b(String paramString)
    {
      super(paramString);
    }
    
    Void d(d5.a parama, String paramString)
    {
      if (TextUtils.isEmpty(paramString))
      {
        d6.d.c("RemoteUnifiedAdService", "tag id is null.");
        return null;
      }
      try
      {
        String str = parama.I(paramString, c.f(c.this).getPackageName());
        parama = new java/lang/StringBuilder;
        parama.<init>();
        parama.append("get the newest unified ad info list[");
        parama.append(str);
        parama.append("] of [");
        parama.append((String)this.a);
        parama.append("]");
        Log.i("RemoteUnifiedAdService", parama.toString());
        parama = c.g(c.this, str);
        boolean bool = true;
        paramString = (c.c)c.h(c.this).get(paramString);
        if (paramString != null) {
          bool = paramString.a(parama);
        }
        if (bool) {
          c.i(c.this).j((String)this.a, parama);
        }
      }
      catch (Exception parama)
      {
        d6.d.d("RemoteUnifiedAdService", "could not conver string to a adInfo list.", parama);
      }
      return null;
    }
    
    void e(Void paramVoid) {}
  }
  
  public static abstract interface c
  {
    public abstract boolean a(List<UnifiedAdInfo> paramList);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f5.c
 * JD-Core Version:    0.7.0.1
 */