package com.miui.maml.elements;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Xfermode;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.util.ColorParser;
import com.miui.maml.util.Utils;
import org.w3c.dom.Element;

public class PaintScreenElement
  extends AnimatedScreenElement
{
  private static float DEFAULT_WEIGHT = 1.0F;
  public static final String TAG_NAME = "Paint";
  private Bitmap mCachedBitmap;
  private Canvas mCachedCanvas;
  private Paint mCachedPaint;
  private int mColor;
  private ColorParser mColorParser;
  private Paint mPaint;
  private Path mPath;
  private boolean mPendingMouseUp;
  private float mWeight;
  private Expression mWeightExp;
  private Xfermode mXfermode;
  
  public PaintScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement, paramScreenElementRoot);
    this.mPath = new Path();
    float f = scale(DEFAULT_WEIGHT);
    DEFAULT_WEIGHT = f;
    this.mWeight = f;
    paramElement = new Paint();
    this.mPaint = paramElement;
    paramElement.setXfermode(this.mXfermode);
    this.mPaint.setAntiAlias(true);
    paramElement = new Paint();
    this.mCachedPaint = paramElement;
    paramElement.setStyle(Paint.Style.STROKE);
    this.mCachedPaint.setStrokeWidth(DEFAULT_WEIGHT);
    this.mCachedPaint.setStrokeCap(Paint.Cap.ROUND);
    this.mCachedPaint.setStrokeJoin(Paint.Join.ROUND);
    this.mCachedPaint.setAntiAlias(true);
    this.mTouchable = true;
  }
  
  private void load(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    if (paramElement == null) {
      return;
    }
    paramScreenElementRoot = getVariables();
    this.mWeightExp = Expression.build(paramScreenElementRoot, paramElement.getAttribute("weight"));
    this.mColorParser = ColorParser.fromElement(paramScreenElementRoot, paramElement);
    this.mXfermode = new PorterDuffXfermode(Utils.getPorterDuffMode(paramElement.getAttribute("xfermode")));
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    float f1 = getWidth();
    float f2 = getHeight();
    f1 = getLeft(0.0F, f1);
    float f3 = getTop(0.0F, f2);
    f2 = getAbsoluteLeft();
    float f4 = getAbsoluteTop();
    if (this.mPendingMouseUp)
    {
      this.mCachedCanvas.save();
      this.mCachedCanvas.translate(-f2, -f4);
      this.mCachedCanvas.drawPath(this.mPath, this.mCachedPaint);
      this.mCachedCanvas.restore();
      this.mPath.reset();
      this.mPendingMouseUp = false;
    }
    paramCanvas.drawBitmap(this.mCachedBitmap, f1, f3, this.mPaint);
    if (this.mPressed)
    {
      float f5 = this.mWeight;
      if ((f5 > 0.0F) && (this.mAlpha > 0))
      {
        this.mCachedPaint.setStrokeWidth(f5);
        this.mCachedPaint.setColor(this.mColor);
        Object localObject = this.mCachedPaint;
        ((Paint)localObject).setAlpha(Utils.mixAlpha(((Paint)localObject).getAlpha(), this.mAlpha));
        paramCanvas.save();
        paramCanvas.translate(-f2 + f1, -f4 + f3);
        localObject = this.mCachedPaint.getXfermode();
        this.mCachedPaint.setXfermode(this.mXfermode);
        paramCanvas.drawPath(this.mPath, this.mCachedPaint);
        this.mCachedPaint.setXfermode((Xfermode)localObject);
        paramCanvas.restore();
      }
    }
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    if (!isVisible()) {
      return;
    }
    Expression localExpression = this.mWeightExp;
    if (localExpression != null) {
      this.mWeight = scale(localExpression.evaluate());
    }
    this.mColor = this.mColorParser.getColor();
  }
  
  public void finish()
  {
    super.finish();
    this.mCachedBitmap.recycle();
    this.mCachedBitmap = null;
    this.mCachedCanvas = null;
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
    Bitmap localBitmap = Bitmap.createBitmap((int)Math.ceil(f2), (int)Math.ceil(f1), Bitmap.Config.ARGB_8888);
    this.mCachedBitmap = localBitmap;
    localBitmap.setDensity(this.mRoot.getTargetDensity());
    this.mCachedCanvas = new Canvas(this.mCachedBitmap);
  }
  
  protected void onActionCancel()
  {
    this.mPendingMouseUp = true;
  }
  
  protected void onActionDown(float paramFloat1, float paramFloat2)
  {
    super.onActionDown(paramFloat1, paramFloat2);
    this.mPath.reset();
    this.mPath.moveTo(paramFloat1, paramFloat2);
  }
  
  protected void onActionMove(float paramFloat1, float paramFloat2)
  {
    super.onActionMove(paramFloat1, paramFloat2);
    this.mPath.lineTo(paramFloat1, paramFloat2);
  }
  
  protected void onActionUp()
  {
    super.onActionUp();
    this.mPendingMouseUp = true;
  }
  
  public void reset(long paramLong)
  {
    super.reset(paramLong);
    this.mCachedCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
    this.mPressed = false;
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    super.setColorFilter(paramColorFilter);
    Paint localPaint = this.mPaint;
    if (localPaint != null) {
      localPaint.setColorFilter(paramColorFilter);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.PaintScreenElement
 * JD-Core Version:    0.7.0.1
 */