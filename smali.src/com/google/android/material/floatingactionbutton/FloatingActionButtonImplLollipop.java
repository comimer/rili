package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import androidx.core.content.a;
import androidx.core.util.h;
import com.google.android.material.R.color;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.ArrayList;
import java.util.List;

class FloatingActionButtonImplLollipop
  extends FloatingActionButtonImpl
{
  FloatingActionButtonImplLollipop(FloatingActionButton paramFloatingActionButton, ShadowViewDelegate paramShadowViewDelegate)
  {
    super(paramFloatingActionButton, paramShadowViewDelegate);
  }
  
  private Animator createElevationAnimator(float paramFloat1, float paramFloat2)
  {
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(ObjectAnimator.ofFloat(this.view, "elevation", new float[] { paramFloat1 }).setDuration(0L)).with(ObjectAnimator.ofFloat(this.view, View.TRANSLATION_Z, new float[] { paramFloat2 }).setDuration(100L));
    localAnimatorSet.setInterpolator(FloatingActionButtonImpl.ELEVATION_ANIM_INTERPOLATOR);
    return localAnimatorSet;
  }
  
  BorderDrawable createBorderDrawable(int paramInt, ColorStateList paramColorStateList)
  {
    Context localContext = this.view.getContext();
    BorderDrawable localBorderDrawable = new BorderDrawable((ShapeAppearanceModel)h.g(this.shapeAppearance));
    localBorderDrawable.setGradientColors(a.c(localContext, R.color.design_fab_stroke_top_outer_color), a.c(localContext, R.color.design_fab_stroke_top_inner_color), a.c(localContext, R.color.design_fab_stroke_end_inner_color), a.c(localContext, R.color.design_fab_stroke_end_outer_color));
    localBorderDrawable.setBorderWidth(paramInt);
    localBorderDrawable.setBorderTint(paramColorStateList);
    return localBorderDrawable;
  }
  
  MaterialShapeDrawable createShapeDrawable()
  {
    return new AlwaysStatefulMaterialShapeDrawable((ShapeAppearanceModel)h.g(this.shapeAppearance));
  }
  
  public float getElevation()
  {
    return this.view.getElevation();
  }
  
  void getPadding(Rect paramRect)
  {
    if (this.shadowViewDelegate.isCompatPaddingEnabled())
    {
      super.getPadding(paramRect);
    }
    else if (!shouldExpandBoundsForA11y())
    {
      int i = (this.minTouchTargetSize - this.view.getSizeDimension()) / 2;
      paramRect.set(i, i, i, i);
    }
    else
    {
      paramRect.set(0, 0, 0, 0);
    }
  }
  
  void initializeBackgroundDrawable(ColorStateList paramColorStateList1, PorterDuff.Mode paramMode, ColorStateList paramColorStateList2, int paramInt)
  {
    MaterialShapeDrawable localMaterialShapeDrawable = createShapeDrawable();
    this.shapeDrawable = localMaterialShapeDrawable;
    localMaterialShapeDrawable.setTintList(paramColorStateList1);
    if (paramMode != null) {
      this.shapeDrawable.setTintMode(paramMode);
    }
    this.shapeDrawable.initializeElevationOverlay(this.view.getContext());
    if (paramInt > 0)
    {
      this.borderDrawable = createBorderDrawable(paramInt, paramColorStateList1);
      paramColorStateList1 = new LayerDrawable(new Drawable[] { (Drawable)h.g(this.borderDrawable), (Drawable)h.g(this.shapeDrawable) });
    }
    else
    {
      this.borderDrawable = null;
      paramColorStateList1 = this.shapeDrawable;
    }
    paramColorStateList1 = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(paramColorStateList2), paramColorStateList1, null);
    this.rippleDrawable = paramColorStateList1;
    this.contentBackground = paramColorStateList1;
  }
  
  void jumpDrawableToCurrentState() {}
  
  void onCompatShadowChanged()
  {
    updatePadding();
  }
  
  void onDrawableStateChanged(int[] paramArrayOfInt) {}
  
  void onElevationsChanged(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    StateListAnimator localStateListAnimator = new StateListAnimator();
    localStateListAnimator.addState(FloatingActionButtonImpl.PRESSED_ENABLED_STATE_SET, createElevationAnimator(paramFloat1, paramFloat3));
    localStateListAnimator.addState(FloatingActionButtonImpl.HOVERED_FOCUSED_ENABLED_STATE_SET, createElevationAnimator(paramFloat1, paramFloat2));
    localStateListAnimator.addState(FloatingActionButtonImpl.FOCUSED_ENABLED_STATE_SET, createElevationAnimator(paramFloat1, paramFloat2));
    localStateListAnimator.addState(FloatingActionButtonImpl.HOVERED_ENABLED_STATE_SET, createElevationAnimator(paramFloat1, paramFloat2));
    AnimatorSet localAnimatorSet = new AnimatorSet();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(ObjectAnimator.ofFloat(this.view, "elevation", new float[] { paramFloat1 }).setDuration(0L));
    localArrayList.add(ObjectAnimator.ofFloat(this.view, View.TRANSLATION_Z, new float[] { 0.0F }).setDuration(100L));
    localAnimatorSet.playSequentially((Animator[])localArrayList.toArray(new Animator[0]));
    localAnimatorSet.setInterpolator(FloatingActionButtonImpl.ELEVATION_ANIM_INTERPOLATOR);
    localStateListAnimator.addState(FloatingActionButtonImpl.ENABLED_STATE_SET, localAnimatorSet);
    localStateListAnimator.addState(FloatingActionButtonImpl.EMPTY_STATE_SET, createElevationAnimator(0.0F, 0.0F));
    this.view.setStateListAnimator(localStateListAnimator);
    if (shouldAddPadding()) {
      updatePadding();
    }
  }
  
  boolean requirePreDrawListener()
  {
    return false;
  }
  
  void setRippleColor(ColorStateList paramColorStateList)
  {
    Drawable localDrawable = this.rippleDrawable;
    if ((localDrawable instanceof RippleDrawable)) {
      ((RippleDrawable)localDrawable).setColor(RippleUtils.sanitizeRippleDrawableColor(paramColorStateList));
    } else {
      super.setRippleColor(paramColorStateList);
    }
  }
  
  boolean shouldAddPadding()
  {
    boolean bool;
    if ((!this.shadowViewDelegate.isCompatPaddingEnabled()) && (shouldExpandBoundsForA11y())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  void updateFromViewRotation() {}
  
  static class AlwaysStatefulMaterialShapeDrawable
    extends MaterialShapeDrawable
  {
    AlwaysStatefulMaterialShapeDrawable(ShapeAppearanceModel paramShapeAppearanceModel)
    {
      super();
    }
    
    public boolean isStateful()
    {
      return true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.floatingactionbutton.FloatingActionButtonImplLollipop
 * JD-Core Version:    0.7.0.1
 */