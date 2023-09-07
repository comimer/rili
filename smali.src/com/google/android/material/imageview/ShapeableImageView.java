package com.google.android.material.imageview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearanceModel.Builder;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import e.a;

public class ShapeableImageView
  extends AppCompatImageView
  implements Shapeable
{
  private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_ShapeableImageView;
  private final Paint borderPaint;
  private final Paint clearPaint;
  private final RectF destination;
  private Path maskPath;
  private final RectF maskRect;
  private final Path path = new Path();
  private final ShapeAppearancePathProvider pathProvider = new ShapeAppearancePathProvider();
  private ShapeAppearanceModel shapeAppearanceModel;
  private ColorStateList strokeColor;
  private float strokeWidth;
  
  public ShapeableImageView(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public ShapeableImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ShapeableImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, i), paramAttributeSet, paramInt);
    paramContext = getContext();
    Object localObject = new Paint();
    this.clearPaint = ((Paint)localObject);
    ((Paint)localObject).setAntiAlias(true);
    ((Paint)localObject).setColor(-1);
    ((Paint)localObject).setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    this.destination = new RectF();
    this.maskRect = new RectF();
    this.maskPath = new Path();
    localObject = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ShapeableImageView, paramInt, i);
    this.strokeColor = MaterialResources.getColorStateList(paramContext, (TypedArray)localObject, R.styleable.ShapeableImageView_strokeColor);
    this.strokeWidth = ((TypedArray)localObject).getDimensionPixelSize(R.styleable.ShapeableImageView_strokeWidth, 0);
    localObject = new Paint();
    this.borderPaint = ((Paint)localObject);
    ((Paint)localObject).setStyle(Paint.Style.STROKE);
    ((Paint)localObject).setAntiAlias(true);
    this.shapeAppearanceModel = ShapeAppearanceModel.builder(paramContext, paramAttributeSet, paramInt, i).build();
    setOutlineProvider(new OutlineProvider());
  }
  
  private void drawStroke(Canvas paramCanvas)
  {
    if (this.strokeColor == null) {
      return;
    }
    this.borderPaint.setStrokeWidth(this.strokeWidth);
    int i = this.strokeColor.getColorForState(getDrawableState(), this.strokeColor.getDefaultColor());
    if ((this.strokeWidth > 0.0F) && (i != 0))
    {
      this.borderPaint.setColor(i);
      paramCanvas.drawPath(this.path, this.borderPaint);
    }
  }
  
  private void updateShapeMask(int paramInt1, int paramInt2)
  {
    this.destination.set(getPaddingLeft(), getPaddingTop(), paramInt1 - getPaddingRight(), paramInt2 - getPaddingBottom());
    this.pathProvider.calculatePath(this.shapeAppearanceModel, 1.0F, this.destination, this.path);
    this.maskPath.rewind();
    this.maskPath.addPath(this.path);
    this.maskRect.set(0.0F, 0.0F, paramInt1, paramInt2);
    this.maskPath.addRect(this.maskRect, Path.Direction.CCW);
  }
  
  public ShapeAppearanceModel getShapeAppearanceModel()
  {
    return this.shapeAppearanceModel;
  }
  
  public ColorStateList getStrokeColor()
  {
    return this.strokeColor;
  }
  
  public float getStrokeWidth()
  {
    return this.strokeWidth;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    setLayerType(2, null);
  }
  
  protected void onDetachedFromWindow()
  {
    setLayerType(0, null);
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawPath(this.maskPath, this.clearPaint);
    drawStroke(paramCanvas);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    updateShapeMask(paramInt1, paramInt2);
  }
  
  public void setShapeAppearanceModel(ShapeAppearanceModel paramShapeAppearanceModel)
  {
    this.shapeAppearanceModel = paramShapeAppearanceModel;
    updateShapeMask(getWidth(), getHeight());
    invalidate();
  }
  
  public void setStrokeColor(ColorStateList paramColorStateList)
  {
    this.strokeColor = paramColorStateList;
    invalidate();
  }
  
  public void setStrokeColorResource(int paramInt)
  {
    setStrokeColor(a.a(getContext(), paramInt));
  }
  
  public void setStrokeWidth(float paramFloat)
  {
    if (this.strokeWidth != paramFloat)
    {
      this.strokeWidth = paramFloat;
      invalidate();
    }
  }
  
  public void setStrokeWidthResource(int paramInt)
  {
    setStrokeWidth(getResources().getDimensionPixelSize(paramInt));
  }
  
  @TargetApi(21)
  class OutlineProvider
    extends ViewOutlineProvider
  {
    private Rect rect = new Rect();
    
    OutlineProvider() {}
    
    public void getOutline(View paramView, Outline paramOutline)
    {
      if ((ShapeableImageView.this.shapeAppearanceModel != null) && (ShapeableImageView.this.shapeAppearanceModel.isRoundRect(ShapeableImageView.this.destination)))
      {
        ShapeableImageView.this.destination.round(this.rect);
        float f = ShapeableImageView.this.shapeAppearanceModel.getBottomLeftCornerSize().getCornerSize(ShapeableImageView.this.destination);
        paramOutline.setRoundRect(this.rect, f);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.imageview.ShapeableImageView
 * JD-Core Version:    0.7.0.1
 */