package com.android.ex.chips;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

public class CircularImageView
  extends ImageView
{
  private static float f = 1.0F;
  private final Matrix a = new Matrix();
  private final RectF b = new RectF();
  private final RectF c = new RectF();
  private final Paint d;
  private final Paint e;
  
  public CircularImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CircularImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = new Paint();
    this.d = paramContext;
    paramContext.setAntiAlias(true);
    paramContext.setFilterBitmap(true);
    paramContext.setDither(true);
    paramContext = new Paint();
    this.e = paramContext;
    paramContext.setColor(0);
    paramContext.setStyle(Paint.Style.STROKE);
    paramContext.setStrokeWidth(f);
    paramContext.setAntiAlias(true);
  }
  
  public void a(Bitmap paramBitmap, Canvas paramCanvas, RectF paramRectF1, RectF paramRectF2)
  {
    Shader.TileMode localTileMode = Shader.TileMode.CLAMP;
    paramBitmap = new BitmapShader(paramBitmap, localTileMode, localTileMode);
    this.a.reset();
    this.a.setRectToRect(paramRectF1, paramRectF2, Matrix.ScaleToFit.FILL);
    paramBitmap.setLocalMatrix(this.a);
    this.d.setShader(paramBitmap);
    paramCanvas.drawCircle(paramRectF2.centerX(), paramRectF2.centerY(), paramRectF2.width() / 2.0F, this.d);
    paramCanvas.drawCircle(paramRectF2.centerX(), paramRectF2.centerY(), paramRectF2.width() / 2.0F - f / 2.0F, this.e);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    Object localObject = getDrawable();
    if ((localObject instanceof StateListDrawable))
    {
      if (((StateListDrawable)localObject).getCurrent() != null) {
        localObject = (BitmapDrawable)((Drawable)localObject).getCurrent();
      } else {
        localObject = null;
      }
    }
    else {
      localObject = (BitmapDrawable)localObject;
    }
    if (localObject == null) {
      return;
    }
    localObject = ((BitmapDrawable)localObject).getBitmap();
    if (localObject == null) {
      return;
    }
    this.b.set(0.0F, 0.0F, ((Bitmap)localObject).getWidth(), ((Bitmap)localObject).getHeight());
    this.c.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
    a((Bitmap)localObject, paramCanvas, this.b, this.c);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.CircularImageView
 * JD-Core Version:    0.7.0.1
 */