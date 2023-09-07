package com.miui.maml.folme;

import com.miui.maml.elements.AnimatedScreenElement;
import com.miui.maml.elements.GeometryScreenElement;
import com.miui.maml.elements.TextScreenElement;
import com.miui.maml.elements.VirtualAnimatedScreenElement;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import miuix.animation.g;

public class AnimatedTarget
  extends miuix.animation.b<AnimatedScreenElement>
{
  public static final String STATE_TAG_FROM = "from";
  public static final String STATE_TAG_SET_TO = "setTo";
  public static final String STATE_TAG_TO = "to";
  public static g<AnimatedScreenElement> sCreator = new g()
  {
    public miuix.animation.b createTarget(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
    {
      return new AnimatedTarget(paramAnonymousAnimatedScreenElement);
    }
  };
  public static ConcurrentHashMap<Integer, miuix.animation.property.b> sPropertyMap;
  public static ConcurrentHashMap<miuix.animation.property.b, Integer> sPropertyTypeMap = new ConcurrentHashMap();
  private WeakReference<AnimatedScreenElement> mElementRef;
  
  static
  {
    sPropertyMap = new ConcurrentHashMap();
    Object localObject1 = sPropertyTypeMap;
    AnimatedProperty localAnimatedProperty1 = AnimatedProperty.X;
    Integer localInteger1 = Integer.valueOf(0);
    ((ConcurrentHashMap)localObject1).put(localAnimatedProperty1, localInteger1);
    Object localObject2 = sPropertyTypeMap;
    localObject1 = AnimatedProperty.Y;
    Integer localInteger2 = Integer.valueOf(1);
    ((ConcurrentHashMap)localObject2).put(localObject1, localInteger2);
    Object localObject3 = sPropertyTypeMap;
    localObject2 = AnimatedProperty.SCALE_X;
    Integer localInteger3 = Integer.valueOf(2);
    ((ConcurrentHashMap)localObject3).put(localObject2, localInteger3);
    Object localObject4 = sPropertyTypeMap;
    AnimatedProperty localAnimatedProperty2 = AnimatedProperty.SCALE_Y;
    localObject3 = Integer.valueOf(3);
    ((ConcurrentHashMap)localObject4).put(localAnimatedProperty2, localObject3);
    Object localObject5 = sPropertyTypeMap;
    AnimatedProperty localAnimatedProperty3 = AnimatedProperty.ALPHA;
    localObject4 = Integer.valueOf(4);
    ((ConcurrentHashMap)localObject5).put(localAnimatedProperty3, localObject4);
    Object localObject6 = sPropertyTypeMap;
    AnimatedProperty localAnimatedProperty4 = AnimatedProperty.HEIGHT;
    localObject5 = Integer.valueOf(5);
    ((ConcurrentHashMap)localObject6).put(localAnimatedProperty4, localObject5);
    Object localObject7 = sPropertyTypeMap;
    localObject6 = AnimatedProperty.WIDTH;
    Integer localInteger4 = Integer.valueOf(6);
    ((ConcurrentHashMap)localObject7).put(localObject6, localInteger4);
    Object localObject8 = sPropertyTypeMap;
    AnimatedProperty localAnimatedProperty5 = AnimatedProperty.ROTATION;
    localObject7 = Integer.valueOf(9);
    ((ConcurrentHashMap)localObject8).put(localAnimatedProperty5, localObject7);
    Object localObject9 = sPropertyTypeMap;
    AnimatedProperty localAnimatedProperty6 = AnimatedProperty.ROTATION_X;
    localObject8 = Integer.valueOf(10);
    ((ConcurrentHashMap)localObject9).put(localAnimatedProperty6, localObject8);
    Object localObject10 = sPropertyTypeMap;
    AnimatedProperty localAnimatedProperty7 = AnimatedProperty.ROTATION_Y;
    localObject9 = Integer.valueOf(11);
    ((ConcurrentHashMap)localObject10).put(localAnimatedProperty7, localObject9);
    Object localObject11 = sPropertyTypeMap;
    AnimatedProperty.AnimatedColorProperty localAnimatedColorProperty = AnimatedProperty.TINT_COLOR;
    localObject10 = Integer.valueOf(1008);
    ((ConcurrentHashMap)localObject11).put(localAnimatedColorProperty, localObject10);
    Object localObject12 = sPropertyTypeMap;
    localObject11 = AnimatedProperty.PIVOT_X;
    Integer localInteger5 = Integer.valueOf(1009);
    ((ConcurrentHashMap)localObject12).put(localObject11, localInteger5);
    Object localObject13 = sPropertyTypeMap;
    localObject12 = AnimatedProperty.PIVOT_Y;
    Integer localInteger6 = Integer.valueOf(1010);
    ((ConcurrentHashMap)localObject13).put(localObject12, localInteger6);
    ConcurrentHashMap localConcurrentHashMap = sPropertyTypeMap;
    localObject13 = AnimatedProperty.PIVOT_Z;
    Integer localInteger7 = Integer.valueOf(1011);
    localConcurrentHashMap.put(localObject13, localInteger7);
    sPropertyMap.put(localInteger1, localAnimatedProperty1);
    sPropertyMap.put(localInteger2, localObject1);
    sPropertyMap.put(localInteger3, localObject2);
    sPropertyMap.put(localObject3, localAnimatedProperty2);
    sPropertyMap.put(localObject4, localAnimatedProperty3);
    sPropertyMap.put(localObject5, localAnimatedProperty4);
    sPropertyMap.put(localInteger4, localObject6);
    sPropertyMap.put(localObject7, localAnimatedProperty5);
    sPropertyMap.put(localObject8, localAnimatedProperty6);
    sPropertyMap.put(localObject9, localAnimatedProperty7);
    sPropertyMap.put(localObject10, localAnimatedColorProperty);
    sPropertyMap.put(localInteger5, localObject11);
    sPropertyMap.put(localInteger6, localObject12);
    sPropertyMap.put(localInteger7, localObject13);
  }
  
  public AnimatedTarget(AnimatedScreenElement paramAnimatedScreenElement)
  {
    setMinVisibleChange(0.0039063F, new miuix.animation.property.b[] { TextScreenElement.TEXT_COLOR, GeometryScreenElement.FILL_COLOR, GeometryScreenElement.STROKE_COLOR, AnimatedProperty.TINT_COLOR, TextScreenElement.TEXT_SHADOW_COLOR, VirtualAnimatedScreenElement.COLOR_1, VirtualAnimatedScreenElement.COLOR_2 });
    this.mElementRef = new WeakReference(paramAnimatedScreenElement);
  }
  
  public void clean() {}
  
  public void executeOnInitialized(Runnable paramRunnable)
  {
    if ((AnimatedScreenElement)this.mElementRef.get() != null) {
      paramRunnable.run();
    }
  }
  
  public float getDefaultMinVisible()
  {
    return 1.0F;
  }
  
  public void getLocationOnScreen(int[] paramArrayOfInt)
  {
    AnimatedScreenElement localAnimatedScreenElement = (AnimatedScreenElement)this.mElementRef.get();
    if ((localAnimatedScreenElement != null) && (paramArrayOfInt != null) && (paramArrayOfInt.length > 1))
    {
      paramArrayOfInt[0] = ((int)localAnimatedScreenElement.getAbsoluteLeft());
      paramArrayOfInt[1] = ((int)localAnimatedScreenElement.getAbsoluteTop());
    }
  }
  
  public AnimatedScreenElement getTargetObject()
  {
    return (AnimatedScreenElement)this.mElementRef.get();
  }
  
  public boolean isValid()
  {
    boolean bool;
    if ((AnimatedScreenElement)this.mElementRef.get() != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.folme.AnimatedTarget
 * JD-Core Version:    0.7.0.1
 */