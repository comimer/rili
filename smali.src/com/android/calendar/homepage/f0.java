package com.android.calendar.homepage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.style.AbsoluteSizeSpan;
import android.view.View;
import android.widget.ViewSwitcher;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x0;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/f0;", "Lcom/android/calendar/homepage/l0;", "Landroid/graphics/Typeface;", "getTimeTextType", "", "m2", "", "l2", "Landroid/graphics/Paint;", "p", "Lkotlin/u;", "setupCurTimeTextPaint", "Landroid/content/Context;", "context", "u1", "paint", "Landroid/text/style/AbsoluteSizeSpan;", "p1", "o1", "expandOffset", "n2", "Landroid/graphics/Canvas;", "canvas", "R0", "", "I1", "hour", "hourBaseLineY", "E1", "Landroid/graphics/Rect;", "r", "day", "top", "a1", "G0", "getCellWidth", "getEventsEndMargin", "G1", "G4", "I", "mEventTitleTextSize", "H4", "mEventLocTextSize", "Ljava/text/SimpleDateFormat;", "I4", "Ljava/text/SimpleDateFormat;", "mDateFormat", "J4", "mTimelineTextHeight", "K4", "mCurTimeLineY", "L4", "F", "mCurTimeBaseLineY", "Landroid/widget/ViewSwitcher;", "viewSwitcher", "<init>", "(Landroid/content/Context;Landroid/widget/ViewSwitcher;)V", "N4", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class f0
  extends l0
{
  public static final a N4 = new a(null);
  private final int G4;
  private final int H4;
  private SimpleDateFormat I4;
  private final int J4;
  private int K4;
  private float L4;
  public Map<Integer, View> M4;
  
  public f0(Context paramContext, ViewSwitcher paramViewSwitcher)
  {
    super(paramContext, paramViewSwitcher, 1);
    this.G4 = paramContext.getResources().getDimensionPixelSize(2131165798);
    this.H4 = paramContext.getResources().getDimensionPixelSize(2131165792);
    this.J4 = x0.h(paramContext, getTimeTextType(), x0.O(paramContext, 8.0F), this.K2);
    this.K4 = -1;
    this.L4 = -1;
  }
  
  private final Typeface getTimeTextType()
  {
    Typeface localTypeface = x0.D();
    r.e(localTypeface, "miuiNormal");
    return localTypeface;
  }
  
  private final float l2()
  {
    if (this.K4 == -1) {
      return -1.0F;
    }
    Paint localPaint = new Paint();
    setupCurTimeTextPaint(localPaint);
    return this.K4 + Math.abs(localPaint.ascent() + localPaint.descent()) / 2;
  }
  
  private final int m2()
  {
    int k;
    if (this.o == this.l)
    {
      int i = (int)(this.j.m() * (l0.x4 + l0.h3) + this.j.o() * l0.x4 / 60.0F + this.F2 / 4 + 1);
      int j = this.j.m();
      k = l0.x4;
      k = Math.min(i, j * (l0.h3 + k) + k * 60 / 60 - this.F2 / 4 + 1);
    }
    else
    {
      k = -1;
    }
    return k;
  }
  
  private final void setupCurTimeTextPaint(Paint paramPaint)
  {
    paramPaint.setTypeface(getTimeTextType());
    paramPaint.setTextSize(l0.J3);
    paramPaint.setColor(this.K2);
    paramPaint.setTextAlign(Paint.Align.CENTER);
  }
  
  protected boolean E1(int paramInt, float paramFloat, Paint paramPaint)
  {
    r.f(paramPaint, "p");
    if ((this.o == this.l) && (paramInt == this.j.m()))
    {
      if (this.j.o() < 5) {
        return true;
      }
      float f1 = paramPaint.ascent() + paramFloat;
      paramFloat += paramPaint.descent();
      float f2 = this.L4;
      paramInt = this.J4;
      float f3 = f2 - paramInt / 2;
      f2 += paramInt / 2;
      if ((f1 <= f3) && (f3 <= paramFloat)) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      int i;
      if ((f1 <= f2) && (f2 <= paramFloat)) {
        i = 1;
      } else {
        i = 0;
      }
      return (paramInt != 0) || (i != 0);
    }
    return false;
  }
  
  protected int G0(int paramInt)
  {
    int i = getEffectiveWidth();
    int j;
    if (x0.x0()) {
      j = this.D2;
    } else {
      j = this.I2;
    }
    return paramInt * i + j;
  }
  
  protected boolean G1()
  {
    return false;
  }
  
  public boolean I1()
  {
    boolean bool;
    if ((this.x2) && (this.v2 != 4)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void R0(Canvas paramCanvas)
  {
    r.f(paramCanvas, "canvas");
    Paint localPaint = this.D0;
    Rect localRect = this.z0;
    if (l0.p4 != 0) {
      Z0(localRect, paramCanvas, localPaint);
    }
    this.K4 = m2();
    this.L4 = l2();
    f1(localRect, paramCanvas, localPaint);
    localPaint.setAntiAlias(false);
    int i = localPaint.getAlpha();
    localPaint.setAlpha(this.G);
    e1(this.o, 0, l0.h3, paramCanvas, localPaint);
    if (this.o == this.l)
    {
      int j = this.K4;
      int k = this.T0;
      if ((j >= k) && (j < k + this.V0 - 2))
      {
        r.e(localRect, "r");
        k = this.K4;
        r.e(localPaint, "p");
        a1(localRect, 0, k, paramCanvas, localPaint);
      }
    }
    localPaint.setAntiAlias(true);
    localPaint.setAlpha(i);
    b1(localRect, paramCanvas, localPaint);
  }
  
  protected void a1(Rect paramRect, int paramInt1, int paramInt2, Canvas paramCanvas, Paint paramPaint)
  {
    r.f(paramRect, "r");
    r.f(paramCanvas, "canvas");
    r.f(paramPaint, "p");
    Object localObject1 = getContext();
    r.e(localObject1, "context");
    paramInt1 = l1(x0.z((Context)localObject1));
    setupCurTimeTextPaint(paramPaint);
    D0(paramPaint);
    Date localDate = new Date();
    boolean bool = this.u1;
    Object localObject2 = null;
    SimpleDateFormat localSimpleDateFormat;
    if (!bool)
    {
      localSimpleDateFormat = this.I4;
      localObject1 = localSimpleDateFormat;
      if (localSimpleDateFormat == null)
      {
        r.x("mDateFormat");
        localObject1 = null;
      }
      ((SimpleDateFormat)localObject1).applyPattern(":mm");
    }
    else if (this.j.m() < 10)
    {
      localSimpleDateFormat = this.I4;
      localObject1 = localSimpleDateFormat;
      if (localSimpleDateFormat == null)
      {
        r.x("mDateFormat");
        localObject1 = null;
      }
      ((SimpleDateFormat)localObject1).applyPattern("H:mm");
    }
    else
    {
      localSimpleDateFormat = this.I4;
      localObject1 = localSimpleDateFormat;
      if (localSimpleDateFormat == null)
      {
        r.x("mDateFormat");
        localObject1 = null;
      }
      ((SimpleDateFormat)localObject1).applyPattern("HH:mm");
    }
    localObject1 = this.I4;
    if (localObject1 == null)
    {
      r.x("mDateFormat");
      localObject1 = localObject2;
    }
    localObject2 = ((DateFormat)localObject1).format(localDate);
    r.e(localObject2, "mDateFormat.format(curDate)");
    localObject1 = localObject2;
    if (!this.u1)
    {
      localObject1 = localObject2;
      if (this.J2 == this.j.m())
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(this.j.m() % 12);
        ((StringBuilder)localObject1).append((String)localObject2);
        localObject1 = ((StringBuilder)localObject1).toString();
      }
    }
    localObject2 = localObject1;
    if (this.Q1)
    {
      localObject2 = localObject1;
      if (this.m == this.j.m()) {
        localObject2 = "";
      }
    }
    paramCanvas.drawText((String)localObject2, paramInt1, this.L4, paramPaint);
    paramRect.left = l1(this.I2 + this.C2 + this.H2 * 2 + 10);
    paramRect.right = (l1(this.W0 - this.D2) - this.F2);
    int i = this.y2;
    paramInt1 = paramInt2 - i;
    paramRect.top = paramInt1;
    paramRect.bottom = (paramInt1 + i * 2);
    paramPaint.setColor(this.L2);
    paramPaint.setStyle(Paint.Style.STROKE);
    paramPaint.setStrokeWidth(this.H2);
    paramPaint.setAntiAlias(true);
    paramCanvas.drawRoundRect(paramRect.left, paramRect.top, paramRect.right, paramRect.bottom, 1.0F, 1.0F, paramPaint);
    paramInt1 = paramRect.left;
    i = this.H2;
    paramRect.left = (paramInt1 + i);
    paramRect.right -= i;
    paramRect.top += 1;
    paramRect.bottom -= 1;
    paramPaint.setColor(this.K2);
    paramPaint.setStyle(Paint.Style.FILL);
    paramCanvas.drawRoundRect(paramRect.left, paramRect.top, paramRect.right, paramRect.bottom, 1.0F, 1.0F, paramPaint);
    float f1 = l1(this.I2 + (this.C2 / 2 + this.H2) + 10);
    float f2 = paramInt2;
    paramPaint.setColor(this.L2);
    paramPaint.setStyle(Paint.Style.STROKE);
    paramPaint.setStrokeWidth(this.H2);
    paramCanvas.drawCircle(f1, f2, this.C2 / 2 + this.H2, paramPaint);
    paramPaint.setStyle(Paint.Style.FILL);
    paramPaint.setColor(this.z2);
    paramCanvas.drawCircle(f1, f2, (float)(this.C2 / 2 + 1.5D), paramPaint);
  }
  
  protected int getCellWidth()
  {
    return this.W0 - this.I2 - this.D2;
  }
  
  protected int getEventsEndMargin()
  {
    return getResources().getDimensionPixelSize(2131165790);
  }
  
  public final void n2(int paramInt)
  {
    if (this.M2 == paramInt) {
      return;
    }
    this.M2 = paramInt;
    this.L0 = true;
    invalidate();
  }
  
  protected AbsoluteSizeSpan o1(Paint paramPaint)
  {
    r.f(paramPaint, "paint");
    return new AbsoluteSizeSpan(this.H4);
  }
  
  protected AbsoluteSizeSpan p1(Paint paramPaint)
  {
    r.f(paramPaint, "paint");
    return new AbsoluteSizeSpan(this.G4);
  }
  
  protected void u1(Context paramContext)
  {
    this.I4 = new SimpleDateFormat();
    super.u1(paramContext);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/f0$a;", "", "", "HOURS_12_FORMAT", "Ljava/lang/String;", "HOURS_24_FORMAT_BELOW_10", "HOURS_24_FORMAT_OVER_10", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.f0
 * JD-Core Version:    0.7.0.1
 */