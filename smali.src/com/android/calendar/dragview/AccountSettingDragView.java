package com.android.calendar.dragview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;

public class AccountSettingDragView
  extends View
{
  private Paint a;
  private Path b;
  private float c;
  private float d;
  private float e;
  
  public AccountSettingDragView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AccountSettingDragView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    this.a = new Paint(1);
    int i = getResources().getDimensionPixelSize(2131165512);
    this.d = getResources().getDimensionPixelSize(2131165513);
    float f = i;
    this.c = f;
    this.a.setStrokeWidth(f);
    this.a.setColor(getResources().getColor(2131099912, null));
    this.a.setStrokeCap(Paint.Cap.ROUND);
    this.a.setStrokeJoin(Paint.Join.ROUND);
    this.a.setStyle(Paint.Style.STROKE);
    this.b = new Path();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    this.b.reset();
    float f1 = this.c;
    float f2 = this.d;
    float f3 = getWidth() / 2;
    float f4 = this.e * getHeight() / 4.0F;
    float f5 = getWidth();
    float f6 = this.c;
    float f7 = this.d;
    this.b.moveTo(f1 + 0.0F, f2);
    this.b.lineTo(f3, f4 + f2);
    this.b.lineTo(f5 - f6, f7);
    paramCanvas.drawPath(this.b, this.a);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.dragview.AccountSettingDragView
 * JD-Core Version:    0.7.0.1
 */