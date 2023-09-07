package com.miui.maml.elements;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.Log;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.folme.AnimatedProperty;
import com.miui.maml.folme.AnimatedTarget;
import com.miui.maml.folme.PropertyWrapper;
import java.util.concurrent.ConcurrentHashMap;
import org.w3c.dom.Element;

public class RectangleScreenElement
  extends GeometryScreenElement
{
  public static final AnimatedProperty CORNER_RADIUS_X;
  public static final AnimatedProperty CORNER_RADIUS_Y;
  private static final String LOG_TAG = "RectangleScreenElement";
  private static final String PROPERTY_NAME_CORNER_RADIUS_X = "cornerRadiusX";
  private static final String PROPERTY_NAME_CORNER_RADIUS_Y = "cornerRadiusY";
  public static final String TAG_NAME = "Rectangle";
  private float mCornerRadiusX;
  private float mCornerRadiusY;
  private PropertyWrapper mRXProperty;
  private PropertyWrapper mRYProperty;
  
  static
  {
    AnimatedProperty local1 = new AnimatedProperty("cornerRadiusX")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof RectangleScreenElement)) {
          return (float)((RectangleScreenElement)paramAnonymousAnimatedScreenElement).mRXProperty.getValue();
        }
        return 0.0F;
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof RectangleScreenElement)) {
          ((RectangleScreenElement)paramAnonymousAnimatedScreenElement).mRXProperty.setValue(paramAnonymousFloat);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof RectangleScreenElement)) {
          ((RectangleScreenElement)paramAnonymousAnimatedScreenElement).mRXProperty.setVelocity(paramAnonymousFloat);
        }
      }
    };
    CORNER_RADIUS_X = local1;
    AnimatedProperty local2 = new AnimatedProperty("cornerRadiusY")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof RectangleScreenElement)) {
          return (float)((RectangleScreenElement)paramAnonymousAnimatedScreenElement).mRYProperty.getValue();
        }
        return 0.0F;
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof RectangleScreenElement)) {
          ((RectangleScreenElement)paramAnonymousAnimatedScreenElement).mRYProperty.setValue(paramAnonymousFloat);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof RectangleScreenElement)) {
          ((RectangleScreenElement)paramAnonymousAnimatedScreenElement).mRYProperty.setVelocity(paramAnonymousFloat);
        }
      }
    };
    CORNER_RADIUS_Y = local2;
    AnimatedProperty.sPropertyNameMap.put("cornerRadiusX", local1);
    AnimatedTarget.sPropertyMap.put(Integer.valueOf(1004), local1);
    AnimatedTarget.sPropertyTypeMap.put(local1, Integer.valueOf(1006));
    AnimatedProperty.sPropertyNameMap.put("cornerRadiusY", local2);
    AnimatedTarget.sPropertyMap.put(Integer.valueOf(1005), local2);
    AnimatedTarget.sPropertyTypeMap.put(local2, Integer.valueOf(1007));
  }
  
  public RectangleScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    resolveCornerRadius(paramElement);
  }
  
  private void resolveCornerRadius(Element paramElement)
  {
    Object localObject = paramElement.getAttribute("cornerRadiusExp");
    localObject = Expression.buildMultiple(getVariables(), (String)localObject);
    if (localObject == null)
    {
      paramElement = getAttr(paramElement, "cornerRadius").split(",");
      try
      {
        if (paramElement.length < 1) {
          return;
        }
        if (paramElement.length == 1)
        {
          float f = scale(Float.parseFloat(paramElement[0]));
          this.mCornerRadiusY = f;
          this.mCornerRadiusX = f;
        }
        else
        {
          this.mCornerRadiusX = scale(Float.parseFloat(paramElement[0]));
          this.mCornerRadiusY = scale(Float.parseFloat(paramElement[1]));
        }
      }
      catch (NumberFormatException paramElement)
      {
        Log.w("RectangleScreenElement", "illegal number format of cornerRadius.");
      }
    }
    if ((localObject != null) && (localObject.length > 0)) {
      paramElement = localObject[0];
    } else {
      paramElement = null;
    }
    if ((localObject != null) && (localObject.length > 1)) {
      localObject = localObject[1];
    } else {
      localObject = paramElement;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.mName);
    localStringBuilder.append(".cornerRadiusX");
    this.mRXProperty = new PropertyWrapper(localStringBuilder.toString(), getVariables(), paramElement, isInFolmeMode(), descale(this.mCornerRadiusX));
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".cornerRadiusY");
    this.mRYProperty = new PropertyWrapper(paramElement.toString(), getVariables(), (Expression)localObject, isInFolmeMode(), descale(this.mCornerRadiusY));
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    this.mCornerRadiusX = scale(this.mRXProperty.getValue());
    this.mCornerRadiusY = scale(this.mRYProperty.getValue());
  }
  
  protected void initProperties()
  {
    super.initProperties();
    this.mRXProperty.init();
    this.mRYProperty.init();
  }
  
  protected void onDraw(Canvas paramCanvas, GeometryScreenElement.DrawMode paramDrawMode)
  {
    float f1 = getWidth();
    float f2 = getHeight();
    float f3 = getLeft(0.0F, f1);
    float f4 = getTop(0.0F, f2);
    if (f1 <= 0.0F) {
      f1 = 0.0F;
    }
    float f5 = f1 + f3;
    if (f2 > 0.0F) {
      f1 = f2;
    } else {
      f1 = 0.0F;
    }
    float f6 = f1 + f4;
    float f7;
    float f8;
    if (paramDrawMode == GeometryScreenElement.DrawMode.STROKE_OUTER)
    {
      f7 = this.mWeight;
      f8 = f3 - f7 / 2.0F;
      f2 = f4 - f7 / 2.0F;
      f1 = f5 + f7 / 2.0F;
      f7 = f6 + f7 / 2.0F;
    }
    else
    {
      f1 = f5;
      f7 = f6;
      f8 = f3;
      f2 = f4;
      if (paramDrawMode == GeometryScreenElement.DrawMode.STROKE_INNER)
      {
        f7 = this.mWeight;
        f8 = f3 + f7 / 2.0F;
        f2 = f4 + f7 / 2.0F;
        f1 = f5 - f7 / 2.0F;
        f7 = f6 - f7 / 2.0F;
      }
    }
    if ((this.mCornerRadiusX > 0.0F) && (this.mCornerRadiusY > 0.0F)) {
      paramCanvas.drawRoundRect(new RectF(f8, f2, f1, f7), this.mCornerRadiusX, this.mCornerRadiusY, this.mPaint);
    } else {
      paramCanvas.drawRect(f8, f2, f1, f7, this.mPaint);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.RectangleScreenElement
 * JD-Core Version:    0.7.0.1
 */