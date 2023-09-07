package com.miui.calendar.util;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref.BooleanRef;
import kotlin.jvm.internal.r;
import miuix.animation.ITouchStyle;
import miuix.animation.ITouchStyle.TouchType;
import miuix.animation.d;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/util/v;", "", "Landroid/view/View;", "view", "Lkotlin/u;", "d", "e", "k", "i", "j", "", "isNeedRectangleBg", "isBlackShape", "g", "f", "", "localX", "localY", "c", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class v
{
  public static final v a = new v();
  
  public static final boolean c(View paramView, float paramFloat1, float paramFloat2)
  {
    r.f(paramView, "view");
    int i = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
    float f = -i;
    boolean bool;
    if ((paramFloat1 >= f) && (paramFloat2 >= f) && (paramFloat1 < paramView.getWidth() + i) && (paramFloat2 < paramView.getHeight() + i)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static final void d(View paramView)
  {
    if (paramView == null) {
      return;
    }
    miuix.animation.a.y(new View[] { paramView }).d().P(paramView, new d9.a[0]);
  }
  
  public static final void e(View paramView)
  {
    if (paramView == null) {
      return;
    }
    miuix.animation.a.y(new View[] { paramView }).d().N(1).P(paramView, new d9.a[0]);
  }
  
  public static final void f(View paramView, boolean paramBoolean)
  {
    g(paramView, paramBoolean, false);
  }
  
  public static final void g(View paramView, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramView == null) {
      return;
    }
    if (paramBoolean1) {
      if (paramBoolean2) {
        paramView.setBackgroundResource(2131231039);
      } else {
        paramView.setBackgroundResource(2131231040);
      }
    }
    Ref.BooleanRef localBooleanRef = new Ref.BooleanRef();
    localBooleanRef.element = true;
    paramView.setOnTouchListener(new u(localBooleanRef, paramView));
  }
  
  private static final boolean h(Ref.BooleanRef paramBooleanRef, View paramView1, View paramView2, MotionEvent paramMotionEvent)
  {
    r.f(paramBooleanRef, "$isPointInView");
    r.f(paramView2, "v");
    r.f(paramMotionEvent, "event");
    d locald = miuix.animation.a.y(new View[] { paramView2 });
    r.e(locald, "useAt(v)");
    int i = paramMotionEvent.getAction();
    if (i != 0)
    {
      if (i != 1)
      {
        if (i != 2)
        {
          if (i == 3) {
            locald.d().e(paramMotionEvent);
          }
        }
        else {
          paramBooleanRef.element = c(paramView1, paramMotionEvent.getX(), paramMotionEvent.getY());
        }
      }
      else
      {
        locald.d().O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.UP }).e(paramMotionEvent);
        if (paramBooleanRef.element) {
          paramView2.performClick();
        }
      }
    }
    else
    {
      paramBooleanRef.element = true;
      locald.d().O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.DOWN }).e(paramMotionEvent);
    }
    return true;
  }
  
  public static final void i(View paramView)
  {
    f(paramView, true);
  }
  
  public static final void j(View paramView)
  {
    g(paramView, true, true);
  }
  
  public static final void k(View paramView)
  {
    if (paramView == null) {
      return;
    }
    paramView.setOnTouchListener(new t());
  }
  
  private static final boolean l(View paramView, MotionEvent paramMotionEvent)
  {
    r.f(paramView, "v");
    r.f(paramMotionEvent, "event");
    miuix.animation.a.y(new View[] { paramView }).d().O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.DOWN }).O(1.0F, new ITouchStyle.TouchType[] { ITouchStyle.TouchType.UP }).e(paramMotionEvent);
    if (paramMotionEvent.getAction() == 1) {
      paramView.performClick();
    }
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.v
 * JD-Core Version:    0.7.0.1
 */