package com.miui.maml;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class RenderVsyncUpdater
{
  private static final String LOG_TAG = "RenderVsyncUpdater";
  private FrameDisplayEventReceiver mDisplayEventReceiver;
  private Handler mHandler;
  private boolean mPaused;
  private n.b<WeakReference<RendererController>> mRendererControllerList = new n.b();
  private Runnable mScheduleFrame = new Runnable()
  {
    public void run()
    {
      RenderVsyncUpdater.this.scheduleFrame();
    }
  };
  private boolean mStopRefresh;
  private int mSyncInterval = 16;
  private long mVsyncLeft;
  
  private RenderVsyncUpdater()
  {
    Looper localLooper;
    if ("android.ui".equals(Thread.currentThread().getName())) {
      localLooper = Looper.myLooper();
    } else {
      localLooper = Looper.getMainLooper();
    }
    this.mHandler = new Handler(localLooper);
    this.mDisplayEventReceiver = new FrameDisplayEventReceiver(localLooper);
  }
  
  private void doRunUpdater()
  {
    if (this.mVsyncLeft > 0L) {
      this.mDisplayEventReceiver.scheduleVsync();
    } else if (!b.a(this.mHandler, this.mScheduleFrame)) {
      this.mHandler.post(this.mScheduleFrame);
    }
  }
  
  public static RenderVsyncUpdater getInstance()
  {
    return RenderVsyncUpdaterHolder.INSTANCE;
  }
  
  private void scheduleFrame()
  {
    long l1 = SystemClock.elapsedRealtime();
    synchronized (this.mRendererControllerList)
    {
      int i = this.mRendererControllerList.size();
      int j = i - 1;
      long l2 = 9223372036854775807L;
      int k = 1;
      while (j >= 0)
      {
        RendererController localRendererController = (RendererController)((WeakReference)this.mRendererControllerList.n(j)).get();
        if (localRendererController == null)
        {
          this.mRendererControllerList.m(j);
        }
        else if ((!localRendererController.isSelfPaused()) || (localRendererController.hasRunnable()))
        {
          if (!localRendererController.hasInited()) {
            localRendererController.init();
          }
          long l3 = localRendererController.updateIfNeeded(l1);
          if (l3 < l2)
          {
            k = 0;
            l2 = l3;
          }
          else
          {
            k = 0;
          }
        }
        j--;
      }
      if ((i != 0) && (k == 0))
      {
        this.mPaused = false;
      }
      else
      {
        this.mPaused = true;
        Log.i("RenderVsyncUpdater", "All controllers paused.");
      }
      if (l2 == 9223372036854775807L) {
        this.mStopRefresh = true;
      } else {
        this.mStopRefresh = false;
      }
      if ((!this.mStopRefresh) && (!this.mPaused) && (l2 > 0L))
      {
        l2 /= this.mSyncInterval;
        this.mVsyncLeft = l2;
        if (l2 > 0L) {
          this.mVsyncLeft = (l2 - 1L);
        }
        this.mDisplayEventReceiver.scheduleVsync();
      }
      return;
    }
  }
  
  public void addRendererController(RendererController paramRendererController)
  {
    synchronized (this.mRendererControllerList)
    {
      int i = this.mRendererControllerList.size();
      for (int j = 0; j < i; j++) {
        if ((RendererController)((WeakReference)this.mRendererControllerList.n(j)).get() == paramRendererController) {
          return;
        }
      }
      n.b localb2 = this.mRendererControllerList;
      WeakReference localWeakReference = new java/lang/ref/WeakReference;
      localWeakReference.<init>(paramRendererController);
      localb2.add(localWeakReference);
      return;
    }
  }
  
  public void forceUpdate()
  {
    this.mVsyncLeft = 0L;
    doRunUpdater();
  }
  
  public void onResume()
  {
    this.mPaused = false;
    this.mStopRefresh = false;
    forceUpdate();
  }
  
  public void removeRendererController(RendererController paramRendererController)
  {
    synchronized (this.mRendererControllerList)
    {
      int i = this.mRendererControllerList.size() - 1;
      while (i >= 0)
      {
        RendererController localRendererController = (RendererController)((WeakReference)this.mRendererControllerList.n(i)).get();
        if ((localRendererController != null) && (localRendererController != paramRendererController)) {
          i--;
        } else {
          this.mRendererControllerList.m(i);
        }
      }
      return;
    }
  }
  
  public void setSyncInterval(int paramInt)
  {
    this.mSyncInterval = paramInt;
  }
  
  public void triggerUpdate()
  {
    doRunUpdater();
  }
  
  private final class FrameDisplayEventReceiver
    extends MamlDisplayEventReceiver
    implements Runnable
  {
    public FrameDisplayEventReceiver(Looper paramLooper)
    {
      super();
    }
    
    public void onVsync(long paramLong)
    {
      RenderVsyncUpdater.access$222(RenderVsyncUpdater.this, 1L);
      Message localMessage = Message.obtain(RenderVsyncUpdater.this.mHandler, this);
      RenderVsyncUpdater.this.mHandler.sendMessageAtTime(localMessage, paramLong / 1000000L);
    }
    
    public void run()
    {
      if (RenderVsyncUpdater.this.mVsyncLeft <= 0L) {
        RenderVsyncUpdater.this.scheduleFrame();
      } else if ((!RenderVsyncUpdater.this.mPaused) && (!RenderVsyncUpdater.this.mStopRefresh)) {
        scheduleVsync();
      }
    }
  }
  
  private static class RenderVsyncUpdaterHolder
  {
    public static final RenderVsyncUpdater INSTANCE = new RenderVsyncUpdater(null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.RenderVsyncUpdater
 * JD-Core Version:    0.7.0.1
 */