package com.miui.calendar.ad;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Iterator;

public class e
{
  private static e c;
  private Handler a = new Handler(Looper.getMainLooper());
  private ArrayList<c> b = new ArrayList();
  
  private e(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.xiaomi.market.DOWNLOAD_INSTALL_RESULT");
    localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
    localIntentFilter.addDataScheme("package");
    paramContext.registerReceiver(new b(null), localIntentFilter);
    localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
    localIntentFilter.addDataScheme("package");
    paramContext.registerReceiver(new d(null), localIntentFilter);
  }
  
  public static e c(Context paramContext)
  {
    try
    {
      if (c == null)
      {
        e locale = new com/miui/calendar/ad/e;
        locale.<init>(paramContext.getApplicationContext());
        c = locale;
      }
      paramContext = c;
      return paramContext;
    }
    finally {}
  }
  
  private void e(String paramString)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      this.a.post(new d(localc, paramString));
    }
  }
  
  public void f(c paramc)
  {
    if (paramc == null) {
      z.m("Cal:D:LocalPackageManager", "registerAppChangeListener() listener is null");
    }
    this.b.add(paramc);
  }
  
  public void g(c paramc)
  {
    if (paramc == null) {
      z.m("Cal:D:LocalPackageManager", "unRegisterAppChangeListener() listener is null");
    }
    this.b.remove(paramc);
  }
  
  private class b
    extends BroadcastReceiver
  {
    private b() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent == null) {
        return;
      }
      new Thread(new f(this, paramIntent)).start();
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(String paramString);
  }
  
  private class d
    extends BroadcastReceiver
  {
    private d() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent == null) {
        return;
      }
      new Thread(new g(this, paramContext, paramIntent)).start();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.ad.e
 * JD-Core Version:    0.7.0.1
 */