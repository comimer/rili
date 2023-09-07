package com.miui.maml.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioManager;
import android.media.audiofx.Visualizer;
import android.media.audiofx.Visualizer.OnDataCaptureListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.miui.maml.R.drawable;
import com.miui.maml.R.styleable;
import com.miui.maml.util.SystemProperties;

@SuppressLint({"AppCompatCustomView"})
public class SpectrumVisualizer
  extends ImageView
{
  private static final int CONSIDER_SAMPLE_LENGTH = 160;
  public static boolean IS_LPA_DECODE = SystemProperties.getBoolean("persist.sys.lpa.decode", false);
  private static final int RES_DEFAULT_SLIDING_DOT_BAR_ID = R.drawable.sliding_panel_visualization_dot_bar;
  private static final int RES_DEFAULT_SLIDING_PANEL_ID = R.drawable.sliding_panel_visualization_bg;
  private static final int RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID = R.drawable.sliding_panel_visualization_shadow_dot_bar;
  private static final String TAG = "SpectrumVisualizer";
  private static final int VISUALIZATION_SAMPLE_LENGTH = 256;
  private float INDEX_SCALE_FACTOR;
  private final int MAX_VALID_SAMPLE = 20;
  private float SAMPLE_SCALE_FACTOR;
  private float VISUALIZE_DESC_HEIGHT;
  int mAlphaWidthNum;
  private AudioManager mAudioManager;
  private Bitmap mCachedBitmap;
  private Canvas mCachedCanvas;
  int mCellSize;
  int mDotbarHeight;
  private DotBarDrawer mDrawer;
  private boolean mEnableDrawing = true;
  private boolean mIsEnableUpdate;
  private boolean mIsNeedCareStreamActive = true;
  private Visualizer.OnDataCaptureListener mOnDataCaptureListener = new Visualizer.OnDataCaptureListener()
  {
    public void onFftDataCapture(Visualizer paramAnonymousVisualizer, byte[] paramAnonymousArrayOfByte, int paramAnonymousInt)
    {
      SpectrumVisualizer.this.update(paramAnonymousArrayOfByte);
    }
    
    public void onWaveFormDataCapture(Visualizer paramAnonymousVisualizer, byte[] paramAnonymousArrayOfByte, int paramAnonymousInt) {}
  };
  Paint mPaint = new Paint();
  int[] mPixels;
  float[] mPointData;
  private short[] mSampleBuf = new short[' '];
  int mShadowDotbarHeight;
  int[] mShadowPixels;
  private boolean mSoftDrawEnabled = true;
  private int mVisualizationHeight;
  int mVisualizationHeightNum;
  private int mVisualizationWidth;
  int mVisualizationWidthNum;
  private Visualizer mVisualizer;
  
  public SpectrumVisualizer(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SpectrumVisualizer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SpectrumVisualizer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    boolean bool = false;
    this.mAlphaWidthNum = 0;
    this.mAudioManager = ((AudioManager)paramContext.getSystemService("audio"));
    Object localObject1 = null;
    if (paramAttributeSet != null)
    {
      localObject2 = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SpectrumVisualizer);
      localObject3 = ((TypedArray)localObject2).getDrawable(R.styleable.SpectrumVisualizer_sliding_panel);
      localObject4 = ((TypedArray)localObject2).getDrawable(R.styleable.SpectrumVisualizer_sliding_dot_bar);
      paramAttributeSet = ((TypedArray)localObject2).getDrawable(R.styleable.SpectrumVisualizer_sliding_shadow_dot_bar);
      bool = ((TypedArray)localObject2).getBoolean(R.styleable.SpectrumVisualizer_symmetry, false);
      this.mAlphaWidthNum = ((TypedArray)localObject2).getInt(R.styleable.SpectrumVisualizer_alpha_width, this.mAlphaWidthNum);
      this.mIsEnableUpdate = ((TypedArray)localObject2).getBoolean(R.styleable.SpectrumVisualizer_update_enable, false);
      this.mIsNeedCareStreamActive = ((TypedArray)localObject2).getBoolean(R.styleable.SpectrumVisualizer_care_streamactive, false);
      ((TypedArray)localObject2).recycle();
    }
    else
    {
      localObject3 = null;
      localObject4 = localObject3;
      paramAttributeSet = (AttributeSet)localObject4;
    }
    Object localObject2 = localObject3;
    if (localObject3 == null) {
      localObject2 = paramContext.getResources().getDrawable(RES_DEFAULT_SLIDING_PANEL_ID);
    }
    localObject2 = ((BitmapDrawable)localObject2).getBitmap();
    Object localObject3 = localObject4;
    if (localObject4 == null) {
      localObject3 = paramContext.getResources().getDrawable(RES_DEFAULT_SLIDING_DOT_BAR_ID);
    }
    localObject3 = ((BitmapDrawable)localObject3).getBitmap();
    Object localObject4 = localObject1;
    if (bool)
    {
      localObject4 = paramAttributeSet;
      if (paramAttributeSet == null) {
        localObject4 = paramContext.getResources().getDrawable(RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID);
      }
      localObject4 = ((BitmapDrawable)localObject4).getBitmap();
    }
    setBitmaps((Bitmap)localObject2, (Bitmap)localObject3, (Bitmap)localObject4);
  }
  
  private void drawInternal(Canvas paramCanvas)
  {
    this.mPaint.setAlpha(255);
    int i = this.mVisualizationWidthNum;
    int j = this.mAlphaWidthNum;
    for (int k = j; k < i - j; k++) {
      this.mDrawer.drawDotBar(paramCanvas, k);
    }
    for (k = this.mAlphaWidthNum; k > 0; k--)
    {
      this.mPaint.setAlpha(k * 255 / this.mAlphaWidthNum);
      this.mDrawer.drawDotBar(paramCanvas, k - 1);
      this.mDrawer.drawDotBar(paramCanvas, this.mVisualizationWidthNum - k);
    }
  }
  
  private Bitmap drawToBitmap()
  {
    Object localObject1 = this.mCachedBitmap;
    Canvas localCanvas = this.mCachedCanvas;
    Object localObject2 = localObject1;
    if (localObject1 != null) {
      if (((Bitmap)localObject1).getWidth() == getWidth())
      {
        localObject2 = localObject1;
        if (((Bitmap)localObject1).getHeight() == getHeight()) {}
      }
      else
      {
        ((Bitmap)localObject1).recycle();
        localObject2 = null;
      }
    }
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
      this.mCachedBitmap = ((Bitmap)localObject1);
      localCanvas = new Canvas((Bitmap)localObject1);
      this.mCachedCanvas = localCanvas;
    }
    localCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
    drawInternal(localCanvas);
    return localObject1;
  }
  
  private void init(Context paramContext, AttributeSet paramAttributeSet) {}
  
  public void enableDrawing(boolean paramBoolean)
  {
    this.mEnableDrawing = paramBoolean;
  }
  
  public void enableUpdate(boolean paramBoolean)
  {
    try
    {
      try
      {
        if (this.mIsEnableUpdate != paramBoolean)
        {
          Visualizer localVisualizer;
          if ((paramBoolean) && (this.mVisualizer == null))
          {
            if (IS_LPA_DECODE)
            {
              Log.v("SpectrumVisualizer", "lpa decode is on, can't enable");
            }
            else
            {
              localVisualizer = new android/media/audiofx/Visualizer;
              localVisualizer.<init>(0);
              this.mVisualizer = localVisualizer;
              if (!localVisualizer.getEnabled())
              {
                this.mVisualizer.setCaptureSize(512);
                this.mVisualizer.setDataCaptureListener(this.mOnDataCaptureListener, Visualizer.getMaxCaptureRate(), false, true);
                this.mVisualizer.setEnabled(true);
              }
            }
          }
          else if (!paramBoolean)
          {
            localVisualizer = this.mVisualizer;
            if (localVisualizer != null)
            {
              localVisualizer.setEnabled(false);
              this.mVisualizer.release();
              this.mVisualizer = null;
            }
          }
          this.mIsEnableUpdate = paramBoolean;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
      label142:
      return;
    }
    catch (IllegalStateException|RuntimeException localIllegalStateException)
    {
      break label142;
    }
  }
  
  public int getVisualHeight()
  {
    return this.mVisualizationHeight;
  }
  
  public int getVisualWidth()
  {
    return this.mVisualizationWidth;
  }
  
  public boolean isUpdateEnabled()
  {
    return this.mIsEnableUpdate;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (!this.mEnableDrawing) {
      return;
    }
    if (this.mSoftDrawEnabled) {
      paramCanvas.drawBitmap(drawToBitmap(), 0.0F, 0.0F, null);
    } else {
      drawInternal(paramCanvas);
    }
  }
  
  public void setAlphaNum(int paramInt)
  {
    if (paramInt <= 0)
    {
      this.mAlphaWidthNum = 0;
      return;
    }
    int i = this.mVisualizationWidthNum;
    int j = paramInt;
    if (paramInt > i / 2) {
      j = i / 2;
    }
    this.mAlphaWidthNum = j;
  }
  
  public void setBitmaps(int paramInt1, int paramInt2, Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    this.mVisualizationWidth = paramInt1;
    this.mVisualizationHeight = paramInt2;
    this.mCellSize = paramBitmap1.getWidth();
    paramInt1 = paramBitmap1.getHeight();
    this.mDotbarHeight = paramInt1;
    paramInt2 = this.mVisualizationHeight;
    if (paramInt1 > paramInt2) {
      this.mDotbarHeight = paramInt2;
    }
    paramInt1 = this.mCellSize;
    paramInt2 = this.mDotbarHeight;
    int[] arrayOfInt = new int[paramInt1 * paramInt2];
    this.mPixels = arrayOfInt;
    paramBitmap1.getPixels(arrayOfInt, 0, paramInt1, 0, 0, paramInt1, paramInt2);
    paramInt1 = this.mVisualizationWidth;
    paramInt2 = this.mCellSize;
    paramInt1 /= paramInt2;
    this.mVisualizationWidthNum = paramInt1;
    paramInt2 = this.mDotbarHeight / paramInt2;
    this.mVisualizationHeightNum = paramInt2;
    this.SAMPLE_SCALE_FACTOR = (20.0F / paramInt2);
    this.INDEX_SCALE_FACTOR = ((float)Math.log(paramInt1 / 3));
    this.VISUALIZE_DESC_HEIGHT = (1.0F / this.mVisualizationHeightNum);
    paramInt1 = this.mVisualizationWidthNum;
    this.mPointData = new float[paramInt1];
    if (this.mAlphaWidthNum == 0) {
      this.mAlphaWidthNum = (paramInt1 / 2);
    }
    this.mShadowPixels = null;
    if (paramBitmap2 != null)
    {
      paramInt1 = paramBitmap2.getHeight();
      this.mShadowDotbarHeight = paramInt1;
      int i = this.mDotbarHeight;
      paramInt2 = this.mVisualizationHeight;
      if (paramInt1 + i > paramInt2) {
        this.mShadowDotbarHeight = (paramInt2 - i);
      }
      paramInt2 = this.mShadowDotbarHeight;
      paramInt1 = this.mCellSize;
      if (paramInt2 < paramInt1)
      {
        this.mDrawer = new AsymmetryDotBar();
        return;
      }
      paramBitmap1 = new int[paramInt1 * paramInt2];
      this.mShadowPixels = paramBitmap1;
      paramBitmap2.getPixels(paramBitmap1, 0, paramInt1, 0, 0, paramInt1, paramInt2);
      this.mDrawer = new SymmetryDotBar();
    }
    else
    {
      this.mDrawer = new AsymmetryDotBar();
    }
  }
  
  public void setBitmaps(Bitmap paramBitmap1, Bitmap paramBitmap2, Bitmap paramBitmap3)
  {
    setImageBitmap(paramBitmap1);
    setBitmaps(paramBitmap1.getWidth(), paramBitmap1.getHeight(), paramBitmap2, paramBitmap3);
  }
  
  public void setSoftDrawEnabled(boolean paramBoolean)
  {
    this.mSoftDrawEnabled = paramBoolean;
    if (!paramBoolean)
    {
      Bitmap localBitmap = this.mCachedBitmap;
      if (localBitmap != null)
      {
        localBitmap.recycle();
        this.mCachedBitmap = null;
        this.mCachedCanvas = null;
      }
    }
  }
  
  void update(byte[] paramArrayOfByte)
  {
    if ((this.mIsNeedCareStreamActive) && (!this.mAudioManager.isMusicActive()))
    {
      enableDrawing(false);
      return;
    }
    enableDrawing(true);
    if (paramArrayOfByte == null) {
      return;
    }
    short[] arrayOfShort = this.mSampleBuf;
    int i = arrayOfShort.length;
    for (int j = 0; j < i; j++)
    {
      k = j * 2;
      m = paramArrayOfByte[k];
      k = paramArrayOfByte[(k + 1)];
      m = (int)Math.sqrt(m * m + k * k);
      if (m >= 32767) {
        m = 32767;
      }
      arrayOfShort[j] = ((short)(short)m);
    }
    int k = 0;
    int m = k;
    int i1;
    for (j = m; k < this.mVisualizationWidthNum; j = i1)
    {
      int n = 0;
      i1 = j;
      j = m;
      while (i1 < i)
      {
        n = Math.max(n, arrayOfShort[j]);
        j++;
        i1 += this.mVisualizationWidthNum;
      }
      i1 -= i;
      float f;
      if (n > 1)
      {
        f = (float)(Math.log(k + 2) / this.INDEX_SCALE_FACTOR);
        f = (n - 1) * f * f;
      }
      else
      {
        f = 0.0F;
      }
      if (f > 20.0F) {
        f = this.mVisualizationHeightNum;
      } else {
        f /= this.SAMPLE_SCALE_FACTOR;
      }
      paramArrayOfByte = this.mPointData;
      paramArrayOfByte[k] = Math.max(f / this.mVisualizationHeightNum, paramArrayOfByte[k] - this.VISUALIZE_DESC_HEIGHT);
      k++;
      m = j;
    }
    invalidate();
  }
  
  class AsymmetryDotBar
    implements SpectrumVisualizer.DotBarDrawer
  {
    AsymmetryDotBar() {}
    
    public void drawDotBar(Canvas paramCanvas, int paramInt)
    {
      SpectrumVisualizer localSpectrumVisualizer = SpectrumVisualizer.this;
      int i = localSpectrumVisualizer.mDotbarHeight;
      float f1 = i;
      float f2 = localSpectrumVisualizer.mPointData[paramInt];
      int j = localSpectrumVisualizer.mCellSize;
      int k = (int)(f1 * (1.0F - f2) / j + 0.5D) * j;
      if (k < i) {
        paramCanvas.drawBitmap(localSpectrumVisualizer.mPixels, j * k, j, j * paramInt, k, j, i - k, true, localSpectrumVisualizer.mPaint);
      }
    }
  }
  
  private static abstract interface DotBarDrawer
  {
    public abstract void drawDotBar(Canvas paramCanvas, int paramInt);
  }
  
  class SymmetryDotBar
    implements SpectrumVisualizer.DotBarDrawer
  {
    SymmetryDotBar() {}
    
    public void drawDotBar(Canvas paramCanvas, int paramInt)
    {
      SpectrumVisualizer localSpectrumVisualizer = SpectrumVisualizer.this;
      int i = localSpectrumVisualizer.mDotbarHeight;
      float f1 = i;
      float f2 = localSpectrumVisualizer.mPointData[paramInt];
      int j = localSpectrumVisualizer.mCellSize;
      int k = (int)(f1 * (1.0F - f2) / j + 0.5D) * j;
      if (k < i) {
        paramCanvas.drawBitmap(localSpectrumVisualizer.mPixels, j * k, j, j * paramInt, k, j, i - k, true, localSpectrumVisualizer.mPaint);
      }
      localSpectrumVisualizer = SpectrumVisualizer.this;
      i = localSpectrumVisualizer.mShadowDotbarHeight;
      f2 = i;
      f1 = localSpectrumVisualizer.mPointData[paramInt];
      k = localSpectrumVisualizer.mCellSize;
      j = (int)(f2 * f1 / k + 0.5D) * k;
      if (j > i) {
        j = i;
      }
      if (j > 0) {
        paramCanvas.drawBitmap(localSpectrumVisualizer.mShadowPixels, 0, k, k * paramInt, localSpectrumVisualizer.mDotbarHeight, k, j, true, localSpectrumVisualizer.mPaint);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.widget.SpectrumVisualizer
 * JD-Core Version:    0.7.0.1
 */