package com.miui.maml;

import android.os.Looper;
import android.view.DisplayEventReceiver;
import android.view.DisplayEventReceiver.VsyncEventData;

public abstract class MamlDisplayEventReceiver
  extends DisplayEventReceiver
{
  public MamlDisplayEventReceiver(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public abstract void onVsync(long paramLong);
  
  public void onVsync(long paramLong, int paramInt1, int paramInt2)
  {
    onVsync(paramLong);
  }
  
  public void onVsync(long paramLong1, long paramLong2, int paramInt)
  {
    onVsync(paramLong1);
  }
  
  public void onVsync(long paramLong1, long paramLong2, int paramInt, DisplayEventReceiver.VsyncEventData paramVsyncEventData)
  {
    onVsync(paramLong1);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.MamlDisplayEventReceiver
 * JD-Core Version:    0.7.0.1
 */