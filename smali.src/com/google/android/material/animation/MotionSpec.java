package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import java.util.ArrayList;
import java.util.List;
import n.g;

public class MotionSpec
{
  private static final String TAG = "MotionSpec";
  private final g<String, PropertyValuesHolder[]> propertyValues = new g();
  private final g<String, MotionTiming> timings = new g();
  
  private static void addInfoFromAnimator(MotionSpec paramMotionSpec, Animator paramAnimator)
  {
    if ((paramAnimator instanceof ObjectAnimator))
    {
      paramAnimator = (ObjectAnimator)paramAnimator;
      paramMotionSpec.setPropertyValues(paramAnimator.getPropertyName(), paramAnimator.getValues());
      paramMotionSpec.setTiming(paramAnimator.getPropertyName(), MotionTiming.createFromAnimator(paramAnimator));
      return;
    }
    paramMotionSpec = new StringBuilder();
    paramMotionSpec.append("Animator must be an ObjectAnimator: ");
    paramMotionSpec.append(paramAnimator);
    throw new IllegalArgumentException(paramMotionSpec.toString());
  }
  
  private PropertyValuesHolder[] clonePropertyValuesHolder(PropertyValuesHolder[] paramArrayOfPropertyValuesHolder)
  {
    PropertyValuesHolder[] arrayOfPropertyValuesHolder = new PropertyValuesHolder[paramArrayOfPropertyValuesHolder.length];
    for (int i = 0; i < paramArrayOfPropertyValuesHolder.length; i++) {
      arrayOfPropertyValuesHolder[i] = paramArrayOfPropertyValuesHolder[i].clone();
    }
    return arrayOfPropertyValuesHolder;
  }
  
  public static MotionSpec createFromAttribute(Context paramContext, TypedArray paramTypedArray, int paramInt)
  {
    if (paramTypedArray.hasValue(paramInt))
    {
      paramInt = paramTypedArray.getResourceId(paramInt, 0);
      if (paramInt != 0) {
        return createFromResource(paramContext, paramInt);
      }
    }
    return null;
  }
  
  public static MotionSpec createFromResource(Context paramContext, int paramInt)
  {
    try
    {
      localObject = AnimatorInflater.loadAnimator(paramContext, paramInt);
      if ((localObject instanceof AnimatorSet)) {
        return createSpecFromAnimators(((AnimatorSet)localObject).getChildAnimations());
      }
      if (localObject != null)
      {
        paramContext = new java/util/ArrayList;
        paramContext.<init>();
        paramContext.add(localObject);
        paramContext = createSpecFromAnimators(paramContext);
        return paramContext;
      }
      return null;
    }
    catch (Exception paramContext)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Can't load animation resource ID #0x");
      ((StringBuilder)localObject).append(Integer.toHexString(paramInt));
      Log.w("MotionSpec", ((StringBuilder)localObject).toString(), paramContext);
    }
    return null;
  }
  
  private static MotionSpec createSpecFromAnimators(List<Animator> paramList)
  {
    MotionSpec localMotionSpec = new MotionSpec();
    int i = paramList.size();
    for (int j = 0; j < i; j++) {
      addInfoFromAnimator(localMotionSpec, (Animator)paramList.get(j));
    }
    return localMotionSpec;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof MotionSpec)) {
      return false;
    }
    paramObject = (MotionSpec)paramObject;
    return this.timings.equals(paramObject.timings);
  }
  
  public <T> ObjectAnimator getAnimator(String paramString, T paramT, Property<T, ?> paramProperty)
  {
    paramT = ObjectAnimator.ofPropertyValuesHolder(paramT, getPropertyValues(paramString));
    paramT.setProperty(paramProperty);
    getTiming(paramString).apply(paramT);
    return paramT;
  }
  
  public PropertyValuesHolder[] getPropertyValues(String paramString)
  {
    if (hasPropertyValues(paramString)) {
      return clonePropertyValuesHolder((PropertyValuesHolder[])this.propertyValues.get(paramString));
    }
    throw new IllegalArgumentException();
  }
  
  public MotionTiming getTiming(String paramString)
  {
    if (hasTiming(paramString)) {
      return (MotionTiming)this.timings.get(paramString);
    }
    throw new IllegalArgumentException();
  }
  
  public long getTotalDuration()
  {
    int i = this.timings.size();
    long l = 0L;
    for (int j = 0; j < i; j++)
    {
      MotionTiming localMotionTiming = (MotionTiming)this.timings.p(j);
      l = Math.max(l, localMotionTiming.getDelay() + localMotionTiming.getDuration());
    }
    return l;
  }
  
  public boolean hasPropertyValues(String paramString)
  {
    boolean bool;
    if (this.propertyValues.get(paramString) != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean hasTiming(String paramString)
  {
    boolean bool;
    if (this.timings.get(paramString) != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    return this.timings.hashCode();
  }
  
  public void setPropertyValues(String paramString, PropertyValuesHolder[] paramArrayOfPropertyValuesHolder)
  {
    this.propertyValues.put(paramString, paramArrayOfPropertyValuesHolder);
  }
  
  public void setTiming(String paramString, MotionTiming paramMotionTiming)
  {
    this.timings.put(paramString, paramMotionTiming);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('\n');
    localStringBuilder.append(getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" timings: ");
    localStringBuilder.append(this.timings);
    localStringBuilder.append("}\n");
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.animation.MotionSpec
 * JD-Core Version:    0.7.0.1
 */