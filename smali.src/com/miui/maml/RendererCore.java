package com.miui.maml;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.util.Log;
import com.miui.maml.elements.ScreenElement;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class RendererCore
{
  private static final String LOG_TAG = "RendererCore";
  private boolean mCleaned;
  private MultipleRenderable mMultipleRenderable;
  private WeakReference<OnReleaseListener> mOnReleaseListener;
  private boolean mReleased;
  private ScreenElementRoot mRoot;
  
  public RendererCore(ScreenElementRoot paramScreenElementRoot)
  {
    MultipleRenderable localMultipleRenderable = new MultipleRenderable();
    this.mMultipleRenderable = localMultipleRenderable;
    this.mRoot = paramScreenElementRoot;
    paramScreenElementRoot.setRenderControllerRenderable(localMultipleRenderable);
    this.mRoot.selfInit();
    this.mRoot.attachToVsync();
    this.mRoot.requestUpdate();
  }
  
  public void addRenderable(RendererController.IRenderable paramIRenderable)
  {
    try
    {
      boolean bool = this.mCleaned;
      if (bool) {
        return;
      }
      this.mMultipleRenderable.add(paramIRenderable);
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("add: ");
      localStringBuilder.append(paramIRenderable);
      localStringBuilder.append(" size:");
      localStringBuilder.append(this.mMultipleRenderable.size());
      Log.d("RendererCore", localStringBuilder.toString());
      this.mRoot.selfResume();
      this.mReleased = false;
      return;
    }
    finally {}
  }
  
  public void cleanUp()
  {
    this.mCleaned = true;
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("cleanUp: ");
    ((StringBuilder)localObject).append(toString());
    Log.d("RendererCore", ((StringBuilder)localObject).toString());
    localObject = this.mRoot;
    if (localObject != null)
    {
      ((ScreenElementRoot)localObject).detachFromVsync();
      this.mRoot.selfFinish();
      this.mRoot = null;
    }
  }
  
  protected void finalize()
    throws Throwable
  {
    cleanUp();
    super.finalize();
  }
  
  public ScreenElementRoot getRoot()
  {
    return this.mRoot;
  }
  
  public void pauseRenderable(RendererController.IRenderable paramIRenderable)
  {
    try
    {
      boolean bool = this.mCleaned;
      if (bool) {
        return;
      }
      if (this.mMultipleRenderable.pause(paramIRenderable) == 0)
      {
        paramIRenderable = new java/lang/StringBuilder;
        paramIRenderable.<init>();
        paramIRenderable.append("self pause: ");
        paramIRenderable.append(toString());
        Log.d("RendererCore", paramIRenderable.toString());
        this.mRoot.selfPause();
      }
      return;
    }
    finally {}
  }
  
  public void removeRenderable(RendererController.IRenderable paramIRenderable)
  {
    try
    {
      boolean bool = this.mCleaned;
      if (bool) {
        return;
      }
      this.mMultipleRenderable.remove(paramIRenderable);
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("remove: ");
      localStringBuilder.append(paramIRenderable);
      localStringBuilder.append(" size:");
      localStringBuilder.append(this.mMultipleRenderable.size());
      Log.d("RendererCore", localStringBuilder.toString());
      if (this.mMultipleRenderable.size() == 0)
      {
        this.mRoot.selfPause();
        if (!this.mReleased)
        {
          paramIRenderable = this.mOnReleaseListener;
          if ((paramIRenderable != null) && (paramIRenderable.get() != null) && (((OnReleaseListener)this.mOnReleaseListener.get()).OnRendererCoreReleased(this))) {
            cleanUp();
          }
        }
        this.mReleased = true;
      }
      return;
    }
    finally {}
  }
  
  public void render(Canvas paramCanvas)
  {
    if (this.mCleaned) {
      return;
    }
    this.mRoot.render(paramCanvas);
  }
  
  public void resumeRenderable(RendererController.IRenderable paramIRenderable)
  {
    try
    {
      boolean bool = this.mCleaned;
      if (bool) {
        return;
      }
      this.mMultipleRenderable.resume(paramIRenderable);
      paramIRenderable = new java/lang/StringBuilder;
      paramIRenderable.<init>();
      paramIRenderable.append("self resume: ");
      paramIRenderable.append(toString());
      Log.d("RendererCore", paramIRenderable.toString());
      this.mRoot.selfResume();
      return;
    }
    finally {}
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.setColorFilter(paramColorFilter);
    }
  }
  
  public void setOnReleaseListener(OnReleaseListener paramOnReleaseListener)
  {
    this.mOnReleaseListener = new WeakReference(paramOnReleaseListener);
  }
  
  public static abstract interface OnReleaseListener
  {
    public abstract boolean OnRendererCoreReleased(RendererCore paramRendererCore);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.RendererCore
 * JD-Core Version:    0.7.0.1
 */