package com.miui.maml;

import android.os.Handler;
import android.os.SystemClock;

@Deprecated
public abstract class RenderUpdater
  implements RendererController.ISelfUpdateRenderable
{
  private boolean mAutoCleanup;
  private long mCreateTime;
  private long mDelay;
  private Handler mHandler;
  protected long mLastUpdateTime;
  protected long mNextUpdateInterval;
  private boolean mPaused;
  protected boolean mPendingRender;
  private ScreenElementRoot mRoot;
  private Runnable mRunUpdater = new Runnable()
  {
    public void run()
    {
      RenderUpdater.this.doRunUpdater();
      RenderUpdater.access$602(RenderUpdater.this, true);
    }
  };
  private boolean mSignaled;
  private boolean mStarted;
  private Runnable mUpdater = new Runnable()
  {
    public void run()
    {
      RenderUpdater.access$002(RenderUpdater.this, false);
      long l = SystemClock.elapsedRealtime();
      RenderUpdater localRenderUpdater = RenderUpdater.this;
      localRenderUpdater.mNextUpdateInterval = localRenderUpdater.mRoot.updateIfNeeded(l);
      localRenderUpdater = RenderUpdater.this;
      localRenderUpdater.mLastUpdateTime = l;
      if ((!localRenderUpdater.mPendingRender) && (!localRenderUpdater.mPaused) && (!RenderUpdater.this.mSignaled))
      {
        localRenderUpdater = RenderUpdater.this;
        if (localRenderUpdater.mNextUpdateInterval < 9223372036854775807L) {
          localRenderUpdater.mHandler.postDelayed(RenderUpdater.this.mUpdater, RenderUpdater.this.mNextUpdateInterval);
        }
      }
    }
  };
  
  public RenderUpdater(ScreenElementRoot paramScreenElementRoot, Handler paramHandler)
  {
    this(paramScreenElementRoot, paramHandler, false);
  }
  
  public RenderUpdater(ScreenElementRoot paramScreenElementRoot, Handler paramHandler, boolean paramBoolean)
  {
    this.mRoot = paramScreenElementRoot;
    this.mHandler = paramHandler;
    this.mAutoCleanup = paramBoolean;
  }
  
  private long checkDelay()
  {
    long l1 = this.mDelay;
    long l2 = 0L;
    if (l1 <= 0L) {
      return 0L;
    }
    long l3 = SystemClock.elapsedRealtime() - this.mCreateTime;
    l1 = this.mDelay;
    if (l3 < l1) {
      l2 = l1 - l3;
    }
    return l2;
  }
  
  private void doRunUpdater()
  {
    if (this.mSignaled) {
      return;
    }
    this.mSignaled = true;
    this.mHandler.removeCallbacks(this.mUpdater);
    this.mHandler.post(this.mUpdater);
  }
  
  public void cleanUp()
  {
    this.mHandler.removeCallbacks(this.mUpdater);
    this.mPaused = true;
    this.mRoot.selfFinish();
    this.mSignaled = false;
  }
  
  public final void doRender()
  {
    this.mPendingRender = true;
    doRenderImp();
  }
  
  protected abstract void doRenderImp();
  
  public void doneRender()
  {
    this.mPendingRender = false;
    if ((!this.mPaused) && (!this.mSignaled))
    {
      long l = this.mNextUpdateInterval;
      if (l < 9223372036854775807L) {
        this.mHandler.postDelayed(this.mUpdater, l - (SystemClock.elapsedRealtime() - this.mLastUpdateTime));
      }
    }
  }
  
  protected void finalize()
    throws Throwable
  {
    if (this.mAutoCleanup) {
      cleanUp();
    }
    super.finalize();
  }
  
  public void forceUpdate()
  {
    runUpdater();
  }
  
  public void init()
  {
    this.mPaused = false;
    this.mRoot.setRenderControllerRenderable(this);
    this.mRoot.selfInit();
  }
  
  public boolean isStarted()
  {
    return this.mStarted;
  }
  
  public void onPause()
  {
    this.mRoot.selfPause();
    this.mSignaled = false;
    this.mPaused = true;
  }
  
  public void onResume()
  {
    this.mPaused = false;
    this.mRoot.selfResume();
    runUpdater();
  }
  
  public void runUpdater()
  {
    long l;
    if (this.mStarted) {
      l = 0L;
    } else {
      l = checkDelay();
    }
    if (l > 0L)
    {
      if (!b.a(this.mHandler, this.mRunUpdater)) {
        this.mHandler.postDelayed(this.mRunUpdater, l);
      }
    }
    else
    {
      doRunUpdater();
      this.mStarted = true;
    }
  }
  
  public void setAutoCleanup(boolean paramBoolean)
  {
    this.mAutoCleanup = paramBoolean;
  }
  
  public void setStartDelay(long paramLong1, long paramLong2)
  {
    this.mCreateTime = paramLong1;
    this.mDelay = paramLong2;
    if (paramLong2 <= 0L) {
      this.mStarted = true;
    }
  }
  
  public void triggerUpdate()
  {
    runUpdater();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.RenderUpdater
 * JD-Core Version:    0.7.0.1
 */