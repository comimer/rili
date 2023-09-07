package com.miui.maml.shader;

import android.graphics.Shader;
import com.miui.maml.ScreenElementRoot;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public final class ShadersElement
{
  public static final String FILL_TAG_NAME = "FillShaders";
  public static final String STROKE_TAG_NAME = "StrokeShaders";
  private ShaderElement mShaderElement;
  
  public ShadersElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    loadShaderElements(paramElement, paramScreenElementRoot);
  }
  
  private void loadShaderElements(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    paramElement = paramElement.getChildNodes();
    for (int i = 0; i < paramElement.getLength(); i++)
    {
      Object localObject = paramElement.item(i);
      if (((Node)localObject).getNodeType() == 1)
      {
        Element localElement = (Element)localObject;
        localObject = localElement.getTagName();
        if (((String)localObject).equalsIgnoreCase("LinearGradient")) {
          this.mShaderElement = new LinearGradientElement(localElement, paramScreenElementRoot);
        } else if (((String)localObject).equalsIgnoreCase("RadialGradient")) {
          this.mShaderElement = new RadialGradientElement(localElement, paramScreenElementRoot);
        } else if (((String)localObject).equalsIgnoreCase("SweepGradient")) {
          this.mShaderElement = new SweepGradientElement(localElement, paramScreenElementRoot);
        } else if (((String)localObject).equalsIgnoreCase("BitmapShader")) {
          this.mShaderElement = new BitmapShaderElement(localElement, paramScreenElementRoot);
        }
        if (this.mShaderElement != null) {
          break;
        }
      }
    }
  }
  
  public Shader getShader()
  {
    Object localObject = this.mShaderElement;
    if (localObject != null) {
      localObject = ((ShaderElement)localObject).getShader();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public void updateShader()
  {
    ShaderElement localShaderElement = this.mShaderElement;
    if (localShaderElement != null) {
      localShaderElement.updateShader();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.shader.ShadersElement
 * JD-Core Version:    0.7.0.1
 */