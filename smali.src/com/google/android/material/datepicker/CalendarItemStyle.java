package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.TextView;
import androidx.core.util.h;
import androidx.core.view.a0;
import com.google.android.material.R.styleable;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearanceModel.Builder;

final class CalendarItemStyle
{
  private final ColorStateList backgroundColor;
  private final Rect insets;
  private final ShapeAppearanceModel itemShape;
  private final ColorStateList strokeColor;
  private final int strokeWidth;
  private final ColorStateList textColor;
  
  private CalendarItemStyle(ColorStateList paramColorStateList1, ColorStateList paramColorStateList2, ColorStateList paramColorStateList3, int paramInt, ShapeAppearanceModel paramShapeAppearanceModel, Rect paramRect)
  {
    h.d(paramRect.left);
    h.d(paramRect.top);
    h.d(paramRect.right);
    h.d(paramRect.bottom);
    this.insets = paramRect;
    this.textColor = paramColorStateList2;
    this.backgroundColor = paramColorStateList1;
    this.strokeColor = paramColorStateList3;
    this.strokeWidth = paramInt;
    this.itemShape = paramShapeAppearanceModel;
  }
  
  static CalendarItemStyle create(Context paramContext, int paramInt)
  {
    boolean bool;
    if (paramInt != 0) {
      bool = true;
    } else {
      bool = false;
    }
    h.b(bool, "Cannot create a CalendarItemStyle with a styleResId of 0");
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramInt, R.styleable.MaterialCalendarItem);
    Rect localRect = new Rect(localTypedArray.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetLeft, 0), localTypedArray.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetTop, 0), localTypedArray.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetRight, 0), localTypedArray.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetBottom, 0));
    ColorStateList localColorStateList1 = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.MaterialCalendarItem_itemFillColor);
    ColorStateList localColorStateList2 = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.MaterialCalendarItem_itemTextColor);
    ColorStateList localColorStateList3 = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.MaterialCalendarItem_itemStrokeColor);
    paramInt = localTypedArray.getDimensionPixelSize(R.styleable.MaterialCalendarItem_itemStrokeWidth, 0);
    paramContext = ShapeAppearanceModel.builder(paramContext, localTypedArray.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearance, 0), localTypedArray.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).build();
    localTypedArray.recycle();
    return new CalendarItemStyle(localColorStateList1, localColorStateList2, localColorStateList3, paramInt, paramContext, localRect);
  }
  
  int getBottomInset()
  {
    return this.insets.bottom;
  }
  
  int getLeftInset()
  {
    return this.insets.left;
  }
  
  int getRightInset()
  {
    return this.insets.right;
  }
  
  int getTopInset()
  {
    return this.insets.top;
  }
  
  void styleItem(TextView paramTextView)
  {
    Object localObject1 = new MaterialShapeDrawable();
    Object localObject2 = new MaterialShapeDrawable();
    ((MaterialShapeDrawable)localObject1).setShapeAppearanceModel(this.itemShape);
    ((MaterialShapeDrawable)localObject2).setShapeAppearanceModel(this.itemShape);
    ((MaterialShapeDrawable)localObject1).setFillColor(this.backgroundColor);
    ((MaterialShapeDrawable)localObject1).setStroke(this.strokeWidth, this.strokeColor);
    paramTextView.setTextColor(this.textColor);
    localObject2 = new RippleDrawable(this.textColor.withAlpha(30), (Drawable)localObject1, (Drawable)localObject2);
    localObject1 = this.insets;
    a0.p0(paramTextView, new InsetDrawable((Drawable)localObject2, ((Rect)localObject1).left, ((Rect)localObject1).top, ((Rect)localObject1).right, ((Rect)localObject1).bottom));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.CalendarItemStyle
 * JD-Core Version:    0.7.0.1
 */