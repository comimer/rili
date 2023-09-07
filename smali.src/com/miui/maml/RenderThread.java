package com.miui.maml;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;

@Deprecated
public class RenderThread
  extends Thread
{
  private static final String LOG_TAG = "RenderThread";
  private static RenderThread sGlobalThread;
  private static Object sGlobalThreadLock = new Object();
  private CommandThreadHandler mCmdHanlder;
  private HandlerThread mCmdThread;
  private boolean mPaused = true;
  private ArrayList<RendererController> mRendererControllerList = new ArrayList();
  private Object mResumeSignal = new Object();
  private boolean mSignaled;
  private Object mSleepSignal = new Object();
  private boolean mStarted;
  private boolean mStop;
  
  public RenderThread()
  {
    super("MAML RenderThread");
    initCmdThread();
  }
  
  public RenderThread(RendererController paramRendererController)
  {
    super("MAML RenderThread");
    initCmdThread();
  }
  
  private void doFinish()
  {
    synchronized (this.mRendererControllerList)
    {
      if (this.mRendererControllerList.size() == 0) {
        return;
      }
      int i = this.mRendererControllerList.size();
      for (int j = 0; j < i; j++) {
        ((RendererController)this.mRendererControllerList.get(j)).finish();
      }
      return;
    }
  }
  
  private void doInit()
  {
    synchronized (this.mRendererControllerList)
    {
      if (this.mRendererControllerList.size() == 0) {
        return;
      }
      int i = this.mRendererControllerList.size();
      for (int j = 0; j < i; j++)
      {
        RendererController localRendererController = (RendererController)this.mRendererControllerList.get(j);
        localRendererController.init();
        localRendererController.requestUpdate();
      }
      return;
    }
  }
  
  private void doPause()
  {
    synchronized (this.mRendererControllerList)
    {
      if (this.mRendererControllerList.size() == 0) {
        return;
      }
      int i = this.mRendererControllerList.size();
      for (int j = 0; j < i; j++) {
        RendererController localRendererController = (RendererController)this.mRendererControllerList.get(j);
      }
      return;
    }
  }
  
  private void doResume()
  {
    synchronized (this.mRendererControllerList)
    {
      if (this.mRendererControllerList.size() == 0) {
        return;
      }
      int i = this.mRendererControllerList.size();
      for (int j = 0; j < i; j++) {
        RendererController localRendererController = (RendererController)this.mRendererControllerList.get(j);
      }
      return;
    }
  }
  
  public static RenderThread globalThread()
  {
    return globalThread(false);
  }
  
  public static RenderThread globalThread(boolean paramBoolean)
  {
    RenderThread localRenderThread;
    synchronized (sGlobalThreadLock)
    {
      if (sGlobalThread == null)
      {
        localRenderThread = new com/miui/maml/RenderThread;
        localRenderThread.<init>();
        sGlobalThread = localRenderThread;
      }
      if (paramBoolean)
      {
        paramBoolean = sGlobalThread.isStarted();
        if (paramBoolean) {}
      }
    }
    try
    {
      sGlobalThread.start();
      label45:
      localRenderThread = sGlobalThread;
      return localRenderThread;
      localObject2 = finally;
      throw localObject2;
    }
    catch (IllegalThreadStateException localIllegalThreadStateException)
    {
      break label45;
    }
  }
  
  public static void globalThreadStop()
  {
    synchronized (sGlobalThreadLock)
    {
      RenderThread localRenderThread = sGlobalThread;
      if (localRenderThread != null)
      {
        localRenderThread.setStop();
        sGlobalThread = null;
      }
      return;
    }
  }
  
  private void initCmdThread()
  {
    HandlerThread localHandlerThread = new HandlerThread("cmd");
    this.mCmdThread = localHandlerThread;
    localHandlerThread.start();
    this.mCmdHanlder = new CommandThreadHandler(this.mCmdThread.getLooper());
  }
  
  private void setPausedImpl(boolean paramBoolean)
  {
    if (this.mStop) {
      signal();
    }
    if (this.mPaused == paramBoolean) {
      return;
    }
    synchronized (this.mResumeSignal)
    {
      this.mPaused = paramBoolean;
      if (!paramBoolean) {
        this.mResumeSignal.notify();
      }
      signal();
      return;
    }
  }
  
  private final void waitSleep(long paramLong)
  {
    if ((!this.mSignaled) && (paramLong > 0L)) {
      synchronized (this.mSleepSignal)
      {
        boolean bool = this.mSignaled;
        if (!bool) {
          try
          {
            this.mSleepSignal.wait(paramLong);
          }
          catch (InterruptedException localInterruptedException)
          {
            localInterruptedException.printStackTrace();
          }
        }
        return;
      }
    }
  }
  
  private void waiteForResume()
  {
    try
    {
      this.mResumeSignal.wait();
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }
  
  public void addRendererController(RendererController paramRendererController)
  {
    synchronized (this.mRendererControllerList)
    {
      if (this.mRendererControllerList.contains(paramRendererController))
      {
        Log.w("RenderThread", "addRendererController: RendererController already exists");
        return;
      }
      this.mRendererControllerList.add(paramRendererController);
      setPaused(false);
      return;
    }
  }
  
  public boolean isStarted()
  {
    return this.mStarted;
  }
  
  public void removeRendererController(RendererController paramRendererController)
  {
    synchronized (this.mRendererControllerList)
    {
      this.mRendererControllerList.remove(paramRendererController);
      return;
    }
  }
  
  public void run()
  {
    Log.i("RenderThread", "RenderThread started");
    try
    {
      doInit();
      this.mStarted = true;
      while (!this.mStop)
      {
        if (this.mPaused) {
          synchronized (this.mResumeSignal)
          {
            if (this.mPaused)
            {
              doPause();
              Log.i("RenderThread", "RenderThread paused, waiting for signal");
              waiteForResume();
              Log.i("RenderThread", "RenderThread resumed");
              doResume();
            }
          }
        }
        if (!this.mStop)
        {
          long l1 = SystemClock.elapsedRealtime();
          long l2 = 9223372036854775807L;
          synchronized (this.mRendererControllerList)
          {
            int i = this.mRendererControllerList.size();
            int j = 1;
            for (int k = 0; (k < i) && (!this.mPaused); k++)
            {
              ??? = (RendererController)this.mRendererControllerList.get(k);
              if ((!((RendererController)???).isSelfPaused()) || (((RendererController)???).hasRunnable()))
              {
                if (!((RendererController)???).hasInited()) {
                  ((RendererController)???).init();
                }
                long l3 = ((RendererController)???).updateIfNeeded(l1);
                long l4 = l2;
                if (l3 < l2) {
                  l4 = l3;
                }
                j = 0;
                l2 = l4;
              }
            }
            if ((i != 0) && (j == 0))
            {
              waitSleep(l2);
              this.mSignaled = false;
            }
            else
            {
              this.mPaused = true;
              Log.i("RenderThread", "All controllers paused.");
            }
          }
        }
      }
      doFinish();
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      localOutOfMemoryError.printStackTrace();
      Log.e("RenderThread", localOutOfMemoryError.toString());
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      Log.e("RenderThread", localException.toString());
    }
    this.mCmdThread.quit();
    Log.i("RenderThread", "RenderThread stopped");
  }
  
  public void setPaused(boolean paramBoolean)
  {
    this.mCmdHanlder.setPause(paramBoolean);
  }
  
  public void setStop()
  {
    this.mStop = true;
    setPaused(false);
  }
  
  public void signal()
  {
    if (this.mSignaled) {
      return;
    }
    synchronized (this.mSleepSignal)
    {
      this.mSignaled = true;
      this.mSleepSignal.notify();
      return;
    }
  }
  
  private class CommandThreadHandler
    extends Handler
  {
    private static final int MSG_PAUSE = 0;
    private static final int MSG_RESUME = 1;
    
    public CommandThreadHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      int i = paramMessage.what;
      if (i != 0)
      {
        if (i == 1) {
          RenderThread.this.setPausedImpl(false);
        }
      }
      else {
        RenderThread.this.setPausedImpl(true);
      }
    }
    
    public void setPause(boolean paramBoolean)
    {
      Message localMessage = new Message();
      localMessage.what = (paramBoolean ^ true);
      sendMessage(localMessage);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.RenderThread
 * JD-Core Version:    0.7.0.1
 */