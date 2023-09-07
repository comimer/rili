package com.miui.systemAdSolution.remoteMethodInvoker;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

class c
  extends Thread
{
  c(d paramd, Intent paramIntent) {}
  
  public void run()
  {
    try
    {
      d.access$300(this.b).bindService(this.a, this.b, 1);
    }
    catch (Exception localException)
    {
      Log.e("RemoteMethodInvoker", "invokeInNewThread: ", localException);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.remoteMethodInvoker.c
 * JD-Core Version:    0.7.0.1
 */