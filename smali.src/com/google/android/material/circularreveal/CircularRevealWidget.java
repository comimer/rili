package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.math.MathUtils;

public abstract interface CircularRevealWidget
  extends CircularRevealHelper.Delegate
{
  public abstract void buildCircularRevealCache();
  
  public abstract void destroyCircularRevealCache();
  
  public abstract void draw(Canvas paramCanvas);
  
  public abstract Drawable getCircularRevealOverlayDrawable();
  
  public abstract int getCircularRevealScrimColor();
  
  public abstract RevealInfo getRevealInfo();
  
  public abstract boolean isOpaque();
  
  public abstract void setCircularRevealOverlayDrawable(Drawable paramDrawable);
  
  public abstract void setCircularRevealScrimColor(int paramInt);
  
  public abstract void setRevealInfo(RevealInfo paramRevealInfo);
  
  public static class CircularRevealEvaluator
    implements TypeEvaluator<CircularRevealWidget.RevealInfo>
  {
    public static final TypeEvaluator<CircularRevealWidget.RevealInfo> CIRCULAR_REVEAL = new CircularRevealEvaluator();
    private final CircularRevealWidget.RevealInfo revealInfo = new CircularRevealWidget.RevealInfo(null);
    
    public CircularRevealWidget.RevealInfo evaluate(float paramFloat, CircularRevealWidget.RevealInfo paramRevealInfo1, CircularRevealWidget.RevealInfo paramRevealInfo2)
    {
      this.revealInfo.set(MathUtils.lerp(paramRevealInfo1.centerX, paramRevealInfo2.centerX, paramFloat), MathUtils.lerp(paramRevealInfo1.centerY, paramRevealInfo2.centerY, paramFloat), MathUtils.lerp(paramRevealInfo1.radius, paramRevealInfo2.radius, paramFloat));
      return this.revealInfo;
    }
  }
  
  public static class CircularRevealProperty
    extends Property<CircularRevealWidget, CircularRevealWidget.RevealInfo>
  {
    public static final Property<CircularRevealWidget, CircularRevealWidget.RevealInfo> CIRCULAR_REVEAL = new CircularRevealProperty("circularReveal");
    
    private CircularRevealProperty(String paramString)
    {
      super(paramString);
    }
    
    public CircularRevealWidget.RevealInfo get(CircularRevealWidget paramCircularRevealWidget)
    {
      return paramCircularRevealWidget.getRevealInfo();
    }
    
    public void set(CircularRevealWidget paramCircularRevealWidget, CircularRevealWidget.RevealInfo paramRevealInfo)
    {
      paramCircularRevealWidget.setRevealInfo(paramRevealInfo);
    }
  }
  
  public static class CircularRevealScrimColorProperty
    extends Property<CircularRevealWidget, Integer>
  {
    public static final Property<CircularRevealWidget, Integer> CIRCULAR_REVEAL_SCRIM_COLOR = new CircularRevealScrimColorProperty("circularRevealScrimColor");
    
    private CircularRevealScrimColorProperty(String paramString)
    {
      super(paramString);
    }
    
    public Integer get(CircularRevealWidget paramCircularRevealWidget)
    {
      return Integer.valueOf(paramCircularRevealWidget.getCircularRevealScrimColor());
    }
    
    public void set(CircularRevealWidget paramCircularRevealWidget, Integer paramInteger)
    {
      paramCircularRevealWidget.setCircularRevealScrimColor(paramInteger.intValue());
    }
  }
  
  public static class RevealInfo
  {
    public static final float INVALID_RADIUS = 3.4028235E+38F;
    public float centerX;
    public float centerY;
    public float radius;
    
    private RevealInfo() {}
    
    public RevealInfo(float paramFloat1, float paramFloat2, float paramFloat3)
    {
      this.centerX = paramFloat1;
      this.centerY = paramFloat2;
      this.radius = paramFloat3;
    }
    
    public RevealInfo(RevealInfo paramRevealInfo)
    {
      this(paramRevealInfo.centerX, paramRevealInfo.centerY, paramRevealInfo.radius);
    }
    
    public boolean isInvalid()
    {
      boolean bool;
      if (this.radius == 3.4028235E+38F) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public void set(float paramFloat1, float paramFloat2, float paramFloat3)
    {
      this.centerX = paramFloat1;
      this.centerY = paramFloat2;
      this.radius = paramFloat3;
    }
    
    public void set(RevealInfo paramRevealInfo)
    {
      set(paramRevealInfo.centerX, paramRevealInfo.centerY, paramRevealInfo.radius);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.circularreveal.CircularRevealWidget
 * JD-Core Version:    0.7.0.1
 */