package com.google.android.material.slider;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R.attr;
import java.util.List;

public class Slider
  extends BaseSlider<Slider, OnChangeListener, OnSliderTouchListener>
{
  public Slider(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Slider(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.sliderStyle);
  }
  
  public Slider(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842788 });
    if (paramContext.hasValue(0)) {
      setValue(paramContext.getFloat(0, 0.0F));
    }
    paramContext.recycle();
  }
  
  public float getValue()
  {
    return ((Float)getValues().get(0)).floatValue();
  }
  
  public void setValue(float paramFloat)
  {
    setValues(new Float[] { Float.valueOf(paramFloat) });
  }
  
  public static abstract interface OnChangeListener
    extends BaseOnChangeListener<Slider>
  {}
  
  public static abstract interface OnSliderTouchListener
    extends BaseOnSliderTouchListener<Slider>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.slider.Slider
 * JD-Core Version:    0.7.0.1
 */