package com.miui.maml.elements;

import android.graphics.Canvas;
import com.miui.maml.ScreenElementRoot;
import e9.a;
import java.util.Collection;
import org.w3c.dom.Element;

public abstract class StateElement
  extends ScreenElement
{
  public StateElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
  }
  
  protected void doRender(Canvas paramCanvas) {}
  
  public abstract a getAnimState(String paramString);
  
  public abstract Collection<String> getProperties();
  
  public boolean isVisible()
  {
    return false;
  }
  
  public void tick(long paramLong) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.StateElement
 * JD-Core Version:    0.7.0.1
 */