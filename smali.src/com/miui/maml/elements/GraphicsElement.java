package com.miui.maml.elements;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.Xfermode;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ActionCommand;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.data.Variables;
import com.miui.maml.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class GraphicsElement
  extends AnimatedScreenElement
{
  public static final int LINEAR_GRADIENT = 1;
  public static final String LOG_TAG = "MAML_Graphics";
  public static final int RADIAL_GRADIENT = 2;
  public static final String TAG_NAME = "Graphics";
  private boolean mAutoScale = true;
  private Callbacks mCallbacks;
  private Canvas mCanvas;
  private Rect mCanvasBounds = new Rect();
  private float mCurrentX;
  private float mCurrentY;
  protected Paint mFillPaint = new Paint();
  private float mInitRawHeight;
  private float mInitRawWidth;
  private int mLastAlpha;
  private PorterDuff.Mode mMode = PorterDuff.Mode.SRC_OVER;
  private Path mPath = new Path();
  private FunctionElement mRenderListener;
  protected Paint mStrokePaint = new Paint();
  private PorterDuffXfermode mXferMode;
  private Expression mXfermodeNumExp;
  
  public GraphicsElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramScreenElementRoot = Utils.getChild(paramElement, "OnDraw");
    if (paramScreenElementRoot != null) {
      this.mCallbacks = new Callbacks(paramScreenElementRoot, this);
    }
    this.mXfermodeNumExp = Expression.build(getVariables(), getAttr(paramElement, "xfermodeNum"));
    paramScreenElementRoot = getAttr(paramElement, "xfermode");
    if ((this.mXfermodeNumExp == null) && (!TextUtils.isEmpty(paramScreenElementRoot)))
    {
      this.mMode = Utils.getPorterDuffMode(paramScreenElementRoot);
      paramScreenElementRoot = new PorterDuffXfermode(this.mMode);
      this.mXferMode = paramScreenElementRoot;
      this.mFillPaint.setXfermode(paramScreenElementRoot);
      this.mStrokePaint.setXfermode(this.mXferMode);
    }
    paramElement = getAttr(paramElement, "autoScale");
    if (!TextUtils.isEmpty(paramElement)) {
      this.mAutoScale = Boolean.parseBoolean(paramElement);
    }
  }
  
  private GraphicsShader getGraphicsShader(int paramInt1, int[] paramArrayOfInt, float[] paramArrayOfFloat, String paramString1, String paramString2, int paramInt2)
  {
    Object localObject1 = Shader.TileMode.CLAMP;
    Object localObject2 = localObject1;
    if (paramInt2 >= 0)
    {
      localObject2 = localObject1;
      if (paramInt2 < Shader.TileMode.values().length) {
        localObject2 = Shader.TileMode.values()[paramInt2];
      }
    }
    localObject1 = getVariables().get(paramString2);
    boolean bool1;
    if (localObject1 == null)
    {
      localObject1 = new GraphicsShader(null);
      bool1 = true;
      getVariables().put(paramString2, localObject1);
      paramString2 = (String)localObject1;
    }
    else
    {
      bool1 = false;
      paramString2 = (String)localObject1;
    }
    if ((paramString2 instanceof GraphicsShader))
    {
      paramString2 = (GraphicsShader)paramString2;
      boolean bool2 = bool1;
      if (!bool1) {
        bool2 = isShaderParmsChanged(paramString2, paramInt1, paramArrayOfInt, paramArrayOfFloat, paramString1, (Shader.TileMode)localObject2);
      }
      if ((bool2) && (!resetShader(paramString2, paramInt1, paramArrayOfInt, paramArrayOfFloat, paramString1, (Shader.TileMode)localObject2))) {
        return null;
      }
      resetMatrixIfNecessary(bool2, paramString2, paramInt1, paramString1);
      return paramString2;
    }
    return null;
  }
  
  private boolean isShaderParmsChanged(GraphicsShader paramGraphicsShader, int paramInt, int[] paramArrayOfInt, float[] paramArrayOfFloat, String paramString, Shader.TileMode paramTileMode)
  {
    if ((paramGraphicsShader.mShader != null) && (paramInt == paramGraphicsShader.mShaderType) && (paramArrayOfInt.length == paramGraphicsShader.mColors.length) && (((paramArrayOfFloat != null) && (paramGraphicsShader.mStops != null)) || ((paramArrayOfFloat == null) && (paramGraphicsShader.mStops == null) && (paramTileMode == paramGraphicsShader.mTileMode) && (paramString.equals(paramGraphicsShader.mMatrixName)))))
    {
      for (paramInt = 0; paramInt < paramArrayOfInt.length; paramInt++)
      {
        if (paramGraphicsShader.mColors[paramInt] != paramArrayOfInt[paramInt]) {
          return true;
        }
        if ((paramArrayOfFloat != null) && (paramGraphicsShader.mStops[paramInt] != paramArrayOfFloat[paramInt])) {
          return true;
        }
      }
      return false;
    }
    return true;
  }
  
  private boolean isValid()
  {
    if ((Looper.getMainLooper() == Looper.myLooper()) && (this.mCanvas != null)) {
      return true;
    }
    Log.e("MAML_Graphics", "Call maml graphics api not in onDraw callback");
    return false;
  }
  
  private void resetMatrixIfNecessary(boolean paramBoolean, GraphicsShader paramGraphicsShader, int paramInt, String paramString)
  {
    paramString = getVariables().get(paramString);
    if ((paramString != null) && ((paramString instanceof GraphicsMatrix)) && (paramGraphicsShader.mShader != null))
    {
      paramString = (GraphicsMatrix)paramString;
      if ((paramBoolean) || (paramString.mChanged))
      {
        paramString.reset();
        float[] arrayOfFloat;
        if (paramInt == 1)
        {
          arrayOfFloat = paramString.mParm;
          paramString.setPolyToPoly(new float[] { 0.0F, 0.0F, 1.0F, 1.0F }, 0, arrayOfFloat, 0, 2);
        }
        else if (paramInt == 2)
        {
          arrayOfFloat = paramString.mParm;
          paramString.preTranslate(-arrayOfFloat[0], -arrayOfFloat[1]);
          arrayOfFloat = paramString.mParm;
          paramString.setScale(arrayOfFloat[2], -arrayOfFloat[3]);
          arrayOfFloat = paramString.mParm;
          paramString.postTranslate(arrayOfFloat[0], arrayOfFloat[1]);
        }
        paramString.mChanged = false;
        paramGraphicsShader.mShader.setLocalMatrix(paramString);
      }
    }
  }
  
  private boolean resetShader(GraphicsShader paramGraphicsShader, int paramInt, int[] paramArrayOfInt, float[] paramArrayOfFloat, String paramString, Shader.TileMode paramTileMode)
  {
    if (paramInt == 1)
    {
      paramGraphicsShader.mShader = new LinearGradient(0.0F, 0.0F, 1.0F, 1.0F, paramArrayOfInt, paramArrayOfFloat, paramTileMode);
    }
    else
    {
      if (paramInt != 2) {
        break label110;
      }
      paramGraphicsShader.mShader = new RadialGradient(0.0F, 0.0F, 1.0F, paramArrayOfInt, paramArrayOfFloat, paramTileMode);
    }
    paramGraphicsShader.mColors = ((int[])paramArrayOfInt.clone());
    if (paramArrayOfFloat != null) {
      paramGraphicsShader.mStops = ((float[])paramArrayOfFloat.clone());
    } else {
      paramGraphicsShader.mStops = null;
    }
    GraphicsShader.access$002(paramGraphicsShader, paramString);
    GraphicsShader.access$102(paramGraphicsShader, paramInt);
    GraphicsShader.access$202(paramGraphicsShader, paramTileMode);
    return true;
    label110:
    paramGraphicsShader = new StringBuilder();
    paramGraphicsShader.append("wrong shader type ");
    paramGraphicsShader.append(paramInt);
    Log.e("MAML_Graphics", paramGraphicsShader.toString());
    return false;
  }
  
  private void setColorFilterInternal(ColorFilter paramColorFilter)
  {
    this.mFillPaint.setColorFilter(paramColorFilter);
    this.mStrokePaint.setColorFilter(paramColorFilter);
  }
  
  public void beginFill(int paramInt)
  {
    this.mFillPaint.setShader(null);
    this.mFillPaint.setColor(paramInt);
  }
  
  public void beginGradientFill(int paramInt1, int[] paramArrayOfInt, float[] paramArrayOfFloat, String paramString1, String paramString2, int paramInt2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)))
    {
      paramArrayOfInt = getGraphicsShader(paramInt1, paramArrayOfInt, paramArrayOfFloat, paramString1, paramString2, paramInt2);
      if (paramArrayOfInt != null) {
        this.mFillPaint.setShader(paramArrayOfInt.mShader);
      }
    }
  }
  
  public void createOrUpdateGradientBox(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      Object localObject1 = getVariables().get(paramString);
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = new GraphicsMatrix(null);
        getVariables().put(paramString, localObject2);
      }
      if ((localObject2 instanceof GraphicsMatrix))
      {
        localObject2 = (GraphicsMatrix)localObject2;
        paramString = ((GraphicsMatrix)localObject2).mParm;
        if ((paramString[0] != paramFloat1) || (paramString[1] != paramFloat2) || (paramString[2] != paramFloat3) || (paramString[3] != paramFloat4))
        {
          paramString[0] = paramFloat1;
          paramString[1] = paramFloat2;
          paramString[2] = paramFloat3;
          paramString[3] = paramFloat4;
          ((GraphicsMatrix)localObject2).mChanged = true;
        }
      }
    }
  }
  
  public void cubicCurveTo(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    if (isValid())
    {
      this.mPath.rewind();
      this.mPath.moveTo(this.mCurrentX, this.mCurrentY);
      this.mPath.cubicTo(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6);
      this.mCanvas.drawPath(this.mPath, this.mStrokePaint);
      this.mCurrentX = paramFloat5;
      this.mCurrentY = paramFloat6;
    }
  }
  
  public void curveTo(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (isValid())
    {
      this.mPath.rewind();
      this.mPath.moveTo(this.mCurrentX, this.mCurrentY);
      this.mPath.quadTo(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
      this.mCanvas.drawPath(this.mPath, this.mStrokePaint);
      this.mCurrentX = paramFloat3;
      this.mCurrentY = paramFloat4;
    }
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    int i = (int)getWidth();
    int j = (int)getHeight();
    paramCanvas.getClipBounds(this.mCanvasBounds);
    ??? = this.mCanvasBounds;
    int k = ((Rect)???).right;
    int m = ((Rect)???).left;
    int n = k - m;
    k = ((Rect)???).bottom;
    int i1 = ((Rect)???).top;
    int i2 = k - i1;
    k = i;
    if (n > 0)
    {
      k = i;
      if (n < i) {
        k = n;
      }
    }
    i = j;
    if (i2 > 0)
    {
      i = j;
      if (i2 < j) {
        i = i2;
      }
    }
    paramCanvas.clipRect(m, i1, k, i);
    synchronized (getRoot().getRenderMutex())
    {
      this.mCurrentX = 0.0F;
      this.mCurrentY = 0.0F;
      this.mCanvas = paramCanvas;
      paramCanvas = this.mCallbacks;
      if (paramCanvas != null) {
        paramCanvas.perform();
      }
      paramCanvas = this.mRenderListener;
      if (paramCanvas != null) {
        paramCanvas.perform();
      }
      this.mCanvas = null;
      return;
    }
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    if (!isVisible()) {
      return;
    }
    Object localObject = this.mXfermodeNumExp;
    if (localObject != null)
    {
      localObject = Utils.getPorterDuffMode((int)((Expression)localObject).evaluate());
      if (localObject != this.mMode)
      {
        this.mMode = ((PorterDuff.Mode)localObject);
        localObject = new PorterDuffXfermode(this.mMode);
        this.mXferMode = ((PorterDuffXfermode)localObject);
        this.mFillPaint.setXfermode((Xfermode)localObject);
        this.mStrokePaint.setXfermode(this.mXferMode);
      }
    }
    int i = this.mLastAlpha;
    int j = this.mAlpha;
    if (i != j)
    {
      this.mFillPaint.setAlpha(j);
      this.mStrokePaint.setAlpha(this.mAlpha);
      this.mLastAlpha = this.mAlpha;
    }
    if (this.mTintChanged) {
      setColorFilterInternal(this.mTintFilter);
    }
  }
  
  public void drawCircle(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (isValid())
    {
      this.mCanvas.drawCircle(paramFloat1, paramFloat2, paramFloat3, this.mFillPaint);
      if (this.mStrokePaint.getStrokeWidth() > 0.0F) {
        this.mCanvas.drawCircle(paramFloat1, paramFloat2, paramFloat3 + this.mStrokePaint.getStrokeWidth() / 2.0F, this.mStrokePaint);
      }
    }
  }
  
  public void drawEllipse(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if ((isValid()) && (paramFloat3 >= 0.0F) && (paramFloat4 >= 0.0F))
    {
      float f = paramFloat4 / 2.0F;
      paramFloat4 = paramFloat2 - f;
      paramFloat2 += f;
      f = paramFloat3 / 2.0F;
      paramFloat3 = paramFloat1 - f;
      paramFloat1 += f;
      this.mCanvas.drawOval(paramFloat3, paramFloat4, paramFloat1, paramFloat2, this.mFillPaint);
      f = this.mStrokePaint.getStrokeWidth();
      if (f > 0.0F)
      {
        Canvas localCanvas = this.mCanvas;
        f /= 2.0F;
        localCanvas.drawOval(paramFloat3 - f, paramFloat4 - f, paramFloat1 + f, paramFloat2 + f, this.mStrokePaint);
      }
    }
  }
  
  public void drawRect(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    drawRoundRect(paramFloat1, paramFloat2, paramFloat3, paramFloat4, 0.0F, 0.0F);
  }
  
  public void drawRoundRect(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    if ((isValid()) && (paramFloat3 >= 0.0F) && (paramFloat4 >= 0.0F))
    {
      paramFloat4 = paramFloat2 + paramFloat4;
      paramFloat3 = paramFloat1 + paramFloat3;
      this.mCanvas.drawRoundRect(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, this.mFillPaint);
      float f = this.mStrokePaint.getStrokeWidth();
      if (f > 0.0F)
      {
        Canvas localCanvas = this.mCanvas;
        f /= 2.0F;
        localCanvas.drawRoundRect(paramFloat1 - f, paramFloat2 - f, paramFloat3 + f, paramFloat4 + f, paramFloat5, paramFloat6, this.mStrokePaint);
      }
    }
  }
  
  public void finish()
  {
    super.finish();
    Callbacks localCallbacks = this.mCallbacks;
    if (localCallbacks != null) {
      localCallbacks.finish();
    }
  }
  
  public float getScaleX()
  {
    float f1 = getWidthRaw();
    if (this.mAutoScale)
    {
      float f2 = this.mInitRawWidth;
      if ((f2 > 0.0F) && (f1 > 0.0F)) {
        return f1 / f2 * super.getScaleX();
      }
    }
    return super.getScaleX();
  }
  
  public float getScaleY()
  {
    float f1 = getHeightRaw();
    if (this.mAutoScale)
    {
      float f2 = this.mInitRawHeight;
      if ((f2 > 0.0F) && (f1 > 0.0F)) {
        return f1 / f2 * super.getScaleY();
      }
    }
    return super.getScaleY();
  }
  
  public void init()
  {
    super.init();
    this.mInitRawWidth = getWidthRaw();
    this.mInitRawHeight = getHeightRaw();
    this.mFillPaint.setStyle(Paint.Style.FILL);
    this.mStrokePaint.setStyle(Paint.Style.STROKE);
    this.mFillPaint.setAntiAlias(true);
    this.mStrokePaint.setAntiAlias(true);
    Callbacks localCallbacks = this.mCallbacks;
    if (localCallbacks != null) {
      localCallbacks.init();
    }
    this.mLastAlpha = evaluateAlpha();
  }
  
  public void lineGradientStyle(int paramInt1, int[] paramArrayOfInt, float[] paramArrayOfFloat, String paramString1, String paramString2, int paramInt2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)))
    {
      paramArrayOfInt = getGraphicsShader(paramInt1, paramArrayOfInt, paramArrayOfFloat, paramString1, paramString2, paramInt2);
      if (paramArrayOfInt != null) {
        this.mStrokePaint.setShader(paramArrayOfInt.mShader);
      }
    }
  }
  
  public void lineStyle(float paramFloat1, int paramInt1, int paramInt2, int paramInt3, float paramFloat2)
  {
    Object localObject1 = Paint.Cap.ROUND;
    Object localObject2 = localObject1;
    if (paramInt2 >= 0)
    {
      localObject2 = localObject1;
      if (paramInt2 < Paint.Cap.values().length) {
        localObject2 = Paint.Cap.values()[paramInt2];
      }
    }
    Paint.Join localJoin = Paint.Join.ROUND;
    localObject1 = localJoin;
    if (paramInt3 >= 0)
    {
      localObject1 = localJoin;
      if (paramInt3 < Paint.Join.values().length) {
        localObject1 = Paint.Join.values()[paramInt2];
      }
    }
    this.mStrokePaint.setShader(null);
    if (paramFloat1 >= 0.0F) {
      this.mStrokePaint.setStrokeWidth(paramFloat1);
    }
    this.mStrokePaint.setColor(paramInt1);
    this.mStrokePaint.setStrokeCap((Paint.Cap)localObject2);
    this.mStrokePaint.setStrokeJoin((Paint.Join)localObject1);
    if (paramFloat2 > 0.0F) {
      this.mStrokePaint.setStrokeMiter(paramFloat2);
    }
  }
  
  public void lineTo(float paramFloat1, float paramFloat2)
  {
    if (isValid())
    {
      this.mCanvas.drawLine(this.mCurrentX, this.mCurrentY, paramFloat1, paramFloat2, this.mStrokePaint);
      this.mCurrentX = paramFloat1;
      this.mCurrentY = paramFloat2;
    }
  }
  
  public void moveTo(float paramFloat1, float paramFloat2)
  {
    if (isValid())
    {
      this.mCurrentX = paramFloat1;
      this.mCurrentY = paramFloat2;
    }
  }
  
  public void pause()
  {
    super.pause();
    Callbacks localCallbacks = this.mCallbacks;
    if (localCallbacks != null) {
      localCallbacks.pause();
    }
  }
  
  public void resume()
  {
    super.resume();
    Callbacks localCallbacks = this.mCallbacks;
    if (localCallbacks != null) {
      localCallbacks.resume();
    }
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    super.setColorFilter(paramColorFilter);
    setColorFilterInternal(paramColorFilter);
  }
  
  public void setRenderListener(FunctionElement paramFunctionElement)
  {
    this.mRenderListener = paramFunctionElement;
  }
  
  private static class Callbacks
  {
    public static final String TAG_NAME = "OnDraw";
    private ArrayList<ActionCommand> mCommands = new ArrayList();
    
    public Callbacks(Element paramElement, ScreenElement paramScreenElement)
    {
      NodeList localNodeList = paramElement.getChildNodes();
      for (int i = 0; i < localNodeList.getLength(); i++) {
        if (localNodeList.item(i).getNodeType() == 1)
        {
          paramElement = ActionCommand.create((Element)localNodeList.item(i), paramScreenElement);
          if (paramElement != null) {
            this.mCommands.add(paramElement);
          }
        }
      }
    }
    
    public void finish()
    {
      Iterator localIterator = this.mCommands.iterator();
      while (localIterator.hasNext()) {
        ((ActionCommand)localIterator.next()).finish();
      }
    }
    
    public void init()
    {
      Iterator localIterator = this.mCommands.iterator();
      while (localIterator.hasNext()) {
        ((ActionCommand)localIterator.next()).init();
      }
    }
    
    public void pause()
    {
      Iterator localIterator = this.mCommands.iterator();
      while (localIterator.hasNext()) {
        ((ActionCommand)localIterator.next()).pause();
      }
    }
    
    public void perform()
    {
      Iterator localIterator = this.mCommands.iterator();
      while (localIterator.hasNext()) {
        ((ActionCommand)localIterator.next()).perform();
      }
    }
    
    public void resume()
    {
      Iterator localIterator = this.mCommands.iterator();
      while (localIterator.hasNext()) {
        ((ActionCommand)localIterator.next()).resume();
      }
    }
  }
  
  private static class GraphicsMatrix
    extends Matrix
  {
    public boolean mChanged;
    public float[] mParm = new float[4];
  }
  
  private static class GraphicsShader
  {
    public int[] mColors = new int[0];
    private String mMatrixName;
    public Shader mShader;
    private int mShaderType = -1;
    public float[] mStops = new float[0];
    private Shader.TileMode mTileMode;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.GraphicsElement
 * JD-Core Version:    0.7.0.1
 */