package com.miui.maml.elements;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.util.Utils;
import org.w3c.dom.Element;

public class VirtualScreen
  extends ElementGroup
  implements BitmapProvider.IBitmapHolder
{
  public static final String TAG_NAME = "VirtualScreen";
  private Bitmap mScreenBitmap;
  private Canvas mScreenCanvas;
  private boolean mTicked;
  private BitmapProvider.VersionedBitmap mVersionedBitmap;
  
  public VirtualScreen(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    if (this.mTicked)
    {
      this.mTicked = false;
      this.mScreenCanvas.save();
      this.mScreenCanvas.concat(getMatrix());
      this.mScreenCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
      super.doRender(this.mScreenCanvas);
      this.mScreenCanvas.restore();
      this.mVersionedBitmap.updateVersion();
    }
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    this.mTicked = true;
  }
  
  public void finish()
  {
    super.finish();
    this.mScreenBitmap.recycle();
    this.mScreenBitmap = null;
    this.mScreenCanvas = null;
  }
  
  public Bitmap getBitmap()
  {
    return this.mScreenBitmap;
  }
  
  public BitmapProvider.VersionedBitmap getBitmap(String paramString)
  {
    return this.mVersionedBitmap;
  }
  
  public void init()
  {
    super.init();
    float f1 = getWidth();
    float f2 = f1;
    if (f1 < 0.0F) {
      f2 = scale(Utils.getVariableNumber("screen_width", getVariables()));
    }
    float f3 = getHeight();
    f1 = f3;
    if (f3 < 0.0F) {
      f1 = scale(Utils.getVariableNumber("screen_height", getVariables()));
    }
    Bitmap localBitmap = Bitmap.createBitmap(Math.round(f2), Math.round(f1), Bitmap.Config.ARGB_8888);
    this.mScreenBitmap = localBitmap;
    localBitmap.setDensity(this.mRoot.getTargetDensity());
    this.mScreenCanvas = new Canvas(this.mScreenBitmap);
    this.mVersionedBitmap = new BitmapProvider.VersionedBitmap(this.mScreenBitmap);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.VirtualScreen
 * JD-Core Version:    0.7.0.1
 */