package com.miui.maml.component;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.miui.maml.RenderUpdater;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.elements.ScreenElement;

@Deprecated
public class MamlDrawable
  extends Drawable
{
  private static final boolean DBG = true;
  private static final String LOG_TAG = "MamlDrawable";
  private static final int RENDER_TIMEOUT = 100;
  private Handler mHandler = new Handler(Looper.getMainLooper());
  private int mHeight;
  private int mIntrinsicHeight;
  private int mIntrinsicWidth;
  private Runnable mInvalidateSelf = new Runnable()
  {
    public void run()
    {
      MamlDrawable.this.invalidateSelf();
    }
  };
  private boolean mPaused = true;
  private Runnable mRenderTimeout = new Runnable()
  {
    public void run()
    {
      MamlDrawable.this.doPause();
    }
  };
  private ScreenElementRoot mRoot;
  private RenderUpdater mUpdater;
  private int mWidth;
  
  public MamlDrawable(ScreenElementRoot paramScreenElementRoot)
  {
    this(paramScreenElementRoot, false);
  }
  
  public MamlDrawable(ScreenElementRoot paramScreenElementRoot, boolean paramBoolean)
  {
    this.mRoot = paramScreenElementRoot;
    setIntrinsicSize((int)paramScreenElementRoot.getWidth(), (int)this.mRoot.getHeight());
    paramScreenElementRoot = new RenderUpdater(this.mRoot, new Handler(), paramBoolean)
    {
      public void doRenderImp()
      {
        MamlDrawable.this.mHandler.removeCallbacks(MamlDrawable.this.mRenderTimeout);
        MamlDrawable.this.mHandler.postDelayed(MamlDrawable.this.mRenderTimeout, 100L);
        MamlDrawable.this.mHandler.post(MamlDrawable.this.mInvalidateSelf);
      }
    };
    this.mUpdater = paramScreenElementRoot;
    paramScreenElementRoot.init();
    this.mUpdater.runUpdater();
  }
  
  private void doPause()
  {
    if (this.mPaused) {
      return;
    }
    logd("doPause: ");
    this.mPaused = true;
    this.mUpdater.onPause();
  }
  
  private void doResume()
  {
    if (!this.mPaused) {
      return;
    }
    logd("doResume: ");
    this.mPaused = false;
    this.mUpdater.onResume();
  }
  
  private void logd(CharSequence paramCharSequence)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramCharSequence);
    localStringBuilder.append("  [");
    localStringBuilder.append(toString());
    localStringBuilder.append("]");
    Log.d("MamlDrawable", localStringBuilder.toString());
  }
  
  public void cleanUp()
  {
    logd("cleanUp: ");
    this.mUpdater.cleanUp();
  }
  
  public void draw(Canvas paramCanvas)
  {
    this.mHandler.removeCallbacks(this.mRenderTimeout);
    doResume();
    try
    {
      int i = paramCanvas.save();
      paramCanvas.translate(getBounds().left, getBounds().top);
      paramCanvas.scale(this.mWidth / this.mIntrinsicWidth, this.mHeight / this.mIntrinsicHeight, 0.0F, 0.0F);
      this.mRoot.render(paramCanvas);
      paramCanvas.restoreToCount(i);
    }
    catch (OutOfMemoryError paramCanvas)
    {
      paramCanvas.printStackTrace();
      Log.e("MamlDrawable", paramCanvas.toString());
    }
    catch (Exception paramCanvas)
    {
      paramCanvas.printStackTrace();
      Log.e("MamlDrawable", paramCanvas.toString());
    }
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
  
  public ScreenElementRoot getRoot()
  {
    return this.mRoot;
  }
  
  public void setAlpha(int paramInt) {}
  
  public MamlDrawable setAutoCleanup(boolean paramBoolean)
  {
    this.mUpdater.setAutoCleanup(paramBoolean);
    return this;
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    this.mWidth = (paramInt3 - paramInt1);
    this.mHeight = (paramInt4 - paramInt2);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
  
  public void setIntrinsicSize(int paramInt1, int paramInt2)
  {
    this.mIntrinsicWidth = paramInt1;
    this.mIntrinsicHeight = paramInt2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.component.MamlDrawable
 * JD-Core Version:    0.7.0.1
 */