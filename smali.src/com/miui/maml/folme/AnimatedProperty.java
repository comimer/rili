package com.miui.maml.folme;

import com.miui.maml.elements.AnimatedScreenElement;
import java.util.concurrent.ConcurrentHashMap;
import miuix.animation.property.a;
import miuix.animation.property.b;

public abstract class AnimatedProperty
  extends b<AnimatedScreenElement>
  implements IAnimatedProperty<AnimatedScreenElement>
{
  public static final AnimatedProperty ALPHA;
  public static final AnimatedProperty HEIGHT;
  public static final AnimatedProperty PIVOT_X;
  public static final AnimatedProperty PIVOT_Y;
  public static final AnimatedProperty PIVOT_Z;
  public static final String PROPERTY_NAME_ALPHA = "alpha";
  public static final String PROPERTY_NAME_H = "h";
  public static final String PROPERTY_NAME_PIVOT_X = "pivotX";
  public static final String PROPERTY_NAME_PIVOT_Y = "pivotY";
  public static final String PROPERTY_NAME_PIVOT_Z = "pivotZ";
  public static final String PROPERTY_NAME_ROTATION = "rotation";
  public static final String PROPERTY_NAME_ROTATION_X = "rotationX";
  public static final String PROPERTY_NAME_ROTATION_Y = "rotationY";
  public static final String PROPERTY_NAME_ROTATION_Z = "rotationZ";
  public static final String PROPERTY_NAME_SCALE_X = "scaleX";
  public static final String PROPERTY_NAME_SCALE_Y = "scaleY";
  public static final String PROPERTY_NAME_TINT_COLOR = "tintColor";
  public static final String PROPERTY_NAME_W = "w";
  public static final String PROPERTY_NAME_X = "x";
  public static final String PROPERTY_NAME_Y = "y";
  public static final AnimatedProperty ROTATION;
  public static final AnimatedProperty ROTATION_X;
  public static final AnimatedProperty ROTATION_Y;
  public static final AnimatedProperty ROTATION_Z;
  public static final AnimatedProperty SCALE_X;
  public static final AnimatedProperty SCALE_Y;
  public static final AnimatedColorProperty TINT_COLOR;
  public static final AnimatedProperty WIDTH;
  public static final AnimatedProperty X;
  public static final AnimatedProperty Y;
  public static ConcurrentHashMap<String, b> sPropertyNameMap = new ConcurrentHashMap();
  
  static
  {
    AnimatedProperty local1 = new AnimatedProperty("x")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mXProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mXProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mXProperty.setVelocity(paramAnonymousFloat);
      }
    };
    X = local1;
    AnimatedProperty local2 = new AnimatedProperty("y")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mYProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mYProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mYProperty.setVelocity(paramAnonymousFloat);
      }
    };
    Y = local2;
    AnimatedProperty local3 = new AnimatedProperty("scaleX")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mScaleXProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mScaleXProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mScaleXProperty.setVelocity(paramAnonymousFloat);
      }
    };
    SCALE_X = local3;
    AnimatedProperty local4 = new AnimatedProperty("scaleY")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mScaleYProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mScaleYProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mScaleYProperty.setVelocity(paramAnonymousFloat);
      }
    };
    SCALE_Y = local4;
    AnimatedProperty local5 = new AnimatedProperty("rotation")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mRotationProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mRotationProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mRotationProperty.setVelocity(paramAnonymousFloat);
      }
    };
    ROTATION = local5;
    AnimatedProperty local6 = new AnimatedProperty("rotationX")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mRotationXProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mRotationXProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mRotationXProperty.setVelocity(paramAnonymousFloat);
      }
    };
    ROTATION_X = local6;
    AnimatedProperty local7 = new AnimatedProperty("rotationY")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mRotationYProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mRotationYProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mRotationYProperty.setVelocity(paramAnonymousFloat);
      }
    };
    ROTATION_Y = local7;
    AnimatedProperty local8 = new AnimatedProperty("rotationZ")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mRotationZProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mRotationZProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mRotationZProperty.setVelocity(paramAnonymousFloat);
      }
    };
    ROTATION_Z = local8;
    AnimatedProperty local9 = new AnimatedProperty("h")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mHeightProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mHeightProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mHeightProperty.setVelocity(paramAnonymousFloat);
      }
    };
    HEIGHT = local9;
    AnimatedProperty local10 = new AnimatedProperty("w")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mWidthProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mWidthProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mHeightProperty.setVelocity(paramAnonymousFloat);
      }
    };
    WIDTH = local10;
    AnimatedProperty local11 = new AnimatedProperty("alpha")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mAlphaProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mAlphaProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mAlphaProperty.setVelocity(paramAnonymousFloat);
      }
    };
    ALPHA = local11;
    AnimatedColorProperty local12 = new AnimatedColorProperty("tintColor")
    {
      public int getIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (int)paramAnonymousAnimatedScreenElement.mTintColorProperty.getValue();
      }
      
      public void setIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, int paramAnonymousInt)
      {
        paramAnonymousAnimatedScreenElement.mTintColorProperty.setValue(paramAnonymousInt);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mTintColorProperty.setVelocity(paramAnonymousFloat);
      }
    };
    TINT_COLOR = local12;
    AnimatedProperty local13 = new AnimatedProperty("pivotX")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mPivotXProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mPivotXProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mPivotXProperty.setVelocity(paramAnonymousFloat);
      }
    };
    PIVOT_X = local13;
    AnimatedProperty local14 = new AnimatedProperty("pivotY")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mPivotYProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mPivotYProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mPivotYProperty.setVelocity(paramAnonymousFloat);
      }
    };
    PIVOT_Y = local14;
    AnimatedProperty local15 = new AnimatedProperty("pivotZ")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        return (float)paramAnonymousAnimatedScreenElement.mPivotZProperty.getValue();
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mPivotZProperty.setValue(paramAnonymousFloat);
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        paramAnonymousAnimatedScreenElement.mPivotZProperty.setVelocity(paramAnonymousFloat);
      }
    };
    PIVOT_Z = local15;
    sPropertyNameMap.put("x", local1);
    sPropertyNameMap.put("y", local2);
    sPropertyNameMap.put("scaleX", local3);
    sPropertyNameMap.put("scaleY", local4);
    sPropertyNameMap.put("alpha", local11);
    sPropertyNameMap.put("h", local9);
    sPropertyNameMap.put("w", local10);
    sPropertyNameMap.put("rotation", local5);
    sPropertyNameMap.put("rotationX", local6);
    sPropertyNameMap.put("rotationY", local7);
    sPropertyNameMap.put("rotationZ", local8);
    sPropertyNameMap.put("tintColor", local12);
    sPropertyNameMap.put("pivotX", local13);
    sPropertyNameMap.put("pivotY", local14);
    sPropertyNameMap.put("pivotZ", local15);
  }
  
  public AnimatedProperty(String paramString)
  {
    super(paramString);
  }
  
  public static b getPropertyByName(String paramString)
  {
    return (b)sPropertyNameMap.get(paramString);
  }
  
  public static abstract class AnimatedColorProperty
    extends a<AnimatedScreenElement>
    implements IAnimatedProperty<AnimatedScreenElement>
  {
    public AnimatedColorProperty(String paramString)
    {
      super();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.folme.AnimatedProperty
 * JD-Core Version:    0.7.0.1
 */