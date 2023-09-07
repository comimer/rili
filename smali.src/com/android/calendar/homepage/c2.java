package com.android.calendar.homepage;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import java.util.Calendar;

public class c2
  extends ViewGroup
{
  private Context a;
  private float b;
  private float c;
  private boolean d = false;
  private int e;
  private int f;
  private int g;
  private float h;
  private int i;
  private z0[] j = new z0[12];
  private final int[] k = { 2, 1, 0, 5, 4, 3, 8, 7, 6, 11, 10, 9 };
  private final int[] l = { 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10 };
  private a m;
  
  public c2(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public c2(Context paramContext, int paramInt)
  {
    this(paramContext);
    c(paramContext, paramInt);
    Log.i("lalala", "YearView: +1");
  }
  
  public c2(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, -1);
  }
  
  public c2(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void c(Context paramContext, int paramInt)
  {
    this.a = paramContext;
    boolean bool = x0.r0(paramContext);
    this.d = bool;
    Context localContext = this.a;
    float f1;
    if (bool) {
      f1 = 62.0F;
    } else {
      f1 = 41.0F;
    }
    this.b = x0.O(localContext, f1);
    int n;
    if (this.d)
    {
      this.c = x0.O(this.a, 60.0F);
      this.e = ((int)(x0.E(this.a, true) * 6.0F + this.c * 5.0F + x0.O(this.a, 80.0F)));
      this.g = ((int)x0.O(this.a, 639.0F));
    }
    else
    {
      localContext = this.a;
      if (x0.m0(localContext)) {
        f1 = 29.0F;
      } else {
        f1 = 26.0F;
      }
      this.c = x0.O(localContext, f1);
      if ((DeviceUtils.A(this.a)) && (!DeviceUtils.N(this.a))) {
        f1 = x0.O(this.a, 10.0F);
      } else {
        f1 = x0.O(this.a, 80.0F);
      }
      this.h = f1;
      n = DeviceUtils.v(this.a) - this.a.getResources().getDimensionPixelOffset(2131167601) - x0.t(paramContext);
      this.e = n;
      this.e = ((int)Math.max(n, x0.k0(paramContext)));
      paramContext = new StringBuilder();
      paramContext.append("mHeight:");
      paramContext.append(this.e);
      z.a("Cal:D:YearView", paramContext.toString());
      if ((DeviceUtils.A(this.a)) && (!DeviceUtils.N(this.a))) {
        this.e -= DeviceUtils.o(this.a);
      }
    }
    this.f = ((int)x0.F(this.a, this.d));
    this.i = paramInt;
    for (paramInt = 0; paramInt < 12; paramInt++)
    {
      paramContext = Calendar.getInstance();
      paramContext.set(1, this.i);
      paramContext.set(2, 0);
      paramContext.set(5, 1);
      if (this.d)
      {
        if (x0.x0())
        {
          n = this.l[paramInt];
          break label423;
        }
      }
      else if (x0.x0())
      {
        n = this.k[paramInt];
        break label423;
      }
      n = paramInt;
      label423:
      this.j[n] = new z0(this.a);
      this.j[n].setOnClickListener(new a2(this, n));
      this.j[n].setOnTouchListener(new b2());
      paramContext.set(2, n);
      this.j[n].a(paramContext, this.d);
      addView(this.j[n]);
    }
  }
  
  public void f()
  {
    int i1;
    for (int n = 0; n < 12; n = i1)
    {
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.set(1, this.i);
      localCalendar.set(2, 0);
      localCalendar.set(5, 1);
      z0 localz0 = this.j[n];
      Context localContext = getContext();
      i1 = n + 1;
      localz0.setContentDescription(localContext.getString(2131886121, new Object[] { Integer.valueOf(i1) }));
      localCalendar.set(2, n);
      localz0.c(localCalendar);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = getChildCount();
    if (this.d) {
      paramInt1 = 2;
    } else {
      paramInt1 = 3;
    }
    for (paramInt2 = 0; paramInt2 < paramInt3; paramInt2++)
    {
      View localView = getChildAt(paramInt2);
      float f1 = paramInt2 % paramInt1;
      int n = this.f;
      float f2 = n;
      float f3 = this.b;
      paramInt4 = (int)(f1 * (f2 + f3) + f3);
      f2 = paramInt2 / paramInt1;
      int i1 = this.g;
      int i2 = (int)(f2 * (i1 + this.c));
      localView.layout(paramInt4, i2, n + paramInt4, i1 + i2);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(this.e, 1073741824));
    if (!this.d) {
      this.g = ((int)((getMeasuredHeight() - this.h - this.c * 3.0F) / 4.0F));
    }
    paramInt2 = getChildCount();
    int n = View.MeasureSpec.makeMeasureSpec(this.f, 1073741824);
    int i1 = View.MeasureSpec.makeMeasureSpec(this.g, 1073741824);
    for (paramInt1 = 0; paramInt1 < paramInt2; paramInt1++) {
      getChildAt(paramInt1).measure(n, i1);
    }
  }
  
  public void setOnMonthClickListener(a parama)
  {
    this.m = parama;
  }
  
  public void setYear(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("setYear ");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:YearView", localStringBuilder.toString());
    this.i = paramInt;
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt1, int paramInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.c2
 * JD-Core Version:    0.7.0.1
 */