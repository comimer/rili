package com.miui.systemAdSolution.remoteMethodInvoker;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public abstract class d<T, S extends IInterface>
  extends FutureTask<T>
  implements ServiceConnection
{
  private static final String TAG = "RemoteMethodInvoker";
  private Context mContext;
  private T mResult;
  private S mService;
  private Class<S> mServiceClass;
  
  public d(Context paramContext, Class<S> paramClass)
  {
    super(new a());
    this.mContext = paramContext;
    this.mServiceClass = paramClass;
    paramContext = new StringBuilder();
    paramContext.append(this.mServiceClass.getPackage().toString());
    paramContext.append(this.mServiceClass);
    Log.i("RemoteMethodInvoker", paramContext.toString());
  }
  
  public abstract T innerInvoke(S paramS);
  
  public T invoke(Intent paramIntent)
  {
    if (this.mContext.bindService(paramIntent, this, 1)) {
      try
      {
        paramIntent = get();
        return paramIntent;
      }
      catch (ExecutionException paramIntent)
      {
        return null;
      }
      catch (InterruptedException paramIntent)
      {
        Thread.currentThread().interrupt();
        return null;
      }
    }
    Log.e("RemoteMethodInvoker", "Can not find Service");
    return null;
  }
  
  public void invokeAsync(Intent paramIntent)
  {
    this.mContext.bindService(paramIntent, this, 1);
  }
  
  public void invokeInNewThread(Intent paramIntent)
  {
    new c(this, paramIntent).start();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    new b(this, paramIBinder).start();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.remoteMethodInvoker.d
 * JD-Core Version:    0.7.0.1
 */