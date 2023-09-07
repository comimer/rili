package com.miui.maml.data;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class TimeUpdater
  implements Runnable
{
  private WeakReference<DateTimeVariableUpdater> mRef;
  
  public TimeUpdater(DateTimeVariableUpdater paramDateTimeVariableUpdater)
  {
    this.mRef = new WeakReference(paramDateTimeVariableUpdater);
  }
  
  public void run()
  {
    Object localObject = this.mRef;
    if (localObject != null)
    {
      localObject = (DateTimeVariableUpdater)((Reference)localObject).get();
      if (localObject != null) {
        ((DateTimeVariableUpdater)localObject).checkUpdateTime();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.TimeUpdater
 * JD-Core Version:    0.7.0.1
 */