package com.miui.calendar.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import m1.b;

public class ShadowView
  extends View
{
  private final Paint a = new Paint();
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  
  public ShadowView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    Resources localResources = paramContext.getResources();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.k2, 0, 0);
    this.b = paramContext.getColor(2, 0);
    this.c = paramContext.getDimensionPixelOffset(1, localResources.getDimensionPixelOffset(2131166886));
    this.d = paramContext.getDimensionPixelOffset(3, localResources.getDimensionPixelOffset(2131166887));
    this.e = paramContext.getDimensionPixelOffset(4, localResources.getDimensionPixelOffset(2131166888));
    this.f = paramContext.getDimensionPixelOffset(5, localResources.getDimensionPixelOffset(2131165515));
    int i = paramContext.getColor(0, this.b);
    this.a.setAntiAlias(true);
    this.a.setColor(i);
    this.a.setShadowLayer(this.c, this.d, this.e, this.b);
    paramContext.recycle();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    int i = Math.min(this.h, this.g) / 2;
    paramCanvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, i, this.a);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    this.h = View.MeasureSpec.getSize(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt2);
    this.g = i;
    paramInt2 = this.h;
    paramInt1 = this.f;
    setMeasuredDimension(paramInt2 + paramInt1 * 2, i + paramInt1 * 2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.ShadowView
 * JD-Core Version:    0.7.0.1
 */