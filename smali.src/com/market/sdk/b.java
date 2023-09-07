package com.market.sdk;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.market.sdk.utils.d;

public class b
{
  @SuppressLint({"StaticFieldLeak"})
  private static volatile b b;
  private String a;
  
  public static b d(Application paramApplication)
  {
    if (b == null) {
      try
      {
        if (b == null)
        {
          paramApplication = new com/market/sdk/b;
          paramApplication.<init>();
          b = paramApplication;
        }
      }
      finally {}
    }
    return b;
  }
  
  private String e(Uri paramUri, String paramString)
  {
    if ((paramUri != null) && (paramUri.isHierarchical())) {
      return paramUri.getQueryParameter(paramString);
    }
    return "";
  }
  
  public boolean b(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramString.contains("&overlayPosition=")))
    {
      String str = d.a(paramString);
      if (TextUtils.isEmpty(str)) {
        return false;
      }
      try
      {
        i6.a locala = c.x0(com.market.sdk.utils.a.a(), this.a);
        paramString = new java/lang/Thread;
        c localc = new com/market/sdk/b$c;
        localc.<init>(this, locala, str);
        paramString.<init>(localc);
        paramString.start();
        return true;
      }
      catch (Exception paramString)
      {
        Log.e("MarketManager", paramString.toString());
      }
    }
    return false;
  }
  
  public boolean c(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramString.contains("&overlayPosition="))) {
      try
      {
        c.x0(com.market.sdk.utils.a.a(), this.a).Q(Uri.parse(paramString));
        return true;
      }
      catch (Exception paramString)
      {
        Log.e("MarketManager", paramString.toString());
      }
    }
    return false;
  }
  
  public boolean f(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramString.contains("&overlayPosition="))) {
      try
      {
        i6.a locala = c.x0(com.market.sdk.utils.a.a(), this.a);
        if (g.b().c(MarketFeatures.FLOAT_CARD))
        {
          locala.i(Uri.parse(paramString));
        }
        else
        {
          Thread localThread = new java/lang/Thread;
          a locala1 = new com/market/sdk/b$a;
          locala1.<init>(this, locala, paramString);
          localThread.<init>(locala1);
          localThread.start();
        }
        return true;
      }
      catch (Exception paramString)
      {
        Log.e("MarketManager", paramString.toString());
      }
    }
    return false;
  }
  
  public boolean g(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramString.contains("&overlayPosition="))) {
      try
      {
        i6.a locala = c.x0(com.market.sdk.utils.a.a(), this.a);
        if (g.b().c(MarketFeatures.FLOAT_CARD))
        {
          locala.e0(Uri.parse(paramString));
        }
        else
        {
          Thread localThread = new java/lang/Thread;
          b localb = new com/market/sdk/b$b;
          localb.<init>(this, locala, paramString);
          localThread.<init>(localb);
          localThread.start();
        }
        return true;
      }
      catch (Exception paramString)
      {
        Log.e("MarketManager", paramString.toString());
      }
    }
    return false;
  }
  
  class a
    implements Runnable
  {
    a(i6.a parama, String paramString) {}
    
    public void run()
    {
      try
      {
        this.a.l(b.a(b.this, Uri.parse(this.b), "packageName"), com.market.sdk.utils.a.a().getPackageName());
        label32:
        return;
      }
      catch (RemoteException localRemoteException)
      {
        break label32;
      }
    }
  }
  
  class b
    implements Runnable
  {
    b(i6.a parama, String paramString) {}
    
    public void run()
    {
      try
      {
        this.a.W(b.a(b.this, Uri.parse(this.b), "packageName"), com.market.sdk.utils.a.a().getPackageName());
        label32:
        return;
      }
      catch (RemoteException localRemoteException)
      {
        break label32;
      }
    }
  }
  
  class c
    implements Runnable
  {
    c(i6.a parama, String paramString) {}
    
    public void run()
    {
      try
      {
        this.a.a0(this.b, com.market.sdk.utils.a.a().getPackageName());
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MarketManager", localRemoteException.toString());
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.b
 * JD-Core Version:    0.7.0.1
 */