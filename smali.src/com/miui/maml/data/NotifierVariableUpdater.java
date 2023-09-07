package com.miui.maml.data;

import android.content.Context;
import android.content.Intent;
import com.miui.maml.NotifierManager;
import com.miui.maml.NotifierManager.OnNotifyListener;
import com.miui.maml.ScreenContext;

public abstract class NotifierVariableUpdater
  extends VariableUpdater
  implements NotifierManager.OnNotifyListener
{
  protected NotifierManager mNotifierManager;
  private String mType;
  
  public NotifierVariableUpdater(VariableUpdaterManager paramVariableUpdaterManager, String paramString)
  {
    super(paramVariableUpdaterManager);
    this.mType = paramString;
    this.mNotifierManager = NotifierManager.getInstance(getContext().mContext);
  }
  
  public void finish()
  {
    this.mNotifierManager.releaseNotifier(this.mType, this);
  }
  
  public void init()
  {
    this.mNotifierManager.acquireNotifier(this.mType, this);
  }
  
  public abstract void onNotify(Context paramContext, Intent paramIntent, Object paramObject);
  
  public void pause()
  {
    this.mNotifierManager.pause(this.mType, this);
  }
  
  public void resume()
  {
    this.mNotifierManager.resume(this.mType, this);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.NotifierVariableUpdater
 * JD-Core Version:    0.7.0.1
 */