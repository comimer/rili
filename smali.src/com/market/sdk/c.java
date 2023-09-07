package com.market.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import i3.b.b;
import i6.a.a;
import java.util.concurrent.FutureTask;

public class c
  extends i3.b
  implements i6.a
{
  private i6.a l;
  
  private c(Context paramContext, Intent paramIntent)
  {
    super(paramContext, paramIntent);
  }
  
  public static i6.a x0(Context paramContext, String paramString)
  {
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = g.f;
    }
    paramString = new Intent();
    paramString.setComponent(new ComponentName(str, "com.xiaomi.market.data.AppDownloadService"));
    paramString.setAction("com.xiaomi.market.service.AppDownloadService");
    return new c(paramContext, paramString);
  }
  
  public void Q(final Uri paramUri)
    throws RemoteException
  {
    u0(new d(paramUri), "downloadByUri");
  }
  
  public boolean W(final String paramString1, final String paramString2)
    throws RemoteException
  {
    final j3.a locala = new j3.a();
    u0(new c(locala, paramString1, paramString2), "resume");
    v0();
    boolean bool;
    if (locala.isDone()) {
      bool = ((Boolean)locala.get()).booleanValue();
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean a0(final String paramString1, final String paramString2)
    throws RemoteException
  {
    final j3.a locala = new j3.a();
    u0(new a(locala, paramString1, paramString2), "cancel");
    v0();
    boolean bool;
    if (locala.isDone()) {
      bool = ((Boolean)locala.get()).booleanValue();
    } else {
      bool = false;
    }
    return bool;
  }
  
  public IBinder asBinder()
  {
    return null;
  }
  
  public void e0(final Uri paramUri)
    throws RemoteException
  {
    u0(new f(paramUri), "resumeByUri");
  }
  
  public void i(final Uri paramUri)
    throws RemoteException
  {
    u0(new e(paramUri), "pauseByUri");
  }
  
  public boolean l(final String paramString1, final String paramString2)
    throws RemoteException
  {
    final j3.a locala = new j3.a();
    u0(new b(locala, paramString1, paramString2), "pause");
    v0();
    boolean bool;
    if (locala.isDone()) {
      bool = ((Boolean)locala.get()).booleanValue();
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void s0(IBinder paramIBinder)
  {
    this.l = a.a.n0(paramIBinder);
  }
  
  public void t0() {}
  
  class a
    implements b.b
  {
    a(j3.a parama, String paramString1, String paramString2) {}
    
    public void run()
      throws RemoteException
    {
      if (c.w0(c.this) != null) {
        locala.set(Boolean.valueOf(c.w0(c.this).a0(paramString1, paramString2)));
      } else {
        com.market.sdk.utils.b.c("FloatService", "IAppDownloadManager is null");
      }
    }
  }
  
  class b
    implements b.b
  {
    b(j3.a parama, String paramString1, String paramString2) {}
    
    public void run()
      throws RemoteException
    {
      if (c.w0(c.this) != null) {
        locala.set(Boolean.valueOf(c.w0(c.this).l(paramString1, paramString2)));
      } else {
        com.market.sdk.utils.b.c("FloatService", "IAppDownloadManager is null");
      }
    }
  }
  
  class c
    implements b.b
  {
    c(j3.a parama, String paramString1, String paramString2) {}
    
    public void run()
      throws RemoteException
    {
      if (c.w0(c.this) != null) {
        locala.set(Boolean.valueOf(c.w0(c.this).W(paramString1, paramString2)));
      } else {
        com.market.sdk.utils.b.c("FloatService", "IAppDownloadManager is null");
      }
    }
  }
  
  class d
    implements b.b
  {
    d(Uri paramUri) {}
    
    public void run()
      throws RemoteException
    {
      if (c.w0(c.this) != null) {
        c.w0(c.this).Q(paramUri);
      } else {
        com.market.sdk.utils.b.c("FloatService", "IAppDownloadManager is null");
      }
    }
  }
  
  class e
    implements b.b
  {
    e(Uri paramUri) {}
    
    public void run()
      throws RemoteException
    {
      if (c.w0(c.this) != null) {
        c.w0(c.this).i(paramUri);
      } else {
        com.market.sdk.utils.b.c("FloatService", "IAppDownloadManager is null");
      }
    }
  }
  
  class f
    implements b.b
  {
    f(Uri paramUri) {}
    
    public void run()
      throws RemoteException
    {
      if (c.w0(c.this) != null) {
        c.w0(c.this).e0(paramUri);
      } else {
        com.market.sdk.utils.b.c("FloatService", "IAppDownloadManager is null");
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.c
 * JD-Core Version:    0.7.0.1
 */