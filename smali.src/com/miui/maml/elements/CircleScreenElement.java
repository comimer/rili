package com.miui.maml.elements;

import android.graphics.Canvas;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.folme.AnimatedProperty;
import com.miui.maml.folme.AnimatedTarget;
import com.miui.maml.folme.PropertyWrapper;
import java.util.concurrent.ConcurrentHashMap;
import org.w3c.dom.Element;

public class CircleScreenElement
  extends GeometryScreenElement
{
  private static final String PROPERTY_NAME_R = "r";
  public static final AnimatedProperty R;
  public static final String TAG_NAME = "Circle";
  private PropertyWrapper mRadiusProperty;
  
  static
  {
    AnimatedProperty local1 = new AnimatedProperty("r")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof CircleScreenElement)) {
          return (float)((CircleScreenElement)paramAnonymousAnimatedScreenElement).mRadiusProperty.getValue();
        }
        return 0.0F;
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof CircleScreenElement)) {
          ((CircleScreenElement)paramAnonymousAnimatedScreenElement).mRadiusProperty.setValue(paramAnonymousFloat);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof CircleScreenElement)) {
          ((CircleScreenElement)paramAnonymousAnimatedScreenElement).mRadiusProperty.setVelocity(paramAnonymousFloat);
        }
      }
    };
    R = local1;
    AnimatedProperty.sPropertyNameMap.put("r", local1);
    ConcurrentHashMap localConcurrentHashMap = AnimatedTarget.sPropertyMap;
    Integer localInteger = Integer.valueOf(1001);
    localConcurrentHashMap.put(localInteger, local1);
    AnimatedTarget.sPropertyTypeMap.put(local1, localInteger);
  }
  
  public CircleScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramElement = Expression.build(paramScreenElementRoot.getVariables(), getAttr(paramElement, "r"));
    this.mAlign = ScreenElement.Align.CENTER;
    this.mAlignV = ScreenElement.AlignV.CENTER;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.mName);
    localStringBuilder.append(".r");
    this.mRadiusProperty = new PropertyWrapper(localStringBuilder.toString(), paramScreenElementRoot.getVariables(), paramElement, isInFolmeMode(), 0.0D);
  }
  
  private final float getRadius()
  {
    return scale(this.mRadiusProperty.getValue());
  }
  
  protected void initProperties()
  {
    super.initProperties();
    this.mRadiusProperty.init();
  }
  
  protected void onDraw(Canvas paramCanvas, GeometryScreenElement.DrawMode paramDrawMode)
  {
    float f1 = getRadius();
    float f2;
    if (paramDrawMode == GeometryScreenElement.DrawMode.STROKE_OUTER)
    {
      f2 = f1 + this.mWeight / 2.0F;
    }
    else
    {
      f2 = f1;
      if (paramDrawMode == GeometryScreenElement.DrawMode.STROKE_INNER) {
        f2 = f1 - this.mWeight / 2.0F;
      }
    }
    paramCanvas.drawCircle(0.0F, 0.0F, f2, this.mPaint);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.CircleScreenElement
 * JD-Core Version:    0.7.0.1
 */