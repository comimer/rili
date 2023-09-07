package com.miui.maml;

import android.util.Log;
import android.view.MotionEvent;
import com.miui.maml.elements.FramerateController;
import com.miui.maml.util.HideSdkDependencyUtils;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

public class RendererController
  implements FramerateTokenList.FramerateChangeListener
{
  private static final String LOG_TAG = "RendererController";
  private static final int MAX_MSG_COUNT = 3;
  private float mCurFramerate;
  private long mFrameTime = 9223372036854775807L;
  private ArrayList<FramerateController> mFramerateControllers = new ArrayList();
  private FramerateTokenList mFramerateTokenList = new FramerateTokenList();
  private boolean mInited;
  private long mLastUpdateSystemTime;
  private Listener mListener;
  private byte[] mLock = new byte[0];
  private Object mMsgLock = new Object();
  private LinkedList<MotionEvent> mMsgQueue;
  private boolean mNeedReset;
  private boolean mPendingRender;
  private ArrayList<Runnable> mReadRunnableQueue = new ArrayList();
  private boolean mSelfPaused = true;
  private boolean mSelfRender;
  private boolean mShouldUpdate;
  private float mTouchX = -1.0F;
  private float mTouchY = -1.0F;
  private ArrayList<Runnable> mWriteRunnableQueue = new ArrayList();
  private Object mWriteRunnableQueueLock = new Object();
  
  private void runRunnables()
  {
    if (!this.mNeedReset) {
      synchronized (this.mWriteRunnableQueueLock)
      {
        ArrayList localArrayList = this.mWriteRunnableQueue;
        this.mWriteRunnableQueue = this.mReadRunnableQueue;
        this.mReadRunnableQueue = localArrayList;
        int i = localArrayList.size();
        for (int j = 0; j < i; j++) {
          ((Runnable)this.mReadRunnableQueue.get(j)).run();
        }
        this.mReadRunnableQueue.clear();
      }
    }
  }
  
  public void addFramerateController(FramerateController paramFramerateController)
  {
    if (this.mFramerateControllers.contains(paramFramerateController)) {
      return;
    }
    this.mFramerateControllers.add(paramFramerateController);
  }
  
  public final FramerateTokenList.FramerateToken createToken(String paramString)
  {
    return this.mFramerateTokenList.createToken(paramString);
  }
  
  public final void doRender()
  {
    Listener localListener = this.mListener;
    if (localListener != null)
    {
      this.mPendingRender = true;
      localListener.doRender();
    }
  }
  
  public final void doneRender()
  {
    this.mPendingRender = false;
    triggerUpdate();
  }
  
  public void finish()
  {
    synchronized (this.mLock)
    {
      if (!this.mInited) {
        return;
      }
      Listener localListener = this.mListener;
      if (localListener != null) {
        try
        {
          localListener.finish();
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          Log.e("RendererController", localException.toString());
        }
      }
      synchronized (this.mMsgLock)
      {
        if (this.mMsgQueue != null) {
          while (this.mMsgQueue.size() > 0) {
            ((MotionEvent)this.mMsgQueue.poll()).recycle();
          }
        }
        synchronized (this.mWriteRunnableQueueLock)
        {
          this.mWriteRunnableQueue.clear();
          this.mInited = false;
          this.mFramerateTokenList.clear();
          return;
        }
      }
    }
  }
  
  public void forceUpdate()
  {
    Listener localListener = this.mListener;
    if (localListener != null) {
      localListener.forceUpdate();
    }
    RenderVsyncUpdater.getInstance().forceUpdate();
  }
  
  public final MotionEvent getMessage()
  {
    ??? = this.mMsgQueue;
    MotionEvent localMotionEvent = null;
    if (??? == null) {
      return null;
    }
    synchronized (this.mMsgLock)
    {
      LinkedList localLinkedList = this.mMsgQueue;
      if (localLinkedList != null) {
        localMotionEvent = (MotionEvent)localLinkedList.poll();
      }
      return localMotionEvent;
    }
  }
  
  public final boolean hasInited()
  {
    return this.mInited;
  }
  
  public final boolean hasMessage()
  {
    ??? = this.mMsgQueue;
    boolean bool = false;
    if (??? == null) {
      return false;
    }
    synchronized (this.mMsgLock)
    {
      LinkedList localLinkedList = this.mMsgQueue;
      if ((localLinkedList != null) && (localLinkedList.size() > 0)) {
        bool = true;
      }
      return bool;
    }
  }
  
  public final boolean hasRunnable()
  {
    synchronized (this.mWriteRunnableQueueLock)
    {
      boolean bool;
      if (!this.mWriteRunnableQueue.isEmpty()) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public void init()
  {
    synchronized (this.mLock)
    {
      if (this.mInited) {
        return;
      }
      Listener localListener = this.mListener;
      if (localListener != null) {
        try
        {
          localListener.init();
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          Log.e("RendererController", localException.toString());
        }
      }
      this.mInited = true;
      return;
    }
  }
  
  public final boolean isSelfPaused()
  {
    return this.mSelfPaused;
  }
  
  public void onFrameRateChage(float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 > 0.0F) {
      triggerUpdate();
    }
  }
  
  public void onHover(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent == null) {
      return;
    }
    Listener localListener = this.mListener;
    if (localListener != null) {
      try
      {
        localListener.onHover(paramMotionEvent);
      }
      catch (OutOfMemoryError paramMotionEvent)
      {
        paramMotionEvent.printStackTrace();
        Log.e("RendererController", paramMotionEvent.toString());
      }
      catch (Exception paramMotionEvent)
      {
        paramMotionEvent.printStackTrace();
        Log.e("RendererController", paramMotionEvent.toString());
      }
    }
  }
  
  public void onTouch(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent == null) {
      return;
    }
    Listener localListener = this.mListener;
    if (localListener != null) {
      try
      {
        localListener.onTouch(paramMotionEvent);
      }
      catch (OutOfMemoryError paramMotionEvent)
      {
        paramMotionEvent.printStackTrace();
        Log.e("RendererController", paramMotionEvent.toString());
      }
      catch (Exception paramMotionEvent)
      {
        paramMotionEvent.printStackTrace();
        Log.e("RendererController", paramMotionEvent.toString());
      }
    }
  }
  
  public final boolean pendingRender()
  {
    return this.mPendingRender;
  }
  
  @Deprecated
  public void postMessage(MotionEvent paramMotionEvent)
  {
    synchronized (this.mMsgLock)
    {
      LinkedList localLinkedList;
      if (this.mMsgQueue == null)
      {
        localLinkedList = new java/util/LinkedList;
        localLinkedList.<init>();
        this.mMsgQueue = localLinkedList;
      }
      if ((paramMotionEvent.getActionMasked() != 2) || (paramMotionEvent.getX() != this.mTouchX) || (paramMotionEvent.getY() != this.mTouchY))
      {
        this.mMsgQueue.add(paramMotionEvent);
        this.mTouchX = paramMotionEvent.getX();
        this.mTouchY = paramMotionEvent.getY();
      }
      if (this.mMsgQueue.size() > 3)
      {
        localLinkedList = null;
        Iterator localIterator = this.mMsgQueue.iterator();
        do
        {
          paramMotionEvent = localLinkedList;
          if (!localIterator.hasNext()) {
            break;
          }
          paramMotionEvent = (MotionEvent)localIterator.next();
        } while (paramMotionEvent.getActionMasked() != 2);
        if (paramMotionEvent != null)
        {
          this.mMsgQueue.remove(paramMotionEvent);
          paramMotionEvent.recycle();
        }
      }
      forceUpdate();
      return;
    }
  }
  
  public void postRunnable(Runnable paramRunnable)
  {
    if (paramRunnable != null) {
      synchronized (this.mWriteRunnableQueueLock)
      {
        if (!this.mWriteRunnableQueue.contains(paramRunnable)) {
          this.mWriteRunnableQueue.add(paramRunnable);
        }
        requestUpdate();
        return;
      }
    }
    throw new NullPointerException("postRunnable null");
  }
  
  public void postRunnableAtFrontOfQueue(Runnable paramRunnable)
  {
    if (paramRunnable != null) {
      synchronized (this.mWriteRunnableQueueLock)
      {
        if (!this.mWriteRunnableQueue.contains(paramRunnable)) {
          this.mWriteRunnableQueue.add(0, paramRunnable);
        }
        requestUpdate();
        return;
      }
    }
    throw new NullPointerException("postRunnable null");
  }
  
  public void removeFramerateController(FramerateController paramFramerateController)
  {
    this.mFramerateControllers.remove(paramFramerateController);
  }
  
  public final void removeToken(FramerateTokenList.FramerateToken paramFramerateToken)
  {
    this.mFramerateTokenList.removeToken(paramFramerateToken);
  }
  
  public final void requestUpdate()
  {
    this.mShouldUpdate = true;
    forceUpdate();
  }
  
  public void selfPause()
  {
    if (!this.mInited) {
      return;
    }
    synchronized (this.mLock)
    {
      if (!this.mSelfPaused)
      {
        this.mSelfPaused = true;
        Listener localListener = this.mListener;
        if (localListener != null) {
          localListener.pause();
        }
      }
      this.mPendingRender = false;
      return;
    }
  }
  
  public void selfResume()
  {
    if (!this.mInited) {
      return;
    }
    synchronized (this.mLock)
    {
      if (this.mSelfPaused)
      {
        this.mSelfPaused = false;
        Listener localListener = this.mListener;
        if (localListener != null) {
          localListener.resume();
        }
      }
      RenderVsyncUpdater.getInstance().onResume();
      return;
    }
  }
  
  public void setListener(Listener paramListener)
  {
    this.mListener = paramListener;
  }
  
  public void setNeedReset(boolean paramBoolean)
  {
    this.mNeedReset = paramBoolean;
  }
  
  public void setSelfRender(boolean paramBoolean)
  {
    this.mSelfRender = paramBoolean;
  }
  
  public void tick(long paramLong)
  {
    this.mShouldUpdate = false;
    Listener localListener = this.mListener;
    if (localListener != null) {
      try
      {
        localListener.tick(paramLong);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        Log.e("RendererController", localException.toString());
      }
    }
    this.mLastUpdateSystemTime = paramLong;
  }
  
  public void triggerUpdate()
  {
    Listener localListener = this.mListener;
    if (localListener != null) {
      localListener.triggerUpdate();
    }
    RenderVsyncUpdater.getInstance().triggerUpdate();
  }
  
  public long update(long paramLong)
  {
    long l1 = updateFramerate(paramLong);
    boolean bool = hasRunnable();
    long l2;
    if (this.mPendingRender)
    {
      l2 = l1;
      if (!bool) {}
    }
    else
    {
      runRunnables();
      MotionEvent localMotionEvent = getMessage();
      if (localMotionEvent != null) {
        if (HideSdkDependencyUtils.MotionEvent_isTouchEvent(localMotionEvent)) {
          onTouch(localMotionEvent);
        } else {
          onHover(localMotionEvent);
        }
      }
      tick(paramLong);
      if (!this.mSelfRender) {
        doRender();
      }
      if (!this.mShouldUpdate)
      {
        l2 = l1;
        if (!hasMessage()) {}
      }
      else
      {
        l2 = 0L;
      }
    }
    return l2;
  }
  
  public final long updateFramerate(long paramLong)
  {
    int i = this.mFramerateControllers.size();
    long l1 = 9223372036854775807L;
    int j = 0;
    for (long l2 = 9223372036854775807L; j < i; l2 = l4)
    {
      long l3 = ((FramerateController)this.mFramerateControllers.get(j)).updateFramerate(paramLong);
      l4 = l2;
      if (l3 < l2) {
        l4 = l3;
      }
      j++;
    }
    float f1 = this.mFramerateTokenList.getFramerate();
    float f2 = this.mCurFramerate;
    if (f2 != f1)
    {
      if ((f2 >= 1.0F) && (f1 < 1.0F)) {
        requestUpdate();
      }
      this.mCurFramerate = f1;
      paramLong = l1;
      if (f1 != 0.0F) {
        paramLong = (1000.0F / f1);
      }
      this.mFrameTime = paramLong;
    }
    long l4 = this.mFrameTime;
    paramLong = l2;
    if (l4 < l2) {
      paramLong = l4;
    }
    return paramLong;
  }
  
  public long updateIfNeeded(long paramLong)
  {
    long l1 = updateFramerate(paramLong);
    long l2 = this.mFrameTime;
    long l3 = 9223372036854775807L;
    if (l2 < 9223372036854775807L) {
      l3 = l2 - (paramLong - this.mLastUpdateSystemTime);
    }
    boolean bool = hasRunnable();
    if ((l3 > 0L) && (!this.mShouldUpdate) && (!hasMessage()) && (!bool))
    {
      l2 = l1;
      if (l3 < l1) {
        l2 = l3;
      }
    }
    else if (this.mPendingRender)
    {
      l2 = l1;
      if (!bool) {}
    }
    else
    {
      runRunnables();
      MotionEvent localMotionEvent = getMessage();
      if (localMotionEvent != null) {
        if (HideSdkDependencyUtils.MotionEvent_isTouchEvent(localMotionEvent)) {
          onTouch(localMotionEvent);
        } else {
          onHover(localMotionEvent);
        }
      }
      tick(paramLong);
      if (!this.mSelfRender) {
        doRender();
      }
      if (!this.mShouldUpdate)
      {
        l2 = l1;
        if (!hasMessage()) {}
      }
      else
      {
        l2 = 0L;
      }
    }
    return l2;
  }
  
  public static abstract class EmptyListener
    implements RendererController.Listener
  {
    public void doRender() {}
    
    public void finish() {}
    
    public void init() {}
    
    public void onHover(MotionEvent paramMotionEvent) {}
    
    public void onTouch(MotionEvent paramMotionEvent) {}
    
    public void pause() {}
    
    public void resume() {}
    
    public void tick(long paramLong) {}
  }
  
  public static abstract interface IRenderable
  {
    public abstract void doRender();
  }
  
  public static abstract interface ISelfUpdateRenderable
    extends RendererController.IRenderable
  {
    public abstract void forceUpdate();
    
    public abstract void triggerUpdate();
  }
  
  public static abstract interface Listener
    extends RendererController.ISelfUpdateRenderable
  {
    public abstract void finish();
    
    public abstract void init();
    
    public abstract void onHover(MotionEvent paramMotionEvent);
    
    public abstract void onTouch(MotionEvent paramMotionEvent);
    
    public abstract void pause();
    
    public abstract void resume();
    
    public abstract void tick(long paramLong);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.RendererController
 * JD-Core Version:    0.7.0.1
 */