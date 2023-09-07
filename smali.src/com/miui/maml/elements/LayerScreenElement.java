package com.miui.maml.elements;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import com.miui.maml.RendererController;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import org.w3c.dom.Element;

public class LayerScreenElement
  extends ViewHolderScreenElement
{
  public static final String TAG_NAME = "Layer";
  private LayerView mView;
  
  public LayerScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mView = new LayerView(paramScreenElementRoot.getContext().mContext);
  }
  
  protected View getView()
  {
    return this.mView;
  }
  
  private class LayerView
    extends View
  {
    public LayerView(Context paramContext)
    {
      super();
    }
    
    protected void onDraw(Canvas paramCanvas)
    {
      LayerScreenElement.this.doRender(paramCanvas);
      LayerScreenElement.this.mController.doneRender();
    }
    
    public boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      boolean bool;
      if ((!LayerScreenElement.this.getRoot().onTouch(paramMotionEvent)) && (!super.onTouchEvent(paramMotionEvent))) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.LayerScreenElement
 * JD-Core Version:    0.7.0.1
 */