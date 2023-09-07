package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

public class AppCompatImageView
  extends ImageView
{
  private final d mBackgroundTintHelper;
  private boolean mHasLevel = false;
  private final m mImageHelper;
  
  public AppCompatImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AppCompatImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(w0.b(paramContext), paramAttributeSet, paramInt);
    u0.a(this, getContext());
    paramContext = new d(this);
    this.mBackgroundTintHelper = paramContext;
    paramContext.e(paramAttributeSet, paramInt);
    paramContext = new m(this);
    this.mImageHelper = paramContext;
    paramContext.g(paramAttributeSet, paramInt);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Object localObject = this.mBackgroundTintHelper;
    if (localObject != null) {
      ((d)localObject).b();
    }
    localObject = this.mImageHelper;
    if (localObject != null) {
      ((m)localObject).c();
    }
  }
  
  public ColorStateList getSupportBackgroundTintList()
  {
    Object localObject = this.mBackgroundTintHelper;
    if (localObject != null) {
      localObject = ((d)localObject).c();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    Object localObject = this.mBackgroundTintHelper;
    if (localObject != null) {
      localObject = ((d)localObject).d();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public ColorStateList getSupportImageTintList()
  {
    Object localObject = this.mImageHelper;
    if (localObject != null) {
      localObject = ((m)localObject).d();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public PorterDuff.Mode getSupportImageTintMode()
  {
    Object localObject = this.mImageHelper;
    if (localObject != null) {
      localObject = ((m)localObject).e();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public boolean hasOverlappingRendering()
  {
    boolean bool;
    if ((this.mImageHelper.f()) && (super.hasOverlappingRendering())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    d locald = this.mBackgroundTintHelper;
    if (locald != null) {
      locald.f(paramDrawable);
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    d locald = this.mBackgroundTintHelper;
    if (locald != null) {
      locald.g(paramInt);
    }
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    paramBitmap = this.mImageHelper;
    if (paramBitmap != null) {
      paramBitmap.c();
    }
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    m localm = this.mImageHelper;
    if ((localm != null) && (paramDrawable != null) && (!this.mHasLevel)) {
      localm.h(paramDrawable);
    }
    super.setImageDrawable(paramDrawable);
    paramDrawable = this.mImageHelper;
    if (paramDrawable != null)
    {
      paramDrawable.c();
      if (!this.mHasLevel) {
        this.mImageHelper.b();
      }
    }
  }
  
  public void setImageLevel(int paramInt)
  {
    super.setImageLevel(paramInt);
    this.mHasLevel = true;
  }
  
  public void setImageResource(int paramInt)
  {
    m localm = this.mImageHelper;
    if (localm != null) {
      localm.i(paramInt);
    }
  }
  
  public void setImageURI(Uri paramUri)
  {
    super.setImageURI(paramUri);
    paramUri = this.mImageHelper;
    if (paramUri != null) {
      paramUri.c();
    }
  }
  
  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    d locald = this.mBackgroundTintHelper;
    if (locald != null) {
      locald.i(paramColorStateList);
    }
  }
  
  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    d locald = this.mBackgroundTintHelper;
    if (locald != null) {
      locald.j(paramMode);
    }
  }
  
  public void setSupportImageTintList(ColorStateList paramColorStateList)
  {
    m localm = this.mImageHelper;
    if (localm != null) {
      localm.j(paramColorStateList);
    }
  }
  
  public void setSupportImageTintMode(PorterDuff.Mode paramMode)
  {
    m localm = this.mImageHelper;
    if (localm != null) {
      localm.k(paramMode);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.AppCompatImageView
 * JD-Core Version:    0.7.0.1
 */