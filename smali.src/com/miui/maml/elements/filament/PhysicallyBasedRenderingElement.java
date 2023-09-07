package com.miui.maml.elements.filament;

import android.view.View;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.elements.ViewHolderScreenElement;
import org.w3c.dom.Element;

public class PhysicallyBasedRenderingElement
  extends ViewHolderScreenElement
{
  public static final String TAG_NAME = "Pbr";
  
  public PhysicallyBasedRenderingElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
  }
  
  protected View getView()
  {
    return null;
  }
  
  public void updateUniform(String paramString1, String paramString2, boolean paramBoolean, Expression[] paramArrayOfExpression) {}
  
  public static abstract interface IPbrCreator
  {
    public abstract PhysicallyBasedRenderingElement createRealPbrElement(Element paramElement, ScreenElementRoot paramScreenElementRoot);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.filament.PhysicallyBasedRenderingElement
 * JD-Core Version:    0.7.0.1
 */