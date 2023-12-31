package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout.f;
import androidx.core.view.a0;
import com.google.android.material.R.id;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.ArgbEvaluatorCompat;
import com.google.android.material.animation.ChildrenAlphaProperty;
import com.google.android.material.animation.DrawableAlphaProperty;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.MotionTiming;
import com.google.android.material.animation.Positioning;
import com.google.android.material.circularreveal.CircularRevealCompat;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.circularreveal.CircularRevealWidget;
import com.google.android.material.circularreveal.CircularRevealWidget.CircularRevealScrimColorProperty;
import com.google.android.material.circularreveal.CircularRevealWidget.RevealInfo;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.math.MathUtils;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public abstract class FabTransformationBehavior
  extends ExpandableTransformationBehavior
{
  private float dependencyOriginalTranslationX;
  private float dependencyOriginalTranslationY;
  private final int[] tmpArray = new int[2];
  private final Rect tmpRect = new Rect();
  private final RectF tmpRectF1 = new RectF();
  private final RectF tmpRectF2 = new RectF();
  
  public FabTransformationBehavior() {}
  
  public FabTransformationBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private ViewGroup calculateChildContentContainer(View paramView)
  {
    View localView = paramView.findViewById(R.id.mtrl_child_content_container);
    if (localView != null) {
      return toViewGroupOrNull(localView);
    }
    if ((!(paramView instanceof TransformationChildLayout)) && (!(paramView instanceof TransformationChildCard))) {
      return toViewGroupOrNull(paramView);
    }
    return toViewGroupOrNull(((ViewGroup)paramView).getChildAt(0));
  }
  
  private void calculateChildVisibleBoundsAtEndOfExpansion(View paramView, FabTransformationSpec paramFabTransformationSpec, MotionTiming paramMotionTiming1, MotionTiming paramMotionTiming2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, RectF paramRectF)
  {
    paramFloat1 = calculateValueOfAnimationAtEndOfExpansion(paramFabTransformationSpec, paramMotionTiming1, paramFloat1, paramFloat3);
    paramFloat2 = calculateValueOfAnimationAtEndOfExpansion(paramFabTransformationSpec, paramMotionTiming2, paramFloat2, paramFloat4);
    paramMotionTiming1 = this.tmpRect;
    paramView.getWindowVisibleDisplayFrame(paramMotionTiming1);
    paramFabTransformationSpec = this.tmpRectF1;
    paramFabTransformationSpec.set(paramMotionTiming1);
    paramMotionTiming1 = this.tmpRectF2;
    calculateWindowBounds(paramView, paramMotionTiming1);
    paramMotionTiming1.offset(paramFloat1, paramFloat2);
    paramMotionTiming1.intersect(paramFabTransformationSpec);
    paramRectF.set(paramMotionTiming1);
  }
  
  private void calculateDependencyWindowBounds(View paramView, RectF paramRectF)
  {
    calculateWindowBounds(paramView, paramRectF);
    paramRectF.offset(this.dependencyOriginalTranslationX, this.dependencyOriginalTranslationY);
  }
  
  private Pair<MotionTiming, MotionTiming> calculateMotionTiming(float paramFloat1, float paramFloat2, boolean paramBoolean, FabTransformationSpec paramFabTransformationSpec)
  {
    if (paramFloat1 != 0.0F)
    {
      boolean bool = paramFloat2 < 0.0F;
      if (bool)
      {
        if (((paramBoolean) && (paramFloat2 < 0.0F)) || ((!paramBoolean) && (bool)))
        {
          localMotionTiming1 = paramFabTransformationSpec.timings.getTiming("translationXCurveUpwards");
          localMotionTiming2 = paramFabTransformationSpec.timings.getTiming("translationYCurveUpwards");
          paramFabTransformationSpec = localMotionTiming1;
          break label132;
        }
        localMotionTiming2 = paramFabTransformationSpec.timings.getTiming("translationXCurveDownwards");
        localMotionTiming1 = paramFabTransformationSpec.timings.getTiming("translationYCurveDownwards");
        paramFabTransformationSpec = localMotionTiming2;
        localMotionTiming2 = localMotionTiming1;
        break label132;
      }
    }
    MotionTiming localMotionTiming1 = paramFabTransformationSpec.timings.getTiming("translationXLinear");
    MotionTiming localMotionTiming2 = paramFabTransformationSpec.timings.getTiming("translationYLinear");
    paramFabTransformationSpec = localMotionTiming1;
    label132:
    return new Pair(paramFabTransformationSpec, localMotionTiming2);
  }
  
  private float calculateRevealCenterX(View paramView1, View paramView2, Positioning paramPositioning)
  {
    RectF localRectF1 = this.tmpRectF1;
    RectF localRectF2 = this.tmpRectF2;
    calculateDependencyWindowBounds(paramView1, localRectF1);
    calculateWindowBounds(paramView2, localRectF2);
    localRectF2.offset(-calculateTranslationX(paramView1, paramView2, paramPositioning), 0.0F);
    return localRectF1.centerX() - localRectF2.left;
  }
  
  private float calculateRevealCenterY(View paramView1, View paramView2, Positioning paramPositioning)
  {
    RectF localRectF1 = this.tmpRectF1;
    RectF localRectF2 = this.tmpRectF2;
    calculateDependencyWindowBounds(paramView1, localRectF1);
    calculateWindowBounds(paramView2, localRectF2);
    localRectF2.offset(0.0F, -calculateTranslationY(paramView1, paramView2, paramPositioning));
    return localRectF1.centerY() - localRectF2.top;
  }
  
  private float calculateTranslationX(View paramView1, View paramView2, Positioning paramPositioning)
  {
    RectF localRectF1 = this.tmpRectF1;
    RectF localRectF2 = this.tmpRectF2;
    calculateDependencyWindowBounds(paramView1, localRectF1);
    calculateWindowBounds(paramView2, localRectF2);
    int i = paramPositioning.gravity & 0x7;
    float f1;
    float f2;
    if (i != 1)
    {
      if (i != 3)
      {
        if (i != 5)
        {
          f1 = 0.0F;
          break label114;
        }
        f1 = localRectF2.right;
        f2 = localRectF1.right;
      }
      else
      {
        f1 = localRectF2.left;
        f2 = localRectF1.left;
      }
    }
    else
    {
      f1 = localRectF2.centerX();
      f2 = localRectF1.centerX();
    }
    f1 -= f2;
    label114:
    return f1 + paramPositioning.xAdjustment;
  }
  
  private float calculateTranslationY(View paramView1, View paramView2, Positioning paramPositioning)
  {
    RectF localRectF1 = this.tmpRectF1;
    RectF localRectF2 = this.tmpRectF2;
    calculateDependencyWindowBounds(paramView1, localRectF1);
    calculateWindowBounds(paramView2, localRectF2);
    int i = paramPositioning.gravity & 0x70;
    float f1;
    float f2;
    if (i != 16)
    {
      if (i != 48)
      {
        if (i != 80)
        {
          f1 = 0.0F;
          break label117;
        }
        f1 = localRectF2.bottom;
        f2 = localRectF1.bottom;
      }
      else
      {
        f1 = localRectF2.top;
        f2 = localRectF1.top;
      }
    }
    else
    {
      f1 = localRectF2.centerY();
      f2 = localRectF1.centerY();
    }
    f1 -= f2;
    label117:
    return f1 + paramPositioning.yAdjustment;
  }
  
  private float calculateValueOfAnimationAtEndOfExpansion(FabTransformationSpec paramFabTransformationSpec, MotionTiming paramMotionTiming, float paramFloat1, float paramFloat2)
  {
    long l1 = paramMotionTiming.getDelay();
    long l2 = paramMotionTiming.getDuration();
    paramFabTransformationSpec = paramFabTransformationSpec.timings.getTiming("expansion");
    float f = (float)(paramFabTransformationSpec.getDelay() + paramFabTransformationSpec.getDuration() + 17L - l1) / (float)l2;
    return AnimationUtils.lerp(paramFloat1, paramFloat2, paramMotionTiming.getInterpolator().getInterpolation(f));
  }
  
  private void calculateWindowBounds(View paramView, RectF paramRectF)
  {
    paramRectF.set(0.0F, 0.0F, paramView.getWidth(), paramView.getHeight());
    int[] arrayOfInt = this.tmpArray;
    paramView.getLocationInWindow(arrayOfInt);
    paramRectF.offsetTo(arrayOfInt[0], arrayOfInt[1]);
    paramRectF.offset((int)-paramView.getTranslationX(), (int)-paramView.getTranslationY());
  }
  
  private void createChildrenFadeAnimation(View paramView1, View paramView2, boolean paramBoolean1, boolean paramBoolean2, FabTransformationSpec paramFabTransformationSpec, List<Animator> paramList, List<Animator.AnimatorListener> paramList1)
  {
    if (!(paramView2 instanceof ViewGroup)) {
      return;
    }
    if (((paramView2 instanceof CircularRevealWidget)) && (CircularRevealHelper.STRATEGY == 0)) {
      return;
    }
    paramView1 = calculateChildContentContainer(paramView2);
    if (paramView1 == null) {
      return;
    }
    if (paramBoolean1)
    {
      if (!paramBoolean2) {
        ChildrenAlphaProperty.CHILDREN_ALPHA.set(paramView1, Float.valueOf(0.0F));
      }
      paramView1 = ObjectAnimator.ofFloat(paramView1, ChildrenAlphaProperty.CHILDREN_ALPHA, new float[] { 1.0F });
    }
    else
    {
      paramView1 = ObjectAnimator.ofFloat(paramView1, ChildrenAlphaProperty.CHILDREN_ALPHA, new float[] { 0.0F });
    }
    paramFabTransformationSpec.timings.getTiming("contentFade").apply(paramView1);
    paramList.add(paramView1);
  }
  
  private void createColorAnimation(View paramView1, View paramView2, boolean paramBoolean1, boolean paramBoolean2, FabTransformationSpec paramFabTransformationSpec, List<Animator> paramList, List<Animator.AnimatorListener> paramList1)
  {
    if (!(paramView2 instanceof CircularRevealWidget)) {
      return;
    }
    paramView2 = (CircularRevealWidget)paramView2;
    int i = getBackgroundTint(paramView1);
    if (paramBoolean1)
    {
      if (!paramBoolean2) {
        paramView2.setCircularRevealScrimColor(i);
      }
      paramView1 = ObjectAnimator.ofInt(paramView2, CircularRevealWidget.CircularRevealScrimColorProperty.CIRCULAR_REVEAL_SCRIM_COLOR, new int[] { 0xFFFFFF & i });
    }
    else
    {
      paramView1 = ObjectAnimator.ofInt(paramView2, CircularRevealWidget.CircularRevealScrimColorProperty.CIRCULAR_REVEAL_SCRIM_COLOR, new int[] { i });
    }
    paramView1.setEvaluator(ArgbEvaluatorCompat.getInstance());
    paramFabTransformationSpec.timings.getTiming("color").apply(paramView1);
    paramList.add(paramView1);
  }
  
  private void createDependencyTranslationAnimation(View paramView1, View paramView2, boolean paramBoolean, FabTransformationSpec paramFabTransformationSpec, List<Animator> paramList)
  {
    float f1 = calculateTranslationX(paramView1, paramView2, paramFabTransformationSpec.positioning);
    float f2 = calculateTranslationY(paramView1, paramView2, paramFabTransformationSpec.positioning);
    paramFabTransformationSpec = calculateMotionTiming(f1, f2, paramBoolean, paramFabTransformationSpec);
    paramView2 = (MotionTiming)paramFabTransformationSpec.first;
    paramFabTransformationSpec = (MotionTiming)paramFabTransformationSpec.second;
    Object localObject = View.TRANSLATION_X;
    if (!paramBoolean) {
      f1 = this.dependencyOriginalTranslationX;
    }
    localObject = ObjectAnimator.ofFloat(paramView1, (Property)localObject, new float[] { f1 });
    Property localProperty = View.TRANSLATION_Y;
    if (paramBoolean) {
      f1 = f2;
    } else {
      f1 = this.dependencyOriginalTranslationY;
    }
    paramView1 = ObjectAnimator.ofFloat(paramView1, localProperty, new float[] { f1 });
    paramView2.apply((Animator)localObject);
    paramFabTransformationSpec.apply(paramView1);
    paramList.add(localObject);
    paramList.add(paramView1);
  }
  
  @TargetApi(21)
  private void createElevationAnimation(View paramView1, View paramView2, boolean paramBoolean1, boolean paramBoolean2, FabTransformationSpec paramFabTransformationSpec, List<Animator> paramList, List<Animator.AnimatorListener> paramList1)
  {
    float f = a0.u(paramView2) - a0.u(paramView1);
    if (paramBoolean1)
    {
      if (!paramBoolean2) {
        paramView2.setTranslationZ(-f);
      }
      paramView1 = ObjectAnimator.ofFloat(paramView2, View.TRANSLATION_Z, new float[] { 0.0F });
    }
    else
    {
      paramView1 = ObjectAnimator.ofFloat(paramView2, View.TRANSLATION_Z, new float[] { -f });
    }
    paramFabTransformationSpec.timings.getTiming("elevation").apply(paramView1);
    paramList.add(paramView1);
  }
  
  private void createExpansionAnimation(View paramView1, View paramView2, boolean paramBoolean1, boolean paramBoolean2, FabTransformationSpec paramFabTransformationSpec, float paramFloat1, float paramFloat2, List<Animator> paramList, List<Animator.AnimatorListener> paramList1)
  {
    if (!(paramView2 instanceof CircularRevealWidget)) {
      return;
    }
    final CircularRevealWidget localCircularRevealWidget = (CircularRevealWidget)paramView2;
    float f1 = calculateRevealCenterX(paramView1, paramView2, paramFabTransformationSpec.positioning);
    float f2 = calculateRevealCenterY(paramView1, paramView2, paramFabTransformationSpec.positioning);
    ((FloatingActionButton)paramView1).getContentRect(this.tmpRect);
    float f3 = this.tmpRect.width() / 2.0F;
    MotionTiming localMotionTiming = paramFabTransformationSpec.timings.getTiming("expansion");
    if (paramBoolean1)
    {
      if (!paramBoolean2) {
        localCircularRevealWidget.setRevealInfo(new CircularRevealWidget.RevealInfo(f1, f2, f3));
      }
      if (paramBoolean2) {
        f3 = localCircularRevealWidget.getRevealInfo().radius;
      }
      paramView1 = CircularRevealCompat.createCircularReveal(localCircularRevealWidget, f1, f2, MathUtils.distanceToFurthestCorner(f1, f2, 0.0F, 0.0F, paramFloat1, paramFloat2));
      paramView1.addListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          paramAnonymousAnimator = localCircularRevealWidget.getRevealInfo();
          paramAnonymousAnimator.radius = 3.4028235E+38F;
          localCircularRevealWidget.setRevealInfo(paramAnonymousAnimator);
        }
      });
      createPreFillRadialExpansion(paramView2, localMotionTiming.getDelay(), (int)f1, (int)f2, f3, paramList);
    }
    else
    {
      paramFloat1 = localCircularRevealWidget.getRevealInfo().radius;
      paramView1 = CircularRevealCompat.createCircularReveal(localCircularRevealWidget, f1, f2, f3);
      long l = localMotionTiming.getDelay();
      int i = (int)f1;
      int j = (int)f2;
      createPreFillRadialExpansion(paramView2, l, i, j, paramFloat1, paramList);
      createPostFillRadialExpansion(paramView2, localMotionTiming.getDelay(), localMotionTiming.getDuration(), paramFabTransformationSpec.timings.getTotalDuration(), i, j, f3, paramList);
    }
    localMotionTiming.apply(paramView1);
    paramList.add(paramView1);
    paramList1.add(CircularRevealCompat.createCircularRevealListener(localCircularRevealWidget));
  }
  
  private void createIconFadeAnimation(View paramView1, final View paramView2, boolean paramBoolean1, boolean paramBoolean2, FabTransformationSpec paramFabTransformationSpec, List<Animator> paramList, List<Animator.AnimatorListener> paramList1)
  {
    if (((paramView2 instanceof CircularRevealWidget)) && ((paramView1 instanceof ImageView)))
    {
      final CircularRevealWidget localCircularRevealWidget = (CircularRevealWidget)paramView2;
      final Drawable localDrawable = ((ImageView)paramView1).getDrawable();
      if (localDrawable == null) {
        return;
      }
      localDrawable.mutate();
      if (paramBoolean1)
      {
        if (!paramBoolean2) {
          localDrawable.setAlpha(255);
        }
        paramView1 = ObjectAnimator.ofInt(localDrawable, DrawableAlphaProperty.DRAWABLE_ALPHA_COMPAT, new int[] { 0 });
      }
      else
      {
        paramView1 = ObjectAnimator.ofInt(localDrawable, DrawableAlphaProperty.DRAWABLE_ALPHA_COMPAT, new int[] { 255 });
      }
      paramView1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          paramView2.invalidate();
        }
      });
      paramFabTransformationSpec.timings.getTiming("iconFade").apply(paramView1);
      paramList.add(paramView1);
      paramList1.add(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          localCircularRevealWidget.setCircularRevealOverlayDrawable(null);
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          localCircularRevealWidget.setCircularRevealOverlayDrawable(localDrawable);
        }
      });
    }
  }
  
  private void createPostFillRadialExpansion(View paramView, long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, float paramFloat, List<Animator> paramList)
  {
    paramLong1 += paramLong2;
    if (paramLong1 < paramLong3)
    {
      paramView = ViewAnimationUtils.createCircularReveal(paramView, paramInt1, paramInt2, paramFloat, paramFloat);
      paramView.setStartDelay(paramLong1);
      paramView.setDuration(paramLong3 - paramLong1);
      paramList.add(paramView);
    }
  }
  
  private void createPreFillRadialExpansion(View paramView, long paramLong, int paramInt1, int paramInt2, float paramFloat, List<Animator> paramList)
  {
    if (paramLong > 0L)
    {
      paramView = ViewAnimationUtils.createCircularReveal(paramView, paramInt1, paramInt2, paramFloat, paramFloat);
      paramView.setStartDelay(0L);
      paramView.setDuration(paramLong);
      paramList.add(paramView);
    }
  }
  
  private void createTranslationAnimation(View paramView1, View paramView2, boolean paramBoolean1, boolean paramBoolean2, FabTransformationSpec paramFabTransformationSpec, List<Animator> paramList, List<Animator.AnimatorListener> paramList1, RectF paramRectF)
  {
    float f1 = calculateTranslationX(paramView1, paramView2, paramFabTransformationSpec.positioning);
    float f2 = calculateTranslationY(paramView1, paramView2, paramFabTransformationSpec.positioning);
    paramView1 = calculateMotionTiming(f1, f2, paramBoolean1, paramFabTransformationSpec);
    MotionTiming localMotionTiming1 = (MotionTiming)paramView1.first;
    MotionTiming localMotionTiming2 = (MotionTiming)paramView1.second;
    if (paramBoolean1)
    {
      if (!paramBoolean2)
      {
        paramView2.setTranslationX(-f1);
        paramView2.setTranslationY(-f2);
      }
      paramView1 = ObjectAnimator.ofFloat(paramView2, View.TRANSLATION_X, new float[] { 0.0F });
      paramList1 = ObjectAnimator.ofFloat(paramView2, View.TRANSLATION_Y, new float[] { 0.0F });
      calculateChildVisibleBoundsAtEndOfExpansion(paramView2, paramFabTransformationSpec, localMotionTiming1, localMotionTiming2, -f1, -f2, 0.0F, 0.0F, paramRectF);
      paramView2 = paramList1;
    }
    else
    {
      paramView1 = ObjectAnimator.ofFloat(paramView2, View.TRANSLATION_X, new float[] { -f1 });
      paramView2 = ObjectAnimator.ofFloat(paramView2, View.TRANSLATION_Y, new float[] { -f2 });
    }
    localMotionTiming1.apply(paramView1);
    localMotionTiming2.apply(paramView2);
    paramList.add(paramView1);
    paramList.add(paramView2);
  }
  
  private int getBackgroundTint(View paramView)
  {
    ColorStateList localColorStateList = a0.q(paramView);
    if (localColorStateList != null) {
      return localColorStateList.getColorForState(paramView.getDrawableState(), localColorStateList.getDefaultColor());
    }
    return 0;
  }
  
  private ViewGroup toViewGroupOrNull(View paramView)
  {
    if ((paramView instanceof ViewGroup)) {
      return (ViewGroup)paramView;
    }
    return null;
  }
  
  public boolean layoutDependsOn(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
  {
    if (paramView1.getVisibility() != 8)
    {
      boolean bool1 = paramView2 instanceof FloatingActionButton;
      boolean bool2 = false;
      boolean bool3 = bool2;
      if (bool1)
      {
        int i = ((FloatingActionButton)paramView2).getExpandedComponentIdHint();
        if (i != 0)
        {
          bool3 = bool2;
          if (i != paramView1.getId()) {}
        }
        else
        {
          bool3 = true;
        }
      }
      return bool3;
    }
    throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
  }
  
  public void onAttachedToLayoutParams(CoordinatorLayout.f paramf)
  {
    if (paramf.h == 0) {
      paramf.h = 80;
    }
  }
  
  protected AnimatorSet onCreateExpandedStateChangeAnimation(final View paramView1, final View paramView2, final boolean paramBoolean1, boolean paramBoolean2)
  {
    FabTransformationSpec localFabTransformationSpec = onCreateMotionSpec(paramView2.getContext(), paramBoolean1);
    if (paramBoolean1)
    {
      this.dependencyOriginalTranslationX = paramView1.getTranslationX();
      this.dependencyOriginalTranslationY = paramView1.getTranslationY();
    }
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    createElevationAnimation(paramView1, paramView2, paramBoolean1, paramBoolean2, localFabTransformationSpec, localArrayList1, localArrayList2);
    Object localObject = this.tmpRectF1;
    createTranslationAnimation(paramView1, paramView2, paramBoolean1, paramBoolean2, localFabTransformationSpec, localArrayList1, localArrayList2, (RectF)localObject);
    float f1 = ((RectF)localObject).width();
    float f2 = ((RectF)localObject).height();
    createDependencyTranslationAnimation(paramView1, paramView2, paramBoolean1, localFabTransformationSpec, localArrayList1);
    createIconFadeAnimation(paramView1, paramView2, paramBoolean1, paramBoolean2, localFabTransformationSpec, localArrayList1, localArrayList2);
    createExpansionAnimation(paramView1, paramView2, paramBoolean1, paramBoolean2, localFabTransformationSpec, f1, f2, localArrayList1, localArrayList2);
    createColorAnimation(paramView1, paramView2, paramBoolean1, paramBoolean2, localFabTransformationSpec, localArrayList1, localArrayList2);
    createChildrenFadeAnimation(paramView1, paramView2, paramBoolean1, paramBoolean2, localFabTransformationSpec, localArrayList1, localArrayList2);
    localObject = new AnimatorSet();
    AnimatorSetCompat.playTogether((AnimatorSet)localObject, localArrayList1);
    ((Animator)localObject).addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (!paramBoolean1)
        {
          paramView2.setVisibility(4);
          paramView1.setAlpha(1.0F);
          paramView1.setVisibility(0);
        }
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        if (paramBoolean1)
        {
          paramView2.setVisibility(0);
          paramView1.setAlpha(0.0F);
          paramView1.setVisibility(4);
        }
      }
    });
    int i = 0;
    int j = localArrayList2.size();
    while (i < j)
    {
      ((Animator)localObject).addListener((Animator.AnimatorListener)localArrayList2.get(i));
      i++;
    }
    return localObject;
  }
  
  protected abstract FabTransformationSpec onCreateMotionSpec(Context paramContext, boolean paramBoolean);
  
  protected static class FabTransformationSpec
  {
    public Positioning positioning;
    public MotionSpec timings;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transformation.FabTransformationBehavior
 * JD-Core Version:    0.7.0.1
 */