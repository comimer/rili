package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.h;
import androidx.core.view.a0;
import androidx.transition.g;
import androidx.transition.m;
import androidx.transition.t;
import com.google.android.material.R.attr;
import com.google.android.material.R.id;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewOverlayImpl;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearanceModel.Builder;
import com.google.android.material.shape.Shapeable;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;

public final class MaterialContainerTransform
  extends m
{
  private static final ProgressThresholdsGroup DEFAULT_ENTER_THRESHOLDS;
  private static final ProgressThresholdsGroup DEFAULT_ENTER_THRESHOLDS_ARC = new ProgressThresholdsGroup(new ProgressThresholds(0.1F, 0.4F), new ProgressThresholds(0.1F, 1.0F), new ProgressThresholds(0.1F, 1.0F), new ProgressThresholds(0.1F, 0.9F), null);
  private static final ProgressThresholdsGroup DEFAULT_RETURN_THRESHOLDS;
  private static final ProgressThresholdsGroup DEFAULT_RETURN_THRESHOLDS_ARC = new ProgressThresholdsGroup(new ProgressThresholds(0.6F, 0.9F), new ProgressThresholds(0.0F, 0.9F), new ProgressThresholds(0.0F, 0.9F), new ProgressThresholds(0.2F, 0.9F), null);
  private static final float ELEVATION_NOT_SET = -1.0F;
  public static final int FADE_MODE_CROSS = 2;
  public static final int FADE_MODE_IN = 0;
  public static final int FADE_MODE_OUT = 1;
  public static final int FADE_MODE_THROUGH = 3;
  public static final int FIT_MODE_AUTO = 0;
  public static final int FIT_MODE_HEIGHT = 2;
  public static final int FIT_MODE_WIDTH = 1;
  private static final String PROP_BOUNDS = "materialContainerTransition:bounds";
  private static final String PROP_SHAPE_APPEARANCE = "materialContainerTransition:shapeAppearance";
  public static final int TRANSITION_DIRECTION_AUTO = 0;
  public static final int TRANSITION_DIRECTION_ENTER = 1;
  public static final int TRANSITION_DIRECTION_RETURN = 2;
  private static final String[] TRANSITION_PROPS = { "materialContainerTransition:bounds", "materialContainerTransition:shapeAppearance" };
  private int containerColor;
  private boolean drawDebugEnabled;
  private int drawingViewId;
  private boolean elevationShadowEnabled;
  private int endContainerColor;
  private float endElevation;
  private ShapeAppearanceModel endShapeAppearanceModel;
  private View endView;
  private int endViewId;
  private int fadeMode;
  private ProgressThresholds fadeProgressThresholds;
  private int fitMode;
  private boolean holdAtEndEnabled;
  private ProgressThresholds scaleMaskProgressThresholds;
  private ProgressThresholds scaleProgressThresholds;
  private int scrimColor;
  private ProgressThresholds shapeMaskProgressThresholds;
  private int startContainerColor;
  private float startElevation;
  private ShapeAppearanceModel startShapeAppearanceModel;
  private View startView;
  private int startViewId;
  private int transitionDirection;
  
  static
  {
    DEFAULT_ENTER_THRESHOLDS = new ProgressThresholdsGroup(new ProgressThresholds(0.0F, 0.25F), new ProgressThresholds(0.0F, 1.0F), new ProgressThresholds(0.0F, 1.0F), new ProgressThresholds(0.0F, 0.75F), null);
    DEFAULT_RETURN_THRESHOLDS = new ProgressThresholdsGroup(new ProgressThresholds(0.6F, 0.9F), new ProgressThresholds(0.0F, 1.0F), new ProgressThresholds(0.0F, 0.9F), new ProgressThresholds(0.3F, 0.9F), null);
  }
  
  public MaterialContainerTransform()
  {
    boolean bool = false;
    this.drawDebugEnabled = false;
    this.holdAtEndEnabled = false;
    this.drawingViewId = 16908290;
    this.startViewId = -1;
    this.endViewId = -1;
    this.containerColor = 0;
    this.startContainerColor = 0;
    this.endContainerColor = 0;
    this.scrimColor = 1375731712;
    this.transitionDirection = 0;
    this.fadeMode = 0;
    this.fitMode = 0;
    if (Build.VERSION.SDK_INT >= 28) {
      bool = true;
    }
    this.elevationShadowEnabled = bool;
    this.startElevation = -1.0F;
    this.endElevation = -1.0F;
    setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
  }
  
  private ProgressThresholdsGroup buildThresholdsGroup(boolean paramBoolean)
  {
    if ((getPathMotion() instanceof MaterialArcMotion)) {
      return getThresholdsOrDefault(paramBoolean, DEFAULT_ENTER_THRESHOLDS_ARC, DEFAULT_RETURN_THRESHOLDS_ARC);
    }
    return getThresholdsOrDefault(paramBoolean, DEFAULT_ENTER_THRESHOLDS, DEFAULT_RETURN_THRESHOLDS);
  }
  
  private static RectF calculateDrawableBounds(View paramView1, View paramView2, float paramFloat1, float paramFloat2)
  {
    if (paramView2 != null)
    {
      paramView1 = TransitionUtils.getLocationOnScreen(paramView2);
      paramView1.offset(paramFloat1, paramFloat2);
      return paramView1;
    }
    return new RectF(0.0F, 0.0F, paramView1.getWidth(), paramView1.getHeight());
  }
  
  private static ShapeAppearanceModel captureShapeAppearance(View paramView, RectF paramRectF, ShapeAppearanceModel paramShapeAppearanceModel)
  {
    return TransitionUtils.convertToRelativeCornerSizes(getShapeAppearance(paramView, paramShapeAppearanceModel), paramRectF);
  }
  
  private static void captureValues(t paramt, View paramView, int paramInt, ShapeAppearanceModel paramShapeAppearanceModel)
  {
    if (paramInt != -1)
    {
      paramt.b = TransitionUtils.findDescendantOrAncestorById(paramt.b, paramInt);
    }
    else if (paramView != null)
    {
      paramt.b = paramView;
    }
    else
    {
      paramView = paramt.b;
      paramInt = R.id.mtrl_motion_snapshot_view;
      if ((paramView.getTag(paramInt) instanceof View))
      {
        paramView = (View)paramt.b.getTag(paramInt);
        paramt.b.setTag(paramInt, null);
        paramt.b = paramView;
      }
    }
    View localView = paramt.b;
    if ((a0.P(localView)) || (localView.getWidth() != 0) || (localView.getHeight() != 0))
    {
      if (localView.getParent() == null) {
        paramView = TransitionUtils.getRelativeBounds(localView);
      } else {
        paramView = TransitionUtils.getLocationOnScreen(localView);
      }
      paramt.a.put("materialContainerTransition:bounds", paramView);
      paramt.a.put("materialContainerTransition:shapeAppearance", captureShapeAppearance(localView, paramView, paramShapeAppearanceModel));
    }
  }
  
  private static float getElevationOrDefault(float paramFloat, View paramView)
  {
    if (paramFloat == -1.0F) {
      paramFloat = a0.u(paramView);
    }
    return paramFloat;
  }
  
  private static ShapeAppearanceModel getShapeAppearance(View paramView, ShapeAppearanceModel paramShapeAppearanceModel)
  {
    if (paramShapeAppearanceModel != null) {
      return paramShapeAppearanceModel;
    }
    int i = R.id.mtrl_motion_snapshot_view;
    if ((paramView.getTag(i) instanceof ShapeAppearanceModel)) {
      return (ShapeAppearanceModel)paramView.getTag(i);
    }
    paramShapeAppearanceModel = paramView.getContext();
    i = getTransitionShapeAppearanceResId(paramShapeAppearanceModel);
    if (i != -1) {
      return ShapeAppearanceModel.builder(paramShapeAppearanceModel, i, 0).build();
    }
    if ((paramView instanceof Shapeable)) {
      return ((Shapeable)paramView).getShapeAppearanceModel();
    }
    return ShapeAppearanceModel.builder().build();
  }
  
  private ProgressThresholdsGroup getThresholdsOrDefault(boolean paramBoolean, ProgressThresholdsGroup paramProgressThresholdsGroup1, ProgressThresholdsGroup paramProgressThresholdsGroup2)
  {
    if (!paramBoolean) {
      paramProgressThresholdsGroup1 = paramProgressThresholdsGroup2;
    }
    return new ProgressThresholdsGroup((ProgressThresholds)TransitionUtils.defaultIfNull(this.fadeProgressThresholds, paramProgressThresholdsGroup1.fade), (ProgressThresholds)TransitionUtils.defaultIfNull(this.scaleProgressThresholds, paramProgressThresholdsGroup1.scale), (ProgressThresholds)TransitionUtils.defaultIfNull(this.scaleMaskProgressThresholds, paramProgressThresholdsGroup1.scaleMask), (ProgressThresholds)TransitionUtils.defaultIfNull(this.shapeMaskProgressThresholds, paramProgressThresholdsGroup1.shapeMask), null);
  }
  
  private static int getTransitionShapeAppearanceResId(Context paramContext)
  {
    paramContext = paramContext.obtainStyledAttributes(new int[] { R.attr.transitionShapeAppearance });
    int i = paramContext.getResourceId(0, -1);
    paramContext.recycle();
    return i;
  }
  
  private boolean isEntering(RectF paramRectF1, RectF paramRectF2)
  {
    int i = this.transitionDirection;
    boolean bool = false;
    if (i != 0)
    {
      if (i != 1)
      {
        if (i == 2) {
          return false;
        }
        paramRectF1 = new StringBuilder();
        paramRectF1.append("Invalid transition direction: ");
        paramRectF1.append(this.transitionDirection);
        throw new IllegalArgumentException(paramRectF1.toString());
      }
      return true;
    }
    if (TransitionUtils.calculateArea(paramRectF2) > TransitionUtils.calculateArea(paramRectF1)) {
      bool = true;
    }
    return bool;
  }
  
  public void captureEndValues(t paramt)
  {
    captureValues(paramt, this.endView, this.endViewId, this.endShapeAppearanceModel);
  }
  
  public void captureStartValues(t paramt)
  {
    captureValues(paramt, this.startView, this.startViewId, this.startShapeAppearanceModel);
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, final t paramt1, t paramt2)
  {
    if ((paramt1 != null) && (paramt2 != null))
    {
      final View localView1 = paramt1.b;
      final View localView2 = paramt2.b;
      if (localView2.getParent() != null) {
        paramViewGroup = localView2;
      } else {
        paramViewGroup = localView1;
      }
      final View localView3;
      if (this.drawingViewId == paramViewGroup.getId())
      {
        localView3 = (View)paramViewGroup.getParent();
      }
      else
      {
        localView3 = TransitionUtils.findAncestorById(paramViewGroup, this.drawingViewId);
        paramViewGroup = null;
      }
      RectF localRectF1 = (RectF)paramt1.a.get("materialContainerTransition:bounds");
      if (localRectF1 != null)
      {
        RectF localRectF2 = (RectF)paramt2.a.get("materialContainerTransition:bounds");
        if (localRectF2 != null)
        {
          paramt1 = (ShapeAppearanceModel)paramt1.a.get("materialContainerTransition:shapeAppearance");
          paramt2 = (ShapeAppearanceModel)paramt2.a.get("materialContainerTransition:shapeAppearance");
          RectF localRectF3 = TransitionUtils.getLocationOnScreen(localView3);
          float f1 = -localRectF3.left;
          float f2 = -localRectF3.top;
          paramViewGroup = calculateDrawableBounds(localView3, paramViewGroup, f1, f2);
          localRectF1.offset(f1, f2);
          localRectF2.offset(f1, f2);
          boolean bool = isEntering(localRectF1, localRectF2);
          paramt1 = new TransitionDrawable(getPathMotion(), localView1, localRectF1, paramt1, getElevationOrDefault(this.startElevation, localView1), localView2, localRectF2, paramt2, getElevationOrDefault(this.endElevation, localView2), this.containerColor, this.startContainerColor, this.endContainerColor, this.scrimColor, bool, this.elevationShadowEnabled, FadeModeEvaluators.get(this.fadeMode, bool), FitModeEvaluators.get(this.fitMode, bool, localRectF1, localRectF2), buildThresholdsGroup(bool), this.drawDebugEnabled, null);
          paramt1.setBounds(Math.round(paramViewGroup.left), Math.round(paramViewGroup.top), Math.round(paramViewGroup.right), Math.round(paramViewGroup.bottom));
          paramViewGroup = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
          paramViewGroup.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
          {
            public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
            {
              MaterialContainerTransform.TransitionDrawable.access$200(paramt1, paramAnonymousValueAnimator.getAnimatedFraction());
            }
          });
          addListener(new TransitionListenerAdapter()
          {
            public void onTransitionEnd(m paramAnonymousm)
            {
              if (MaterialContainerTransform.this.holdAtEndEnabled) {
                return;
              }
              localView1.setAlpha(1.0F);
              localView2.setAlpha(1.0F);
              ViewUtils.getOverlay(localView3).remove(paramt1);
            }
            
            public void onTransitionStart(m paramAnonymousm)
            {
              ViewUtils.getOverlay(localView3).add(paramt1);
              localView1.setAlpha(0.0F);
              localView2.setAlpha(0.0F);
            }
          });
          return paramViewGroup;
        }
        throw new IllegalStateException("End view bounds must not be null, make sure the end view is laid out and measured");
      }
      throw new IllegalStateException("Start view bounds must not be null, make sure the start view is laid out and measured.");
    }
    return null;
  }
  
  public int getContainerColor()
  {
    return this.containerColor;
  }
  
  public int getDrawingViewId()
  {
    return this.drawingViewId;
  }
  
  public int getEndContainerColor()
  {
    return this.endContainerColor;
  }
  
  public float getEndElevation()
  {
    return this.endElevation;
  }
  
  public ShapeAppearanceModel getEndShapeAppearanceModel()
  {
    return this.endShapeAppearanceModel;
  }
  
  public View getEndView()
  {
    return this.endView;
  }
  
  public int getEndViewId()
  {
    return this.endViewId;
  }
  
  public int getFadeMode()
  {
    return this.fadeMode;
  }
  
  public ProgressThresholds getFadeProgressThresholds()
  {
    return this.fadeProgressThresholds;
  }
  
  public int getFitMode()
  {
    return this.fitMode;
  }
  
  public ProgressThresholds getScaleMaskProgressThresholds()
  {
    return this.scaleMaskProgressThresholds;
  }
  
  public ProgressThresholds getScaleProgressThresholds()
  {
    return this.scaleProgressThresholds;
  }
  
  public int getScrimColor()
  {
    return this.scrimColor;
  }
  
  public ProgressThresholds getShapeMaskProgressThresholds()
  {
    return this.shapeMaskProgressThresholds;
  }
  
  public int getStartContainerColor()
  {
    return this.startContainerColor;
  }
  
  public float getStartElevation()
  {
    return this.startElevation;
  }
  
  public ShapeAppearanceModel getStartShapeAppearanceModel()
  {
    return this.startShapeAppearanceModel;
  }
  
  public View getStartView()
  {
    return this.startView;
  }
  
  public int getStartViewId()
  {
    return this.startViewId;
  }
  
  public int getTransitionDirection()
  {
    return this.transitionDirection;
  }
  
  public String[] getTransitionProperties()
  {
    return TRANSITION_PROPS;
  }
  
  public boolean isDrawDebugEnabled()
  {
    return this.drawDebugEnabled;
  }
  
  public boolean isElevationShadowEnabled()
  {
    return this.elevationShadowEnabled;
  }
  
  public boolean isHoldAtEndEnabled()
  {
    return this.holdAtEndEnabled;
  }
  
  public void setAllContainerColors(int paramInt)
  {
    this.containerColor = paramInt;
    this.startContainerColor = paramInt;
    this.endContainerColor = paramInt;
  }
  
  public void setContainerColor(int paramInt)
  {
    this.containerColor = paramInt;
  }
  
  public void setDrawDebugEnabled(boolean paramBoolean)
  {
    this.drawDebugEnabled = paramBoolean;
  }
  
  public void setDrawingViewId(int paramInt)
  {
    this.drawingViewId = paramInt;
  }
  
  public void setElevationShadowEnabled(boolean paramBoolean)
  {
    this.elevationShadowEnabled = paramBoolean;
  }
  
  public void setEndContainerColor(int paramInt)
  {
    this.endContainerColor = paramInt;
  }
  
  public void setEndElevation(float paramFloat)
  {
    this.endElevation = paramFloat;
  }
  
  public void setEndShapeAppearanceModel(ShapeAppearanceModel paramShapeAppearanceModel)
  {
    this.endShapeAppearanceModel = paramShapeAppearanceModel;
  }
  
  public void setEndView(View paramView)
  {
    this.endView = paramView;
  }
  
  public void setEndViewId(int paramInt)
  {
    this.endViewId = paramInt;
  }
  
  public void setFadeMode(int paramInt)
  {
    this.fadeMode = paramInt;
  }
  
  public void setFadeProgressThresholds(ProgressThresholds paramProgressThresholds)
  {
    this.fadeProgressThresholds = paramProgressThresholds;
  }
  
  public void setFitMode(int paramInt)
  {
    this.fitMode = paramInt;
  }
  
  public void setHoldAtEndEnabled(boolean paramBoolean)
  {
    this.holdAtEndEnabled = paramBoolean;
  }
  
  public void setScaleMaskProgressThresholds(ProgressThresholds paramProgressThresholds)
  {
    this.scaleMaskProgressThresholds = paramProgressThresholds;
  }
  
  public void setScaleProgressThresholds(ProgressThresholds paramProgressThresholds)
  {
    this.scaleProgressThresholds = paramProgressThresholds;
  }
  
  public void setScrimColor(int paramInt)
  {
    this.scrimColor = paramInt;
  }
  
  public void setShapeMaskProgressThresholds(ProgressThresholds paramProgressThresholds)
  {
    this.shapeMaskProgressThresholds = paramProgressThresholds;
  }
  
  public void setStartContainerColor(int paramInt)
  {
    this.startContainerColor = paramInt;
  }
  
  public void setStartElevation(float paramFloat)
  {
    this.startElevation = paramFloat;
  }
  
  public void setStartShapeAppearanceModel(ShapeAppearanceModel paramShapeAppearanceModel)
  {
    this.startShapeAppearanceModel = paramShapeAppearanceModel;
  }
  
  public void setStartView(View paramView)
  {
    this.startView = paramView;
  }
  
  public void setStartViewId(int paramInt)
  {
    this.startViewId = paramInt;
  }
  
  public void setTransitionDirection(int paramInt)
  {
    this.transitionDirection = paramInt;
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface FadeMode {}
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface FitMode {}
  
  public static class ProgressThresholds
  {
    private final float end;
    private final float start;
    
    public ProgressThresholds(float paramFloat1, float paramFloat2)
    {
      this.start = paramFloat1;
      this.end = paramFloat2;
    }
    
    public float getEnd()
    {
      return this.end;
    }
    
    public float getStart()
    {
      return this.start;
    }
  }
  
  private static class ProgressThresholdsGroup
  {
    private final MaterialContainerTransform.ProgressThresholds fade;
    private final MaterialContainerTransform.ProgressThresholds scale;
    private final MaterialContainerTransform.ProgressThresholds scaleMask;
    private final MaterialContainerTransform.ProgressThresholds shapeMask;
    
    private ProgressThresholdsGroup(MaterialContainerTransform.ProgressThresholds paramProgressThresholds1, MaterialContainerTransform.ProgressThresholds paramProgressThresholds2, MaterialContainerTransform.ProgressThresholds paramProgressThresholds3, MaterialContainerTransform.ProgressThresholds paramProgressThresholds4)
    {
      this.fade = paramProgressThresholds1;
      this.scale = paramProgressThresholds2;
      this.scaleMask = paramProgressThresholds3;
      this.shapeMask = paramProgressThresholds4;
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface TransitionDirection {}
  
  private static final class TransitionDrawable
    extends Drawable
  {
    private static final int COMPAT_SHADOW_COLOR = -7829368;
    private static final float COMPAT_SHADOW_OFFSET_MULTIPLIER = 0.75F;
    private static final int SHADOW_COLOR = 754974720;
    private final MaterialShapeDrawable compatShadowDrawable;
    private final Paint containerPaint;
    private float currentElevation;
    private final RectF currentEndBounds;
    private final RectF currentEndBoundsMasked;
    private RectF currentMaskBounds;
    private final RectF currentStartBounds;
    private final RectF currentStartBoundsMasked;
    private final Paint debugPaint;
    private final Path debugPath;
    private final boolean drawDebugEnabled;
    private final boolean elevationShadowEnabled;
    private final RectF endBounds;
    private final Paint endContainerPaint;
    private final float endElevation;
    private final ShapeAppearanceModel endShapeAppearanceModel;
    private final View endView;
    private final boolean entering;
    private final FadeModeEvaluator fadeModeEvaluator;
    private FadeModeResult fadeModeResult;
    private final FitModeEvaluator fitModeEvaluator;
    private FitModeResult fitModeResult;
    private final MaskEvaluator maskEvaluator;
    private final float motionPathLength;
    private final PathMeasure motionPathMeasure;
    private final float[] motionPathPosition;
    private float progress;
    private final MaterialContainerTransform.ProgressThresholdsGroup progressThresholds;
    private final Paint scrimPaint;
    private final Paint shadowPaint;
    private final RectF startBounds;
    private final Paint startContainerPaint;
    private final float startElevation;
    private final ShapeAppearanceModel startShapeAppearanceModel;
    private final View startView;
    
    private TransitionDrawable(g paramg, View paramView1, RectF paramRectF1, ShapeAppearanceModel paramShapeAppearanceModel1, float paramFloat1, View paramView2, RectF paramRectF2, ShapeAppearanceModel paramShapeAppearanceModel2, float paramFloat2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2, FadeModeEvaluator paramFadeModeEvaluator, FitModeEvaluator paramFitModeEvaluator, MaterialContainerTransform.ProgressThresholdsGroup paramProgressThresholdsGroup, boolean paramBoolean3)
    {
      Paint localPaint1 = new Paint();
      this.containerPaint = localPaint1;
      Paint localPaint2 = new Paint();
      this.startContainerPaint = localPaint2;
      Paint localPaint3 = new Paint();
      this.endContainerPaint = localPaint3;
      this.shadowPaint = new Paint();
      Paint localPaint4 = new Paint();
      this.scrimPaint = localPaint4;
      this.maskEvaluator = new MaskEvaluator();
      this.motionPathPosition = new float[2];
      MaterialShapeDrawable localMaterialShapeDrawable = new MaterialShapeDrawable();
      this.compatShadowDrawable = localMaterialShapeDrawable;
      Paint localPaint5 = new Paint();
      this.debugPaint = localPaint5;
      this.debugPath = new Path();
      this.startView = paramView1;
      this.startBounds = paramRectF1;
      this.startShapeAppearanceModel = paramShapeAppearanceModel1;
      this.startElevation = paramFloat1;
      this.endView = paramView2;
      this.endBounds = paramRectF2;
      this.endShapeAppearanceModel = paramShapeAppearanceModel2;
      this.endElevation = paramFloat2;
      this.entering = paramBoolean1;
      this.elevationShadowEnabled = paramBoolean2;
      this.fadeModeEvaluator = paramFadeModeEvaluator;
      this.fitModeEvaluator = paramFitModeEvaluator;
      this.progressThresholds = paramProgressThresholdsGroup;
      this.drawDebugEnabled = paramBoolean3;
      localPaint1.setColor(paramInt1);
      localPaint2.setColor(paramInt2);
      localPaint3.setColor(paramInt3);
      localMaterialShapeDrawable.setFillColor(ColorStateList.valueOf(0));
      localMaterialShapeDrawable.setShadowCompatibilityMode(2);
      localMaterialShapeDrawable.setShadowBitmapDrawingEnable(false);
      localMaterialShapeDrawable.setShadowColor(-7829368);
      paramView1 = new RectF(paramRectF1);
      this.currentStartBounds = paramView1;
      this.currentStartBoundsMasked = new RectF(paramView1);
      paramView1 = new RectF(paramView1);
      this.currentEndBounds = paramView1;
      this.currentEndBoundsMasked = new RectF(paramView1);
      paramView1 = getMotionPathPoint(paramRectF1);
      paramRectF1 = getMotionPathPoint(paramRectF2);
      paramg = new PathMeasure(paramg.getPath(paramView1.x, paramView1.y, paramRectF1.x, paramRectF1.y), false);
      this.motionPathMeasure = paramg;
      this.motionPathLength = paramg.getLength();
      localPaint4.setStyle(Paint.Style.FILL);
      localPaint4.setShader(TransitionUtils.createColorShader(paramInt4));
      localPaint5.setStyle(Paint.Style.STROKE);
      localPaint5.setStrokeWidth(10.0F);
      updateProgress(0.0F);
    }
    
    private void drawDebugCumulativePath(Canvas paramCanvas, RectF paramRectF, Path paramPath, int paramInt)
    {
      paramRectF = getMotionPathPoint(paramRectF);
      if (this.progress == 0.0F)
      {
        paramPath.reset();
        paramPath.moveTo(paramRectF.x, paramRectF.y);
      }
      else
      {
        paramPath.lineTo(paramRectF.x, paramRectF.y);
        this.debugPaint.setColor(paramInt);
        paramCanvas.drawPath(paramPath, this.debugPaint);
      }
    }
    
    private void drawDebugRect(Canvas paramCanvas, RectF paramRectF, int paramInt)
    {
      this.debugPaint.setColor(paramInt);
      paramCanvas.drawRect(paramRectF, this.debugPaint);
    }
    
    private void drawElevationShadow(Canvas paramCanvas)
    {
      paramCanvas.save();
      paramCanvas.clipPath(this.maskEvaluator.getPath(), Region.Op.DIFFERENCE);
      if (Build.VERSION.SDK_INT > 28) {
        drawElevationShadowWithPaintShadowLayer(paramCanvas);
      } else {
        drawElevationShadowWithMaterialShapeDrawable(paramCanvas);
      }
      paramCanvas.restore();
    }
    
    private void drawElevationShadowWithMaterialShapeDrawable(Canvas paramCanvas)
    {
      MaterialShapeDrawable localMaterialShapeDrawable = this.compatShadowDrawable;
      RectF localRectF = this.currentMaskBounds;
      localMaterialShapeDrawable.setBounds((int)localRectF.left, (int)localRectF.top, (int)localRectF.right, (int)localRectF.bottom);
      this.compatShadowDrawable.setElevation(this.currentElevation);
      this.compatShadowDrawable.setShadowVerticalOffset((int)(this.currentElevation * 0.75F));
      this.compatShadowDrawable.setShapeAppearanceModel(this.maskEvaluator.getCurrentShapeAppearanceModel());
      this.compatShadowDrawable.draw(paramCanvas);
    }
    
    private void drawElevationShadowWithPaintShadowLayer(Canvas paramCanvas)
    {
      ShapeAppearanceModel localShapeAppearanceModel = this.maskEvaluator.getCurrentShapeAppearanceModel();
      if (localShapeAppearanceModel.isRoundRect(this.currentMaskBounds))
      {
        float f = localShapeAppearanceModel.getTopLeftCornerSize().getCornerSize(this.currentMaskBounds);
        paramCanvas.drawRoundRect(this.currentMaskBounds, f, f, this.shadowPaint);
      }
      else
      {
        paramCanvas.drawPath(this.maskEvaluator.getPath(), this.shadowPaint);
      }
    }
    
    private void drawEndView(Canvas paramCanvas)
    {
      maybeDrawContainerColor(paramCanvas, this.endContainerPaint);
      Rect localRect = getBounds();
      RectF localRectF = this.currentEndBounds;
      TransitionUtils.transform(paramCanvas, localRect, localRectF.left, localRectF.top, this.fitModeResult.endScale, this.fadeModeResult.endAlpha, new TransitionUtils.CanvasOperation()
      {
        public void run(Canvas paramAnonymousCanvas)
        {
          MaterialContainerTransform.TransitionDrawable.this.endView.draw(paramAnonymousCanvas);
        }
      });
    }
    
    private void drawStartView(Canvas paramCanvas)
    {
      maybeDrawContainerColor(paramCanvas, this.startContainerPaint);
      Rect localRect = getBounds();
      RectF localRectF = this.currentStartBounds;
      TransitionUtils.transform(paramCanvas, localRect, localRectF.left, localRectF.top, this.fitModeResult.startScale, this.fadeModeResult.startAlpha, new TransitionUtils.CanvasOperation()
      {
        public void run(Canvas paramAnonymousCanvas)
        {
          MaterialContainerTransform.TransitionDrawable.this.startView.draw(paramAnonymousCanvas);
        }
      });
    }
    
    private static PointF getMotionPathPoint(RectF paramRectF)
    {
      return new PointF(paramRectF.centerX(), paramRectF.top);
    }
    
    private void maybeDrawContainerColor(Canvas paramCanvas, Paint paramPaint)
    {
      if ((paramPaint.getColor() != 0) && (paramPaint.getAlpha() > 0)) {
        paramCanvas.drawRect(getBounds(), paramPaint);
      }
    }
    
    private void setProgress(float paramFloat)
    {
      if (this.progress != paramFloat) {
        updateProgress(paramFloat);
      }
    }
    
    private void updateProgress(float paramFloat)
    {
      this.progress = paramFloat;
      Object localObject1 = this.scrimPaint;
      if (this.entering) {
        f1 = TransitionUtils.lerp(0.0F, 255.0F, paramFloat);
      } else {
        f1 = TransitionUtils.lerp(255.0F, 0.0F, paramFloat);
      }
      ((Paint)localObject1).setAlpha((int)f1);
      float f1 = TransitionUtils.lerp(this.startElevation, this.endElevation, paramFloat);
      this.currentElevation = f1;
      this.shadowPaint.setShadowLayer(f1, 0.0F, f1, 754974720);
      this.motionPathMeasure.getPosTan(this.motionPathLength * paramFloat, this.motionPathPosition, null);
      localObject1 = this.motionPathPosition;
      f1 = localObject1[0];
      float f2 = localObject1[1];
      float f3 = ((Float)h.g(Float.valueOf(MaterialContainerTransform.ProgressThresholdsGroup.access$500(this.progressThresholds).start))).floatValue();
      float f4 = ((Float)h.g(Float.valueOf(MaterialContainerTransform.ProgressThresholdsGroup.access$500(this.progressThresholds).end))).floatValue();
      Object localObject2 = this.fitModeEvaluator.evaluate(paramFloat, f3, f4, this.startBounds.width(), this.startBounds.height(), this.endBounds.width(), this.endBounds.height());
      this.fitModeResult = ((FitModeResult)localObject2);
      localObject1 = this.currentStartBounds;
      f3 = ((FitModeResult)localObject2).currentStartWidth;
      ((RectF)localObject1).set(f1 - f3 / 2.0F, f2, f3 / 2.0F + f1, ((FitModeResult)localObject2).currentStartHeight + f2);
      localObject2 = this.currentEndBounds;
      localObject1 = this.fitModeResult;
      f3 = ((FitModeResult)localObject1).currentEndWidth;
      ((RectF)localObject2).set(f1 - f3 / 2.0F, f2, f1 + f3 / 2.0F, ((FitModeResult)localObject1).currentEndHeight + f2);
      this.currentStartBoundsMasked.set(this.currentStartBounds);
      this.currentEndBoundsMasked.set(this.currentEndBounds);
      f1 = ((Float)h.g(Float.valueOf(MaterialContainerTransform.ProgressThresholdsGroup.access$600(this.progressThresholds).start))).floatValue();
      f2 = ((Float)h.g(Float.valueOf(MaterialContainerTransform.ProgressThresholdsGroup.access$600(this.progressThresholds).end))).floatValue();
      boolean bool = this.fitModeEvaluator.shouldMaskStartBounds(this.fitModeResult);
      if (bool) {
        localObject1 = this.currentStartBoundsMasked;
      } else {
        localObject1 = this.currentEndBoundsMasked;
      }
      f1 = TransitionUtils.lerp(0.0F, 1.0F, f1, f2, paramFloat);
      if (!bool) {
        f1 = 1.0F - f1;
      }
      this.fitModeEvaluator.applyMask((RectF)localObject1, f1, this.fitModeResult);
      this.currentMaskBounds = new RectF(Math.min(this.currentStartBoundsMasked.left, this.currentEndBoundsMasked.left), Math.min(this.currentStartBoundsMasked.top, this.currentEndBoundsMasked.top), Math.max(this.currentStartBoundsMasked.right, this.currentEndBoundsMasked.right), Math.max(this.currentStartBoundsMasked.bottom, this.currentEndBoundsMasked.bottom));
      this.maskEvaluator.evaluate(paramFloat, this.startShapeAppearanceModel, this.endShapeAppearanceModel, this.currentStartBounds, this.currentStartBoundsMasked, this.currentEndBoundsMasked, this.progressThresholds.shapeMask);
      f1 = ((Float)h.g(Float.valueOf(MaterialContainerTransform.ProgressThresholdsGroup.access$400(this.progressThresholds).start))).floatValue();
      f2 = ((Float)h.g(Float.valueOf(MaterialContainerTransform.ProgressThresholdsGroup.access$400(this.progressThresholds).end))).floatValue();
      this.fadeModeResult = this.fadeModeEvaluator.evaluate(paramFloat, f1, f2);
      if (this.startContainerPaint.getColor() != 0) {
        this.startContainerPaint.setAlpha(this.fadeModeResult.startAlpha);
      }
      if (this.endContainerPaint.getColor() != 0) {
        this.endContainerPaint.setAlpha(this.fadeModeResult.endAlpha);
      }
      invalidateSelf();
    }
    
    public void draw(Canvas paramCanvas)
    {
      if (this.scrimPaint.getAlpha() > 0) {
        paramCanvas.drawRect(getBounds(), this.scrimPaint);
      }
      int i;
      if (this.drawDebugEnabled) {
        i = paramCanvas.save();
      } else {
        i = -1;
      }
      if ((this.elevationShadowEnabled) && (this.currentElevation > 0.0F)) {
        drawElevationShadow(paramCanvas);
      }
      this.maskEvaluator.clip(paramCanvas);
      maybeDrawContainerColor(paramCanvas, this.containerPaint);
      if (this.fadeModeResult.endOnTop)
      {
        drawStartView(paramCanvas);
        drawEndView(paramCanvas);
      }
      else
      {
        drawEndView(paramCanvas);
        drawStartView(paramCanvas);
      }
      if (this.drawDebugEnabled)
      {
        paramCanvas.restoreToCount(i);
        drawDebugCumulativePath(paramCanvas, this.currentStartBounds, this.debugPath, -65281);
        drawDebugRect(paramCanvas, this.currentStartBoundsMasked, -256);
        drawDebugRect(paramCanvas, this.currentStartBounds, -16711936);
        drawDebugRect(paramCanvas, this.currentEndBoundsMasked, -16711681);
        drawDebugRect(paramCanvas, this.currentEndBounds, -16776961);
      }
    }
    
    public int getOpacity()
    {
      return -3;
    }
    
    public void setAlpha(int paramInt)
    {
      throw new UnsupportedOperationException("Setting alpha on is not supported");
    }
    
    public void setColorFilter(ColorFilter paramColorFilter)
    {
      throw new UnsupportedOperationException("Setting a color filter is not supported");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.MaterialContainerTransform
 * JD-Core Version:    0.7.0.1
 */