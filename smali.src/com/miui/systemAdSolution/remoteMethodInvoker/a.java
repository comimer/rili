package com.miui.systemAdSolution.remoteMethodInvoker;

import java.util.concurrent.Callable;

class a
  implements Callable
{
  public Object call()
  {
    throw new IllegalStateException("this should never be called");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.remoteMethodInvoker.a
 * JD-Core Version:    0.7.0.1
 */