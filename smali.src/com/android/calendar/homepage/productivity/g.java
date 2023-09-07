package com.android.calendar.homepage.productivity;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.graphics.Point;
import android.graphics.RectF;
import android.view.View.DragShadowBuilder;
import com.android.calendar.common.event.schema.Event;
import com.miui.calendar.util.x0;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/productivity/g;", "Landroid/view/View$DragShadowBuilder;", "Landroid/graphics/Point;", "shadowSize", "shadowTouchPoint", "Lkotlin/u;", "onProvideShadowMetrics", "Landroid/graphics/Canvas;", "canvas", "onDrawShadow", "Lcom/android/calendar/common/event/schema/Event;", "a", "Lcom/android/calendar/common/event/schema/Event;", "event", "Landroid/graphics/RectF;", "b", "Landroid/graphics/RectF;", "rect", "c", "textRect", "", "d", "I", "touchOffsetY", "Landroid/graphics/Paint;", "e", "Landroid/graphics/Paint;", "backgroundPaint", "f", "textPaint", "", "g", "F", "cornerRadius", "h", "shadowLeftPadding", "i", "shadowTopPadding", "j", "shadowWidth", "k", "shadowHeight", "l", "shadowRect", "m", "textX", "n", "textY", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class g
  extends View.DragShadowBuilder
{
  private final Event a;
  private final RectF b;
  private final RectF c;
  private final int d;
  private final Paint e;
  private final Paint f;
  private final float g;
  private final float h;
  private final float i;
  private final float j;
  private final float k;
  private final RectF l;
  private final float m;
  private final float n;
  
  public g(Context paramContext, Event paramEvent)
  {
    this.a = paramEvent;
    this.d = ((int)x0.O(paramContext, 150.0F));
    Object localObject = new Paint();
    this.e = ((Paint)localObject);
    Paint localPaint = new Paint();
    this.f = localPaint;
    this.g = x0.O(paramContext, 36.0F);
    float f1 = x0.O(paramContext, 63.0F);
    this.h = f1;
    float f2 = x0.O(paramContext, 50.0F);
    this.i = f2;
    float f3 = x0.O(paramContext, 447.0F);
    this.j = f3;
    float f4 = x0.O(paramContext, 320.0F);
    this.k = f4;
    this.l = new RectF(0.0F, 0.0F, f3, f4);
    this.m = (x0.O(paramContext, 46.0F) + f1);
    Resources localResources = paramContext.getResources();
    ((Paint)localObject).setColor(localResources.getColor(2131099799));
    ((Paint)localObject).setShadowLayer(x0.O(paramContext, 60.0F), 0.0F, x0.O(paramContext, 40.0F), localResources.getColor(2131099751));
    int i1 = paramEvent.getTitle().length();
    if (i1 != 1)
    {
      if (i1 != 2)
      {
        if (i1 != 3) {
          localObject = new RectF(0.0F, 0.0F, x0.O(paramContext, 284.0F), x0.O(paramContext, 120.0F));
        } else {
          localObject = new RectF(0.0F, 0.0F, x0.O(paramContext, 236.0F), x0.O(paramContext, 120.0F));
        }
      }
      else {
        localObject = new RectF(0.0F, 0.0F, x0.O(paramContext, 188.0F), x0.O(paramContext, 120.0F));
      }
    }
    else {
      localObject = new RectF(0.0F, 0.0F, x0.O(paramContext, 140.0F), x0.O(paramContext, 120.0F));
    }
    this.b = ((RectF)localObject);
    i1 = paramEvent.getTitle().length();
    if (i1 != 1)
    {
      if (i1 != 2)
      {
        if (i1 != 3) {
          paramEvent = new RectF(x0.O(paramContext, 46.0F), x0.O(paramContext, 28.0F), x0.O(paramContext, 238.0F), x0.O(paramContext, 92.0F));
        } else {
          paramEvent = new RectF(x0.O(paramContext, 46.0F), x0.O(paramContext, 28.0F), x0.O(paramContext, 190.0F), x0.O(paramContext, 92.0F));
        }
      }
      else {
        paramEvent = new RectF(x0.O(paramContext, 46.0F), x0.O(paramContext, 28.0F), x0.O(paramContext, 142.0F), x0.O(paramContext, 92.0F));
      }
    }
    else {
      paramEvent = new RectF(x0.O(paramContext, 46.0F), x0.O(paramContext, 28.0F), x0.O(paramContext, 94.0F), x0.O(paramContext, 92.0F));
    }
    this.c = paramEvent;
    ((RectF)localObject).offset(f1, f2);
    paramEvent.offset(f1, f2);
    localPaint.setTextSize(x0.O(paramContext, 48.0F));
    localPaint.setColor(paramContext.getResources().getColor(2131100686));
    localPaint.setAntiAlias(true);
    paramContext = localPaint.getFontMetrics();
    f1 = ((RectF)localObject).centerY();
    f4 = paramContext.bottom;
    this.n = (f1 + (f4 - paramContext.top) / 2 - f4);
  }
  
  public void onDrawShadow(Canvas paramCanvas)
  {
    r.f(paramCanvas, "canvas");
    RectF localRectF = this.b;
    float f1 = this.g;
    paramCanvas.drawRoundRect(localRectF, f1, f1, this.e);
    paramCanvas.clipRect(this.c);
    paramCanvas.drawText(this.a.getTitle(), this.m, this.n, this.f);
  }
  
  public void onProvideShadowMetrics(Point paramPoint1, Point paramPoint2)
  {
    r.f(paramPoint1, "shadowSize");
    r.f(paramPoint2, "shadowTouchPoint");
    paramPoint1.set((int)this.l.width(), (int)this.l.height());
    paramPoint2.set((int)this.l.centerX(), this.d);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.productivity.g
 * JD-Core Version:    0.7.0.1
 */