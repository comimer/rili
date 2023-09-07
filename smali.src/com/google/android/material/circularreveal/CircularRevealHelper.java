package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Rect;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.math.MathUtils;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class CircularRevealHelper
{
  public static final int BITMAP_SHADER = 0;
  public static final int CLIP_PATH = 1;
  private static final boolean DEBUG = false;
  public static final int REVEAL_ANIMATOR = 2;
  public static final int STRATEGY = 2;
  private boolean buildingCircularRevealCache;
  private Paint debugPaint;
  private final Delegate delegate;
  private boolean hasCircularRevealCache;
  private Drawable overlayDrawable;
  private CircularRevealWidget.RevealInfo revealInfo;
  private final Paint revealPaint;
  private final Path revealPath;
  private final Paint scrimPaint;
  private final View view;
  
  public CircularRevealHelper(Delegate paramDelegate)
  {
    this.delegate = paramDelegate;
    paramDelegate = (View)paramDelegate;
    this.view = paramDelegate;
    paramDelegate.setWillNotDraw(false);
    this.revealPath = new Path();
    this.revealPaint = new Paint(7);
    paramDelegate = new Paint(1);
    this.scrimPaint = paramDelegate;
    paramDelegate.setColor(0);
  }
  
  private void drawDebugCircle(Canvas paramCanvas, int paramInt, float paramFloat)
  {
    this.debugPaint.setColor(paramInt);
    this.debugPaint.setStrokeWidth(paramFloat);
    CircularRevealWidget.RevealInfo localRevealInfo = this.revealInfo;
    paramCanvas.drawCircle(localRevealInfo.centerX, localRevealInfo.centerY, localRevealInfo.radius - paramFloat / 2.0F, this.debugPaint);
  }
  
  private void drawDebugMode(Canvas paramCanvas)
  {
    this.delegate.actualDraw(paramCanvas);
    if (shouldDrawScrim())
    {
      CircularRevealWidget.RevealInfo localRevealInfo = this.revealInfo;
      paramCanvas.drawCircle(localRevealInfo.centerX, localRevealInfo.centerY, localRevealInfo.radius, this.scrimPaint);
    }
    if (shouldDrawCircularReveal())
    {
      drawDebugCircle(paramCanvas, -16777216, 10.0F);
      drawDebugCircle(paramCanvas, -65536, 5.0F);
    }
    drawOverlayDrawable(paramCanvas);
  }
  
  private void drawOverlayDrawable(Canvas paramCanvas)
  {
    if (shouldDrawOverlayDrawable())
    {
      Rect localRect = this.overlayDrawable.getBounds();
      float f1 = this.revealInfo.centerX - localRect.width() / 2.0F;
      float f2 = this.revealInfo.centerY - localRect.height() / 2.0F;
      paramCanvas.translate(f1, f2);
      this.overlayDrawable.draw(paramCanvas);
      paramCanvas.translate(-f1, -f2);
    }
  }
  
  private float getDistanceToFurthestCorner(CircularRevealWidget.RevealInfo paramRevealInfo)
  {
    return MathUtils.distanceToFurthestCorner(paramRevealInfo.centerX, paramRevealInfo.centerY, 0.0F, 0.0F, this.view.getWidth(), this.view.getHeight());
  }
  
  private void invalidateRevealInfo()
  {
    if (STRATEGY == 1)
    {
      this.revealPath.rewind();
      CircularRevealWidget.RevealInfo localRevealInfo = this.revealInfo;
      if (localRevealInfo != null) {
        this.revealPath.addCircle(localRevealInfo.centerX, localRevealInfo.centerY, localRevealInfo.radius, Path.Direction.CW);
      }
    }
    this.view.invalidate();
  }
  
  private boolean shouldDrawCircularReveal()
  {
    CircularRevealWidget.RevealInfo localRevealInfo = this.revealInfo;
    boolean bool1 = false;
    int i;
    if ((localRevealInfo != null) && (!localRevealInfo.isInvalid())) {
      i = 0;
    } else {
      i = 1;
    }
    if (STRATEGY == 0)
    {
      boolean bool2 = bool1;
      if (i == 0)
      {
        bool2 = bool1;
        if (this.hasCircularRevealCache) {
          bool2 = true;
        }
      }
      return bool2;
    }
    return i ^ 0x1;
  }
  
  private boolean shouldDrawOverlayDrawable()
  {
    boolean bool;
    if ((!this.buildingCircularRevealCache) && (this.overlayDrawable != null) && (this.revealInfo != null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean shouldDrawScrim()
  {
    boolean bool;
    if ((!this.buildingCircularRevealCache) && (Color.alpha(this.scrimPaint.getColor()) != 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void buildCircularRevealCache()
  {
    if (STRATEGY == 0)
    {
      this.buildingCircularRevealCache = true;
      this.hasCircularRevealCache = false;
      this.view.buildDrawingCache();
      Object localObject1 = this.view.getDrawingCache();
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = localObject1;
        if (this.view.getWidth() != 0)
        {
          localObject2 = localObject1;
          if (this.view.getHeight() != 0)
          {
            localObject2 = Bitmap.createBitmap(this.view.getWidth(), this.view.getHeight(), Bitmap.Config.ARGB_8888);
            localObject1 = new Canvas((Bitmap)localObject2);
            this.view.draw((Canvas)localObject1);
          }
        }
      }
      if (localObject2 != null)
      {
        Paint localPaint = this.revealPaint;
        localObject1 = Shader.TileMode.CLAMP;
        localPaint.setShader(new BitmapShader((Bitmap)localObject2, (Shader.TileMode)localObject1, (Shader.TileMode)localObject1));
      }
      this.buildingCircularRevealCache = false;
      this.hasCircularRevealCache = true;
    }
  }
  
  public void destroyCircularRevealCache()
  {
    if (STRATEGY == 0)
    {
      this.hasCircularRevealCache = false;
      this.view.destroyDrawingCache();
      this.revealPaint.setShader(null);
      this.view.invalidate();
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (shouldDrawCircularReveal())
    {
      int i = STRATEGY;
      if (i != 0)
      {
        if (i != 1)
        {
          if (i == 2)
          {
            this.delegate.actualDraw(paramCanvas);
            if (shouldDrawScrim()) {
              paramCanvas.drawRect(0.0F, 0.0F, this.view.getWidth(), this.view.getHeight(), this.scrimPaint);
            }
          }
          else
          {
            paramCanvas = new StringBuilder();
            paramCanvas.append("Unsupported strategy ");
            paramCanvas.append(i);
            throw new IllegalStateException(paramCanvas.toString());
          }
        }
        else
        {
          i = paramCanvas.save();
          paramCanvas.clipPath(this.revealPath);
          this.delegate.actualDraw(paramCanvas);
          if (shouldDrawScrim()) {
            paramCanvas.drawRect(0.0F, 0.0F, this.view.getWidth(), this.view.getHeight(), this.scrimPaint);
          }
          paramCanvas.restoreToCount(i);
        }
      }
      else
      {
        CircularRevealWidget.RevealInfo localRevealInfo = this.revealInfo;
        paramCanvas.drawCircle(localRevealInfo.centerX, localRevealInfo.centerY, localRevealInfo.radius, this.revealPaint);
        if (shouldDrawScrim())
        {
          localRevealInfo = this.revealInfo;
          paramCanvas.drawCircle(localRevealInfo.centerX, localRevealInfo.centerY, localRevealInfo.radius, this.scrimPaint);
        }
      }
    }
    else
    {
      this.delegate.actualDraw(paramCanvas);
      if (shouldDrawScrim()) {
        paramCanvas.drawRect(0.0F, 0.0F, this.view.getWidth(), this.view.getHeight(), this.scrimPaint);
      }
    }
    drawOverlayDrawable(paramCanvas);
  }
  
  public Drawable getCircularRevealOverlayDrawable()
  {
    return this.overlayDrawable;
  }
  
  public int getCircularRevealScrimColor()
  {
    return this.scrimPaint.getColor();
  }
  
  public CircularRevealWidget.RevealInfo getRevealInfo()
  {
    CircularRevealWidget.RevealInfo localRevealInfo = this.revealInfo;
    if (localRevealInfo == null) {
      return null;
    }
    localRevealInfo = new CircularRevealWidget.RevealInfo(localRevealInfo);
    if (localRevealInfo.isInvalid()) {
      localRevealInfo.radius = getDistanceToFurthestCorner(localRevealInfo);
    }
    return localRevealInfo;
  }
  
  public boolean isOpaque()
  {
    boolean bool;
    if ((this.delegate.actualIsOpaque()) && (!shouldDrawCircularReveal())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void setCircularRevealOverlayDrawable(Drawable paramDrawable)
  {
    this.overlayDrawable = paramDrawable;
    this.view.invalidate();
  }
  
  public void setCircularRevealScrimColor(int paramInt)
  {
    this.scrimPaint.setColor(paramInt);
    this.view.invalidate();
  }
  
  public void setRevealInfo(CircularRevealWidget.RevealInfo paramRevealInfo)
  {
    if (paramRevealInfo == null)
    {
      this.revealInfo = null;
    }
    else
    {
      CircularRevealWidget.RevealInfo localRevealInfo = this.revealInfo;
      if (localRevealInfo == null) {
        this.revealInfo = new CircularRevealWidget.RevealInfo(paramRevealInfo);
      } else {
        localRevealInfo.set(paramRevealInfo);
      }
      if (MathUtils.geq(paramRevealInfo.radius, getDistanceToFurthestCorner(paramRevealInfo), 1.0E-004F)) {
        this.revealInfo.radius = 3.4028235E+38F;
      }
    }
    invalidateRevealInfo();
  }
  
  public static abstract interface Delegate
  {
    public abstract void actualDraw(Canvas paramCanvas);
    
    public abstract boolean actualIsOpaque();
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Strategy {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.circularreveal.CircularRevealHelper
 * JD-Core Version:    0.7.0.1
 */