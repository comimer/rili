package com.miui.maml.elements.video;

import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import com.miui.maml.component.MamlSurface;
import com.miui.maml.util.HideSdkDependencyUtils;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class SurfaceVideoView
  extends BaseVideoView
{
  private static final int APPLICATION_MEDIA_SUBLAYER = -2;
  private static final int APPLICATION_PANEL_SUBLAYER = 1;
  private static final String TAG = "SurfaceVideoView";
  private int mFormat = -2;
  private Handler mHandler;
  private int mHeight;
  private WeakReference<MamlSurface> mMamlSurfaceRef;
  private int mSubLayer = -2;
  private SurfaceControl mSurfaceControl;
  private Runnable mUpdateRunnable = new Runnable()
  {
    public void run()
    {
      SurfaceVideoView.this.updateSurfaceInternal();
    }
  };
  private int mVisibility = 0;
  private int mWidth;
  private float mX = 0.0F;
  private float mY = 0.0F;
  
  public SurfaceVideoView(Context paramContext, MamlSurface paramMamlSurface)
  {
    super(paramContext);
    this.mSurface = HideSdkDependencyUtils.Surface_getInstance();
    this.mMamlSurfaceRef = new WeakReference(paramMamlSurface);
    this.mHandler = new Handler();
  }
  
  private void initSize()
  {
    Display localDisplay = ((WindowManager)this.mContext.getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    localDisplay.getRealSize(localPoint);
    int i = getWidth();
    this.mWidth = i;
    if (i <= 0) {
      this.mWidth = localPoint.x;
    }
    i = getHeight();
    this.mHeight = i;
    if (i <= 0) {
      this.mHeight = localPoint.y;
    }
    updateSize();
  }
  
  private void postUpdateRunnable()
  {
    Handler localHandler = this.mHandler;
    if (localHandler != null)
    {
      localHandler.removeCallbacks(this.mUpdateRunnable);
      this.mHandler.post(this.mUpdateRunnable);
    }
  }
  
  private void updateSize()
  {
    if (this.mScaleMode == 3)
    {
      int i = this.mVideoHeight;
      if (i > 0)
      {
        int j = this.mVideoWidth;
        if (j > 0)
        {
          int k = this.mHeight;
          int m = this.mWidth;
          if (j * k < m * i) {
            this.mWidth = (k * j / i);
          } else if (k * j > m * i) {
            this.mHeight = (m * i / j);
          }
        }
      }
    }
  }
  
  private void updateSurfaceInternal()
  {
    if (this.mSurfaceControl != null)
    {
      HideSdkDependencyUtils.SurfaceControl_openTransaction();
      try
      {
        if (this.mVisibility == 0) {
          HideSdkDependencyUtils.SurfaceControl_show(this.mSurfaceControl);
        } else {
          HideSdkDependencyUtils.SurfaceControl_hide(this.mSurfaceControl);
        }
        HideSdkDependencyUtils.SurfaceControl_setLayer(this.mSurfaceControl, this.mSubLayer);
        HideSdkDependencyUtils.SurfaceControl_setPosition(this.mSurfaceControl, this.mX, this.mY);
        HideSdkDependencyUtils.SurfaceControl_setBufferSize(this.mSurfaceControl, this.mWidth, this.mHeight);
        HideSdkDependencyUtils.Surface_copyFrom(this.mSurface, this.mSurfaceControl);
      }
      finally
      {
        HideSdkDependencyUtils.SurfaceControl_closeTransaction();
      }
    }
  }
  
  protected void addSurfaceHolderCallback()
  {
    Object localObject = (MamlSurface)this.mMamlSurfaceRef.get();
    if (localObject != null)
    {
      localObject = ((MamlSurface)localObject).getSurfaceHolder();
      if (localObject != null)
      {
        ((SurfaceHolder)localObject).addCallback(this.mSHCallback);
        onSurfaceCreated((SurfaceHolder)localObject);
      }
    }
  }
  
  protected void onSurfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    initSize();
    if ((paramSurfaceHolder != null) && (paramSurfaceHolder.getSurface().isValid()) && (this.mSurfaceControl == null))
    {
      MamlSurface localMamlSurface = (MamlSurface)this.mMamlSurfaceRef.get();
      String str;
      if ((localMamlSurface != null) && (localMamlSurface.isIsSuperWallpaper())) {
        str = "superwallpaper.SurfaceVideoView";
      } else {
        str = "SurfaceVideoView";
      }
      Surface localSurface = paramSurfaceHolder.getSurface();
      if (localMamlSurface != null) {
        paramSurfaceHolder = localMamlSurface.getParentSurfaceControl();
      } else {
        paramSurfaceHolder = null;
      }
      this.mSurfaceControl = HideSdkDependencyUtils.SurfaceControl_getInstance_with_params(localSurface, paramSurfaceHolder, str, this.mWidth, this.mHeight, this.mFormat);
      updateSurfaceInternal();
    }
  }
  
  protected void onSurfaceDestroyed()
  {
    Log.d("SurfaceVideoView", "onSurfaceDestroyed");
    releaseMedia(true);
    Object localObject = this.mSurfaceControl;
    if (localObject != null)
    {
      ((SurfaceControl)localObject).release();
      this.mSurfaceControl = null;
    }
    localObject = this.mSurface;
    if (localObject != null) {
      ((Surface)localObject).release();
    }
    localObject = this.mHandler;
    if (localObject != null)
    {
      ((Handler)localObject).removeCallbacks(this.mUpdateRunnable);
      this.mHandler = null;
    }
  }
  
  protected void setFormat(int paramInt)
  {
    this.mFormat = paramInt;
  }
  
  public void setLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      this.mWidth = paramLayoutParams.width;
      this.mHeight = paramLayoutParams.height;
      updateSize();
      postUpdateRunnable();
    }
  }
  
  public void setVisibility(int paramInt)
  {
    if (this.mVisibility != paramInt)
    {
      this.mVisibility = paramInt;
      postUpdateRunnable();
    }
  }
  
  public void setX(float paramFloat)
  {
    if (this.mX != paramFloat)
    {
      this.mX = paramFloat;
      postUpdateRunnable();
    }
  }
  
  public void setY(float paramFloat)
  {
    if (this.mY != paramFloat)
    {
      this.mY = paramFloat;
      postUpdateRunnable();
    }
  }
  
  public void setZOrderOnTop(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.mSubLayer = 1;
    } else {
      this.mSubLayer = -2;
    }
    postUpdateRunnable();
  }
  
  protected void updateVideoSize()
  {
    updateSize();
    updateSurfaceInternal();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.video.SurfaceVideoView
 * JD-Core Version:    0.7.0.1
 */