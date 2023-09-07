package com.miui.maml.elements;

import com.miui.maml.RendererController;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.util.Utils;
import org.w3c.dom.Element;

public abstract class ElementGroupRC
  extends ElementGroup
{
  protected RendererController mController;
  private float mFrameRate;
  
  public ElementGroupRC(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    float f = Utils.getAttrAsFloat(paramElement, "frameRate", 0.0F);
    this.mFrameRate = f;
    if (f >= 0.0F)
    {
      paramElement = new RendererController();
      this.mController = paramElement;
      onControllerCreated(paramElement);
      this.mController.init();
    }
  }
  
  public RendererController getRendererController()
  {
    RendererController localRendererController = this.mController;
    if (localRendererController == null) {
      localRendererController = super.getRendererController();
    }
    return localRendererController;
  }
  
  public void init()
  {
    super.init();
    requestFramerate(this.mFrameRate);
  }
  
  protected abstract void onControllerCreated(RendererController paramRendererController);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ElementGroupRC
 * JD-Core Version:    0.7.0.1
 */