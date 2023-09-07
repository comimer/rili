package com.xiaomi.passport;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xiaomi.accountsdk.utils.b;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class h
{
  private static final ExecutorService a = ;
  private static c b;
  
  static
  {
    try
    {
      b = (c)g.class.newInstance();
      b.g("SecurityDeviceSignMngr", "sSecurityDeviceReport init suc");
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("sSecurityDeviceReport init err:");
      localStringBuilder.append(localException.getMessage());
      b.g("SecurityDeviceSignMngr", localStringBuilder.toString());
    }
  }
  
  private static Bundle d(final Context paramContext, final String paramString, final Bundle paramBundle)
  {
    paramString = new b(paramContext, paramString, paramBundle).c();
    try
    {
      paramString = (Bundle)paramString.get();
      if (paramString.getInt("errorCode") == 2) {
        f(paramContext, 2, paramString.getString("cpuId", ""), paramString.getString("deviceId", ""));
      }
      return paramString;
    }
    catch (ExecutionException paramContext)
    {
      paramContext = paramContext.getMessage();
    }
    catch (InterruptedException paramContext)
    {
      paramContext = paramContext.getMessage();
    }
    paramString = new Bundle();
    paramString.putBoolean("booleanResult", false);
    paramString.putInt("errorCode", 1);
    paramString.putString("errorMessage", paramContext);
    return paramString;
  }
  
  private static boolean e(Context paramContext)
  {
    Intent localIntent = new Intent("com.xiaomi.account.action.SECURITY_DEVICE_SIGN");
    localIntent.setPackage("com.xiaomi.account");
    paramContext = paramContext.getPackageManager();
    boolean bool1 = false;
    paramContext = paramContext.queryIntentServices(localIntent, 0);
    boolean bool2 = bool1;
    if (paramContext != null)
    {
      bool2 = bool1;
      if (paramContext.size() > 0) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public static void f(Context paramContext, int paramInt, String paramString1, String paramString2)
  {
    c localc = b;
    if (localc != null) {
      localc.a(paramContext, paramInt, paramString1, paramString2);
    }
  }
  
  public static FutureTask<Bundle> g(Context paramContext, final String paramString, final Bundle paramBundle)
  {
    if (paramContext != null)
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramContext = new FutureTask(new a(paramString, paramBundle));
        a.submit(paramContext);
        return paramContext;
      }
      throw new IllegalArgumentException("input data should not be empty");
    }
    throw new IllegalArgumentException("context should not be null");
  }
  
  public static String h(Context paramContext, String[] paramArrayOfString, Bundle paramBundle, long paramLong)
  {
    paramContext = g(paramContext, TextUtils.join("&", paramArrayOfString), paramBundle);
    if (paramLong > 0L) {}
    try
    {
      paramContext = (Bundle)paramContext.get(paramLong, TimeUnit.MILLISECONDS);
      break label41;
      paramContext = (Bundle)paramContext.get();
      label41:
      boolean bool = paramContext.getBoolean("booleanResult", false);
      paramArrayOfString = paramContext.getString("errorMessage");
      if (!bool)
      {
        paramContext = new java/lang/StringBuilder;
        paramContext.<init>();
        paramContext.append("failed with ");
        paramContext.append(paramArrayOfString);
        b.g("SecurityDeviceSignMngr", paramContext.toString());
        return null;
      }
      paramContext = paramContext.getString("userData");
      return paramContext;
    }
    catch (TimeoutException paramContext)
    {
      b.h("SecurityDeviceSignMngr", "syncSignStringArray", paramContext);
    }
    catch (ExecutionException paramContext)
    {
      b.h("SecurityDeviceSignMngr", "syncSignStringArray", paramContext);
    }
    catch (InterruptedException paramContext)
    {
      b.h("SecurityDeviceSignMngr", "syncSignStringArray", paramContext);
    }
    return null;
  }
  
  class a
    implements Callable<Bundle>
  {
    a(String paramString, Bundle paramBundle) {}
    
    public Bundle a()
      throws Exception
    {
      if (h.a(h.this)) {
        return h.b(h.this, paramString, paramBundle);
      }
      h.f(h.this, 4, "", "");
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("booleanResult", false);
      localBundle.putInt("errorCode", 4);
      localBundle.putString("errorMessage", "no sign service");
      return localBundle;
    }
  }
  
  class b
    extends h.d
  {
    b(Context paramContext, String paramString, Bundle paramBundle)
    {
      super();
    }
    
    protected void b(final e parame)
    {
      h.c().submit(new a(parame));
    }
    
    class a
      implements Runnable
    {
      a(e parame) {}
      
      public void run()
      {
        try
        {
          e locale = parame;
          Object localObject = h.b.this;
          d locald = ((h.d)localObject).b;
          localObject = ((h.b)localObject).c.getPackageName();
          h.b localb = h.b.this;
          locale.u(locald, (String)localObject, localb.d, localb.e);
        }
        catch (RemoteException localRemoteException)
        {
          h.b.e(h.b.this, localRemoteException);
          h.b.this.d();
        }
      }
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(Context paramContext, int paramInt, String paramString1, String paramString2);
  }
  
  private static abstract class d
    extends FutureTask<Bundle>
    implements ServiceConnection
  {
    private Context a;
    protected d b;
    
    public d(Context paramContext)
    {
      super();
      this.a = paramContext;
      this.b = new b(null);
    }
    
    protected abstract void b(e parame);
    
    public d c()
    {
      Intent localIntent = new Intent("com.xiaomi.account.action.SECURITY_DEVICE_SIGN");
      localIntent.setPackage("com.xiaomi.account");
      if (!this.a.bindService(localIntent, this, 1))
      {
        setException(new RemoteException("failed to bind service"));
        d();
      }
      return this;
    }
    
    protected void d()
    {
      Context localContext = this.a;
      if (localContext != null)
      {
        localContext.unbindService(this);
        this.a = null;
      }
    }
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      b(e.a.n0(paramIBinder));
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName) {}
    
    class a
      implements Callable<Bundle>
    {
      public Bundle a()
        throws Exception
      {
        throw new IllegalStateException("should not be call here!");
      }
    }
    
    private class b
      extends d.a
    {
      private b() {}
      
      public void a(Bundle paramBundle)
        throws RemoteException
      {
        h.d.a(h.d.this, paramBundle);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.h
 * JD-Core Version:    0.7.0.1
 */