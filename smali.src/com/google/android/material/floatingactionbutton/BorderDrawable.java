package com.google.android.material.floatingactionbutton;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import androidx.core.graphics.c;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;

class BorderDrawable
  extends Drawable
{
  private static final float DRAW_STROKE_WIDTH_MULTIPLE = 1.3333F;
  private ColorStateList borderTint;
  float borderWidth;
  private int bottomInnerStrokeColor;
  private int bottomOuterStrokeColor;
  private final RectF boundsRectF = new RectF();
  private int currentBorderTintColor;
  private boolean invalidateShader = true;
  private final Paint paint;
  private final ShapeAppearancePathProvider pathProvider = new ShapeAppearancePathProvider();
  private final Rect rect = new Rect();
  private final RectF rectF = new RectF();
  private ShapeAppearanceModel shapeAppearanceModel;
  private final Path shapePath = new Path();
  private final BorderState state = new BorderState(null);
  private int topInnerStrokeColor;
  private int topOuterStrokeColor;
  
  BorderDrawable(ShapeAppearanceModel paramShapeAppearanceModel)
  {
    this.shapeAppearanceModel = paramShapeAppearanceModel;
    paramShapeAppearanceModel = new Paint(1);
    this.paint = paramShapeAppearanceModel;
    paramShapeAppearanceModel.setStyle(Paint.Style.STROKE);
  }
  
  private Shader createGradientShader()
  {
    Object localObject = this.rect;
    copyBounds((Rect)localObject);
    float f1 = this.borderWidth / ((Rect)localObject).height();
    int i = c.c(this.topOuterStrokeColor, this.currentBorderTintColor);
    int j = c.c(this.topInnerStrokeColor, this.currentBorderTintColor);
    int k = c.c(c.f(this.topInnerStrokeColor, 0), this.currentBorderTintColor);
    int m = c.c(c.f(this.bottomInnerStrokeColor, 0), this.currentBorderTintColor);
    int n = c.c(this.bottomInnerStrokeColor, this.currentBorderTintColor);
    int i1 = c.c(this.bottomOuterStrokeColor, this.currentBorderTintColor);
    float f2 = ((Rect)localObject).top;
    float f3 = ((Rect)localObject).bottom;
    localObject = Shader.TileMode.CLAMP;
    return new LinearGradient(0.0F, f2, 0.0F, f3, new int[] { i, j, k, m, n, i1 }, new float[] { 0.0F, f1, 0.5F, 0.5F, 1.0F - f1, 1.0F }, (Shader.TileMode)localObject);
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (this.invalidateShader)
    {
      this.paint.setShader(createGradientShader());
      this.invalidateShader = false;
    }
    float f1 = this.paint.getStrokeWidth() / 2.0F;
    copyBounds(this.rect);
    this.rectF.set(this.rect);
    float f2 = Math.min(this.shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(getBoundsAsRectF()), this.rectF.width() / 2.0F);
    if (this.shapeAppearanceModel.isRoundRect(getBoundsAsRectF()))
    {
      this.rectF.inset(f1, f1);
      paramCanvas.drawRoundRect(this.rectF, f2, f2, this.paint);
    }
  }
  
  protected RectF getBoundsAsRectF()
  {
    this.boundsRectF.set(getBounds());
    return this.boundsRectF;
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return this.state;
  }
  
  public int getOpacity()
  {
    int i;
    if (this.borderWidth > 0.0F) {
      i = -3;
    } else {
      i = -2;
    }
    return i;
  }
  
  @TargetApi(21)
  public void getOutline(Outline paramOutline)
  {
    if (this.shapeAppearanceModel.isRoundRect(getBoundsAsRectF()))
    {
      float f = this.shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(getBoundsAsRectF());
      paramOutline.setRoundRect(getBounds(), f);
      return;
    }
    copyBounds(this.rect);
    this.rectF.set(this.rect);
    this.pathProvider.calculatePath(this.shapeAppearanceModel, 1.0F, this.rectF, this.shapePath);
    if (this.shapePath.isConvex()) {
      paramOutline.setConvexPath(this.shapePath);
    }
  }
  
  public boolean getPadding(Rect paramRect)
  {
    if (this.shapeAppearanceModel.isRoundRect(getBoundsAsRectF()))
    {
      int i = Math.round(this.borderWidth);
      paramRect.set(i, i, i, i);
    }
    return true;
  }
  
  public ShapeAppearanceModel getShapeAppearanceModel()
  {
    return this.shapeAppearanceModel;
  }
  
  public boolean isStateful()
  {
    ColorStateList localColorStateList = this.borderTint;
    boolean bool;
    if (((localColorStateList != null) && (localColorStateList.isStateful())) || (super.isStateful())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    this.invalidateShader = true;
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    ColorStateList localColorStateList = this.borderTint;
    if (localColorStateList != null)
    {
      int i = localColorStateList.getColorForState(paramArrayOfInt, this.currentBorderTintColor);
      if (i != this.currentBorderTintColor)
      {
        this.invalidateShader = true;
        this.currentBorderTintColor = i;
      }
    }
    if (this.invalidateShader) {
      invalidateSelf();
    }
    return this.invalidateShader;
  }
  
  public void setAlpha(int paramInt)
  {
    this.paint.setAlpha(paramInt);
    invalidateSelf();
  }
  
  void setBorderTint(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null) {
      this.currentBorderTintColor = paramColorStateList.getColorForState(getState(), this.currentBorderTintColor);
    }
    this.borderTint = paramColorStateList;
    this.invalidateShader = true;
    invalidateSelf();
  }
  
  public void setBorderWidth(float paramFloat)
  {
    if (this.borderWidth != paramFloat)
    {
      this.borderWidth = paramFloat;
      this.paint.setStrokeWidth(paramFloat * 1.3333F);
      this.invalidateShader = true;
      invalidateSelf();
    }
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.paint.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
  
  void setGradientColors(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.topOuterStrokeColor = paramInt1;
    this.topInnerStrokeColor = paramInt2;
    this.bottomOuterStrokeColor = paramInt3;
    this.bottomInnerStrokeColor = paramInt4;
  }
  
  public void setShapeAppearanceModel(ShapeAppearanceModel paramShapeAppearanceModel)
  {
    this.shapeAppearanceModel = paramShapeAppearanceModel;
    invalidateSelf();
  }
  
  private class BorderState
    extends Drawable.ConstantState
  {
    private BorderState() {}
    
    public int getChangingConfigurations()
    {
      return 0;
    }
    
    public Drawable newDrawable()
    {
      return BorderDrawable.this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.floatingactionbutton.BorderDrawable
 * JD-Core Version:    0.7.0.1
 */