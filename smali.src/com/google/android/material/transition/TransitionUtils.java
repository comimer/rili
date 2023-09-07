package com.google.android.material.transition;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.view.View;
import androidx.transition.m;
import androidx.transition.q;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearanceModel.Builder;
import com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator;

class TransitionUtils
{
  private static final RectF transformAlphaRectF = new RectF();
  
  static float calculateArea(RectF paramRectF)
  {
    return paramRectF.width() * paramRectF.height();
  }
  
  static ShapeAppearanceModel convertToRelativeCornerSizes(ShapeAppearanceModel paramShapeAppearanceModel, RectF paramRectF)
  {
    paramShapeAppearanceModel.withTransformedCornerSizes(new ShapeAppearanceModel.CornerSizeUnaryOperator()
    {
      public CornerSize apply(CornerSize paramAnonymousCornerSize)
      {
        if (!(paramAnonymousCornerSize instanceof RelativeCornerSize)) {
          paramAnonymousCornerSize = new RelativeCornerSize(paramAnonymousCornerSize.getCornerSize(this.val$bounds) / this.val$bounds.height());
        }
        return paramAnonymousCornerSize;
      }
    });
  }
  
  static Shader createColorShader(int paramInt)
  {
    return new LinearGradient(0.0F, 0.0F, 0.0F, 0.0F, paramInt, paramInt, Shader.TileMode.CLAMP);
  }
  
  static <T> T defaultIfNull(T paramT1, T paramT2)
  {
    if (paramT1 == null) {
      paramT1 = paramT2;
    }
    return paramT1;
  }
  
  static View findAncestorById(View paramView, int paramInt)
  {
    String str = paramView.getResources().getResourceName(paramInt);
    while (paramView != null)
    {
      if (paramView.getId() == paramInt) {
        return paramView;
      }
      paramView = paramView.getParent();
      if (!(paramView instanceof View)) {
        break;
      }
      paramView = (View)paramView;
    }
    paramView = new StringBuilder();
    paramView.append(str);
    paramView.append(" is not a valid ancestor");
    throw new IllegalArgumentException(paramView.toString());
  }
  
  static View findDescendantOrAncestorById(View paramView, int paramInt)
  {
    View localView = paramView.findViewById(paramInt);
    if (localView != null) {
      return localView;
    }
    return findAncestorById(paramView, paramInt);
  }
  
  static RectF getLocationOnScreen(View paramView)
  {
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    int i = arrayOfInt[0];
    int j = arrayOfInt[1];
    int k = paramView.getWidth();
    int m = paramView.getHeight();
    return new RectF(i, j, k + i, m + j);
  }
  
  static RectF getRelativeBounds(View paramView)
  {
    return new RectF(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
  }
  
  static Rect getRelativeBoundsRect(View paramView)
  {
    return new Rect(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
  }
  
  private static boolean isShapeAppearanceSignificant(ShapeAppearanceModel paramShapeAppearanceModel, RectF paramRectF)
  {
    boolean bool;
    if ((paramShapeAppearanceModel.getTopLeftCornerSize().getCornerSize(paramRectF) == 0.0F) && (paramShapeAppearanceModel.getTopRightCornerSize().getCornerSize(paramRectF) == 0.0F) && (paramShapeAppearanceModel.getBottomRightCornerSize().getCornerSize(paramRectF) == 0.0F) && (paramShapeAppearanceModel.getBottomLeftCornerSize().getCornerSize(paramRectF) == 0.0F)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  static float lerp(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return paramFloat1 + paramFloat3 * (paramFloat2 - paramFloat1);
  }
  
  static float lerp(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    if (paramFloat5 < paramFloat3) {
      return paramFloat1;
    }
    if (paramFloat5 > paramFloat4) {
      return paramFloat2;
    }
    return lerp(paramFloat1, paramFloat2, (paramFloat5 - paramFloat3) / (paramFloat4 - paramFloat3));
  }
  
  static int lerp(int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat3 < paramFloat1) {
      return paramInt1;
    }
    if (paramFloat3 > paramFloat2) {
      return paramInt2;
    }
    return (int)lerp(paramInt1, paramInt2, (paramFloat3 - paramFloat1) / (paramFloat2 - paramFloat1));
  }
  
  static ShapeAppearanceModel lerp(ShapeAppearanceModel paramShapeAppearanceModel1, ShapeAppearanceModel paramShapeAppearanceModel2, RectF paramRectF1, final RectF paramRectF2, final float paramFloat1, final float paramFloat2, final float paramFloat3)
  {
    if (paramFloat3 < paramFloat1) {
      return paramShapeAppearanceModel1;
    }
    if (paramFloat3 > paramFloat2) {
      return paramShapeAppearanceModel2;
    }
    transformCornerSizes(paramShapeAppearanceModel1, paramShapeAppearanceModel2, paramRectF1, new CornerSizeBinaryOperator()
    {
      public CornerSize apply(CornerSize paramAnonymousCornerSize1, CornerSize paramAnonymousCornerSize2)
      {
        return new AbsoluteCornerSize(TransitionUtils.lerp(paramAnonymousCornerSize1.getCornerSize(this.val$startBounds), paramAnonymousCornerSize2.getCornerSize(paramRectF2), paramFloat1, paramFloat2, paramFloat3));
      }
    });
  }
  
  static void maybeAddTransition(q paramq, m paramm)
  {
    if (paramm != null) {
      paramq.g(paramm);
    }
  }
  
  static void maybeRemoveTransition(q paramq, m paramm)
  {
    if (paramm != null) {
      paramq.t(paramm);
    }
  }
  
  private static int saveLayerAlphaCompat(Canvas paramCanvas, Rect paramRect, int paramInt)
  {
    RectF localRectF = transformAlphaRectF;
    localRectF.set(paramRect);
    return paramCanvas.saveLayerAlpha(localRectF, paramInt);
  }
  
  static void transform(Canvas paramCanvas, Rect paramRect, float paramFloat1, float paramFloat2, float paramFloat3, int paramInt, CanvasOperation paramCanvasOperation)
  {
    if (paramInt <= 0) {
      return;
    }
    int i = paramCanvas.save();
    paramCanvas.translate(paramFloat1, paramFloat2);
    paramCanvas.scale(paramFloat3, paramFloat3);
    if (paramInt < 255) {
      saveLayerAlphaCompat(paramCanvas, paramRect, paramInt);
    }
    paramCanvasOperation.run(paramCanvas);
    paramCanvas.restoreToCount(i);
  }
  
  static ShapeAppearanceModel transformCornerSizes(ShapeAppearanceModel paramShapeAppearanceModel1, ShapeAppearanceModel paramShapeAppearanceModel2, RectF paramRectF, CornerSizeBinaryOperator paramCornerSizeBinaryOperator)
  {
    if (isShapeAppearanceSignificant(paramShapeAppearanceModel1, paramRectF)) {
      paramRectF = paramShapeAppearanceModel1;
    } else {
      paramRectF = paramShapeAppearanceModel2;
    }
    return paramRectF.toBuilder().setTopLeftCornerSize(paramCornerSizeBinaryOperator.apply(paramShapeAppearanceModel1.getTopLeftCornerSize(), paramShapeAppearanceModel2.getTopLeftCornerSize())).setTopRightCornerSize(paramCornerSizeBinaryOperator.apply(paramShapeAppearanceModel1.getTopRightCornerSize(), paramShapeAppearanceModel2.getTopRightCornerSize())).setBottomLeftCornerSize(paramCornerSizeBinaryOperator.apply(paramShapeAppearanceModel1.getBottomLeftCornerSize(), paramShapeAppearanceModel2.getBottomLeftCornerSize())).setBottomRightCornerSize(paramCornerSizeBinaryOperator.apply(paramShapeAppearanceModel1.getBottomRightCornerSize(), paramShapeAppearanceModel2.getBottomRightCornerSize())).build();
  }
  
  static abstract interface CanvasOperation
  {
    public abstract void run(Canvas paramCanvas);
  }
  
  static abstract interface CornerSizeBinaryOperator
  {
    public abstract CornerSize apply(CornerSize paramCornerSize1, CornerSize paramCornerSize2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.TransitionUtils
 * JD-Core Version:    0.7.0.1
 */