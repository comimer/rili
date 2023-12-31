package com.google.android.material.snackbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout.c;
import androidx.coordinatorlayout.widget.CoordinatorLayout.f;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.core.view.e1;
import androidx.core.view.j1;
import androidx.core.view.u;
import com.google.android.material.R.attr;
import com.google.android.material.R.dimen;
import com.google.android.material.R.layout;
import com.google.android.material.R.styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>>
{
  static final int ANIMATION_DURATION = 250;
  static final int ANIMATION_FADE_DURATION = 180;
  private static final int ANIMATION_FADE_IN_DURATION = 150;
  private static final int ANIMATION_FADE_OUT_DURATION = 75;
  public static final int ANIMATION_MODE_FADE = 1;
  public static final int ANIMATION_MODE_SLIDE = 0;
  private static final float ANIMATION_SCALE_FROM_VALUE = 0.8F;
  public static final int LENGTH_INDEFINITE = -2;
  public static final int LENGTH_LONG = 0;
  public static final int LENGTH_SHORT = -1;
  static final int MSG_DISMISS = 1;
  static final int MSG_SHOW = 0;
  private static final int[] SNACKBAR_STYLE_ATTR = { R.attr.snackbarStyle };
  private static final String TAG = BaseTransientBottomBar.class.getSimpleName();
  private static final boolean USE_OFFSET_API = false;
  static final Handler handler = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      int i = paramAnonymousMessage.what;
      if (i != 0)
      {
        if (i != 1) {
          return false;
        }
        ((BaseTransientBottomBar)paramAnonymousMessage.obj).hideView(paramAnonymousMessage.arg1);
        return true;
      }
      ((BaseTransientBottomBar)paramAnonymousMessage.obj).showView();
      return true;
    }
  });
  private final AccessibilityManager accessibilityManager;
  private View anchorView;
  private Behavior behavior;
  private final Runnable bottomMarginGestureInsetRunnable = new Runnable()
  {
    public void run()
    {
      Object localObject = BaseTransientBottomBar.this;
      if ((((BaseTransientBottomBar)localObject).view != null) && (((BaseTransientBottomBar)localObject).context != null))
      {
        int i = BaseTransientBottomBar.this.getScreenHeight() - BaseTransientBottomBar.this.getViewAbsoluteBottom() + (int)BaseTransientBottomBar.this.view.getTranslationY();
        if (i >= BaseTransientBottomBar.this.extraBottomMarginGestureInset) {
          return;
        }
        localObject = BaseTransientBottomBar.this.view.getLayoutParams();
        if (!(localObject instanceof ViewGroup.MarginLayoutParams))
        {
          Log.w(BaseTransientBottomBar.TAG, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
          return;
        }
        localObject = (ViewGroup.MarginLayoutParams)localObject;
        ((ViewGroup.MarginLayoutParams)localObject).bottomMargin += BaseTransientBottomBar.this.extraBottomMarginGestureInset - i;
        BaseTransientBottomBar.this.view.requestLayout();
      }
    }
  };
  private List<BaseCallback<B>> callbacks;
  private final ContentViewCallback contentViewCallback;
  private final Context context;
  private int duration;
  private int extraBottomMarginAnchorView;
  private int extraBottomMarginGestureInset;
  private int extraBottomMarginWindowInset;
  private int extraLeftMarginWindowInset;
  private int extraRightMarginWindowInset;
  private boolean gestureInsetBottomIgnored;
  SnackbarManager.Callback managerCallback = new SnackbarManager.Callback()
  {
    public void dismiss(int paramAnonymousInt)
    {
      Handler localHandler = BaseTransientBottomBar.handler;
      localHandler.sendMessage(localHandler.obtainMessage(1, paramAnonymousInt, 0, BaseTransientBottomBar.this));
    }
    
    public void show()
    {
      Handler localHandler = BaseTransientBottomBar.handler;
      localHandler.sendMessage(localHandler.obtainMessage(0, BaseTransientBottomBar.this));
    }
  };
  private Rect originalMargins;
  private final ViewGroup targetParent;
  protected final SnackbarBaseLayout view;
  
  protected BaseTransientBottomBar(ViewGroup paramViewGroup, View paramView, ContentViewCallback paramContentViewCallback)
  {
    if (paramViewGroup != null)
    {
      if (paramView != null)
      {
        if (paramContentViewCallback != null)
        {
          this.targetParent = paramViewGroup;
          this.contentViewCallback = paramContentViewCallback;
          paramContentViewCallback = paramViewGroup.getContext();
          this.context = paramContentViewCallback;
          ThemeEnforcement.checkAppCompatTheme(paramContentViewCallback);
          paramViewGroup = (SnackbarBaseLayout)LayoutInflater.from(paramContentViewCallback).inflate(getSnackbarBaseLayoutResId(), paramViewGroup, false);
          this.view = paramViewGroup;
          if ((paramView instanceof SnackbarContentLayout)) {
            ((SnackbarContentLayout)paramView).updateActionTextColorAlphaIfNeeded(paramViewGroup.getActionTextColorAlpha());
          }
          paramViewGroup.addView(paramView);
          paramView = paramViewGroup.getLayoutParams();
          if ((paramView instanceof ViewGroup.MarginLayoutParams))
          {
            paramView = (ViewGroup.MarginLayoutParams)paramView;
            this.originalMargins = new Rect(paramView.leftMargin, paramView.topMargin, paramView.rightMargin, paramView.bottomMargin);
          }
          a0.n0(paramViewGroup, 1);
          a0.w0(paramViewGroup, 1);
          a0.u0(paramViewGroup, true);
          a0.z0(paramViewGroup, new u()
          {
            public e1 onApplyWindowInsets(View paramAnonymousView, e1 paramAnonymouse1)
            {
              BaseTransientBottomBar.access$502(BaseTransientBottomBar.this, paramAnonymouse1.h());
              BaseTransientBottomBar.access$602(BaseTransientBottomBar.this, paramAnonymouse1.i());
              BaseTransientBottomBar.access$702(BaseTransientBottomBar.this, paramAnonymouse1.j());
              BaseTransientBottomBar.this.updateMargins();
              return paramAnonymouse1;
            }
          });
          a0.l0(paramViewGroup, new androidx.core.view.a()
          {
            public void onInitializeAccessibilityNodeInfo(View paramAnonymousView, g paramAnonymousg)
            {
              super.onInitializeAccessibilityNodeInfo(paramAnonymousView, paramAnonymousg);
              paramAnonymousg.a(1048576);
              paramAnonymousg.W(true);
            }
            
            public boolean performAccessibilityAction(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
            {
              if (paramAnonymousInt == 1048576)
              {
                BaseTransientBottomBar.this.dismiss();
                return true;
              }
              return super.performAccessibilityAction(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle);
            }
          });
          this.accessibilityManager = ((AccessibilityManager)paramContentViewCallback.getSystemService("accessibility"));
          return;
        }
        throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
      }
      throw new IllegalArgumentException("Transient bottom bar must have non-null content");
    }
    throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
  }
  
  private void animateViewOut(int paramInt)
  {
    if (this.view.getAnimationMode() == 1) {
      startFadeOutAnimation(paramInt);
    } else {
      startSlideOutAnimation(paramInt);
    }
  }
  
  private int calculateBottomMarginForAnchorView()
  {
    View localView = this.anchorView;
    if (localView == null) {
      return 0;
    }
    int[] arrayOfInt = new int[2];
    localView.getLocationOnScreen(arrayOfInt);
    int i = arrayOfInt[1];
    arrayOfInt = new int[2];
    this.targetParent.getLocationOnScreen(arrayOfInt);
    return arrayOfInt[1] + this.targetParent.getHeight() - i;
  }
  
  private ValueAnimator getAlphaAnimator(float... paramVarArgs)
  {
    paramVarArgs = ValueAnimator.ofFloat(paramVarArgs);
    paramVarArgs.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
    paramVarArgs.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        BaseTransientBottomBar.this.view.setAlpha(((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue());
      }
    });
    return paramVarArgs;
  }
  
  private ValueAnimator getScaleAnimator(float... paramVarArgs)
  {
    paramVarArgs = ValueAnimator.ofFloat(paramVarArgs);
    paramVarArgs.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
    paramVarArgs.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
        BaseTransientBottomBar.this.view.setScaleX(f);
        BaseTransientBottomBar.this.view.setScaleY(f);
      }
    });
    return paramVarArgs;
  }
  
  private int getScreenHeight()
  {
    WindowManager localWindowManager = (WindowManager)this.context.getSystemService("window");
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localWindowManager.getDefaultDisplay().getRealMetrics(localDisplayMetrics);
    return localDisplayMetrics.heightPixels;
  }
  
  private int getTranslationYBottom()
  {
    int i = this.view.getHeight();
    ViewGroup.LayoutParams localLayoutParams = this.view.getLayoutParams();
    int j = i;
    if ((localLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      j = i + ((ViewGroup.MarginLayoutParams)localLayoutParams).bottomMargin;
    }
    return j;
  }
  
  private int getViewAbsoluteBottom()
  {
    int[] arrayOfInt = new int[2];
    this.view.getLocationOnScreen(arrayOfInt);
    return arrayOfInt[1] + this.view.getHeight();
  }
  
  private boolean isSwipeDismissable()
  {
    ViewGroup.LayoutParams localLayoutParams = this.view.getLayoutParams();
    boolean bool;
    if (((localLayoutParams instanceof CoordinatorLayout.f)) && ((((CoordinatorLayout.f)localLayoutParams).f() instanceof SwipeDismissBehavior))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void setUpBehavior(CoordinatorLayout.f paramf)
  {
    Behavior localBehavior = this.behavior;
    Object localObject = localBehavior;
    if (localBehavior == null) {
      localObject = getNewBehavior();
    }
    if ((localObject instanceof Behavior)) {
      ((Behavior)localObject).setBaseTransientBottomBar(this);
    }
    ((SwipeDismissBehavior)localObject).setListener(new SwipeDismissBehavior.OnDismissListener()
    {
      public void onDismiss(View paramAnonymousView)
      {
        paramAnonymousView.setVisibility(8);
        BaseTransientBottomBar.this.dispatchDismiss(0);
      }
      
      public void onDragStateChanged(int paramAnonymousInt)
      {
        if (paramAnonymousInt != 0)
        {
          if ((paramAnonymousInt == 1) || (paramAnonymousInt == 2)) {
            SnackbarManager.getInstance().pauseTimeout(BaseTransientBottomBar.this.managerCallback);
          }
        }
        else {
          SnackbarManager.getInstance().restoreTimeoutIfPaused(BaseTransientBottomBar.this.managerCallback);
        }
      }
    });
    paramf.o((CoordinatorLayout.c)localObject);
    if (this.anchorView == null) {
      paramf.g = 80;
    }
  }
  
  private boolean shouldUpdateGestureInset()
  {
    boolean bool;
    if ((this.extraBottomMarginGestureInset > 0) && (!this.gestureInsetBottomIgnored) && (isSwipeDismissable())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void showViewImpl()
  {
    if (shouldAnimate())
    {
      animateViewIn();
    }
    else
    {
      this.view.setVisibility(0);
      onViewShown();
    }
  }
  
  private void startFadeInAnimation()
  {
    ValueAnimator localValueAnimator1 = getAlphaAnimator(new float[] { 0.0F, 1.0F });
    ValueAnimator localValueAnimator2 = getScaleAnimator(new float[] { 0.8F, 1.0F });
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.playTogether(new Animator[] { localValueAnimator1, localValueAnimator2 });
    localAnimatorSet.setDuration(150L);
    localAnimatorSet.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        BaseTransientBottomBar.this.onViewShown();
      }
    });
    localAnimatorSet.start();
  }
  
  private void startFadeOutAnimation(final int paramInt)
  {
    ValueAnimator localValueAnimator = getAlphaAnimator(new float[] { 1.0F, 0.0F });
    localValueAnimator.setDuration(75L);
    localValueAnimator.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        BaseTransientBottomBar.this.onViewHidden(paramInt);
      }
    });
    localValueAnimator.start();
  }
  
  private void startSlideInAnimation()
  {
    final int i = getTranslationYBottom();
    if (USE_OFFSET_API) {
      a0.W(this.view, i);
    } else {
      this.view.setTranslationY(i);
    }
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setIntValues(new int[] { i, 0 });
    localValueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
    localValueAnimator.setDuration(250L);
    localValueAnimator.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        BaseTransientBottomBar.this.onViewShown();
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        BaseTransientBottomBar.this.contentViewCallback.animateContentIn(70, 180);
      }
    });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      private int previousAnimatedIntValue;
      
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
        if (BaseTransientBottomBar.USE_OFFSET_API) {
          a0.W(BaseTransientBottomBar.this.view, i - this.previousAnimatedIntValue);
        } else {
          BaseTransientBottomBar.this.view.setTranslationY(i);
        }
        this.previousAnimatedIntValue = i;
      }
    });
    localValueAnimator.start();
  }
  
  private void startSlideOutAnimation(final int paramInt)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setIntValues(new int[] { 0, getTranslationYBottom() });
    localValueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
    localValueAnimator.setDuration(250L);
    localValueAnimator.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        BaseTransientBottomBar.this.onViewHidden(paramInt);
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        BaseTransientBottomBar.this.contentViewCallback.animateContentOut(0, 180);
      }
    });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      private int previousAnimatedIntValue = 0;
      
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
        if (BaseTransientBottomBar.USE_OFFSET_API) {
          a0.W(BaseTransientBottomBar.this.view, i - this.previousAnimatedIntValue);
        } else {
          BaseTransientBottomBar.this.view.setTranslationY(i);
        }
        this.previousAnimatedIntValue = i;
      }
    });
    localValueAnimator.start();
  }
  
  private void updateMargins()
  {
    Object localObject = this.view.getLayoutParams();
    if ((localObject instanceof ViewGroup.MarginLayoutParams))
    {
      Rect localRect = this.originalMargins;
      if (localRect != null)
      {
        int i;
        if (this.anchorView != null) {
          i = this.extraBottomMarginAnchorView;
        } else {
          i = this.extraBottomMarginWindowInset;
        }
        localObject = (ViewGroup.MarginLayoutParams)localObject;
        ((ViewGroup.MarginLayoutParams)localObject).bottomMargin = (localRect.bottom + i);
        ((ViewGroup.MarginLayoutParams)localObject).leftMargin = (localRect.left + this.extraLeftMarginWindowInset);
        ((ViewGroup.MarginLayoutParams)localObject).rightMargin = (localRect.right + this.extraRightMarginWindowInset);
        this.view.requestLayout();
        if ((Build.VERSION.SDK_INT >= 29) && (shouldUpdateGestureInset()))
        {
          this.view.removeCallbacks(this.bottomMarginGestureInsetRunnable);
          this.view.post(this.bottomMarginGestureInsetRunnable);
        }
        return;
      }
    }
    Log.w(TAG, "Unable to update margins because layout params are not MarginLayoutParams");
  }
  
  public B addCallback(BaseCallback<B> paramBaseCallback)
  {
    if (paramBaseCallback == null) {
      return this;
    }
    if (this.callbacks == null) {
      this.callbacks = new ArrayList();
    }
    this.callbacks.add(paramBaseCallback);
    return this;
  }
  
  void animateViewIn()
  {
    this.view.post(new Runnable()
    {
      public void run()
      {
        BaseTransientBottomBar.SnackbarBaseLayout localSnackbarBaseLayout = BaseTransientBottomBar.this.view;
        if (localSnackbarBaseLayout == null) {
          return;
        }
        localSnackbarBaseLayout.setVisibility(0);
        if (BaseTransientBottomBar.this.view.getAnimationMode() == 1) {
          BaseTransientBottomBar.this.startFadeInAnimation();
        } else {
          BaseTransientBottomBar.this.startSlideInAnimation();
        }
      }
    });
  }
  
  public void dismiss()
  {
    dispatchDismiss(3);
  }
  
  protected void dispatchDismiss(int paramInt)
  {
    SnackbarManager.getInstance().dismiss(this.managerCallback, paramInt);
  }
  
  public View getAnchorView()
  {
    return this.anchorView;
  }
  
  public int getAnimationMode()
  {
    return this.view.getAnimationMode();
  }
  
  public Behavior getBehavior()
  {
    return this.behavior;
  }
  
  public Context getContext()
  {
    return this.context;
  }
  
  public int getDuration()
  {
    return this.duration;
  }
  
  protected SwipeDismissBehavior<? extends View> getNewBehavior()
  {
    return new Behavior();
  }
  
  protected int getSnackbarBaseLayoutResId()
  {
    int i;
    if (hasSnackbarStyleAttr()) {
      i = R.layout.mtrl_layout_snackbar;
    } else {
      i = R.layout.design_layout_snackbar;
    }
    return i;
  }
  
  public View getView()
  {
    return this.view;
  }
  
  protected boolean hasSnackbarStyleAttr()
  {
    TypedArray localTypedArray = this.context.obtainStyledAttributes(SNACKBAR_STYLE_ATTR);
    boolean bool = false;
    int i = localTypedArray.getResourceId(0, -1);
    localTypedArray.recycle();
    if (i != -1) {
      bool = true;
    }
    return bool;
  }
  
  final void hideView(int paramInt)
  {
    if ((shouldAnimate()) && (this.view.getVisibility() == 0)) {
      animateViewOut(paramInt);
    } else {
      onViewHidden(paramInt);
    }
  }
  
  public boolean isGestureInsetBottomIgnored()
  {
    return this.gestureInsetBottomIgnored;
  }
  
  public boolean isShown()
  {
    return SnackbarManager.getInstance().isCurrent(this.managerCallback);
  }
  
  public boolean isShownOrQueued()
  {
    return SnackbarManager.getInstance().isCurrentOrNext(this.managerCallback);
  }
  
  void onViewHidden(int paramInt)
  {
    SnackbarManager.getInstance().onDismissed(this.managerCallback);
    Object localObject = this.callbacks;
    if (localObject != null) {
      for (int i = ((List)localObject).size() - 1; i >= 0; i--) {
        ((BaseCallback)this.callbacks.get(i)).onDismissed(this, paramInt);
      }
    }
    localObject = this.view.getParent();
    if ((localObject instanceof ViewGroup)) {
      ((ViewGroup)localObject).removeView(this.view);
    }
  }
  
  void onViewShown()
  {
    SnackbarManager.getInstance().onShown(this.managerCallback);
    List localList = this.callbacks;
    if (localList != null) {
      for (int i = localList.size() - 1; i >= 0; i--) {
        ((BaseCallback)this.callbacks.get(i)).onShown(this);
      }
    }
  }
  
  public B removeCallback(BaseCallback<B> paramBaseCallback)
  {
    if (paramBaseCallback == null) {
      return this;
    }
    List localList = this.callbacks;
    if (localList == null) {
      return this;
    }
    localList.remove(paramBaseCallback);
    return this;
  }
  
  public B setAnchorView(int paramInt)
  {
    Object localObject = this.targetParent.findViewById(paramInt);
    this.anchorView = ((View)localObject);
    if (localObject != null) {
      return this;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Unable to find anchor view with id: ");
    ((StringBuilder)localObject).append(paramInt);
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public B setAnchorView(View paramView)
  {
    this.anchorView = paramView;
    return this;
  }
  
  public B setAnimationMode(int paramInt)
  {
    this.view.setAnimationMode(paramInt);
    return this;
  }
  
  public B setBehavior(Behavior paramBehavior)
  {
    this.behavior = paramBehavior;
    return this;
  }
  
  public B setDuration(int paramInt)
  {
    this.duration = paramInt;
    return this;
  }
  
  public B setGestureInsetBottomIgnored(boolean paramBoolean)
  {
    this.gestureInsetBottomIgnored = paramBoolean;
    return this;
  }
  
  boolean shouldAnimate()
  {
    Object localObject = this.accessibilityManager;
    boolean bool = true;
    localObject = ((AccessibilityManager)localObject).getEnabledAccessibilityServiceList(1);
    if ((localObject == null) || (!((List)localObject).isEmpty())) {
      bool = false;
    }
    return bool;
  }
  
  public void show()
  {
    SnackbarManager.getInstance().show(getDuration(), this.managerCallback);
  }
  
  final void showView()
  {
    this.view.setOnAttachStateChangeListener(new OnAttachStateChangeListener()
    {
      public void onViewAttachedToWindow(View paramAnonymousView)
      {
        if (Build.VERSION.SDK_INT >= 29)
        {
          paramAnonymousView = BaseTransientBottomBar.this.view.getRootWindowInsets();
          if (paramAnonymousView != null)
          {
            BaseTransientBottomBar.access$302(BaseTransientBottomBar.this, j1.a(paramAnonymousView).bottom);
            BaseTransientBottomBar.this.updateMargins();
          }
        }
      }
      
      public void onViewDetachedFromWindow(View paramAnonymousView)
      {
        if (BaseTransientBottomBar.this.isShownOrQueued()) {
          BaseTransientBottomBar.handler.post(new Runnable()
          {
            public void run()
            {
              BaseTransientBottomBar.this.onViewHidden(3);
            }
          });
        }
      }
    });
    if (this.view.getParent() == null)
    {
      ViewGroup.LayoutParams localLayoutParams = this.view.getLayoutParams();
      if ((localLayoutParams instanceof CoordinatorLayout.f)) {
        setUpBehavior((CoordinatorLayout.f)localLayoutParams);
      }
      this.extraBottomMarginAnchorView = calculateBottomMarginForAnchorView();
      updateMargins();
      this.view.setVisibility(4);
      this.targetParent.addView(this.view);
    }
    if (a0.P(this.view))
    {
      showViewImpl();
      return;
    }
    this.view.setOnLayoutChangeListener(new OnLayoutChangeListener()
    {
      public void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
      {
        BaseTransientBottomBar.this.view.setOnLayoutChangeListener(null);
        BaseTransientBottomBar.this.showViewImpl();
      }
    });
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface AnimationMode {}
  
  public static abstract class BaseCallback<B>
  {
    public static final int DISMISS_EVENT_ACTION = 1;
    public static final int DISMISS_EVENT_CONSECUTIVE = 4;
    public static final int DISMISS_EVENT_MANUAL = 3;
    public static final int DISMISS_EVENT_SWIPE = 0;
    public static final int DISMISS_EVENT_TIMEOUT = 2;
    
    public void onDismissed(B paramB, int paramInt) {}
    
    public void onShown(B paramB) {}
    
    @Retention(RetentionPolicy.SOURCE)
    public static @interface DismissEvent {}
  }
  
  public static class Behavior
    extends SwipeDismissBehavior<View>
  {
    private final BaseTransientBottomBar.BehaviorDelegate delegate = new BaseTransientBottomBar.BehaviorDelegate(this);
    
    private void setBaseTransientBottomBar(BaseTransientBottomBar<?> paramBaseTransientBottomBar)
    {
      this.delegate.setBaseTransientBottomBar(paramBaseTransientBottomBar);
    }
    
    public boolean canSwipeDismissView(View paramView)
    {
      return this.delegate.canSwipeDismissView(paramView);
    }
    
    public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, View paramView, MotionEvent paramMotionEvent)
    {
      this.delegate.onInterceptTouchEvent(paramCoordinatorLayout, paramView, paramMotionEvent);
      return super.onInterceptTouchEvent(paramCoordinatorLayout, paramView, paramMotionEvent);
    }
  }
  
  public static class BehaviorDelegate
  {
    private SnackbarManager.Callback managerCallback;
    
    public BehaviorDelegate(SwipeDismissBehavior<?> paramSwipeDismissBehavior)
    {
      paramSwipeDismissBehavior.setStartAlphaSwipeDistance(0.1F);
      paramSwipeDismissBehavior.setEndAlphaSwipeDistance(0.6F);
      paramSwipeDismissBehavior.setSwipeDirection(0);
    }
    
    public boolean canSwipeDismissView(View paramView)
    {
      return paramView instanceof BaseTransientBottomBar.SnackbarBaseLayout;
    }
    
    public void onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, View paramView, MotionEvent paramMotionEvent)
    {
      int i = paramMotionEvent.getActionMasked();
      if (i != 0)
      {
        if ((i == 1) || (i == 3)) {
          SnackbarManager.getInstance().restoreTimeoutIfPaused(this.managerCallback);
        }
      }
      else if (paramCoordinatorLayout.isPointInChildBounds(paramView, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
        SnackbarManager.getInstance().pauseTimeout(this.managerCallback);
      }
    }
    
    public void setBaseTransientBottomBar(BaseTransientBottomBar<?> paramBaseTransientBottomBar)
    {
      this.managerCallback = paramBaseTransientBottomBar.managerCallback;
    }
  }
  
  @Deprecated
  public static abstract interface ContentViewCallback
    extends ContentViewCallback
  {}
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Duration {}
  
  protected static abstract interface OnAttachStateChangeListener
  {
    public abstract void onViewAttachedToWindow(View paramView);
    
    public abstract void onViewDetachedFromWindow(View paramView);
  }
  
  protected static abstract interface OnLayoutChangeListener
  {
    public abstract void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  }
  
  protected static class SnackbarBaseLayout
    extends FrameLayout
  {
    private static final View.OnTouchListener consumeAllTouchListener = new View.OnTouchListener()
    {
      @SuppressLint({"ClickableViewAccessibility"})
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return true;
      }
    };
    private final float actionTextColorAlpha;
    private int animationMode;
    private final float backgroundOverlayColorAlpha;
    private ColorStateList backgroundTint;
    private PorterDuff.Mode backgroundTintMode;
    private BaseTransientBottomBar.OnAttachStateChangeListener onAttachStateChangeListener;
    private BaseTransientBottomBar.OnLayoutChangeListener onLayoutChangeListener;
    
    protected SnackbarBaseLayout(Context paramContext)
    {
      this(paramContext, null);
    }
    
    protected SnackbarBaseLayout(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = getContext();
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SnackbarLayout);
      int i = R.styleable.SnackbarLayout_elevation;
      if (paramAttributeSet.hasValue(i)) {
        a0.t0(this, paramAttributeSet.getDimensionPixelSize(i, 0));
      }
      this.animationMode = paramAttributeSet.getInt(R.styleable.SnackbarLayout_animationMode, 0);
      this.backgroundOverlayColorAlpha = paramAttributeSet.getFloat(R.styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0F);
      setBackgroundTintList(MaterialResources.getColorStateList(paramContext, paramAttributeSet, R.styleable.SnackbarLayout_backgroundTint));
      setBackgroundTintMode(ViewUtils.parseTintMode(paramAttributeSet.getInt(R.styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
      this.actionTextColorAlpha = paramAttributeSet.getFloat(R.styleable.SnackbarLayout_actionTextColorAlpha, 1.0F);
      paramAttributeSet.recycle();
      setOnTouchListener(consumeAllTouchListener);
      setFocusable(true);
      if (getBackground() == null) {
        a0.p0(this, createThemedBackground());
      }
    }
    
    private Drawable createThemedBackground()
    {
      float f = getResources().getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
      Object localObject = new GradientDrawable();
      ((GradientDrawable)localObject).setShape(0);
      ((GradientDrawable)localObject).setCornerRadius(f);
      ((GradientDrawable)localObject).setColor(MaterialColors.layer(this, R.attr.colorSurface, R.attr.colorOnSurface, getBackgroundOverlayColorAlpha()));
      if (this.backgroundTint != null)
      {
        localObject = androidx.core.graphics.drawable.a.r((Drawable)localObject);
        androidx.core.graphics.drawable.a.o((Drawable)localObject, this.backgroundTint);
        return localObject;
      }
      return androidx.core.graphics.drawable.a.r((Drawable)localObject);
    }
    
    float getActionTextColorAlpha()
    {
      return this.actionTextColorAlpha;
    }
    
    int getAnimationMode()
    {
      return this.animationMode;
    }
    
    float getBackgroundOverlayColorAlpha()
    {
      return this.backgroundOverlayColorAlpha;
    }
    
    protected void onAttachedToWindow()
    {
      super.onAttachedToWindow();
      BaseTransientBottomBar.OnAttachStateChangeListener localOnAttachStateChangeListener = this.onAttachStateChangeListener;
      if (localOnAttachStateChangeListener != null) {
        localOnAttachStateChangeListener.onViewAttachedToWindow(this);
      }
      a0.i0(this);
    }
    
    protected void onDetachedFromWindow()
    {
      super.onDetachedFromWindow();
      BaseTransientBottomBar.OnAttachStateChangeListener localOnAttachStateChangeListener = this.onAttachStateChangeListener;
      if (localOnAttachStateChangeListener != null) {
        localOnAttachStateChangeListener.onViewDetachedFromWindow(this);
      }
    }
    
    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      BaseTransientBottomBar.OnLayoutChangeListener localOnLayoutChangeListener = this.onLayoutChangeListener;
      if (localOnLayoutChangeListener != null) {
        localOnLayoutChangeListener.onLayoutChange(this, paramInt1, paramInt2, paramInt3, paramInt4);
      }
    }
    
    void setAnimationMode(int paramInt)
    {
      this.animationMode = paramInt;
    }
    
    public void setBackground(Drawable paramDrawable)
    {
      setBackgroundDrawable(paramDrawable);
    }
    
    public void setBackgroundDrawable(Drawable paramDrawable)
    {
      Drawable localDrawable = paramDrawable;
      if (paramDrawable != null)
      {
        localDrawable = paramDrawable;
        if (this.backgroundTint != null)
        {
          localDrawable = androidx.core.graphics.drawable.a.r(paramDrawable.mutate());
          androidx.core.graphics.drawable.a.o(localDrawable, this.backgroundTint);
          androidx.core.graphics.drawable.a.p(localDrawable, this.backgroundTintMode);
        }
      }
      super.setBackgroundDrawable(localDrawable);
    }
    
    public void setBackgroundTintList(ColorStateList paramColorStateList)
    {
      this.backgroundTint = paramColorStateList;
      if (getBackground() != null)
      {
        Drawable localDrawable = androidx.core.graphics.drawable.a.r(getBackground().mutate());
        androidx.core.graphics.drawable.a.o(localDrawable, paramColorStateList);
        androidx.core.graphics.drawable.a.p(localDrawable, this.backgroundTintMode);
        if (localDrawable != getBackground()) {
          super.setBackgroundDrawable(localDrawable);
        }
      }
    }
    
    public void setBackgroundTintMode(PorterDuff.Mode paramMode)
    {
      this.backgroundTintMode = paramMode;
      if (getBackground() != null)
      {
        Drawable localDrawable = androidx.core.graphics.drawable.a.r(getBackground().mutate());
        androidx.core.graphics.drawable.a.p(localDrawable, paramMode);
        if (localDrawable != getBackground()) {
          super.setBackgroundDrawable(localDrawable);
        }
      }
    }
    
    void setOnAttachStateChangeListener(BaseTransientBottomBar.OnAttachStateChangeListener paramOnAttachStateChangeListener)
    {
      this.onAttachStateChangeListener = paramOnAttachStateChangeListener;
    }
    
    public void setOnClickListener(View.OnClickListener paramOnClickListener)
    {
      View.OnTouchListener localOnTouchListener;
      if (paramOnClickListener != null) {
        localOnTouchListener = null;
      } else {
        localOnTouchListener = consumeAllTouchListener;
      }
      setOnTouchListener(localOnTouchListener);
      super.setOnClickListener(paramOnClickListener);
    }
    
    void setOnLayoutChangeListener(BaseTransientBottomBar.OnLayoutChangeListener paramOnLayoutChangeListener)
    {
      this.onLayoutChangeListener = paramOnLayoutChangeListener;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.snackbar.BaseTransientBottomBar
 * JD-Core Version:    0.7.0.1
 */