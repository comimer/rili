package com.miui.maml;

import android.view.MotionEvent;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class SingleRootListener
  implements RendererController.Listener
{
  private static final String LOG_TAG = "SingleRootListener";
  private WeakReference<RendererController.IRenderable> mRenderable;
  private ScreenElementRoot mRoot;
  
  public SingleRootListener(ScreenElementRoot paramScreenElementRoot, RendererController.IRenderable paramIRenderable)
  {
    setRoot(paramScreenElementRoot);
    setRenderable(paramIRenderable);
  }
  
  public void doRender()
  {
    Object localObject = this.mRenderable;
    if (localObject != null) {
      localObject = (RendererController.IRenderable)((Reference)localObject).get();
    } else {
      localObject = null;
    }
    if (localObject != null) {
      ((RendererController.IRenderable)localObject).doRender();
    }
  }
  
  public void finish()
  {
    this.mRoot.finish();
  }
  
  public void forceUpdate()
  {
    Object localObject = this.mRenderable;
    if (localObject != null) {
      localObject = (RendererController.IRenderable)((Reference)localObject).get();
    } else {
      localObject = null;
    }
    if ((localObject != null) && ((localObject instanceof RendererController.ISelfUpdateRenderable))) {
      ((RendererController.ISelfUpdateRenderable)localObject).forceUpdate();
    }
  }
  
  public void init()
  {
    this.mRoot.init();
  }
  
  public void onHover(MotionEvent paramMotionEvent)
  {
    this.mRoot.onHover(paramMotionEvent);
    paramMotionEvent.recycle();
  }
  
  public void onTouch(MotionEvent paramMotionEvent)
  {
    this.mRoot.onTouch(paramMotionEvent);
    paramMotionEvent.recycle();
  }
  
  public void pause()
  {
    this.mRoot.pause();
  }
  
  public void resume()
  {
    this.mRoot.resume();
  }
  
  public void setRenderable(RendererController.IRenderable paramIRenderable)
  {
    if (paramIRenderable != null) {
      paramIRenderable = new WeakReference(paramIRenderable);
    } else {
      paramIRenderable = null;
    }
    this.mRenderable = paramIRenderable;
  }
  
  public void setRoot(ScreenElementRoot paramScreenElementRoot)
  {
    if (paramScreenElementRoot != null)
    {
      this.mRoot = paramScreenElementRoot;
      return;
    }
    throw new NullPointerException("root is null");
  }
  
  public void tick(long paramLong)
  {
    this.mRoot.tick(paramLong);
  }
  
  public void triggerUpdate()
  {
    Object localObject = this.mRenderable;
    if (localObject != null) {
      localObject = (RendererController.IRenderable)((Reference)localObject).get();
    } else {
      localObject = null;
    }
    if ((localObject != null) && ((localObject instanceof RendererController.ISelfUpdateRenderable))) {
      ((RendererController.ISelfUpdateRenderable)localObject).triggerUpdate();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.SingleRootListener
 * JD-Core Version:    0.7.0.1
 */