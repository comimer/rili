package com.miui.maml.elements;

import android.graphics.Canvas;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.folme.AnimatedProperty;
import com.miui.maml.folme.AnimatedProperty.AnimatedColorProperty;
import com.miui.maml.folme.AnimatedTarget;
import com.miui.maml.folme.PropertyWrapper;
import java.util.concurrent.ConcurrentHashMap;
import org.w3c.dom.Element;

public class VirtualAnimatedScreenElement
  extends AnimatedScreenElement
{
  public static final AnimatedProperty.AnimatedColorProperty COLOR_1;
  public static final AnimatedProperty.AnimatedColorProperty COLOR_2;
  public static final AnimatedProperty FLOAT_1;
  public static final AnimatedProperty FLOAT_2;
  public static final AnimatedProperty FLOAT_3;
  public static final AnimatedProperty FLOAT_4;
  private static final String PROPERTY_NAME_RESERVE_COLOR_1 = "color1";
  private static final String PROPERTY_NAME_RESERVE_COLOR_2 = "color1";
  private static final String PROPERTY_NAME_RESERVE_FLOAT_1 = "float1";
  private static final String PROPERTY_NAME_RESERVE_FLOAT_2 = "float2";
  private static final String PROPERTY_NAME_RESERVE_FLOAT_3 = "float3";
  private static final String PROPERTY_NAME_RESERVE_FLOAT_4 = "float4";
  public static final String TAG_NAME = "VirtualElement";
  private PropertyWrapper mColor1Property;
  private PropertyWrapper mColor2Property;
  private PropertyWrapper mFloat1Property;
  private PropertyWrapper mFloat2Property;
  private PropertyWrapper mFloat3Property;
  private PropertyWrapper mFloat4Property;
  
  static
  {
    AnimatedProperty.AnimatedColorProperty local1 = new AnimatedProperty.AnimatedColorProperty("color1")
    {
      public int getIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          return (int)((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mColor1Property.getValue();
        }
        return 0;
      }
      
      public void setIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, int paramAnonymousInt)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mColor1Property.setValue(paramAnonymousInt);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mColor1Property.setVelocity(paramAnonymousFloat);
        }
      }
    };
    COLOR_1 = local1;
    AnimatedProperty.AnimatedColorProperty local2 = new AnimatedProperty.AnimatedColorProperty("color1")
    {
      public int getIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          return (int)((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mColor2Property.getValue();
        }
        return 0;
      }
      
      public void setIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, int paramAnonymousInt)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mColor2Property.setValue(paramAnonymousInt);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mColor2Property.setVelocity(paramAnonymousFloat);
        }
      }
    };
    COLOR_2 = local2;
    AnimatedProperty local3 = new AnimatedProperty("float1")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          return (float)((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat1Property.getValue();
        }
        return 0.0F;
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat1Property.setValue(paramAnonymousFloat);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat1Property.setVelocity(paramAnonymousFloat);
        }
      }
    };
    FLOAT_1 = local3;
    AnimatedProperty local4 = new AnimatedProperty("float2")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          return (float)((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat2Property.getValue();
        }
        return 0.0F;
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat2Property.setValue(paramAnonymousFloat);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat2Property.setVelocity(paramAnonymousFloat);
        }
      }
    };
    FLOAT_2 = local4;
    AnimatedProperty local5 = new AnimatedProperty("float3")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          return (float)((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat3Property.getValue();
        }
        return 0.0F;
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat3Property.setValue(paramAnonymousFloat);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat3Property.setVelocity(paramAnonymousFloat);
        }
      }
    };
    FLOAT_3 = local5;
    AnimatedProperty local6 = new AnimatedProperty("float4")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          return (float)((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat4Property.getValue();
        }
        return 0.0F;
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat4Property.setValue(paramAnonymousFloat);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof VirtualAnimatedScreenElement)) {
          ((VirtualAnimatedScreenElement)paramAnonymousAnimatedScreenElement).mFloat4Property.setVelocity(paramAnonymousFloat);
        }
      }
    };
    FLOAT_4 = local6;
    AnimatedProperty.sPropertyNameMap.put("color1", local1);
    AnimatedProperty.sPropertyNameMap.put("color1", local2);
    AnimatedProperty.sPropertyNameMap.put("float1", local3);
    AnimatedProperty.sPropertyNameMap.put("float2", local4);
    AnimatedProperty.sPropertyNameMap.put("float3", local5);
    AnimatedProperty.sPropertyNameMap.put("float4", local6);
    Object localObject1 = AnimatedTarget.sPropertyMap;
    Integer localInteger1 = Integer.valueOf(1101);
    ((ConcurrentHashMap)localObject1).put(localInteger1, local1);
    Object localObject2 = AnimatedTarget.sPropertyMap;
    localObject1 = Integer.valueOf(1102);
    ((ConcurrentHashMap)localObject2).put(localObject1, local2);
    Object localObject3 = AnimatedTarget.sPropertyMap;
    localObject2 = Integer.valueOf(1103);
    ((ConcurrentHashMap)localObject3).put(localObject2, local3);
    Object localObject4 = AnimatedTarget.sPropertyMap;
    localObject3 = Integer.valueOf(1104);
    ((ConcurrentHashMap)localObject4).put(localObject3, local4);
    ConcurrentHashMap localConcurrentHashMap = AnimatedTarget.sPropertyMap;
    localObject4 = Integer.valueOf(1105);
    localConcurrentHashMap.put(localObject4, local5);
    localConcurrentHashMap = AnimatedTarget.sPropertyMap;
    Integer localInteger2 = Integer.valueOf(1106);
    localConcurrentHashMap.put(localInteger2, local6);
    AnimatedTarget.sPropertyTypeMap.put(local1, localInteger1);
    AnimatedTarget.sPropertyTypeMap.put(local2, localObject1);
    AnimatedTarget.sPropertyTypeMap.put(local3, localObject2);
    AnimatedTarget.sPropertyTypeMap.put(local4, localObject3);
    AnimatedTarget.sPropertyTypeMap.put(local5, localObject4);
    AnimatedTarget.sPropertyTypeMap.put(local6, localInteger2);
  }
  
  public VirtualAnimatedScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".color1");
    this.mColor1Property = new PropertyWrapper(paramElement.toString(), getVariables(), null, isInFolmeMode(), 0.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".color2");
    this.mColor2Property = new PropertyWrapper(paramElement.toString(), getVariables(), null, isInFolmeMode(), 0.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".float1");
    this.mFloat1Property = new PropertyWrapper(paramElement.toString(), getVariables(), null, isInFolmeMode(), 0.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".float2");
    this.mFloat2Property = new PropertyWrapper(paramElement.toString(), getVariables(), null, isInFolmeMode(), 0.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".float3");
    this.mFloat3Property = new PropertyWrapper(paramElement.toString(), getVariables(), null, isInFolmeMode(), 0.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".float4");
    this.mFloat4Property = new PropertyWrapper(paramElement.toString(), getVariables(), null, isInFolmeMode(), 0.0D);
  }
  
  protected void doRender(Canvas paramCanvas) {}
  
  protected boolean isInFolmeMode()
  {
    return this.mHasName;
  }
  
  public boolean isVisible()
  {
    return false;
  }
  
  public void tick(long paramLong) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.VirtualAnimatedScreenElement
 * JD-Core Version:    0.7.0.1
 */