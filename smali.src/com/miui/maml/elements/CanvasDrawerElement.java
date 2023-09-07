package com.miui.maml.elements;

import android.graphics.Canvas;
import android.util.Log;
import com.miui.maml.CommandTrigger;
import com.miui.maml.CommandTriggers;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.IndexedVariable;
import org.w3c.dom.Element;

public class CanvasDrawerElement
  extends AnimatedScreenElement
{
  public static final String TAG_NAME = "CanvasDrawer";
  private IndexedVariable mCanvasVar;
  private CommandTrigger mDrawCommands;
  private IndexedVariable mHVar;
  private IndexedVariable mWVar;
  private IndexedVariable mXVar;
  private IndexedVariable mYVar;
  
  public CanvasDrawerElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramElement = this.mTriggers;
    if (paramElement != null) {
      this.mDrawCommands = paramElement.find("draw");
    }
    if (this.mDrawCommands == null) {
      Log.e("CanvasDrawer", "no draw commands.");
    }
    paramElement = getVariables();
    this.mXVar = new IndexedVariable("__x", paramElement, true);
    this.mYVar = new IndexedVariable("__y", paramElement, true);
    this.mWVar = new IndexedVariable("__w", paramElement, true);
    this.mHVar = new IndexedVariable("__h", paramElement, true);
    this.mCanvasVar = new IndexedVariable("__objCanvas", getVariables(), false);
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    if (this.mDrawCommands != null)
    {
      float f1 = getWidthRaw();
      float f2 = getHeightRaw();
      float f3 = getLeft(0.0F, f1);
      float f4 = getTop(0.0F, f2);
      this.mXVar.set(f3);
      this.mYVar.set(f4);
      this.mWVar.set(f1);
      this.mHVar.set(f2);
      this.mCanvasVar.set(paramCanvas);
      this.mDrawCommands.perform();
      this.mCanvasVar.set(null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.CanvasDrawerElement
 * JD-Core Version:    0.7.0.1
 */