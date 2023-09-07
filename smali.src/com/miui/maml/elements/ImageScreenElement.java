package com.miui.maml.elements;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.Log;
import ca.a;
import com.miui.maml.ResourceManager;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.animation.BaseAnimation;
import com.miui.maml.animation.PositionAnimation;
import com.miui.maml.animation.SourcesAnimation;
import com.miui.maml.data.Expression;
import com.miui.maml.data.Expression.NumberExpression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import com.miui.maml.util.TextFormatter;
import com.miui.maml.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class ImageScreenElement
  extends AnimatedScreenElement
  implements BitmapProvider.IBitmapHolder
{
  private static final String LOG_TAG = "ImageScreenElement";
  public static final String MASK_TAG_NAME = "Mask";
  private static final double PI = 3.1415926535897D;
  public static final String TAG_NAME = "Image";
  private static final String VAR_BMP_HEIGHT = "bmp_height";
  private static final String VAR_BMP_WIDTH = "bmp_width";
  private static final String VAR_HAS_BITMAP = "has_bitmap";
  private boolean mAntiAlias;
  protected BitmapProvider.VersionedBitmap mBitmap = new BitmapProvider.VersionedBitmap(null);
  private BitmapProvider mBitmapProvider;
  private Bitmap mBlurBitmap;
  private int mBlurRadius;
  private IndexedVariable mBmpSizeHeightVar;
  private IndexedVariable mBmpSizeWidthVar;
  protected BitmapProvider.VersionedBitmap mCurrentBitmap = new BitmapProvider.VersionedBitmap(null);
  private Rect mDesRect = new Rect();
  private Expression mExpH;
  private Expression mExpSrcH;
  private Expression mExpSrcW;
  private Expression mExpSrcX;
  private Expression mExpSrcY;
  private Expression mExpW;
  private int mH = -1;
  private IndexedVariable mHasBitmapVar;
  private boolean mHasSrcRect;
  private boolean mHasWidthAndHeight;
  private boolean mIsLoadAsyncSet;
  private boolean mLoadAsync;
  private Paint mMaskPaint = new Paint();
  private ArrayList<Mask> mMasks;
  private int mMeshHeight;
  private float[] mMeshVerts;
  private int mMeshWidth;
  protected Paint mPaint = new Paint();
  private boolean mPendingBlur;
  private int mRawBlurRadius;
  private boolean mRetainWhenInvisible;
  private pair<Double, Double> mRotateXYpair;
  private SourcesAnimation mSources;
  private String mSrc;
  private TextFormatter mSrcFormatter;
  private int mSrcH;
  private Expression mSrcIdExpression;
  private Rect mSrcRect;
  private int mSrcW;
  private int mSrcX;
  private int mSrcY;
  private int mW = -1;
  private Expression mXfermodeNumExp;
  
  public ImageScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement);
  }
  
  private void load(Element paramElement)
  {
    if (paramElement == null) {
      return;
    }
    Variables localVariables = getVariables();
    this.mSrcFormatter = TextFormatter.fromElement(localVariables, paramElement, "src", "srcFormat", "srcParas", "srcExp", "srcFormatExp");
    this.mSrcIdExpression = Expression.build(localVariables, getAttr(paramElement, "srcid"));
    boolean bool = getAttr(paramElement, "antiAlias").equals("false") ^ true;
    this.mAntiAlias = bool;
    this.mPaint.setFilterBitmap(bool);
    this.mMaskPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    this.mMaskPaint.setFilterBitmap(this.mAntiAlias);
    this.mExpSrcX = Expression.build(localVariables, getAttr(paramElement, "srcX"));
    this.mExpSrcY = Expression.build(localVariables, getAttr(paramElement, "srcY"));
    this.mExpSrcW = Expression.build(localVariables, getAttr(paramElement, "srcW"));
    this.mExpSrcH = Expression.build(localVariables, getAttr(paramElement, "srcH"));
    this.mExpW = Expression.build(localVariables, getAttr(paramElement, "w"));
    this.mExpH = Expression.build(localVariables, getAttr(paramElement, "h"));
    if ((this.mExpSrcW != null) && (this.mExpSrcH != null))
    {
      this.mHasSrcRect = true;
      this.mSrcRect = new Rect();
    }
    if ((this.mExpH != null) && (this.mExpW != null)) {
      this.mHasWidthAndHeight = true;
    }
    this.mRawBlurRadius = getAttrAsInt(paramElement, "blur", 0);
    loadMesh(paramElement);
    Object localObject = Expression.build(localVariables, getAttr(paramElement, "xfermodeNum"));
    this.mXfermodeNumExp = ((Expression)localObject);
    if (localObject == null)
    {
      localObject = Utils.getPorterDuffMode(getAttr(paramElement, "xfermode"));
      this.mPaint.setXfermode(new PorterDuffXfermode((PorterDuff.Mode)localObject));
    }
    bool = Boolean.parseBoolean(getAttr(paramElement, "useVirtualScreen"));
    localObject = getAttr(paramElement, "srcType");
    if (bool) {
      localObject = "VirtualScreen";
    }
    setSrcType((String)localObject);
    localObject = getAttr(paramElement, "loadAsync");
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      this.mLoadAsync = Boolean.parseBoolean((String)localObject);
      this.mIsLoadAsyncSet = true;
    }
    this.mRetainWhenInvisible = Boolean.parseBoolean(getAttr(paramElement, "retainWhenInvisible"));
    if (this.mHasName)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.mName);
      ((StringBuilder)localObject).append(".");
      ((StringBuilder)localObject).append("bmp_width");
      this.mBmpSizeWidthVar = new IndexedVariable(((StringBuilder)localObject).toString(), localVariables, true);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.mName);
      ((StringBuilder)localObject).append(".");
      ((StringBuilder)localObject).append("bmp_height");
      this.mBmpSizeHeightVar = new IndexedVariable(((StringBuilder)localObject).toString(), localVariables, true);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.mName);
      ((StringBuilder)localObject).append(".");
      ((StringBuilder)localObject).append("has_bitmap");
      this.mHasBitmapVar = new IndexedVariable(((StringBuilder)localObject).toString(), localVariables, true);
    }
    loadMask(paramElement);
  }
  
  private void loadMask(Element paramElement)
  {
    if (this.mMasks == null) {
      this.mMasks = new ArrayList();
    }
    this.mMasks.clear();
    paramElement = paramElement.getElementsByTagName("Mask");
    for (int i = 0; i < paramElement.getLength(); i++) {
      this.mMasks.add(new Mask((Element)paramElement.item(i), this.mRoot));
    }
  }
  
  private void renderWithMask(Canvas paramCanvas, Mask paramMask, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap = getContext().mResourceManager.getBitmap(paramMask.getSrc());
    if (localBitmap == null) {
      return;
    }
    paramCanvas.save();
    double d1 = paramMask.getX();
    double d2 = paramMask.getY();
    float f1 = paramMask.getRotation();
    if (paramMask.isAlignAbsolute())
    {
      float f2 = getRotation();
      if (f2 == 0.0F)
      {
        d1 -= paramInt1;
        d2 -= paramInt2;
      }
      else
      {
        double d3 = f2 * 3.1415926535897D / 180.0D;
        float f3 = getPivotX();
        float f4 = getPivotY();
        if (this.mRotateXYpair == null) {
          this.mRotateXYpair = new pair(null);
        }
        rotateXY(f3, f4, d3, this.mRotateXYpair);
        double d4 = paramInt1;
        double d5 = ((Double)this.mRotateXYpair.p1).doubleValue();
        double d6 = paramInt2;
        double d7 = ((Double)this.mRotateXYpair.p2).doubleValue();
        rotateXY(descale(paramMask.getPivotX()), descale(paramMask.getPivotY()), paramMask.getRotation() * 3.1415926535897D / 180.0D, this.mRotateXYpair);
        double d8 = scale(((Double)this.mRotateXYpair.p1).doubleValue());
        double d9 = scale(((Double)this.mRotateXYpair.p2).doubleValue());
        d1 = d1 + d8 - (d4 + d5);
        d2 = d2 + d9 - (d6 + d7);
        d9 = Math.sqrt(d1 * d1 + d2 * d2);
        d1 = Math.asin(d1 / d9);
        if (d2 > 0.0D) {
          d2 = d3 + d1;
        } else {
          d2 = d3 + 3.1415926535897D - d1;
        }
        d1 = d9 * Math.sin(d2);
        d2 = d9 * Math.cos(d2);
        f1 -= f2;
      }
      d1 -= getX();
      d2 -= getY();
    }
    paramCanvas.rotate(f1, (float)(paramMask.getPivotX() + d1 + paramInt1), (float)(paramMask.getPivotY() + d2 + paramInt2));
    int i = (int)d1;
    int j = (int)d2;
    int k = Math.round(paramMask.getWidth());
    int m = k;
    if (k < 0) {
      m = localBitmap.getWidth();
    }
    int n = Math.round(paramMask.getHeight());
    k = n;
    if (n < 0) {
      k = localBitmap.getHeight();
    }
    Rect localRect = this.mDesRect;
    paramInt1 = i + paramInt1;
    paramInt2 = j + paramInt2;
    localRect.set(paramInt1, paramInt2, m + paramInt1, k + paramInt2);
    this.mMaskPaint.setAlpha(paramMask.getAlpha());
    paramCanvas.drawBitmap(localBitmap, null, this.mDesRect, this.mMaskPaint);
    paramCanvas.restore();
  }
  
  private void rotateXY(double paramDouble1, double paramDouble2, double paramDouble3, pair<Double, Double> parampair)
  {
    double d = Math.sqrt(paramDouble1 * paramDouble1 + paramDouble2 * paramDouble2);
    Double localDouble = Double.valueOf(0.0D);
    if (d > 0.0D)
    {
      paramDouble3 = 3.1415926535897D - Math.acos(paramDouble1 / d) - paramDouble3;
      parampair.p1 = Double.valueOf(paramDouble1 + Math.cos(paramDouble3) * d);
      parampair.p2 = Double.valueOf(paramDouble2 - d * Math.sin(paramDouble3));
    }
    else
    {
      parampair.p1 = localDouble;
      parampair.p2 = localDouble;
    }
  }
  
  private void updateBitmap(boolean paramBoolean)
  {
    updateBitmapImpl(paramBoolean);
    if ((!this.mIsLoadAsyncSet) && (!paramBoolean)) {
      this.mLoadAsync = true;
    }
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    Object localObject1 = this.mCurrentBitmap.getBitmap();
    if (localObject1 == null) {
      return;
    }
    if (this.mPendingBlur)
    {
      if ((this.mBlurBitmap == null) || (((Bitmap)localObject1).getWidth() != this.mBlurBitmap.getWidth()) || (((Bitmap)localObject1).getHeight() != this.mBlurBitmap.getHeight())) {
        this.mBlurBitmap = Bitmap.createBitmap(((Bitmap)localObject1).getWidth(), ((Bitmap)localObject1).getHeight(), Bitmap.Config.ARGB_8888);
      }
      this.mPendingBlur = false;
      this.mBlurBitmap = a.b(this.mRoot.getContext().mContext, (Bitmap)localObject1, this.mBlurBitmap, this.mBlurRadius);
    }
    Object localObject2 = this.mBlurBitmap;
    if ((localObject2 == null) || (this.mBlurRadius <= 0)) {
      localObject2 = localObject1;
    }
    int i = getAlpha();
    this.mPaint.setAlpha(i);
    int j = paramCanvas.getDensity();
    paramCanvas.setDensity(0);
    float f1 = getWidth();
    float f2 = getHeight();
    float f3 = super.getWidth();
    float f4 = super.getHeight();
    if ((f1 != 0.0F) && (f2 != 0.0F))
    {
      i = (int)getLeft(0.0F, f1);
      int k = (int)getTop(0.0F, f2);
      paramCanvas.save();
      int m;
      int n;
      if (this.mMasks.size() == 0)
      {
        if (((Bitmap)localObject2).getNinePatchChunk() != null)
        {
          localObject2 = getContext().mResourceManager.getNinePatch(getSrc());
          if (localObject2 != null)
          {
            this.mDesRect.set(i, k, (int)(i + f1), (int)(k + f2));
            ((NinePatch)localObject2).draw(paramCanvas, this.mDesRect, this.mPaint);
          }
          else
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("the image contains ninepatch chunk but couldn't get NinePatch object: ");
            ((StringBuilder)localObject2).append(getSrc());
            Log.e("ImageScreenElement", ((StringBuilder)localObject2).toString());
          }
        }
        else if ((f3 <= 0.0F) && (f4 <= 0.0F) && (this.mSrcRect == null))
        {
          m = this.mMeshWidth;
          if (m > 0)
          {
            n = this.mMeshHeight;
            if (n > 0)
            {
              paramCanvas.drawBitmapMesh((Bitmap)localObject2, m, n, this.mMeshVerts, 0, null, 0, this.mPaint);
              break label745;
            }
          }
          paramCanvas.drawBitmap((Bitmap)localObject2, i, k, this.mPaint);
        }
        else
        {
          this.mDesRect.set(i, k, (int)(i + f1), (int)(k + f2));
          localObject1 = this.mSrcRect;
          if (localObject1 != null)
          {
            k = this.mSrcX;
            i = this.mSrcY;
            ((Rect)localObject1).set(k, i, this.mSrcW + k, this.mSrcH + i);
          }
          paramCanvas.drawBitmap((Bitmap)localObject2, this.mSrcRect, this.mDesRect, this.mPaint);
        }
      }
      else
      {
        n = (int)Math.ceil(f1);
        m = (int)Math.ceil(f2);
        float f5 = i;
        float f6 = k;
        paramCanvas.saveLayer(f5, f6, n + i, m + k, this.mPaint, 31);
        if ((f3 <= 0.0F) && (f4 <= 0.0F) && (this.mSrcRect == null))
        {
          paramCanvas.drawBitmap((Bitmap)localObject2, f5, f6, this.mPaint);
        }
        else
        {
          localObject1 = this.mDesRect;
          int i1 = (int)f1;
          m = i;
          int i2 = (int)f2;
          n = k;
          ((Rect)localObject1).set(m, n, m + i1, n + i2);
          localObject1 = this.mSrcRect;
          if (localObject1 != null)
          {
            m = this.mSrcX;
            n = this.mSrcY;
            ((Rect)localObject1).set(m, n, this.mSrcW + m, this.mSrcH + n);
          }
          paramCanvas.drawBitmap((Bitmap)localObject2, this.mSrcRect, this.mDesRect, this.mPaint);
        }
        localObject2 = this.mMasks.iterator();
        while (((Iterator)localObject2).hasNext()) {
          renderWithMask(paramCanvas, (Mask)((Iterator)localObject2).next(), i, k);
        }
        paramCanvas.restore();
      }
      label745:
      paramCanvas.restore();
      paramCanvas.setDensity(j);
    }
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    if (!isVisible()) {
      return;
    }
    Object localObject = this.mSrcFormatter;
    if (localObject != null) {
      localObject = ((TextFormatter)localObject).getText();
    } else {
      localObject = null;
    }
    this.mSrc = ((String)localObject);
    localObject = this.mMasks;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Mask)((Iterator)localObject).next()).doTick(paramLong);
      }
    }
    localObject = this.mXfermodeNumExp;
    if (localObject != null)
    {
      localObject = Utils.getPorterDuffMode((int)((Expression)localObject).evaluate());
      this.mPaint.setXfermode(new PorterDuffXfermode((PorterDuff.Mode)localObject));
    }
    if (this.mHasSrcRect)
    {
      this.mSrcX = ((int)scale(evaluate(this.mExpSrcX)));
      this.mSrcY = ((int)scale(evaluate(this.mExpSrcY)));
      this.mSrcW = ((int)scale(evaluate(this.mExpSrcW)));
      this.mSrcH = ((int)scale(evaluate(this.mExpSrcH)));
    }
    if (this.mHasWidthAndHeight)
    {
      this.mW = ((int)scale(evaluate(this.mExpW)));
      this.mH = ((int)scale(evaluate(this.mExpH)));
    }
    if (this.mTintChanged) {
      this.mPaint.setColorFilter(this.mTintFilter);
    }
    updateBitmap(this.mLoadAsync);
  }
  
  public void finish()
  {
    super.finish();
    Object localObject = this.mBitmapProvider;
    if (localObject != null) {
      ((BitmapProvider)localObject).finish();
    }
    localObject = this.mMasks;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Mask)((Iterator)localObject).next()).finish();
      }
    }
    this.mBitmap.reset();
    this.mCurrentBitmap.reset();
    this.mBlurBitmap = null;
  }
  
  public BitmapProvider.VersionedBitmap getBitmap(String paramString)
  {
    return this.mCurrentBitmap;
  }
  
  protected BitmapProvider.VersionedBitmap getBitmap(boolean paramBoolean)
  {
    if (this.mBitmap.getBitmap() != null) {
      return this.mBitmap;
    }
    BitmapProvider localBitmapProvider = this.mBitmapProvider;
    if (localBitmapProvider != null) {
      return localBitmapProvider.getBitmap(getSrc(), paramBoolean ^ true, this.mW, this.mH);
    }
    return null;
  }
  
  protected int getBitmapHeight()
  {
    Bitmap localBitmap = this.mCurrentBitmap.getBitmap();
    int i;
    if (localBitmap != null) {
      i = localBitmap.getHeight();
    } else {
      i = 0;
    }
    return i;
  }
  
  protected int getBitmapWidth()
  {
    Bitmap localBitmap = this.mCurrentBitmap.getBitmap();
    int i;
    if (localBitmap != null) {
      i = localBitmap.getWidth();
    } else {
      i = 0;
    }
    return i;
  }
  
  public float getHeight()
  {
    float f = super.getHeight();
    if (f >= 0.0F) {
      return f;
    }
    if (this.mHasSrcRect) {}
    for (int i = this.mSrcH;; i = getBitmapHeight()) {
      return i;
    }
  }
  
  public final String getSrc()
  {
    Object localObject1 = this.mSources;
    if (localObject1 != null) {
      localObject1 = ((SourcesAnimation)localObject1).getSrc();
    } else {
      localObject1 = this.mSrc;
    }
    Object localObject2 = localObject1;
    if (localObject1 != null)
    {
      Expression localExpression = this.mSrcIdExpression;
      localObject2 = localObject1;
      if (localExpression != null) {
        localObject2 = Utils.addFileNameSuffix((String)localObject1, String.valueOf(localExpression.evaluate()));
      }
    }
    return localObject2;
  }
  
  public float getWidth()
  {
    float f = super.getWidth();
    if (f >= 0.0F) {
      return f;
    }
    if (this.mHasSrcRect) {}
    for (int i = this.mSrcW;; i = getBitmapWidth()) {
      return i;
    }
  }
  
  public float getX()
  {
    float f1 = super.getX();
    SourcesAnimation localSourcesAnimation = this.mSources;
    float f2 = f1;
    if (localSourcesAnimation != null) {
      f2 = f1 + scale(localSourcesAnimation.getX());
    }
    return f2;
  }
  
  public float getY()
  {
    float f1 = super.getY();
    SourcesAnimation localSourcesAnimation = this.mSources;
    float f2 = f1;
    if (localSourcesAnimation != null) {
      f2 = f1 + scale(localSourcesAnimation.getY());
    }
    return f2;
  }
  
  public void init()
  {
    super.init();
    Object localObject = this.mSrcFormatter;
    if (localObject != null) {
      localObject = ((TextFormatter)localObject).getText();
    } else {
      localObject = null;
    }
    this.mSrc = ((String)localObject);
    this.mBitmap.reset();
    localObject = this.mMasks;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Mask)((Iterator)localObject).next()).init();
      }
    }
    localObject = this.mBitmapProvider;
    if (localObject != null) {
      ((BitmapProvider)localObject).init(getSrc());
    }
    if (isVisible()) {
      updateBitmap(this.mLoadAsync);
    }
    int i = (int)scale(this.mRawBlurRadius);
    this.mBlurRadius = i;
    if (i > 0) {
      this.mPendingBlur = true;
    }
  }
  
  protected void loadMesh(Element paramElement)
  {
    Object localObject = getAttr(paramElement, "mesh");
    int i = ((String)localObject).indexOf(",");
    if (i != -1)
    {
      try
      {
        this.mMeshWidth = Integer.parseInt(((String)localObject).substring(0, i));
        this.mMeshHeight = Integer.parseInt(((String)localObject).substring(i + 1));
      }
      catch (NumberFormatException localNumberFormatException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Invalid mesh format:");
        localStringBuilder.append((String)localObject);
        Log.w("ImageScreenElement", localStringBuilder.toString());
      }
      if ((this.mMeshWidth != 0) && (this.mMeshHeight != 0))
      {
        paramElement = getAttr(paramElement, "meshVertsArr");
        localObject = getVariables().get(paramElement);
        if ((localObject != null) && ((localObject instanceof float[])))
        {
          this.mMeshVerts = ((float[])localObject);
        }
        else
        {
          this.mMeshHeight = 0;
          this.mMeshWidth = 0;
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Invalid meshVertsArr:");
          ((StringBuilder)localObject).append(paramElement);
          ((StringBuilder)localObject).append("  undifined or not float[] type");
          Log.w("ImageScreenElement", ((StringBuilder)localObject).toString());
        }
      }
    }
  }
  
  protected BaseAnimation onCreateAnimation(String paramString, Element paramElement)
  {
    if ("SourcesAnimation".equals(paramString))
    {
      paramString = new SourcesAnimation(paramElement, this);
      this.mSources = paramString;
      return paramString;
    }
    return super.onCreateAnimation(paramString, paramElement);
  }
  
  protected void onSetAnimBefore()
  {
    super.onSetAnimBefore();
    this.mSources = null;
  }
  
  protected void onSetAnimEnable(BaseAnimation paramBaseAnimation)
  {
    if ((paramBaseAnimation instanceof SourcesAnimation)) {
      this.mSources = ((SourcesAnimation)paramBaseAnimation);
    } else {
      super.onSetAnimEnable(paramBaseAnimation);
    }
  }
  
  protected void onVisibilityChange(boolean paramBoolean)
  {
    super.onVisibilityChange(paramBoolean);
    if (paramBoolean)
    {
      updateBitmap(this.mLoadAsync);
    }
    else if (!this.mRetainWhenInvisible)
    {
      BitmapProvider localBitmapProvider = this.mBitmapProvider;
      if (localBitmapProvider != null) {
        localBitmapProvider.finish();
      }
      this.mCurrentBitmap.reset();
    }
  }
  
  public void pause()
  {
    super.pause();
    Object localObject = this.mMasks;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Mask)((Iterator)localObject).next()).pause();
      }
    }
  }
  
  protected void pauseAnim(long paramLong)
  {
    super.pauseAnim(paramLong);
    Object localObject = this.mMasks;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Mask)((Iterator)localObject).next()).pauseAnim(paramLong);
      }
    }
  }
  
  protected void playAnim(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean1, boolean paramBoolean2)
  {
    super.playAnim(paramLong1, paramLong2, paramLong3, paramBoolean1, paramBoolean2);
    Object localObject = this.mMasks;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Mask)((Iterator)localObject).next()).playAnim(paramLong1, paramLong2, paramLong3, paramBoolean1, paramBoolean2);
      }
    }
    localObject = this.mBitmapProvider;
    if (localObject != null) {
      ((BitmapProvider)localObject).reset();
    }
  }
  
  public void reset(long paramLong)
  {
    super.reset(paramLong);
    Object localObject = this.mMasks;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Mask)((Iterator)localObject).next()).reset(paramLong);
      }
    }
    localObject = this.mBitmapProvider;
    if (localObject != null) {
      ((BitmapProvider)localObject).reset();
    }
    if (this.mBlurRadius > 0) {
      this.mPendingBlur = true;
    }
  }
  
  public void resume()
  {
    super.resume();
    Object localObject = this.mMasks;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Mask)((Iterator)localObject).next()).resume();
      }
    }
  }
  
  protected void resumeAnim(long paramLong)
  {
    super.resumeAnim(paramLong);
    Object localObject = this.mMasks;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Mask)((Iterator)localObject).next()).resumeAnim(paramLong);
      }
    }
  }
  
  public void setBitmap(Bitmap paramBitmap)
  {
    if (paramBitmap != this.mBitmap.getBitmap())
    {
      this.mBitmap.setBitmap(paramBitmap);
      updateBitmap(this.mLoadAsync);
      requestUpdate();
    }
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    super.setColorFilter(paramColorFilter);
    Paint localPaint = this.mPaint;
    if (localPaint != null) {
      localPaint.setColorFilter(paramColorFilter);
    }
  }
  
  public void setSrc(String paramString)
  {
    TextFormatter localTextFormatter = this.mSrcFormatter;
    if (localTextFormatter != null) {
      localTextFormatter.setText(paramString);
    }
  }
  
  public void setSrcId(double paramDouble)
  {
    Expression localExpression = this.mSrcIdExpression;
    if ((localExpression != null) && ((localExpression instanceof Expression.NumberExpression))) {
      ((Expression.NumberExpression)localExpression).setValue(paramDouble);
    } else {
      this.mSrcIdExpression = new Expression.NumberExpression(String.valueOf(paramDouble));
    }
  }
  
  public void setSrcType(String paramString)
  {
    this.mBitmapProvider = BitmapProvider.create(this.mRoot, paramString);
  }
  
  protected void updateBitmapImpl(boolean paramBoolean)
  {
    BitmapProvider.VersionedBitmap localVersionedBitmap = getBitmap(paramBoolean);
    if ((this.mBlurRadius > 0) && (!BitmapProvider.VersionedBitmap.equals(localVersionedBitmap, this.mCurrentBitmap))) {
      this.mPendingBlur = true;
    }
    this.mCurrentBitmap.set(localVersionedBitmap);
    updateBitmapVars();
  }
  
  protected void updateBitmapVars()
  {
    if (this.mHasName)
    {
      this.mBmpSizeWidthVar.set(descale(getBitmapWidth()));
      this.mBmpSizeHeightVar.set(descale(getBitmapHeight()));
      IndexedVariable localIndexedVariable = this.mHasBitmapVar;
      double d;
      if (this.mCurrentBitmap.getBitmap() != null) {
        d = 1.0D;
      } else {
        d = 0.0D;
      }
      localIndexedVariable.set(d);
    }
  }
  
  private class Mask
    extends ImageScreenElement
  {
    private boolean mAlignAbsolute;
    
    public Mask(Element paramElement, ScreenElementRoot paramScreenElementRoot)
    {
      super(paramScreenElementRoot);
      if (getAttr(paramElement, "align").equalsIgnoreCase("absolute")) {
        this.mAlignAbsolute = true;
      }
    }
    
    protected void doRender(Canvas paramCanvas) {}
    
    public final boolean isAlignAbsolute()
    {
      return this.mAlignAbsolute;
    }
  }
  
  private static class pair<T1, T2>
  {
    public T1 p1;
    public T2 p2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ImageScreenElement
 * JD-Core Version:    0.7.0.1
 */