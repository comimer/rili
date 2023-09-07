package com.miui.calendar.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Path.Op;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import m1.b;

public class z
  extends TextView
{
  private int a;
  private int b;
  private float c;
  private int d = -1;
  private RectF e;
  private float f;
  public String g;
  public boolean h;
  public int i;
  public int j;
  private Paint k;
  private Path l;
  private Path m;
  public Drawable n;
  public Drawable o;
  
  public z(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public z(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, b.V1);
    try
    {
      this.a = paramAttributeSet.getColor(0, paramContext.getResources().getColor(2131100964));
      this.b = paramAttributeSet.getColor(1, paramContext.getResources().getColor(2131099692));
      this.c = paramAttributeSet.getDimension(7, paramContext.getResources().getDimension(2131165408));
      this.f = paramAttributeSet.getDimension(3, paramContext.getResources().getDimension(2131165407));
      paramInt = paramAttributeSet.getInteger(10, paramContext.getResources().getInteger(2131427335));
      this.h = paramAttributeSet.getBoolean(8, false);
      this.g = getText().toString();
      this.i = paramAttributeSet.getColor(9, paramContext.getResources().getColor(2131099693));
      this.j = paramAttributeSet.getColor(5, paramContext.getResources().getColor(2131099691));
      this.n = paramAttributeSet.getDrawable(6);
      this.o = paramAttributeSet.getDrawable(4);
      if (this.n == null) {
        this.n = paramContext.getResources().getDrawable(2131231030);
      }
      if (this.o == null) {
        this.o = paramContext.getResources().getDrawable(2131230908);
      }
      paramAttributeSet.recycle();
      paramContext = new Paint();
      this.k = paramContext;
      paramContext.setAntiAlias(true);
      this.k.setStyle(Paint.Style.FILL);
      this.l = new Path();
      this.e = new RectF();
      this.m = new Path();
      if (paramInt == 1) {
        setGravity(8388627);
      } else if (paramInt == 3) {
        setGravity(8388629);
      } else {
        setGravity(17);
      }
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
    if (this.d > 0)
    {
      RectF localRectF = this.e;
      localRectF.left = 0.0F;
      localRectF.top = 0.0F;
      localRectF.right = getMeasuredWidth();
      this.e.bottom = getMeasuredHeight();
      float f1 = this.d / 100.0F;
      this.k.setColor(this.a);
      localRectF = this.e;
      float f2 = this.c;
      paramCanvas.drawRoundRect(localRectF, f2, f2, this.k);
      localRectF = this.e;
      localRectF = new RectF(localRectF.left, localRectF.top, localRectF.right, localRectF.bottom);
      float f3 = this.e.left;
      f2 = getMeasuredWidth();
      Object localObject = this.e;
      localObject = new RectF(f3 + f2 * f1, ((RectF)localObject).top, ((RectF)localObject).right, ((RectF)localObject).bottom);
      this.l.reset();
      this.m.reset();
      this.m.addRect((RectF)localObject, Path.Direction.CCW);
      localObject = this.l;
      f1 = this.c;
      Path.Direction localDirection = Path.Direction.CCW;
      ((Path)localObject).addRoundRect(localRectF, new float[] { f1, f1, f1, f1, f1, f1, f1, f1 }, localDirection);
      this.l.op(this.m, Path.Op.DIFFERENCE);
      this.k.setColor(this.b);
      paramCanvas.drawPath(this.l, this.k);
    }
    super.onDraw(paramCanvas);
  }
  
  public void setProgress(int paramInt)
  {
    this.d = paramInt;
    invalidate();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.z
 * JD-Core Version:    0.7.0.1
 */