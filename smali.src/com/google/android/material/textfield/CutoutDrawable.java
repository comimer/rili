package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.view.View;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

class CutoutDrawable
  extends MaterialShapeDrawable
{
  private final RectF cutoutBounds;
  private final Paint cutoutPaint = new Paint(1);
  private int savedLayer;
  
  CutoutDrawable()
  {
    this(null);
  }
  
  CutoutDrawable(ShapeAppearanceModel paramShapeAppearanceModel)
  {
    super(paramShapeAppearanceModel);
    setPaintStyles();
    this.cutoutBounds = new RectF();
  }
  
  private void postDraw(Canvas paramCanvas)
  {
    if (!useHardwareLayer(getCallback())) {
      paramCanvas.restoreToCount(this.savedLayer);
    }
  }
  
  private void preDraw(Canvas paramCanvas)
  {
    Drawable.Callback localCallback = getCallback();
    if (useHardwareLayer(localCallback))
    {
      paramCanvas = (View)localCallback;
      if (paramCanvas.getLayerType() != 2) {
        paramCanvas.setLayerType(2, null);
      }
    }
    else
    {
      saveCanvasLayer(paramCanvas);
    }
  }
  
  private void saveCanvasLayer(Canvas paramCanvas)
  {
    this.savedLayer = paramCanvas.saveLayer(0.0F, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight(), null);
  }
  
  private void setPaintStyles()
  {
    this.cutoutPaint.setStyle(Paint.Style.FILL_AND_STROKE);
    this.cutoutPaint.setColor(-1);
    this.cutoutPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
  }
  
  private boolean useHardwareLayer(Drawable.Callback paramCallback)
  {
    return paramCallback instanceof View;
  }
  
  public void draw(Canvas paramCanvas)
  {
    preDraw(paramCanvas);
    super.draw(paramCanvas);
    paramCanvas.drawRect(this.cutoutBounds, this.cutoutPaint);
    postDraw(paramCanvas);
  }
  
  boolean hasCutout()
  {
    return this.cutoutBounds.isEmpty() ^ true;
  }
  
  void removeCutout()
  {
    setCutout(0.0F, 0.0F, 0.0F, 0.0F);
  }
  
  void setCutout(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    RectF localRectF = this.cutoutBounds;
    if ((paramFloat1 != localRectF.left) || (paramFloat2 != localRectF.top) || (paramFloat3 != localRectF.right) || (paramFloat4 != localRectF.bottom))
    {
      localRectF.set(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
      invalidateSelf();
    }
  }
  
  void setCutout(RectF paramRectF)
  {
    setCutout(paramRectF.left, paramRectF.top, paramRectF.right, paramRectF.bottom);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.textfield.CutoutDrawable
 * JD-Core Version:    0.7.0.1
 */