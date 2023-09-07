package com.miui.maml.shader;

import android.graphics.Matrix;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.data.Variables;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.util.ColorParser;
import java.util.ArrayList;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public abstract class ShaderElement
{
  private static final String LOG_TAG = "ShaderElement";
  protected GradientStops mGradientStops = new GradientStops();
  protected ScreenElementRoot mRoot;
  protected Shader mShader;
  protected Matrix mShaderMatrix = new Matrix();
  protected Shader.TileMode mTileMode;
  protected float mX;
  protected Expression mXExp;
  protected float mY;
  protected Expression mYExp;
  
  public ShaderElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    this.mRoot = paramScreenElementRoot;
    Variables localVariables = getVariables();
    this.mXExp = Expression.build(localVariables, paramElement.getAttribute("x"));
    this.mYExp = Expression.build(localVariables, paramElement.getAttribute("y"));
    this.mTileMode = getTileMode(paramElement.getAttribute("tile"));
    if (!paramElement.getTagName().equalsIgnoreCase("BitmapShader")) {
      loadGradientStops(paramElement, paramScreenElementRoot);
    }
  }
  
  public static Shader.TileMode getTileMode(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return Shader.TileMode.CLAMP;
    }
    if (paramString.equalsIgnoreCase("mirror")) {
      return Shader.TileMode.MIRROR;
    }
    if (paramString.equalsIgnoreCase("repeat")) {
      return Shader.TileMode.REPEAT;
    }
    return Shader.TileMode.CLAMP;
  }
  
  private void loadGradientStops(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    paramElement = paramElement.getElementsByTagName("GradientStop");
    for (int i = 0; i < paramElement.getLength(); i++)
    {
      Element localElement = (Element)paramElement.item(i);
      this.mGradientStops.add(new GradientStop(localElement, paramScreenElementRoot));
    }
    if (this.mGradientStops.size() <= 0)
    {
      Log.e("ShaderElement", "lost gradient stop.");
      return;
    }
    this.mGradientStops.init();
  }
  
  public Shader getShader()
  {
    return this.mShader;
  }
  
  protected Variables getVariables()
  {
    return this.mRoot.getVariables();
  }
  
  public float getX()
  {
    Expression localExpression = this.mXExp;
    double d;
    if (localExpression != null) {
      d = localExpression.evaluate();
    } else {
      d = 0.0D;
    }
    return (float)(d * this.mRoot.getScale());
  }
  
  public float getY()
  {
    Expression localExpression = this.mYExp;
    double d;
    if (localExpression != null) {
      d = localExpression.evaluate();
    } else {
      d = 0.0D;
    }
    return (float)(d * this.mRoot.getScale());
  }
  
  public abstract void onGradientStopsChanged();
  
  public void updateShader()
  {
    this.mGradientStops.update();
    if (updateShaderMatrix()) {
      this.mShader.setLocalMatrix(this.mShaderMatrix);
    }
  }
  
  public abstract boolean updateShaderMatrix();
  
  protected final class GradientStop
  {
    public static final String TAG_NAME = "GradientStop";
    private ColorParser mColorParser;
    private Expression mPositionExp;
    
    public GradientStop(Element paramElement, ScreenElementRoot paramScreenElementRoot)
    {
      this.mColorParser = ColorParser.fromElement(ShaderElement.this.mRoot.getVariables(), paramElement);
      this$1 = Expression.build(ShaderElement.this.mRoot.getVariables(), paramElement.getAttribute("position"));
      this.mPositionExp = ShaderElement.this;
      if (ShaderElement.this == null) {
        Log.e("GradientStop", "lost position attribute.");
      }
    }
    
    public int getColor()
    {
      return this.mColorParser.getColor();
    }
    
    public float getPosition()
    {
      return (float)this.mPositionExp.evaluate();
    }
  }
  
  protected final class GradientStops
  {
    private int[] mColors;
    protected ArrayList<ShaderElement.GradientStop> mGradientStopArr = new ArrayList();
    private float[] mPositions;
    
    protected GradientStops() {}
    
    public void add(ShaderElement.GradientStop paramGradientStop)
    {
      this.mGradientStopArr.add(paramGradientStop);
    }
    
    public int[] getColors()
    {
      return this.mColors;
    }
    
    public float[] getPositions()
    {
      return this.mPositions;
    }
    
    public void init()
    {
      this.mColors = new int[size()];
      this.mPositions = new float[size()];
    }
    
    public int size()
    {
      return this.mGradientStopArr.size();
    }
    
    public void update()
    {
      int i = 0;
      int j = 0;
      while (i < size())
      {
        int k = ((ShaderElement.GradientStop)this.mGradientStopArr.get(i)).getColor();
        Object localObject = this.mColors;
        if (k != localObject[i]) {
          j = 1;
        }
        localObject[i] = k;
        float f = ((ShaderElement.GradientStop)this.mGradientStopArr.get(i)).getPosition();
        localObject = this.mPositions;
        if (f != localObject[i]) {
          j = 1;
        }
        localObject[i] = f;
        i++;
      }
      if (j != 0) {
        ShaderElement.this.onGradientStopsChanged();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.shader.ShaderElement
 * JD-Core Version:    0.7.0.1
 */