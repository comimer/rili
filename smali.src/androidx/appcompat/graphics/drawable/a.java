package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;

public class a
  extends Drawable
  implements Drawable.Callback
{
  private Drawable mDrawable;
  
  public a(Drawable paramDrawable)
  {
    setWrappedDrawable(paramDrawable);
  }
  
  public void draw(Canvas paramCanvas)
  {
    this.mDrawable.draw(paramCanvas);
  }
  
  public int getChangingConfigurations()
  {
    return this.mDrawable.getChangingConfigurations();
  }
  
  public Drawable getCurrent()
  {
    return this.mDrawable.getCurrent();
  }
  
  public int getIntrinsicHeight()
  {
    return this.mDrawable.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return this.mDrawable.getIntrinsicWidth();
  }
  
  public int getMinimumHeight()
  {
    return this.mDrawable.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    return this.mDrawable.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    return this.mDrawable.getOpacity();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    return this.mDrawable.getPadding(paramRect);
  }
  
  public int[] getState()
  {
    return this.mDrawable.getState();
  }
  
  public Region getTransparentRegion()
  {
    return this.mDrawable.getTransparentRegion();
  }
  
  public Drawable getWrappedDrawable()
  {
    return this.mDrawable;
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    invalidateSelf();
  }
  
  public boolean isAutoMirrored()
  {
    return androidx.core.graphics.drawable.a.h(this.mDrawable);
  }
  
  public boolean isStateful()
  {
    return this.mDrawable.isStateful();
  }
  
  public void jumpToCurrentState()
  {
    this.mDrawable.jumpToCurrentState();
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    this.mDrawable.setBounds(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    return this.mDrawable.setLevel(paramInt);
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    this.mDrawable.setAlpha(paramInt);
  }
  
  public void setAutoMirrored(boolean paramBoolean)
  {
    androidx.core.graphics.drawable.a.j(this.mDrawable, paramBoolean);
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    this.mDrawable.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.mDrawable.setColorFilter(paramColorFilter);
  }
  
  public void setDither(boolean paramBoolean)
  {
    this.mDrawable.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    this.mDrawable.setFilterBitmap(paramBoolean);
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    androidx.core.graphics.drawable.a.k(this.mDrawable, paramFloat1, paramFloat2);
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    androidx.core.graphics.drawable.a.l(this.mDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    return this.mDrawable.setState(paramArrayOfInt);
  }
  
  public void setTint(int paramInt)
  {
    androidx.core.graphics.drawable.a.n(this.mDrawable, paramInt);
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    androidx.core.graphics.drawable.a.o(this.mDrawable, paramColorStateList);
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    androidx.core.graphics.drawable.a.p(this.mDrawable, paramMode);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((!super.setVisible(paramBoolean1, paramBoolean2)) && (!this.mDrawable.setVisible(paramBoolean1, paramBoolean2))) {
      paramBoolean1 = false;
    } else {
      paramBoolean1 = true;
    }
    return paramBoolean1;
  }
  
  public void setWrappedDrawable(Drawable paramDrawable)
  {
    Drawable localDrawable = this.mDrawable;
    if (localDrawable != null) {
      localDrawable.setCallback(null);
    }
    this.mDrawable = paramDrawable;
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    unscheduleSelf(paramRunnable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.graphics.drawable.a
 * JD-Core Version:    0.7.0.1
 */