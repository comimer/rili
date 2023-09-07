package com.android.calendar.homepage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.w;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

public class z0
  extends View
{
  private static final int[] W = { 2131886960, 2131886959, 2131886963, 2131886956, 2131886964, 2131886962, 2131886961, 2131886957, 2131886967, 2131886966, 2131886965, 2131886958 };
  private float D;
  private float E;
  private float F;
  private float G;
  private float H;
  private float I;
  private String[] J;
  private String[][] K;
  private int[][] L;
  private int[] M = { -1, -1 };
  private int[] N = { -1, -1 };
  private List<int[]> O;
  private String P;
  private String Q;
  private boolean R = false;
  private boolean S = false;
  private RectF T;
  private RectF U;
  private Rect V;
  private Context a;
  private TextPaint b;
  private TextPaint c;
  private TextPaint d;
  private TextPaint e;
  private TextPaint f;
  private TextPaint g;
  private Paint h;
  private Paint i;
  private Paint j;
  private float k;
  private float l;
  private float m;
  private float n;
  private float o;
  private float p;
  private float q;
  private float r;
  private float v;
  private float w;
  private float x;
  private float y;
  private float z;
  
  public z0(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public z0(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, -1);
  }
  
  public z0(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = paramContext;
  }
  
  private void b()
  {
    boolean bool = this.R;
    float f1 = 0.0F;
    float f2 = 0.0F;
    float f3 = 0.0F;
    if (bool)
    {
      this.k = x0.O(this.a, 133.5F);
      this.l = x0.O(this.a, 49.5F);
      this.m = x0.O(this.a, 54.0F);
      this.q = x0.O(this.a, 0.0F);
      this.n = x0.O(this.a, 54.0F);
      this.o = x0.O(this.a, 21.5F);
      this.r = (this.m / 2.0F);
      this.v = x0.O(this.a, 24.0F);
      this.w = x0.O(this.a, 6.0F);
      this.x = x0.O(this.a, 5.0F);
      this.y = x0.O(this.a, 93.0F);
      this.z = x0.O(this.a, 84.0F);
      this.D = x0.O(this.a, 24.0F);
      this.E = x0.O(this.a, 42.0F);
      if (!x0.p0()) {
        f3 = x0.O(this.a, -6.0F);
      }
      this.F = f3;
      this.G = x0.O(this.a, 2.0F);
    }
    else if (x0.m0(this.a))
    {
      this.k = x0.O(this.a, 79.0F);
      this.l = x0.O(this.a, 33.0F);
      this.m = x0.O(this.a, 40.0F);
      this.q = x0.O(this.a, 0.0F);
      this.n = x0.O(this.a, 40.0F);
      this.r = (this.m / 2.0F);
      this.v = x0.O(this.a, 16.0F);
      this.w = x0.O(this.a, 4.0F);
      this.x = x0.O(this.a, 2.0F);
      this.y = x0.O(this.a, 56.0F);
      this.z = x0.O(this.a, 48.0F);
      this.D = x0.O(this.a, 24.0F);
      this.E = x0.O(this.a, 28.0F);
      if (x0.p0()) {
        f3 = f1;
      } else {
        f3 = x0.O(this.a, -3.0F);
      }
      this.F = f3;
      this.G = x0.O(this.a, 6.0F);
    }
    else
    {
      this.k = x0.O(this.a, 89.0F);
      this.l = x0.O(this.a, 33.0F);
      this.m = x0.O(this.a, 40.0F);
      this.q = x0.O(this.a, 0.0F);
      this.n = x0.O(this.a, 40.0F);
      this.r = (this.m / 2.0F);
      this.v = x0.O(this.a, 16.0F);
      this.w = x0.O(this.a, 4.0F);
      this.x = x0.O(this.a, 2.0F);
      this.y = x0.O(this.a, 62.0F);
      this.z = x0.O(this.a, 56.0F);
      this.D = x0.O(this.a, 24.0F);
      this.E = x0.O(this.a, 28.0F);
      if (x0.p0()) {
        f3 = f2;
      } else {
        f3 = x0.O(this.a, -4.0F);
      }
      this.F = f3;
      this.G = x0.O(this.a, 6.0F);
    }
  }
  
  public void a(Calendar paramCalendar, boolean paramBoolean)
  {
    this.R = paramBoolean;
    boolean bool;
    if ((!y.a()) && (!y.f(this.a))) {
      bool = false;
    } else {
      bool = true;
    }
    this.S = bool;
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("mIsShowChineseCalendar: ");
    ((StringBuilder)localObject).append(this.S);
    z.a("Cal:D:MonthInYearView", ((StringBuilder)localObject).toString());
    localObject = this.a.getResources();
    int i1 = ((Resources)localObject).getColor(2131101084);
    int i2 = ((Resources)localObject).getColor(2131101087);
    int i3 = ((Resources)localObject).getColor(2131101088);
    int i4 = ((Resources)localObject).getColor(2131101086);
    int i5 = ((Resources)localObject).getColor(2131101085);
    int i6 = ((Resources)localObject).getColor(2131101082);
    int i7 = ((Resources)localObject).getColor(2131101083);
    if ((!y.g()) && (!y.a())) {
      this.J = this.a.getResources().getStringArray(2130903135);
    } else {
      this.J = this.a.getResources().getStringArray(2130903134);
    }
    b();
    localObject = w.d();
    TextPaint localTextPaint = new TextPaint();
    this.b = localTextPaint;
    localTextPaint.setTextSize(this.y);
    if (!x0.p0()) {
      this.b.setTypeface((Typeface)localObject);
    }
    this.b.setAntiAlias(true);
    Typeface localTypeface = w.d();
    localTextPaint = new TextPaint();
    this.c = localTextPaint;
    localTextPaint.setTextSize(this.z);
    if (!x0.p0()) {
      this.c.setTypeface(localTypeface);
    }
    this.c.setAntiAlias(true);
    localTextPaint = new TextPaint();
    this.d = localTextPaint;
    localTextPaint.setTextSize(this.D);
    this.d.setColor(i2);
    this.d.setAntiAlias(true);
    localTextPaint = new TextPaint();
    this.e = localTextPaint;
    localTextPaint.setTextSize(this.E);
    if (!x0.p0()) {
      this.e.setTypeface((Typeface)localObject);
    }
    this.e.setColor(i1);
    this.e.setAntiAlias(true);
    localObject = new TextPaint();
    this.f = ((TextPaint)localObject);
    ((Paint)localObject).setTextSize(this.E);
    this.f.setColor(i3);
    this.f.setAntiAlias(true);
    localObject = w.c();
    localTextPaint = new TextPaint();
    this.g = localTextPaint;
    localTextPaint.setTextSize(this.E);
    float f1;
    if (!x0.p0())
    {
      this.g.setTypeface((Typeface)localObject);
      localObject = this.a;
      if (paramBoolean) {
        f1 = 3.0F;
      } else {
        f1 = 5.0F;
      }
      this.H = x0.O((Context)localObject, f1);
    }
    localObject = this.a;
    if (paramBoolean) {
      f1 = 12.0F;
    } else {
      f1 = 8.0F;
    }
    this.I = x0.O((Context)localObject, f1);
    this.g.setColor(i4);
    this.g.setAntiAlias(true);
    localObject = new Paint();
    this.h = ((Paint)localObject);
    ((Paint)localObject).setColor(i5);
    this.h.setAntiAlias(true);
    localObject = new Paint();
    this.i = ((Paint)localObject);
    ((Paint)localObject).setColor(i6);
    this.i.setAntiAlias(true);
    localObject = new Paint();
    this.j = ((Paint)localObject);
    ((Paint)localObject).setColor(i7);
    this.j.setAntiAlias(true);
    this.T = new RectF();
    this.U = new RectF();
    this.V = new Rect();
    c(paramCalendar);
  }
  
  public void c(Calendar paramCalendar)
  {
    try
    {
      boolean bool;
      if ((!y.a()) && (!y.f(this.a))) {
        bool = false;
      } else {
        bool = true;
      }
      this.S = bool;
      Calendar localCalendar = (Calendar)paramCalendar.clone();
      Object localObject = Calendar.getInstance();
      int i1;
      if ((((Calendar)localObject).get(2) == paramCalendar.get(2)) && (((Calendar)localObject).get(1) == paramCalendar.get(1))) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      paramCalendar = this.a.getResources();
      if (i1 != 0) {
        i2 = 2131101081;
      } else {
        i2 = 2131101084;
      }
      int i3 = paramCalendar.getColor(i2);
      this.b.setColor(i3);
      int i2 = localCalendar.get(2);
      this.P = this.a.getResources().getString(W[i2]);
      this.Q = getContext().getResources().getString(2131886874);
      this.c.setColor(i3);
      this.M = new int[] { -1, -1 };
      this.K = new String[6][7];
      this.L = new int[6][7];
      this.N = new int[] { -1, -1 };
      paramCalendar = new java/util/ArrayList;
      paramCalendar.<init>();
      this.O = paramCalendar;
      int i4 = ((Calendar)localObject).get(5);
      paramCalendar = (Calendar)localCalendar.clone();
      paramCalendar.setMinimalDaysInFirstWeek(1);
      paramCalendar.setFirstDayOfWeek(1);
      while (i2 == paramCalendar.get(2))
      {
        i3 = paramCalendar.get(4) - 1;
        int i5 = paramCalendar.get(7) - 1;
        int i6 = paramCalendar.get(5);
        this.K[i3][i5] = String.valueOf(i6);
        this.L[i3][i5] = DaysOffUtils.g(this.a).e(paramCalendar.get(1), paramCalendar.get(6));
        if ((i1 != 0) && (i4 == i6))
        {
          localObject = this.M;
          localObject[0] = i3;
          localObject[1] = i5;
        }
        else if ((this.S) && (a0.u(paramCalendar)))
        {
          localObject = this.N;
          localObject[0] = i3;
          localObject[1] = i5;
        }
        else if ((this.S) && (a0.t(paramCalendar)))
        {
          this.O.add(new int[] { i3, i5 });
        }
        paramCalendar.add(6, 1);
      }
      invalidate();
    }
    catch (Exception paramCalendar)
    {
      z.d("Cal:D:MonthInYearView", "RefreshView Error: ", paramCalendar);
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    boolean bool = y.a();
    float f1 = 0.0F;
    if (bool)
    {
      if (x0.p0())
      {
        localObject1 = this.c.getFontMetrics();
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(this.P);
        ((StringBuilder)localObject2).append(this.Q);
        paramCanvas.drawText(((StringBuilder)localObject2).toString(), 0.0F, Math.abs(((Paint.FontMetrics)localObject1).top), this.c);
      }
      else
      {
        localObject1 = this.b.getFontMetrics();
        paramCanvas.drawText(this.P, 0.0F, Math.abs(((Paint.FontMetrics)localObject1).top) + this.F, this.b);
        f1 = this.b.measureText(this.P);
        localObject1 = this.c.getFontMetrics();
        paramCanvas.drawText(this.Q, f1 + 0.0F - 2.0F, Math.abs(((Paint.FontMetrics)localObject1).top), this.c);
      }
    }
    else
    {
      localObject1 = this.c.getFontMetrics();
      if (getLayoutDirection() == 1) {
        f1 = getMeasuredWidth() - this.c.measureText(this.P);
      }
      paramCanvas.drawText(this.P, f1, Math.abs(((Paint.FontMetrics)localObject1).top), this.c);
    }
    Object localObject1 = this.d.getFontMetrics();
    f1 = this.q;
    float f2 = this.k;
    float f3 = Math.abs(((Paint.FontMetrics)localObject1).top);
    float f4 = (this.l - ((Paint.FontMetrics)localObject1).bottom + ((Paint.FontMetrics)localObject1).top) / 2.0F;
    float f5;
    for (int i1 = 0; i1 < 7; i1++)
    {
      if (x0.x0()) {
        i2 = 6 - i1;
      } else {
        i2 = i1;
      }
      f5 = (this.m - this.d.measureText(this.J[i2])) / 2.0F;
      paramCanvas.drawText(this.J[i2], f5 + f1, f3 + f2 + f4, this.d);
      f1 += this.m + this.p;
    }
    Object localObject2 = this.e.getFontMetrics();
    f1 = f2 + this.l;
    for (int i2 = 0; i2 < this.K.length; i2++)
    {
      f3 = f1 + this.o;
      f1 = this.q;
      f2 = Math.abs(((Paint.FontMetrics)localObject2).top) + f3;
      for (i1 = 0; i1 < this.K[i2].length; i1++)
      {
        int i3;
        if (x0.x0()) {
          i3 = this.K[i2].length - 1 - i1;
        } else {
          i3 = i1;
        }
        Object localObject3 = this.K[i2][i3];
        if (localObject3 != null)
        {
          if (((i3 != 0) && (i3 != 6)) || ((this.L[i2][i3] == 2) && (this.L[i2][i3] != 1))) {
            localObject1 = this.e;
          } else {
            localObject1 = this.f;
          }
          f4 = (this.m - ((Paint)localObject1).measureText((String)localObject3)) / 2.0F;
          localObject3 = this.M;
          float f6;
          if ((localObject3[0] == i2) && (localObject3[1] == i3))
          {
            localObject1 = this.g;
            localObject3 = this.K[i2][i3];
            ((Paint)localObject1).getTextBounds((String)localObject3, 0, ((String)localObject3).length(), this.V);
            f6 = this.m / 2.0F;
            f5 = this.G;
            localObject3 = this.V;
            paramCanvas.drawCircle(f6 + f1, f5 + f2 + (((Rect)localObject3).top + ((Rect)localObject3).bottom) / 2.0F, this.r, this.h);
            paramCanvas.drawText(this.K[i2][i3], f4 + f1, this.G + f2, (Paint)localObject1);
          }
          else
          {
            f4 = (this.m - ((Paint)localObject1).measureText(this.K[i2][i3])) / 2.0F;
            paramCanvas.drawText(this.K[i2][i3], f4 + f1, this.G + f2, (Paint)localObject1);
          }
          localObject1 = this.N;
          float f7;
          if ((localObject1[0] == i2) && (localObject1[1] == i3))
          {
            localObject1 = this.U;
            f5 = this.m;
            f4 = this.v;
            f5 = (f5 - f4) / 2.0F + f1;
            ((RectF)localObject1).left = f5;
            f7 = this.n;
            f6 = this.w;
            f7 = f7 + f3 - f6 + this.I;
            ((RectF)localObject1).top = f7;
            ((RectF)localObject1).right = (f5 + f4);
            ((RectF)localObject1).bottom = (f7 + f6);
            f4 = this.x;
            paramCanvas.drawRoundRect((RectF)localObject1, f4, f4, this.j);
          }
          else if (!this.O.isEmpty())
          {
            localObject1 = this.O.iterator();
            while (((Iterator)localObject1).hasNext())
            {
              localObject3 = (int[])((Iterator)localObject1).next();
              if ((localObject3[0] == i2) && (localObject3[1] == i3))
              {
                localObject3 = this.T;
                f5 = this.m;
                f4 = this.v;
                f5 = (f5 - f4) / 2.0F + f1;
                ((RectF)localObject3).left = f5;
                f7 = this.n;
                f6 = this.w;
                f7 = f7 + f3 - f6 + this.I;
                ((RectF)localObject3).top = f7;
                ((RectF)localObject3).right = (f5 + f4);
                ((RectF)localObject3).bottom = (f7 + f6);
                f4 = this.x;
                paramCanvas.drawRoundRect((RectF)localObject3, f4, f4, this.i);
              }
            }
          }
        }
        f1 += this.m + this.p;
      }
      f1 = f3 + this.n;
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    this.p = ((paramInt1 - this.m * 7.0F) / 6.0F);
    if (!this.R)
    {
      float f1 = paramInt2;
      float f2 = this.r;
      float f3 = this.n;
      this.o = ((f1 + (f2 - f3) / 2.0F - this.k - this.l - f3 * 6.0F) / 6.0F);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.z0
 * JD-Core Version:    0.7.0.1
 */