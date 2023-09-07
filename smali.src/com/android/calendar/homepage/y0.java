package com.android.calendar.homepage;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.view.MonthMotionContainer;
import java.util.Calendar;

public class y0
{
  private View a;
  private YearFrameLayout b;
  private View c;
  private View d;
  private Handler e;
  
  public y0(MonthMotionContainer paramMonthMotionContainer, YearFrameLayout paramYearFrameLayout)
  {
    this.d = paramMonthMotionContainer;
    this.a = paramMonthMotionContainer.getMonthContainer();
    this.c = paramMonthMotionContainer.getListContainer();
    this.b = paramYearFrameLayout;
    this.e = new Handler();
  }
  
  private void b(Context paramContext)
  {
    this.e.postDelayed(new x0(this, paramContext), 200L);
  }
  
  public void d(Context paramContext, int paramInt, boolean paramBoolean)
  {
    if (this.b == null) {
      return;
    }
    if ((!DeviceUtils.L()) && (!com.miui.calendar.util.x0.r0(paramContext)) && (paramInt >= 0) && (paramInt < 12) && (paramBoolean))
    {
      int i = paramInt / 3;
      float f1 = com.miui.calendar.util.x0.O(paramContext, (this.b.getWidth() / 3.0F + 20.0F) * (paramInt % 3) + 20.0F);
      float f2 = com.miui.calendar.util.x0.O(paramContext, (this.b.getHeight() / 4.0F - 40.0F) * i + 50.0F);
      ScaleAnimation localScaleAnimation = new ScaleAnimation(0.3F, 1.0F, 0.3F, 1.0F);
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(f1, 0.0F, f2, 0.0F);
      AnimationSet localAnimationSet = new AnimationSet(true);
      localAnimationSet.addAnimation(localScaleAnimation);
      localAnimationSet.addAnimation(localTranslateAnimation);
      localAnimationSet.setDuration(400L);
      localAnimationSet.setInterpolator(new DecelerateInterpolator(1.5F));
      this.b.setVisibility(8);
      this.d.setVisibility(0);
      this.c.setVisibility(8);
      this.a.startAnimation(localAnimationSet);
      b(paramContext);
      paramContext = t0.p(paramContext);
      paramContext.K(4);
      paramContext.N(4);
      return;
    }
    this.b.setVisibility(8);
    this.d.setVisibility(0);
    paramContext = t0.p(paramContext);
    paramContext.K(4);
    paramContext.N(4);
  }
  
  public void e(Context paramContext, int paramInt)
  {
    if (this.b == null) {
      return;
    }
    if ((!com.miui.calendar.util.x0.r0(paramContext)) && (!DeviceUtils.L()))
    {
      int i = paramInt / 3;
      float f1 = com.miui.calendar.util.x0.O(paramContext, -150 - (this.a.getWidth() + 150) * (paramInt % 3));
      float f2 = com.miui.calendar.util.x0.O(paramContext, -1000 - (this.a.getHeight() + 750) * i);
      ScaleAnimation localScaleAnimation = new ScaleAnimation(3.53F, 1.0F, 3.53F, 1.0F);
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(f1, 0.0F, f2, 0.0F);
      AnimationSet localAnimationSet = new AnimationSet(true);
      localAnimationSet.addAnimation(localScaleAnimation);
      localAnimationSet.addAnimation(localTranslateAnimation);
      localAnimationSet.setDuration(400L);
      localAnimationSet.setInterpolator(new DecelerateInterpolator(1.5F));
      this.b.setVisibility(0);
      this.d.setVisibility(8);
      this.b.e(Utils.V().get(1));
      this.b.startAnimation(localAnimationSet);
      paramContext = t0.p(paramContext);
      paramContext.K(5);
      paramContext.N(5);
      return;
    }
    this.b.e(Utils.V().get(1));
    this.b.setVisibility(0);
    this.d.setVisibility(8);
    paramContext = t0.p(paramContext);
    paramContext.K(5);
    paramContext.N(5);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.y0
 * JD-Core Version:    0.7.0.1
 */