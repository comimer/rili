package com.google.android.material.slider;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R.attr;
import java.util.ArrayList;
import java.util.List;

public class RangeSlider
  extends BaseSlider<RangeSlider, OnChangeListener, OnSliderTouchListener>
{
  public RangeSlider(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RangeSlider(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.sliderStyle);
  }
  
  public RangeSlider(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { R.attr.values });
    if (paramContext.hasValue(0))
    {
      paramInt = paramContext.getResourceId(0, 0);
      setValues(convertToFloat(paramContext.getResources().obtainTypedArray(paramInt)));
    }
    paramContext.recycle();
  }
  
  private static List<Float> convertToFloat(TypedArray paramTypedArray)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < paramTypedArray.length(); i++) {
      localArrayList.add(Float.valueOf(paramTypedArray.getFloat(i, -1.0F)));
    }
    return localArrayList;
  }
  
  public List<Float> getValues()
  {
    return super.getValues();
  }
  
  public void setValues(List<Float> paramList)
  {
    super.setValues(paramList);
  }
  
  public void setValues(Float... paramVarArgs)
  {
    super.setValues(paramVarArgs);
  }
  
  public static abstract interface OnChangeListener
    extends BaseOnChangeListener<RangeSlider>
  {}
  
  public static abstract interface OnSliderTouchListener
    extends BaseOnSliderTouchListener<RangeSlider>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.slider.RangeSlider
 * JD-Core Version:    0.7.0.1
 */