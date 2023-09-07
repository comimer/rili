package com.android.calendar.homepage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.w;
import com.miui.calendar.util.x0;
import g9.b;
import g9.c;
import java.util.Collection;
import miuix.animation.f;

public class WeekHeaderView
  extends View
{
  private static float h;
  private static int i;
  private int a;
  private final Paint b;
  private String[] c;
  private int d;
  private int e;
  private int f;
  private int g;
  
  public WeekHeaderView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = new Paint();
    this.b = paramAttributeSet;
    this.a = Utils.C(getContext());
    i = paramContext.getResources().getColor(2131100982);
    h = (int)paramContext.getResources().getDimension(2131165802);
    this.d = x0.e0(paramContext, Utils.t(paramContext));
    this.e = x0.d0(paramContext, Utils.t(paramContext));
    paramAttributeSet.setAntiAlias(true);
    paramAttributeSet.setTextAlign(Paint.Align.CENTER);
    paramAttributeSet.setTextSize(h);
    paramAttributeSet.setFakeBoldText(false);
    paramAttributeSet.setColor(i);
    paramAttributeSet.setTypeface(w.d());
    this.f = paramContext.getResources().getConfiguration().orientation;
    this.g = x0.c0(paramContext);
  }
  
  private float c(float paramFloat)
  {
    float f1 = (getWidth() - this.d - this.e) / 7.0F;
    float f2;
    if ((x0.x0()) && (Utils.n0(getContext())))
    {
      f2 = 5.45F;
    }
    else
    {
      f2 = paramFloat;
      if (!x0.x0()) {
        break label56;
      }
      f2 = 6.0F;
    }
    f2 -= paramFloat;
    label56:
    return this.d + f2 * f1 + f1 / 2.0F;
  }
  
  private void d()
  {
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)getLayoutParams();
    int j;
    if ((this.f == 2) && (Utils.t(getContext()) == 3)) {
      j = this.g;
    } else {
      j = x0.f0(getContext());
    }
    if (localLayoutParams.topMargin != j)
    {
      localLayoutParams.topMargin = j;
      setLayoutParams(localLayoutParams);
    }
    this.d = x0.e0(getContext(), Utils.t(getContext()));
    this.e = x0.d0(getContext(), Utils.t(getContext()));
    this.c = getResources().getStringArray(2130903132);
    setTextColor(getResources().getColor(2131100982));
  }
  
  private void e()
  {
    d();
  }
  
  public void f()
  {
    this.a = Utils.C(getContext());
    invalidate();
  }
  
  public void g()
  {
    int j = x0.e0(getContext(), Utils.t(getContext()));
    int k = x0.d0(getContext(), Utils.t(getContext()));
    if ((this.d == j) && (this.e == k)) {
      return;
    }
    miuix.animation.a.z(new Object[0]).M(new Object[] { "paddingStart", Integer.valueOf(this.d), "paddingEnd", Integer.valueOf(this.e) }).I(new Object[] { "paddingStart", Integer.valueOf(j), "paddingEnd", Integer.valueOf(k), new d9.a().a(new b[] { new a() }) });
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    d();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    int j = this.f;
    int k = paramConfiguration.orientation;
    if (j != k)
    {
      this.f = k;
      e();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    Paint.FontMetrics localFontMetrics = this.b.getFontMetrics();
    float f1 = localFontMetrics.bottom;
    float f2 = localFontMetrics.top;
    float f3 = getHeight();
    f1 = (getHeight() - (f1 - f2)) / 2.0F;
    f2 = localFontMetrics.bottom;
    for (int j = 0; j < 7; j++)
    {
      int k = this.a;
      float f4 = c(j);
      paramCanvas.drawText(this.c[((k + j - 1) % 7)], f4, f3 - f1 - f2, this.b);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.d = paramInt1;
    this.e = paramInt3;
    invalidate();
  }
  
  public void setTextColor(int paramInt)
  {
    i = paramInt;
    this.b.setColor(paramInt);
    invalidate();
  }
  
  class a
    extends b
  {
    a() {}
    
    public void onUpdate(Object paramObject, Collection<c> paramCollection)
    {
      paramObject = c.b(paramCollection, "paddingStart");
      paramCollection = c.b(paramCollection, "paddingEnd");
      if ((paramObject != null) && (paramCollection != null))
      {
        WeekHeaderView.a(WeekHeaderView.this, paramObject.d());
        WeekHeaderView.b(WeekHeaderView.this, paramCollection.d());
        WeekHeaderView.this.invalidate();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.WeekHeaderView
 * JD-Core Version:    0.7.0.1
 */