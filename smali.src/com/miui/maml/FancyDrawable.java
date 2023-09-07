package com.miui.maml;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.util.Utils;

public class FancyDrawable
  extends MamlDrawable
  implements RendererController.IRenderable
{
  private static final boolean DBG = true;
  private static final String LOG_TAG = "FancyDrawable";
  private static final String QUIET_IMAGE_NAME = "quietImage.png";
  private static final int RENDER_TIMEOUT = 100;
  private static final String START_IMAGE_NAME = "startImage.png";
  private static final String USE_QUIET_IMAGE_TAG = "useQuietImage";
  private Handler mHandler = new Handler(Looper.getMainLooper());
  private Object mPauseLock = new Object();
  private boolean mPaused;
  private Drawable mQuietDrawable;
  private Runnable mRenderTimeout = new Runnable()
  {
    public void run()
    {
      FancyDrawable.access$002(FancyDrawable.this, true);
      FancyDrawable.this.doPause();
    }
  };
  private RendererCore mRendererCore;
  private Drawable mStartDrawable;
  private boolean mTimeOut;
  
  public FancyDrawable(RendererCore paramRendererCore)
  {
    init(paramRendererCore);
  }
  
  private void doPause()
  {
    synchronized (this.mPauseLock)
    {
      if (this.mPaused) {
        return;
      }
      logd("doPause: ");
      this.mPaused = true;
      this.mRendererCore.pauseRenderable(this);
      return;
    }
  }
  
  private void doResume()
  {
    synchronized (this.mPauseLock)
    {
      if (!this.mPaused) {
        return;
      }
      logd("doResume: ");
      this.mPaused = false;
      this.mRendererCore.resumeRenderable(this);
      return;
    }
  }
  
  private void init(RendererCore paramRendererCore)
  {
    paramRendererCore.getClass();
    this.mState = new FancyDrawableState(paramRendererCore);
    this.mRendererCore = paramRendererCore;
    paramRendererCore.addRenderable(this);
    setIntrinsicSize((int)this.mRendererCore.getRoot().getWidth(), (int)this.mRendererCore.getRoot().getHeight());
    paramRendererCore = this.mRendererCore.getRoot().getContext();
    Drawable localDrawable = paramRendererCore.mResourceManager.getDrawable(paramRendererCore.mContext.getResources(), "quietImage.png");
    this.mQuietDrawable = localDrawable;
    if (localDrawable != null)
    {
      localDrawable = localDrawable.mutate();
      this.mQuietDrawable = localDrawable;
      localDrawable.setBounds(0, 0, localDrawable.getIntrinsicWidth(), this.mQuietDrawable.getIntrinsicHeight());
    }
    paramRendererCore = paramRendererCore.mResourceManager.getDrawable(paramRendererCore.mContext.getResources(), "startImage.png");
    this.mStartDrawable = paramRendererCore;
    if (paramRendererCore != null)
    {
      paramRendererCore = paramRendererCore.mutate();
      this.mStartDrawable = paramRendererCore;
      paramRendererCore.setBounds(0, 0, paramRendererCore.getIntrinsicWidth(), this.mStartDrawable.getIntrinsicHeight());
    }
  }
  
  private void logd(CharSequence paramCharSequence)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramCharSequence);
    localStringBuilder.append("  [");
    localStringBuilder.append(toString());
    localStringBuilder.append("]");
    Log.d("FancyDrawable", localStringBuilder.toString());
  }
  
  public void cleanUp()
  {
    logd("cleanUp: ");
    this.mRendererCore.removeRenderable(this);
  }
  
  public void doRender()
  {
    this.mHandler.removeCallbacks(this.mRenderTimeout);
    this.mHandler.postDelayed(this.mRenderTimeout, 100L);
    this.mHandler.post(this.mInvalidateSelf);
  }
  
  protected void drawIcon(Canvas paramCanvas)
  {
    this.mHandler.removeCallbacks(this.mRenderTimeout);
    if (this.mTimeOut)
    {
      doResume();
      this.mTimeOut = false;
    }
    try
    {
      int i = paramCanvas.save();
      paramCanvas.translate(getBounds().left, getBounds().top);
      paramCanvas.scale(this.mWidth / this.mIntrinsicWidth, this.mHeight / this.mIntrinsicHeight, 0.0F, 0.0F);
      if (Utils.getVariableNumber("useQuietImage", this.mRendererCore.getRoot().getVariables()) > 0.0D)
      {
        Drawable localDrawable = this.mQuietDrawable;
        if (localDrawable != null)
        {
          localDrawable.draw(paramCanvas);
          break label125;
        }
      }
      this.mRendererCore.render(paramCanvas);
      label125:
      paramCanvas.restoreToCount(i);
    }
    catch (Exception paramCanvas)
    {
      paramCanvas.printStackTrace();
    }
  }
  
  protected void finalize()
    throws Throwable
  {
    cleanUp();
    super.finalize();
  }
  
  public int getIntrinsicHeight()
  {
    return this.mIntrinsicHeight;
  }
  
  public int getIntrinsicWidth()
  {
    return this.mIntrinsicWidth;
  }
  
  public Drawable getQuietDrawable()
  {
    return this.mQuietDrawable;
  }
  
  public ScreenElementRoot getRoot()
  {
    return this.mRendererCore.getRoot();
  }
  
  public Drawable getStartDrawable()
  {
    return this.mStartDrawable;
  }
  
  public void onPause()
  {
    getRoot().onCommand("pause");
    doPause();
    this.mHandler.removeCallbacks(this.mRenderTimeout);
  }
  
  public void onResume()
  {
    getRoot().onCommand("resume");
    doResume();
  }
  
  public void setAlpha(int paramInt)
  {
    Drawable localDrawable = this.mQuietDrawable;
    if (localDrawable != null) {
      localDrawable.setAlpha(paramInt);
    }
    localDrawable = this.mStartDrawable;
    if (localDrawable != null) {
      localDrawable.setAlpha(paramInt);
    }
  }
  
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
    this.mBadgeDrawable = paramDrawable;
    this.mBadgeLocation = paramRect;
    MamlDrawable.MamlDrawableState localMamlDrawableState = this.mState;
    localMamlDrawableState.mStateBadgeDrawable = paramDrawable;
    localMamlDrawableState.mStateBadgeLocation = paramRect;
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    super.setColorFilter(paramColorFilter);
    Log.d("FancyDrawable", "setColorFilter");
    Object localObject = this.mQuietDrawable;
    if (localObject != null) {
      ((Drawable)localObject).setColorFilter(paramColorFilter);
    }
    localObject = this.mStartDrawable;
    if (localObject != null) {
      ((Drawable)localObject).setColorFilter(paramColorFilter);
    }
    localObject = this.mBadgeDrawable;
    if (localObject != null) {
      ((Drawable)localObject).setColorFilter(paramColorFilter);
    }
    localObject = this.mRendererCore;
    if (localObject != null) {
      ((RendererCore)localObject).setColorFilter(paramColorFilter);
    }
  }
  
  static final class FancyDrawableState
    extends MamlDrawable.MamlDrawableState
  {
    RendererCore mRendererCore;
    
    public FancyDrawableState(RendererCore paramRendererCore)
    {
      this.mRendererCore = paramRendererCore;
    }
    
    protected MamlDrawable createDrawable()
    {
      return new FancyDrawable(this.mRendererCore);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.FancyDrawable
 * JD-Core Version:    0.7.0.1
 */