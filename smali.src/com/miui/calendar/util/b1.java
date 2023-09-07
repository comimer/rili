package com.miui.calendar.util;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.DecelerateInterpolator;
import com.android.calendar.common.Utils;
import com.miui.calendar.view.MonthMotionContainer;
import com.miui.calendar.view.MonthPanelContainer;
import com.miui.calendar.view.VerticalMotionFrameLayout;
import com.miui.calendar.view.b;
import com.miui.calendar.view.b.a;
import com.miui.calendar.view.c0;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import w7.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/util/b1;", "", "", "y", "Lkotlin/u;", "q", "Landroid/content/Context;", "context", "Lcom/miui/calendar/view/u;", "motionDetectStrategy", "n", "", "isChangedByUser", "c", "", "stopY", "o", "p", "fromY", "toY", "Lkotlin/Function0;", "finished", "j", "b", "i", "a", "Landroid/content/Context;", "Lcom/miui/calendar/view/MonthPanelContainer;", "Lcom/miui/calendar/view/MonthPanelContainer;", "mMonthPanel", "Lcom/miui/calendar/view/VerticalMotionFrameLayout;", "Lcom/miui/calendar/view/VerticalMotionFrameLayout;", "mListContainer", "Landroid/view/View;", "d", "Landroid/view/View;", "mLargeMonthPanelView", "e", "mSmallMonthPanelView", "f", "I", "mStopY", "g", "actionBarAndWeekHeaderBottomY", "h", "()I", "weekBottomY", "productivityWeekBottomY", "monthBottomY", "k", "fullMonthBottomY", "l", "getScreenHeight", "screenHeight", "Lcom/miui/calendar/view/b$a;", "m", "Lcom/miui/calendar/view/b$a;", "()Lcom/miui/calendar/view/b$a;", "(Lcom/miui/calendar/view/b$a;)V", "mTranslateListener", "Lcom/miui/calendar/view/c0;", "Lcom/miui/calendar/view/c0;", "getTranslationController", "()Lcom/miui/calendar/view/c0;", "setTranslationController", "(Lcom/miui/calendar/view/c0;)V", "translationController", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/view/MonthPanelContainer;Lcom/miui/calendar/view/VerticalMotionFrameLayout;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class b1
{
  public static final a o = new a(null);
  private final Context a;
  private final MonthPanelContainer b;
  private final VerticalMotionFrameLayout c;
  private final View d;
  private final View e;
  private int f;
  private final int g;
  private final int h;
  private final int i;
  private final int j;
  private final int k;
  private final int l;
  private b.a m;
  private c0 n;
  
  public b1(Context paramContext, MonthPanelContainer paramMonthPanelContainer, VerticalMotionFrameLayout paramVerticalMotionFrameLayout)
  {
    this.a = paramContext;
    this.b = paramMonthPanelContainer;
    this.c = paramVerticalMotionFrameLayout;
    View localView = paramMonthPanelContainer.findViewById(2131363523);
    r.e(localView, "mMonthPanel.findViewById(R.id.view_pager)");
    this.d = localView;
    paramMonthPanelContainer = paramMonthPanelContainer.findViewById(2131363555);
    r.e(paramMonthPanelContainer, "mMonthPanel.findViewById(R.id.week_switcher)");
    this.e = paramMonthPanelContainer;
    int i1 = (int)paramContext.getResources().getDimension(2131165483);
    this.g = i1;
    this.h = ((int)x0.h0(paramContext) + i1);
    this.i = ((int)x0.i0(paramContext) + i1);
    this.j = ((int)x0.J(paramContext) + i1);
    this.k = ((int)x0.I(paramContext) + i1);
    this.l = DeviceUtils.v(paramContext);
    paramVerticalMotionFrameLayout.setTranslationY(0.0F);
  }
  
  private static final void l(b1 paramb1, ValueAnimator paramValueAnimator)
  {
    r.f(paramb1, "this$0");
    r.f(paramValueAnimator, "animation");
    paramValueAnimator = paramValueAnimator.getAnimatedValue();
    r.d(paramValueAnimator, "null cannot be cast to non-null type kotlin.Float");
    paramb1.i(((Float)paramValueAnimator).floatValue());
  }
  
  private final void q(float paramFloat)
  {
    int i1 = Utils.t(this.a);
    int i2 = 8;
    View localView;
    if (i1 == 6)
    {
      localView = this.d;
      if (paramFloat <= this.i) {
        i1 = 8;
      } else {
        i1 = 0;
      }
      localView.setVisibility(i1);
      localView = this.e;
      if (paramFloat <= this.i) {
        i2 = 0;
      }
      localView.setVisibility(i2);
    }
    else
    {
      localView = this.d;
      if (paramFloat <= this.h) {
        i1 = 8;
      } else {
        i1 = 0;
      }
      localView.setVisibility(i1);
      localView = this.e;
      if (paramFloat <= this.h) {
        i2 = 0;
      }
      localView.setVisibility(i2);
    }
  }
  
  public final void b()
  {
    c0 localc0 = this.n;
    if (localc0 != null)
    {
      VerticalMotionFrameLayout localVerticalMotionFrameLayout = this.c;
      localc0.g(localVerticalMotionFrameLayout, (int)localVerticalMotionFrameLayout.getY() + this.h, 100, 500, true, true);
    }
  }
  
  public final void c(float paramFloat, boolean paramBoolean)
  {
    int i1;
    if (paramFloat == this.j) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0)
    {
      g.d(g.v.f(true, paramBoolean, MonthMotionContainer.y), false);
    }
    else
    {
      if (paramFloat == this.h) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if (i1 != 0)
      {
        g.d(g.v.f(false, paramBoolean, MonthMotionContainer.y), false);
      }
      else
      {
        if (paramFloat == this.k) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        if (i1 != 0) {
          g.d(g.v.f(true, paramBoolean, MonthMotionContainer.y), false);
        }
      }
    }
    q(paramFloat);
    Object localObject;
    int i2;
    int i3;
    if (Utils.t(this.a) == 6)
    {
      localObject = this.d.getLayoutParams();
      r.d(localObject, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
      localObject = (ViewGroup.MarginLayoutParams)localObject;
      i2 = (int)paramFloat;
      i3 = Math.min(i2 - this.g, (int)x0.I(this.a));
      i1 = this.k;
      if (paramFloat >= i1)
      {
        ((ViewGroup.MarginLayoutParams)localObject).topMargin = 0;
        ((ViewGroup.MarginLayoutParams)localObject).height = i3;
        this.d.setLayoutParams((ViewGroup.LayoutParams)localObject);
        if (i2 >= this.l) {
          g.c(new g.m(4, Utils.t(this.a)));
        }
      }
      else
      {
        i2 = this.i;
        if (paramFloat > i2)
        {
          ((ViewGroup.MarginLayoutParams)localObject).topMargin = (-(int)(this.f * (paramFloat - i1) / (i1 - i2)));
          this.d.setLayoutParams((ViewGroup.LayoutParams)localObject);
        }
      }
    }
    else if (paramFloat >= this.j)
    {
      localObject = this.d.getLayoutParams();
      r.d(localObject, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
      localObject = (ViewGroup.MarginLayoutParams)localObject;
      i1 = (int)paramFloat;
      i3 = this.g;
      i2 = ((ViewGroup.MarginLayoutParams)localObject).height;
      ((ViewGroup.MarginLayoutParams)localObject).height = (i1 - i3);
      ((ViewGroup.MarginLayoutParams)localObject).topMargin = 0;
      this.d.setLayoutParams((ViewGroup.LayoutParams)localObject);
      if ((paramFloat >= this.k) && (!x0.w0()))
      {
        g0.d("view_month_full_expanded");
        x0.O0(true);
      }
    }
    else if (paramFloat > this.h)
    {
      x0.O0(false);
      localObject = this.d.getLayoutParams();
      r.d(localObject, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
      localObject = (ViewGroup.MarginLayoutParams)localObject;
      float f1 = this.f;
      i1 = this.j;
      ((ViewGroup.MarginLayoutParams)localObject).topMargin = (-(int)(f1 * (paramFloat - i1) / (i1 - this.h)));
      ((ViewGroup.MarginLayoutParams)localObject).height = (i1 - this.g);
      this.d.setLayoutParams((ViewGroup.LayoutParams)localObject);
    }
  }
  
  public final int d()
  {
    return this.k;
  }
  
  public final b.a e()
  {
    return this.m;
  }
  
  public final int f()
  {
    return this.j;
  }
  
  public final int g()
  {
    return this.i;
  }
  
  public final int h()
  {
    return this.h;
  }
  
  public final void i(float paramFloat)
  {
    c(paramFloat, true);
    p((int)paramFloat);
  }
  
  public final void j(float paramFloat1, float paramFloat2, a<kotlin.u> parama)
  {
    int i1;
    if (paramFloat1 == paramFloat2) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0)
    {
      if (parama != null) {
        parama.invoke();
      }
      return;
    }
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { paramFloat1, paramFloat2 });
    localValueAnimator.setDuration(300L);
    localValueAnimator.setInterpolator(new DecelerateInterpolator(1.5F));
    localValueAnimator.addUpdateListener(new a1(this));
    r.e(localValueAnimator, "anim");
    localValueAnimator.addListener(new b(parama));
    localValueAnimator.start();
  }
  
  public final void m(b.a parama)
  {
    this.m = parama;
  }
  
  public final void n(Context paramContext, com.miui.calendar.view.u paramu)
  {
    paramContext = new c0(paramContext, paramu, this.h, this.i, this.j, this.k, this.l);
    this.n = paramContext;
    paramContext.r(new c(this));
    this.c.setMotionStrategy(this.n);
  }
  
  public final void o(int paramInt)
  {
    this.f = paramInt;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("setStopY = ");
    localStringBuilder.append(this.f);
    z.a("Cal:D:VerticalMotionUtil", localStringBuilder.toString());
  }
  
  public final void p(int paramInt)
  {
    VerticalMotionFrameLayout localVerticalMotionFrameLayout = this.c;
    float f1 = paramInt;
    localVerticalMotionFrameLayout.setTranslationY(f1 - this.h);
    q(f1);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/util/b1$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"androidx/core/animation/AnimatorKt$addListener$listener$1", "Landroid/animation/Animator$AnimatorListener;", "Landroid/animation/Animator;", "animator", "Lkotlin/u;", "onAnimationRepeat", "onAnimationEnd", "onAnimationCancel", "onAnimationStart", "core-ktx_release"}, k=1, mv={1, 7, 1})
  public static final class b
    implements Animator.AnimatorListener
  {
    public b(a parama) {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      r.f(paramAnimator, "animator");
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      r.f(paramAnimator, "animator");
      paramAnimator = this.a;
      if (paramAnimator != null) {
        paramAnimator.invoke();
      }
    }
    
    public void onAnimationRepeat(Animator paramAnimator)
    {
      r.f(paramAnimator, "animator");
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      r.f(paramAnimator, "animator");
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/util/b1$c", "Lcom/miui/calendar/view/b$a;", "", "state", "Lkotlin/u;", "b", "Landroid/view/View;", "v", "", "y", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c
    implements b.a
  {
    c(b1 paramb1) {}
    
    public void a(View paramView, float paramFloat)
    {
      r.f(paramView, "v");
      this.a.c(paramFloat, true);
      if (paramFloat <= this.a.f()) {
        x0.M0(false);
      }
      b.a locala = this.a.e();
      if (locala != null) {
        locala.a(paramView, paramFloat);
      }
    }
    
    public void b(int paramInt)
    {
      b.a locala = this.a.e();
      if (locala != null) {
        locala.b(paramInt);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.b1
 * JD-Core Version:    0.7.0.1
 */