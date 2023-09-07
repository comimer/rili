package com.miui.maml.elements;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewManager;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import com.miui.maml.RendererController;
import com.miui.maml.RendererController.EmptyListener;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import org.w3c.dom.Element;

public class WindowScreenElement
  extends ElementGroupRC
{
  public static final String TAG_NAME = "Window";
  private WindowManager.LayoutParams mLayoutParams;
  private WindowView mView;
  private boolean mViewAdded;
  private Context mWindowContext;
  private WindowManager mWindowManager;
  
  public WindowScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mWindowContext = paramScreenElementRoot.getContext().mContext;
    this.mView = new WindowView(this.mWindowContext);
    this.mWindowManager = ((WindowManager)this.mWindowContext.getSystemService("window"));
    paramElement = new WindowManager.LayoutParams((int)paramScreenElementRoot.getWidth(), (int)paramScreenElementRoot.getHeight());
    this.mLayoutParams = paramElement;
    paramElement.format = 1;
    paramElement.flags = 256;
  }
  
  private final void addView()
  {
    if (!this.mViewAdded)
    {
      this.mWindowManager.addView(this.mView, this.mLayoutParams);
      this.mViewAdded = true;
    }
  }
  
  private final void removeView()
  {
    if (this.mViewAdded)
    {
      this.mWindowManager.removeView(this.mView);
      this.mViewAdded = false;
    }
  }
  
  public void init()
  {
    super.init();
    if (isVisible()) {
      addView();
    }
  }
  
  protected void onControllerCreated(RendererController paramRendererController)
  {
    paramRendererController.setListener(new ProxyListener(null));
  }
  
  protected void onVisibilityChange(final boolean paramBoolean)
  {
    getContext().getHandler().post(new Runnable()
    {
      public void run()
      {
        if (paramBoolean) {
          WindowScreenElement.this.addView();
        } else {
          WindowScreenElement.this.removeView();
        }
      }
    });
  }
  
  public void render(Canvas paramCanvas) {}
  
  private class ProxyListener
    extends RendererController.EmptyListener
  {
    private ProxyListener() {}
    
    public void doRender()
    {
      WindowScreenElement.this.mView.postInvalidate();
    }
    
    public void forceUpdate()
    {
      WindowScreenElement.this.mRoot.getRendererController().triggerUpdate();
    }
    
    public void onHover(MotionEvent paramMotionEvent)
    {
      WindowScreenElement.this.onHover(paramMotionEvent);
    }
    
    public void onTouch(MotionEvent paramMotionEvent)
    {
      WindowScreenElement.this.onTouch(paramMotionEvent);
    }
    
    public void tick(long paramLong)
    {
      WindowScreenElement.this.doTick(paramLong);
    }
    
    public void triggerUpdate()
    {
      WindowScreenElement.this.mRoot.getRendererController().triggerUpdate();
    }
  }
  
  private class WindowView
    extends View
  {
    public WindowView(Context paramContext)
    {
      super();
    }
    
    protected void onDraw(Canvas paramCanvas)
    {
      WindowScreenElement.this.doRenderWithTranslation(paramCanvas);
      WindowScreenElement.this.mController.doneRender();
    }
    
    public boolean onHoverEvent(MotionEvent paramMotionEvent)
    {
      WindowScreenElement.this.getRoot().onHover(paramMotionEvent);
      return super.onHoverEvent(paramMotionEvent);
    }
    
    public boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      WindowScreenElement.this.getRoot().onTouch(paramMotionEvent);
      return super.onTouchEvent(paramMotionEvent);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.WindowScreenElement
 * JD-Core Version:    0.7.0.1
 */