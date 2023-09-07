package com.miui.maml;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.LayerDrawable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class MamlDrawable
  extends Drawable
{
  private static WeakReference<Drawable> sLayerBadgeDrawableBmpRef;
  protected Drawable mBadgeDrawable;
  protected Rect mBadgeLocation;
  protected ColorFilter mColorFilter;
  protected int mHeight;
  protected int mIntrinsicHeight;
  protected int mIntrinsicWidth;
  protected Runnable mInvalidateSelf = new Runnable()
  {
    public void run()
    {
      MamlDrawable.this.invalidateSelf();
    }
  };
  protected MamlDrawableState mState;
  protected int mWidth;
  
  public void cleanUp() {}
  
  public void draw(Canvas paramCanvas)
  {
    drawIcon(paramCanvas);
    try
    {
      Drawable localDrawable = this.mBadgeDrawable;
      if (localDrawable != null)
      {
        Rect localRect = this.mBadgeLocation;
        if (localRect != null)
        {
          localDrawable.setBounds(0, 0, localRect.width(), this.mBadgeLocation.height());
          paramCanvas.save();
          localRect = this.mBadgeLocation;
          paramCanvas.translate(localRect.left, localRect.top);
          this.mBadgeDrawable.draw(paramCanvas);
          paramCanvas.restore();
        }
        else
        {
          localDrawable.setBounds(0, 0, this.mIntrinsicWidth, this.mIntrinsicHeight);
          this.mBadgeDrawable.draw(paramCanvas);
        }
      }
    }
    catch (OutOfMemoryError paramCanvas)
    {
      paramCanvas.printStackTrace();
    }
    catch (Exception paramCanvas)
    {
      paramCanvas.printStackTrace();
    }
  }
  
  protected void drawIcon(Canvas paramCanvas) {}
  
  protected void finalize()
    throws Throwable
  {
    cleanUp();
    super.finalize();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return this.mState;
  }
  
  public int getIntrinsicHeight()
  {
    return this.mIntrinsicHeight;
  }
  
  public int getIntrinsicWidth()
  {
    return this.mIntrinsicWidth;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setBadgeInfo(Drawable paramDrawable, Rect paramRect)
  {
    if ((paramRect != null) && ((paramRect.left < 0) || (paramRect.top < 0) || (paramRect.width() > this.mIntrinsicWidth) || (paramRect.height() > this.mIntrinsicHeight)))
    {
      paramDrawable = new StringBuilder();
      paramDrawable.append("Badge location ");
      paramDrawable.append(paramRect);
      paramDrawable.append(" not in badged drawable bounds ");
      paramDrawable.append(new Rect(0, 0, this.mIntrinsicWidth, this.mIntrinsicHeight));
      throw new IllegalArgumentException(paramDrawable.toString());
    }
    Object localObject1 = paramDrawable;
    if ((paramDrawable instanceof LayerDrawable))
    {
      localObject1 = null;
      Object localObject2 = sLayerBadgeDrawableBmpRef;
      if (localObject2 != null) {
        localObject1 = (Drawable)((Reference)localObject2).get();
      }
      if (localObject1 != null)
      {
        localObject1 = ((Drawable)localObject1).mutate();
      }
      else
      {
        localObject2 = Bitmap.createBitmap(paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        localObject1 = new Canvas((Bitmap)localObject2);
        paramDrawable.setBounds(0, 0, ((Canvas)localObject1).getWidth(), ((Canvas)localObject1).getHeight());
        paramDrawable.draw((Canvas)localObject1);
        localObject1 = new BitmapDrawable((Bitmap)localObject2);
        sLayerBadgeDrawableBmpRef = new WeakReference(localObject1);
      }
    }
    paramDrawable = this.mColorFilter;
    if ((paramDrawable != null) && (localObject1 != null)) {
      ((Drawable)localObject1).setColorFilter(paramDrawable);
    }
    this.mBadgeDrawable = ((Drawable)localObject1);
    this.mBadgeLocation = paramRect;
    paramDrawable = this.mState;
    paramDrawable.mStateBadgeDrawable = ((Drawable)localObject1);
    paramDrawable.mStateBadgeLocation = paramRect;
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    this.mWidth = (paramInt3 - paramInt1);
    this.mHeight = (paramInt4 - paramInt2);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.mColorFilter = paramColorFilter;
  }
  
  public void setIntrinsicSize(int paramInt1, int paramInt2)
  {
    this.mIntrinsicWidth = paramInt1;
    this.mIntrinsicHeight = paramInt2;
  }
  
  public static class MamlDrawableState
    extends Drawable.ConstantState
  {
    protected Drawable mStateBadgeDrawable;
    protected Rect mStateBadgeLocation;
    
    protected MamlDrawable createDrawable()
    {
      return null;
    }
    
    public int getChangingConfigurations()
    {
      return 0;
    }
    
    public Drawable newDrawable()
    {
      MamlDrawable localMamlDrawable = createDrawable();
      Rect localRect = null;
      if (localMamlDrawable == null) {
        return null;
      }
      Drawable localDrawable = this.mStateBadgeDrawable;
      if (localDrawable != null) {
        localDrawable = localDrawable.mutate();
      } else {
        localDrawable = null;
      }
      if (this.mStateBadgeLocation != null)
      {
        localRect = this.mStateBadgeLocation;
        localRect = new Rect(localRect.left, localRect.top, localRect.right, localRect.bottom);
      }
      localMamlDrawable.setBadgeInfo(localDrawable, localRect);
      return localMamlDrawable;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.MamlDrawable
 * JD-Core Version:    0.7.0.1
 */