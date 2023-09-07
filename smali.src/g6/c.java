package g6;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.Process;
import android.util.Log;
import com.miui.analytics.ICore;
import com.miui.analytics.ICore.Stub;
import e6.e;
import f6.b;
import f6.m;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentSkipListSet;

public class c
  implements a
{
  private boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private final Object d = new Object();
  private final Object e = new Object();
  private ICore f;
  private Context g;
  private final Set<String> h = new ConcurrentSkipListSet();
  private ServiceConnection i = new a();
  
  public c(Context paramContext)
  {
    this.g = b.a(paramContext);
    this.a = o(paramContext);
    j();
  }
  
  private void j()
  {
    if (this.a) {
      try
      {
        Intent localIntent = new android/content/Intent;
        localIntent.<init>();
        localIntent.setClassName("com.miui.analytics", "com.miui.analytics.AnalyticsService");
        this.g.bindService(localIntent, this.i, 1);
        this.c = true;
        f6.a.e("SysAnalytics", "try bind sys service");
      }
      catch (Exception localException)
      {
        Log.e(f6.a.a("SysAnalytics"), "bind service exception:", localException);
      }
    }
  }
  
  private void k()
  {
    new Thread(new b()).start();
  }
  
  private void l()
  {
    synchronized (this.e)
    {
      boolean bool1 = this.c;
      if ((!bool1) && ((!this.b) || (this.f == null)))
      {
        this.g.unbindService(this.i);
        j();
      }
      else
      {
        int j = 0;
        boolean bool2 = this.b;
        if (this.f != null) {
          j = 1;
        }
        f6.a.e("SysAnalytics", String.format("ensureService mConnecting:%s, mConnected:%s, mAnalytics:%d", new Object[] { Boolean.valueOf(bool1), Boolean.valueOf(bool2), Integer.valueOf(j) }));
      }
      return;
    }
  }
  
  private String m()
  {
    try
    {
      l();
      if (this.f != null)
      {
        String str = (String)Class.forName("com.miui.analytics.ICore").getMethod("getVersionName", new Class[0]).invoke(this.f, new Object[0]);
        return str;
      }
    }
    catch (Exception localException)
    {
      Log.e(f6.a.a("SysAnalytics"), "getVersionName exception:", localException);
    }
    return "0.0.0";
  }
  
  public static boolean o(Context paramContext)
  {
    try
    {
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      localIntent.setClassName("com.miui.analytics", "com.miui.analytics.AnalyticsService");
      if ((paramContext != null) && (paramContext.getPackageManager() != null))
      {
        paramContext = paramContext.getPackageManager().queryIntentServices(localIntent, 0);
        if (paramContext != null)
        {
          int j = paramContext.size();
          if (j > 0) {
            return true;
          }
        }
      }
    }
    catch (Exception paramContext)
    {
      Log.e(f6.a.a("SysAnalytics"), "isServiceBuiltIn exception:", paramContext);
    }
    return false;
  }
  
  public boolean a(String paramString)
  {
    try
    {
      l();
      if (this.f != null)
      {
        boolean bool = ((Boolean)Class.forName("com.miui.analytics.ICore").getMethod("isPolicyReady", new Class[] { String.class, String.class }).invoke(this.f, new Object[] { this.g.getPackageName(), paramString })).booleanValue();
        return bool;
      }
    }
    catch (Exception paramString)
    {
      Log.e(f6.a.a("SysAnalytics"), "isPolicyReady exception:", paramString);
    }
    return false;
  }
  
  public String b(String paramString)
  {
    try
    {
      l();
      if (this.f != null)
      {
        paramString = (String)Class.forName("com.miui.analytics.ICore").getMethod("getClientExtra", new Class[] { String.class, String.class }).invoke(this.f, new Object[] { this.g.getPackageName(), paramString });
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      Log.e(f6.a.a("SysAnalytics"), "getClientExtra exception:", paramString);
    }
    return "";
  }
  
  public void deleteAllEvents(String paramString)
  {
    try
    {
      f6.a.b("SysAnalytics", "deleteAllEvents");
      l();
      if (this.f != null) {
        Class.forName("com.miui.analytics.ICore").getMethod("deleteAllEvents", new Class[] { String.class }).invoke(this.f, new Object[] { paramString });
      }
    }
    catch (Exception paramString)
    {
      Log.e(f6.a.a("SysAnalytics"), "deleteAllEvents exception:", paramString);
    }
  }
  
  public e getVersion()
  {
    return new e(m());
  }
  
  public void init() {}
  
  public boolean n()
  {
    return this.a;
  }
  
  public void p()
  {
    if (this.a)
    {
      if (this.b) {
        return;
      }
      try
      {
        synchronized (this.d)
        {
          this.d.wait(m.d * 3);
        }
      }
      catch (Exception localException)
      {
        Log.e(f6.a.a("SysAnalytics"), "waitForConnected mSyncGuard.wait exception:", localException);
      }
      throw localException;
    }
  }
  
  public void setDebugOn(boolean paramBoolean)
  {
    try
    {
      l();
      if (this.f != null) {
        Class.forName("com.miui.analytics.ICore").getMethod("setDebugOn", new Class[] { Boolean.TYPE }).invoke(this.f, new Object[] { Boolean.valueOf(paramBoolean) });
      }
    }
    catch (Exception localException)
    {
      Log.e(f6.a.a("SysAnalytics"), "setDebugOn exception:", localException);
    }
  }
  
  /* Error */
  public void setDefaultPolicy(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 151	g6/c:l	()V
    //   4: aload_0
    //   5: getfield 70	g6/c:f	Lcom/miui/analytics/ICore;
    //   8: ifnull +63 -> 71
    //   11: ldc 153
    //   13: invokestatic 159	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   16: ldc 251
    //   18: iconst_2
    //   19: anewarray 155	java/lang/Class
    //   22: dup
    //   23: iconst_0
    //   24: ldc 143
    //   26: aastore
    //   27: dup
    //   28: iconst_1
    //   29: ldc 143
    //   31: aastore
    //   32: invokevirtual 165	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   35: aload_0
    //   36: getfield 70	g6/c:f	Lcom/miui/analytics/ICore;
    //   39: iconst_2
    //   40: anewarray 4	java/lang/Object
    //   43: dup
    //   44: iconst_0
    //   45: aload_1
    //   46: aastore
    //   47: dup
    //   48: iconst_1
    //   49: aload_2
    //   50: aastore
    //   51: invokevirtual 171	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   54: pop
    //   55: goto +16 -> 71
    //   58: astore_1
    //   59: ldc 97
    //   61: invokestatic 107	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   64: ldc 253
    //   66: aload_1
    //   67: invokestatic 114	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   70: pop
    //   71: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	c
    //   0	72	1	paramString1	String
    //   0	72	2	paramString2	String
    // Exception table:
    //   from	to	target	type
    //   0	55	58	finally
  }
  
  public void trackEvent(String paramString)
  {
    try
    {
      l();
      if (this.f == null) {
        synchronized (this.h)
        {
          this.h.add(paramString);
          f6.a.e("SysAnalytics", "add 1 event into pending event list");
        }
      }
      Class.forName("com.miui.analytics.ICore").getMethod("trackEvent", new Class[] { String.class }).invoke(this.f, new Object[] { paramString });
    }
    catch (Exception paramString)
    {
      Log.e(f6.a.a("SysAnalytics"), "trackEvent exception:", paramString);
    }
  }
  
  public void trackEvents(String[] paramArrayOfString)
  {
    try
    {
      l();
      if (this.f == null)
      {
        Set localSet = this.h;
        if (paramArrayOfString != null) {}
        try
        {
          if (paramArrayOfString.length > 0) {
            Collections.addAll(this.h, paramArrayOfString);
          }
          int j;
          if (paramArrayOfString == null) {
            j = 0;
          } else {
            j = paramArrayOfString.length;
          }
          f6.a.e("SysAnalytics", String.format("add %d events into pending event list", new Object[] { Integer.valueOf(j) }));
        }
        finally {}
      }
      else
      {
        Class.forName("com.miui.analytics.ICore").getMethod("trackEvents", new Class[] { [Ljava.lang.String.class }).invoke(this.f, new Object[] { paramArrayOfString });
      }
    }
    catch (Exception paramArrayOfString)
    {
      Log.e(f6.a.a("SysAnalytics"), "trackEvents exception:", paramArrayOfString);
    }
  }
  
  class a
    implements ServiceConnection
  {
    a() {}
    
    public void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
    {
      c.c(c.this, true);
      c.f(c.this, false);
      c.e(c.this, ICore.Stub.asInterface(paramIBinder));
      Log.i(f6.a.a("SysAnalytics"), String.format("onServiceConnected %s, pid:%d, tid:%d", new Object[] { c.d(c.this), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) }));
      try
      {
        synchronized (c.g(c.this))
        {
          c.g(c.this).notifyAll();
        }
      }
      catch (Exception paramIBinder)
      {
        Log.e(f6.a.a("SysAnalytics"), "onServiceConnected notifyAll exception:", paramIBinder);
        c.h(c.this);
        return;
      }
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      Log.i(f6.a.a("SysAnalytics"), String.format("onServiceDisconnected, pid:%d, tid:%d", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) }));
      c.c(c.this, false);
      c.e(c.this, null);
      c.f(c.this, false);
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      try
      {
        synchronized (c.i(c.this))
        {
          if (!c.i(c.this).isEmpty())
          {
            String[] arrayOfString = new String[c.i(c.this).size()];
            arrayOfString = (String[])c.i(c.this).toArray(arrayOfString);
            Class.forName("com.miui.analytics.ICore").getMethod("trackEvents", new Class[] { [Ljava.lang.String.class }).invoke(c.d(c.this), new Object[] { arrayOfString });
            f6.a.e("SysAnalytics", String.format("onServiceConnected drain %d pending events", new Object[] { Integer.valueOf(c.i(c.this).size()) }));
            c.i(c.this).clear();
          }
        }
      }
      catch (Exception localException)
      {
        Log.e(f6.a.a("SysAnalytics"), "onServiceConnected drain pending events exception:", localException);
        return;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g6.c
 * JD-Core Version:    0.7.0.1
 */