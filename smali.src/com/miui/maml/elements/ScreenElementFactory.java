package com.miui.maml.elements;

import android.util.Log;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.elements.filament.PhysicallyBasedRenderingElement.IPbrCreator;
import com.miui.maml.elements.video.VideoElement;
import java.lang.reflect.Constructor;
import org.w3c.dom.Element;

public class ScreenElementFactory
{
  private FactoryCallback mFactoryCallback;
  private PhysicallyBasedRenderingElement.IPbrCreator mPbrCreator;
  
  private ScreenElement createPbrElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    if (this.mPbrCreator == null) {
      try
      {
        Object localObject = (PhysicallyBasedRenderingElement.IPbrCreator)Class.forName("com.miui.maml.elements.filament.PhysicallyRenderingElement").getConstructor(new Class[] { Element.class, ScreenElementRoot.class }).newInstance(new Object[] { paramElement, paramScreenElementRoot });
        this.mPbrCreator = ((PhysicallyBasedRenderingElement.IPbrCreator)localObject);
        if ((localObject instanceof ScreenElement))
        {
          localObject = (ScreenElement)localObject;
          return localObject;
        }
      }
      catch (Exception localException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("fail find IPbrCreator.");
        localStringBuilder.append(localException);
        Log.w("ScreenElementFactory", localStringBuilder.toString());
      }
    }
    PhysicallyBasedRenderingElement.IPbrCreator localIPbrCreator = this.mPbrCreator;
    if (localIPbrCreator == null) {
      paramElement = null;
    } else {
      paramElement = localIPbrCreator.createRealPbrElement(paramElement, paramScreenElementRoot);
    }
    return paramElement;
  }
  
  public ScreenElement createInstance(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    Object localObject = paramElement.getTagName();
    try
    {
      if (((String)localObject).equalsIgnoreCase("Image")) {
        return new ImageScreenElement(paramElement, paramScreenElementRoot);
      }
      if (((String)localObject).equalsIgnoreCase("Graphics")) {
        return new GraphicsElement(paramElement, paramScreenElementRoot);
      }
      if (((String)localObject).equalsIgnoreCase("Time")) {
        return new TimepanelScreenElement(paramElement, paramScreenElementRoot);
      }
      if ((!((String)localObject).equalsIgnoreCase("ImageNumber")) && (!((String)localObject).equalsIgnoreCase("ImageChars")))
      {
        if (((String)localObject).equalsIgnoreCase("Text")) {
          return new TextScreenElement(paramElement, paramScreenElementRoot);
        }
        if (((String)localObject).equalsIgnoreCase("DateTime")) {
          return new DateTimeScreenElement(paramElement, paramScreenElementRoot);
        }
        if (((String)localObject).equalsIgnoreCase("Button")) {
          return new ButtonScreenElement(paramElement, paramScreenElementRoot);
        }
        if (((String)localObject).equalsIgnoreCase("MusicControl")) {
          return new MusicControlScreenElement(paramElement, paramScreenElementRoot);
        }
        if ((!((String)localObject).equalsIgnoreCase("ElementGroup")) && (!((String)localObject).equalsIgnoreCase("Group")))
        {
          if (((String)localObject).equalsIgnoreCase("Var")) {
            return new VariableElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("VarArray")) {
            return new VariableArrayElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("AutoScaleGroup")) {
            return new AutoScaleElementGroup(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("SpectrumVisualizer")) {
            return new SpectrumVisualizerScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Slider")) {
            return new AdvancedSlider(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("FramerateController")) {
            return new FramerateController(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("FolmeConfig")) {
            return new FolmeConfigElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("FolmeState")) {
            return new FolmeStateElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("VirtualScreen")) {
            return new VirtualScreen(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("VirtualElement")) {
            return new VirtualAnimatedScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Line")) {
            return new LineScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Rectangle")) {
            return new RectangleScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Ellipse")) {
            return new EllipseScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Circle")) {
            return new CircleScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Arc")) {
            return new ArcScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Curve")) {
            return new CurveScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("List")) {
            return new ListScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Paint")) {
            return new PaintScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Mirror")) {
            return new MirrorScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Window")) {
            return new WindowScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("WebView")) {
            return new WebViewScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Layer")) {
            return new LayerScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("GLLayer")) {
            return new GLLayerScreenElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Array")) {
            return new ScreenElementArray(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("CanvasDrawer")) {
            return new CanvasDrawerElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Function")) {
            return new FunctionElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("AnimConfig")) {
            return new AnimConfigElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("AnimState")) {
            return new AnimStateElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Video")) {
            return new VideoElement(paramElement, paramScreenElementRoot);
          }
          if (((String)localObject).equalsIgnoreCase("Pbr")) {
            return createPbrElement(paramElement, paramScreenElementRoot);
          }
          localObject = this.mFactoryCallback;
          if (localObject != null) {
            return ((FactoryCallback)localObject).onCreateInstance(paramElement, paramScreenElementRoot);
          }
        }
        else
        {
          return new ElementGroup(paramElement, paramScreenElementRoot);
        }
      }
      else
      {
        paramElement = new ImageNumberScreenElement(paramElement, paramScreenElementRoot);
        return paramElement;
      }
    }
    catch (IllegalArgumentException paramElement)
    {
      paramElement.printStackTrace();
      paramScreenElementRoot = new StringBuilder();
      paramScreenElementRoot.append("fail to create element.");
      paramScreenElementRoot.append(paramElement);
      Log.w("ScreenElementFactory", paramScreenElementRoot.toString());
    }
    return null;
  }
  
  public FactoryCallback getCallback()
  {
    return this.mFactoryCallback;
  }
  
  public void setCallback(FactoryCallback paramFactoryCallback)
  {
    this.mFactoryCallback = paramFactoryCallback;
  }
  
  public static abstract interface FactoryCallback
  {
    public abstract ScreenElement onCreateInstance(Element paramElement, ScreenElementRoot paramScreenElementRoot);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ScreenElementFactory
 * JD-Core Version:    0.7.0.1
 */