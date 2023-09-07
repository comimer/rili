package com.miui.calendar.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.PopupWindow;

public class h
  extends PopupWindow
{
  private int a = -1728053248;
  private FrameLayout b;
  private View c;
  private ColorDrawable d;
  private int e;
  private boolean f;
  private boolean g;
  private c h = new a();
  private c i = new b();
  
  public h(Context paramContext, View paramView)
  {
    super(-1, -1);
    this.c = paramView;
    this.b = new d(paramContext);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2);
    this.b.addView(paramView, localLayoutParams);
    paramView = new ColorDrawable(this.a);
    this.d = paramView;
    this.e = paramView.getAlpha();
    this.b.setBackground(this.d);
    setContentView(this.b);
    setFocusable(true);
    setAnimationStyle(0);
    setBackgroundDrawable(paramContext.getResources().getDrawable(17170445));
  }
  
  private Animator i()
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofInt(this.d, "alpha", new int[] { 0, this.e });
    Object localObject = this.c;
    localObject = ObjectAnimator.ofFloat(localObject, "translationY", new float[] { -((View)localObject).getMeasuredHeight(), 0.0F });
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.setInterpolator(new DecelerateInterpolator());
    localAnimatorSet.setDuration(200L);
    localAnimatorSet.play((Animator)localObject).with(localObjectAnimator);
    localAnimatorSet.addListener(this.h);
    return localAnimatorSet;
  }
  
  private Animator j()
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofInt(this.d, "alpha", new int[] { this.e, 0 });
    Object localObject = this.c;
    localObject = ObjectAnimator.ofFloat(localObject, "translationY", new float[] { 0.0F, -((View)localObject).getMeasuredHeight() });
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.setInterpolator(new DecelerateInterpolator());
    localAnimatorSet.setDuration(200L);
    localAnimatorSet.play((Animator)localObject).with(localObjectAnimator);
    localAnimatorSet.addListener(this.i);
    return localAnimatorSet;
  }
  
  private void k(Animator paramAnimator)
  {
    if (!this.g) {
      paramAnimator.start();
    }
  }
  
  public void dismiss()
  {
    if (!isShowing()) {
      return;
    }
    k(j());
  }
  
  public void showAsDropDown(View paramView, int paramInt1, int paramInt2)
  {
    super.showAsDropDown(paramView, paramInt1, paramInt2);
    this.d.setAlpha(0);
    this.c.setVisibility(4);
    this.f = true;
  }
  
  public void showAtLocation(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    super.showAtLocation(paramView, paramInt1, paramInt2, paramInt3);
    this.d.setAlpha(0);
    this.c.setVisibility(4);
    this.f = true;
  }
  
  class a
    extends h.c
  {
    a()
    {
      super(null);
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      super.onAnimationStart(paramAnimator);
      h.a(h.this).setVisibility(0);
      h.a(h.this).setTranslationY(-h.a(h.this).getMeasuredHeight());
    }
  }
  
  class b
    extends h.c
  {
    b()
    {
      super(null);
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      super.onAnimationEnd(paramAnimator);
      int i;
      if ((h.b(h.this).getParent() != null) && (h.b(h.this).getParent().getParent() != null)) {
        i = 0;
      } else {
        i = 1;
      }
      if (i != 0) {
        return;
      }
      h.c(h.this);
    }
  }
  
  private class c
    extends AnimatorListenerAdapter
  {
    private c() {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      h.d(h.this, false);
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      h.d(h.this, true);
    }
  }
  
  private class d
    extends FrameLayout
  {
    public d(Context paramContext)
    {
      super();
      setClickable(true);
    }
    
    public void dispatchDraw(Canvas paramCanvas)
    {
      super.dispatchDraw(paramCanvas);
      if (h.e(h.this))
      {
        h.f(h.this, false);
        paramCanvas = h.this;
        h.h(paramCanvas, h.g(paramCanvas));
      }
    }
    
    public boolean performClick()
    {
      h.this.dismiss();
      return true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.h
 * JD-Core Version:    0.7.0.1
 */