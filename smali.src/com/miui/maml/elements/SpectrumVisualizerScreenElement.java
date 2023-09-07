package com.miui.maml.elements;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.miui.maml.ResourceManager;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.util.Utils;
import com.miui.maml.widget.SpectrumVisualizer;
import org.w3c.dom.Element;

public class SpectrumVisualizerScreenElement
  extends ImageScreenElement
{
  public static final String TAG_NAME = "SpectrumVisualizer";
  private int mAlphaWidthNum;
  private Canvas mCanvas;
  private String mDotbar;
  private Bitmap mPanel;
  private String mPanelSrc;
  private int mResDensity;
  private String mShadow;
  private SpectrumVisualizer mSpectrumVisualizer;
  
  public SpectrumVisualizerScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement);
  }
  
  private void load(Element paramElement)
  {
    if (paramElement == null) {
      return;
    }
    this.mPanelSrc = paramElement.getAttribute("panelSrc");
    this.mDotbar = paramElement.getAttribute("dotbarSrc");
    this.mShadow = paramElement.getAttribute("shadowSrc");
    SpectrumVisualizer localSpectrumVisualizer = new SpectrumVisualizer(getContext().mContext);
    this.mSpectrumVisualizer = localSpectrumVisualizer;
    localSpectrumVisualizer.setSoftDrawEnabled(false);
    this.mSpectrumVisualizer.enableUpdate(false);
    this.mAlphaWidthNum = Utils.getAttrAsInt(paramElement, "alphaWidthNum", -1);
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    if (this.mPanel != null)
    {
      this.mPaint.setAlpha(getAlpha());
      paramCanvas.drawBitmap(this.mPanel, getLeft(), getTop(), this.mPaint);
    }
    super.doRender(paramCanvas);
  }
  
  public void enableUpdate(boolean paramBoolean)
  {
    this.mSpectrumVisualizer.enableUpdate(paramBoolean);
  }
  
  protected BitmapProvider.VersionedBitmap getBitmap(boolean paramBoolean)
  {
    Canvas localCanvas = this.mCanvas;
    if (localCanvas == null) {
      return null;
    }
    localCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
    this.mCanvas.setDensity(0);
    this.mSpectrumVisualizer.draw(this.mCanvas);
    this.mCanvas.setDensity(this.mResDensity);
    this.mBitmap.updateVersion();
    return this.mBitmap;
  }
  
  public void init()
  {
    super.init();
    boolean bool = TextUtils.isEmpty(this.mPanelSrc);
    Bitmap localBitmap1 = null;
    if (bool) {
      localBitmap2 = null;
    } else {
      localBitmap2 = getContext().mResourceManager.getBitmap(this.mPanelSrc);
    }
    this.mPanel = localBitmap2;
    if (TextUtils.isEmpty(this.mDotbar)) {
      localBitmap2 = null;
    } else {
      localBitmap2 = getContext().mResourceManager.getBitmap(this.mDotbar);
    }
    if (!TextUtils.isEmpty(this.mShadow)) {
      localBitmap1 = getContext().mResourceManager.getBitmap(this.mShadow);
    }
    int i = (int)getWidth();
    int j = (int)getHeight();
    int k;
    if (i > 0)
    {
      k = j;
      if (j > 0) {}
    }
    else
    {
      Bitmap localBitmap3 = this.mPanel;
      if (localBitmap3 == null) {
        break label264;
      }
      i = localBitmap3.getWidth();
      k = this.mPanel.getHeight();
    }
    if (localBitmap2 == null)
    {
      Log.e("SpectrumVisualizer", "no dotbar");
      return;
    }
    this.mSpectrumVisualizer.setBitmaps(i, k, localBitmap2, localBitmap1);
    j = this.mAlphaWidthNum;
    if (j >= 0) {
      this.mSpectrumVisualizer.setAlphaNum(j);
    }
    this.mResDensity = localBitmap2.getDensity();
    this.mSpectrumVisualizer.layout(0, 0, i, k);
    Bitmap localBitmap2 = Bitmap.createBitmap(i, k, Bitmap.Config.ARGB_8888);
    localBitmap2.setDensity(this.mResDensity);
    this.mCanvas = new Canvas(localBitmap2);
    this.mBitmap.setBitmap(localBitmap2);
    return;
    label264:
    Log.e("SpectrumVisualizer", "no panel or size");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.SpectrumVisualizerScreenElement
 * JD-Core Version:    0.7.0.1
 */