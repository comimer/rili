package com.miui.maml.elements;

import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.animation.AlphaAnimation;
import com.miui.maml.animation.BaseAnimation;
import com.miui.maml.animation.PositionAnimation;
import com.miui.maml.animation.RotationAnimation;
import com.miui.maml.animation.ScaleAnimation;
import com.miui.maml.animation.SizeAnimation;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import com.miui.maml.folme.AnimatedProperty;
import com.miui.maml.folme.AnimatedTarget;
import com.miui.maml.folme.MamlTransitionListener;
import com.miui.maml.folme.PropertyWrapper;
import com.miui.maml.folme.TransitionListenerWrapper;
import com.miui.maml.util.ColorParser;
import com.miui.maml.util.MamlAccessHelper;
import com.miui.maml.util.Utils;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import miuix.animation.c;
import miuix.animation.d;
import miuix.animation.f;
import org.w3c.dom.Element;

public abstract class AnimatedScreenElement
  extends ScreenElement
{
  public static final String LOG_TAG = "AnimatedScreenElement";
  private static final int S_PAINT_COLOR = -4982518;
  private IndexedVariable mActualXVar;
  private IndexedVariable mActualYVar;
  protected int mAlpha;
  public PropertyWrapper mAlphaProperty;
  private AlphaAnimation mAlphas;
  private AnimatedTarget mAnimTarget;
  private Camera mCamera;
  protected String mContentDescription;
  protected Expression mContentDescriptionExp;
  private boolean mFolmeMode;
  protected boolean mHasContentDescription;
  public PropertyWrapper mHeightProperty;
  protected boolean mInterceptTouch;
  private boolean mIsHaptic;
  private MamlTransitionListener mListener = new MamlTransitionListener(this);
  private TransitionListenerWrapper mListenerWrapper;
  private float mMarginBottom;
  private float mMarginLeft;
  private float mMarginRight;
  private float mMarginTop;
  private Matrix mMatrix = new Matrix();
  private Paint mPaint = new Paint();
  public PropertyWrapper mPivotXProperty;
  public PropertyWrapper mPivotYProperty;
  public PropertyWrapper mPivotZProperty;
  private PositionAnimation mPositions;
  protected boolean mPressed;
  public PropertyWrapper mRotationProperty;
  public PropertyWrapper mRotationXProperty;
  public PropertyWrapper mRotationYProperty;
  public PropertyWrapper mRotationZProperty;
  private RotationAnimation mRotations;
  private Expression mScaleExpression;
  public PropertyWrapper mScaleXProperty;
  public PropertyWrapper mScaleYProperty;
  private ScaleAnimation mScales;
  private SizeAnimation mSizes;
  protected FunctionElement mTickListener;
  protected boolean mTintChanged = true;
  protected int mTintColor;
  protected ColorParser mTintColorParser;
  public PropertyWrapper mTintColorProperty;
  protected PorterDuffColorFilter mTintFilter;
  protected PorterDuff.Mode mTintMode = PorterDuff.Mode.SRC_IN;
  protected Expression mTintModeExp;
  public CopyOnWriteArraySet<miuix.animation.property.b> mToProperties = new CopyOnWriteArraySet();
  protected boolean mTouchable;
  private int mVirtualViewId = -2147483648;
  public PropertyWrapper mWidthProperty;
  public PropertyWrapper mXProperty;
  public PropertyWrapper mYProperty;
  
  public AnimatedScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement);
    if (this.mHasContentDescription) {
      this.mRoot.addAccessibleElements(this);
    }
    this.mPaint.setStyle(Paint.Style.STROKE);
    this.mPaint.setStrokeWidth(1.0F);
    this.mPaint.setColor(-4982518);
    this.mListenerWrapper = new TransitionListenerWrapper(this.mListener);
  }
  
  private Expression createExp(Variables paramVariables, Element paramElement, String paramString1, String paramString2)
  {
    Expression localExpression = Expression.build(paramVariables, getAttr(paramElement, paramString1));
    paramString1 = localExpression;
    if (localExpression == null)
    {
      paramString1 = localExpression;
      if (!TextUtils.isEmpty(paramString2)) {
        paramString1 = Expression.build(paramVariables, getAttr(paramElement, paramString2));
      }
    }
    return paramString1;
  }
  
  private void folmeFromToImpl(final e9.a parama1, final e9.a parama2, final d9.a parama)
  {
    getContext().getHandler().post(new Runnable()
    {
      public void run()
      {
        try
        {
          miuix.animation.a.x(AnimatedScreenElement.this.getAnimTarget()).a().x(parama1, parama2, new d9.a[] { parama });
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    });
  }
  
  private void folmeSetToImpl(final e9.a parama)
  {
    getContext().getHandler().post(new Runnable()
    {
      public void run()
      {
        try
        {
          miuix.animation.a.x(AnimatedScreenElement.this.getAnimTarget()).a().u(parama);
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    });
  }
  
  private void folmeToImpl(final e9.a parama, final d9.a parama1)
  {
    getContext().getHandler().post(new Runnable()
    {
      public void run()
      {
        try
        {
          miuix.animation.a.x(AnimatedScreenElement.this.getAnimTarget()).a().J(parama, new d9.a[] { parama1 });
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    });
  }
  
  private void handleCancel()
  {
    if (!this.mTouchable) {
      return;
    }
    if (this.mPressed)
    {
      this.mPressed = false;
      performAction("cancel");
      onActionCancel();
    }
  }
  
  private boolean isInMainThread()
  {
    return Looper.getMainLooper() == Looper.myLooper();
  }
  
  private void load(Element paramElement)
  {
    Variables localVariables = getVariables();
    Expression localExpression;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    Object localObject5;
    Object localObject6;
    Object localObject7;
    Object localObject8;
    Object localObject9;
    Object localObject10;
    Object localObject11;
    Object localObject12;
    Object localObject13;
    if (paramElement != null)
    {
      this.mScaleExpression = createExp(localVariables, paramElement, "scale", null);
      localExpression = createExp(localVariables, paramElement, "x", "left");
      localObject1 = createExp(localVariables, paramElement, "y", "top");
      localObject2 = createExp(localVariables, paramElement, "w", "width");
      localObject3 = createExp(localVariables, paramElement, "h", "height");
      localObject4 = createExp(localVariables, paramElement, "angle", "rotation");
      localObject5 = createExp(localVariables, paramElement, "centerX", "pivotX");
      localObject6 = createExp(localVariables, paramElement, "centerY", "pivotY");
      localObject7 = createExp(localVariables, paramElement, "alpha", null);
      localObject8 = createExp(localVariables, paramElement, "scaleX", null);
      localObject9 = createExp(localVariables, paramElement, "scaleY", null);
      localObject10 = createExp(localVariables, paramElement, "angleX", "rotationX");
      localObject11 = createExp(localVariables, paramElement, "angleY", "rotationY");
      localObject12 = createExp(localVariables, paramElement, "angleZ", "rotationZ");
      localObject13 = createExp(localVariables, paramElement, "centerZ", "pivotZ");
      if (this.mHasName)
      {
        localObject14 = new StringBuilder();
        ((StringBuilder)localObject14).append(this.mName);
        ((StringBuilder)localObject14).append(".");
        ((StringBuilder)localObject14).append("actual_x");
        this.mActualXVar = new IndexedVariable(((StringBuilder)localObject14).toString(), localVariables, true);
        localObject14 = new StringBuilder();
        ((StringBuilder)localObject14).append(this.mName);
        ((StringBuilder)localObject14).append(".");
        ((StringBuilder)localObject14).append("actual_y");
        this.mActualYVar = new IndexedVariable(((StringBuilder)localObject14).toString(), localVariables, true);
      }
      this.mTouchable = Boolean.parseBoolean(getAttr(paramElement, "touchable"));
      this.mInterceptTouch = Boolean.parseBoolean(getAttr(paramElement, "interceptTouch"));
      this.mIsHaptic = Boolean.parseBoolean(getAttr(paramElement, "haptic"));
      this.mContentDescription = getAttr(paramElement, "contentDescription");
      this.mContentDescriptionExp = Expression.build(localVariables, getAttr(paramElement, "contentDescriptionExp"));
      boolean bool = TextUtils.isEmpty(this.mContentDescription);
      int i = 0;
      if ((bool) && (this.mContentDescriptionExp == null)) {
        bool = false;
      } else {
        bool = true;
      }
      this.mHasContentDescription = bool;
      this.mMarginLeft = Utils.getAttrAsFloat(paramElement, "marginLeft", 0.0F);
      this.mMarginRight = Utils.getAttrAsFloat(paramElement, "marginRight", 0.0F);
      this.mMarginTop = Utils.getAttrAsFloat(paramElement, "marginTop", 0.0F);
      this.mMarginBottom = Utils.getAttrAsFloat(paramElement, "marginBottom", 0.0F);
      Object localObject14 = getAttr(paramElement, "tint");
      if (!TextUtils.isEmpty((CharSequence)localObject14)) {
        this.mTintColorParser = new ColorParser(localVariables, (String)localObject14);
      }
      this.mTintModeExp = Expression.build(localVariables, getAttr(paramElement, "tintmode"));
      localObject14 = this.mTintColorParser;
      if (localObject14 != null) {
        i = ((ColorParser)localObject14).getColor();
      }
      this.mTintColor = i;
      this.mFolmeMode = Boolean.parseBoolean(getAttr(paramElement, "folmeMode"));
      paramElement = (Element)localObject2;
      localObject2 = localObject1;
    }
    else
    {
      localExpression = null;
      paramElement = localExpression;
      localObject1 = paramElement;
      localObject4 = localObject1;
      localObject7 = localObject4;
      localObject10 = localObject7;
      localObject11 = localObject10;
      localObject8 = localObject11;
      localObject9 = localObject8;
      localObject12 = localObject9;
      localObject5 = localObject12;
      localObject6 = localObject5;
      localObject13 = localObject6;
      localObject2 = localObject13;
      localObject3 = localObject1;
    }
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(this.mName);
    ((StringBuilder)localObject1).append(".x");
    this.mXProperty = new PropertyWrapper(((StringBuilder)localObject1).toString(), localVariables, localExpression, isInFolmeMode(), 0.0D);
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(this.mName);
    ((StringBuilder)localObject1).append(".y");
    this.mYProperty = new PropertyWrapper(((StringBuilder)localObject1).toString(), localVariables, (Expression)localObject2, isInFolmeMode(), 0.0D);
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(this.mName);
    ((StringBuilder)localObject1).append(".w");
    this.mWidthProperty = new PropertyWrapper(((StringBuilder)localObject1).toString(), localVariables, paramElement, isInFolmeMode(), -1.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".h");
    this.mHeightProperty = new PropertyWrapper(paramElement.toString(), localVariables, (Expression)localObject3, isInFolmeMode(), -1.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".rotation");
    this.mRotationProperty = new PropertyWrapper(paramElement.toString(), localVariables, (Expression)localObject4, isInFolmeMode(), 0.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".alpha");
    this.mAlphaProperty = new PropertyWrapper(paramElement.toString(), localVariables, (Expression)localObject7, isInFolmeMode(), 255.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".rotationX");
    this.mRotationXProperty = new PropertyWrapper(paramElement.toString(), localVariables, (Expression)localObject10, isInFolmeMode(), 0.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".rotationY");
    this.mRotationYProperty = new PropertyWrapper(paramElement.toString(), localVariables, (Expression)localObject11, isInFolmeMode(), 0.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".rotationZ");
    this.mRotationZProperty = new PropertyWrapper(paramElement.toString(), localVariables, (Expression)localObject12, isInFolmeMode(), 0.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".scaleX");
    this.mScaleXProperty = new PropertyWrapper(paramElement.toString(), localVariables, (Expression)localObject8, isInFolmeMode(), 1.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".scaleY");
    this.mScaleYProperty = new PropertyWrapper(paramElement.toString(), localVariables, (Expression)localObject9, isInFolmeMode(), 1.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".tintColor");
    this.mTintColorProperty = new PropertyWrapper(paramElement.toString(), localVariables, null, isInFolmeMode(), this.mTintColor);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".pivotX");
    this.mPivotXProperty = new PropertyWrapper(paramElement.toString(), localVariables, (Expression)localObject5, isInFolmeMode(), 0.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".pivotY");
    this.mPivotYProperty = new PropertyWrapper(paramElement.toString(), localVariables, (Expression)localObject6, isInFolmeMode(), 0.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".pivotZ");
    this.mPivotZProperty = new PropertyWrapper(paramElement.toString(), localVariables, (Expression)localObject13, isInFolmeMode(), 0.0D);
  }
  
  private void setupToProperties(StateElement paramStateElement)
  {
    paramStateElement = paramStateElement.getProperties().iterator();
    while (paramStateElement.hasNext())
    {
      miuix.animation.property.b localb = AnimatedProperty.getPropertyByName((String)paramStateElement.next());
      if (localb != null) {
        this.mToProperties.add(localb);
      }
    }
  }
  
  protected void doRenderWithTranslation(Canvas paramCanvas)
  {
    int i = paramCanvas.save();
    this.mMatrix.reset();
    float f1 = getRotationX();
    float f2 = getRotationY();
    float f3 = getRotationZ();
    if ((f1 != 0.0F) || (f2 != 0.0F) || (f3 != 0.0F))
    {
      if (this.mCamera == null) {
        this.mCamera = new Camera();
      }
      this.mCamera.save();
      this.mCamera.rotate(f1, f2, f3);
      f1 = getPivotZ();
      if (f1 != 0.0F) {
        this.mCamera.translate(0.0F, 0.0F, f1);
      }
      this.mCamera.getMatrix(this.mMatrix);
      this.mCamera.restore();
    }
    f1 = getRotation();
    if (f1 != 0.0F) {
      this.mMatrix.preRotate(f1);
    }
    f2 = getScaleX();
    f1 = getScaleY();
    if ((f2 != 1.0F) || (f1 != 1.0F)) {
      this.mMatrix.preScale(f2, f1);
    }
    f1 = getX();
    f3 = getY();
    float f4 = getPivotX() - (f1 - getLeft());
    f2 = getPivotY() - (f3 - getTop());
    this.mMatrix.preTranslate(-f4, -f2);
    this.mMatrix.postTranslate(f4 + f1, f2 + f3);
    paramCanvas.concat(this.mMatrix);
    doRender(paramCanvas);
    if (this.mRoot.mShowDebugLayout)
    {
      f3 = getWidth();
      f4 = getHeight();
      if ((f3 > 0.0F) && (f4 > 0.0F))
      {
        f2 = getLeft(0.0F, f3);
        f1 = getTop(0.0F, f4);
        paramCanvas.drawRect(f2, f1, f2 + f3, f1 + f4, this.mPaint);
      }
    }
    paramCanvas.restoreToCount(i);
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    if (this.mHasName)
    {
      this.mActualXVar.set(descale(getX()));
      this.mActualYVar.set(descale(getY()));
    }
    int i = evaluateAlpha();
    this.mAlpha = i;
    int j = i;
    if (i < 0) {
      j = 0;
    }
    this.mAlpha = j;
    this.mTintChanged = false;
    j = getTintColor();
    if (j != this.mTintColor)
    {
      this.mTintChanged = true;
      this.mTintColor = j;
    }
    if (this.mTintColor != 0)
    {
      localObject = this.mTintMode;
      Expression localExpression = this.mTintModeExp;
      if (localExpression != null) {
        localObject = Utils.getPorterDuffMode((int)localExpression.evaluate(), this.mTintMode);
      }
      if (this.mTintMode != localObject)
      {
        this.mTintMode = ((PorterDuff.Mode)localObject);
        this.mTintChanged = true;
      }
      if (this.mTintFilter == null) {
        this.mTintChanged = true;
      }
      if (this.mTintChanged) {
        this.mTintFilter = new PorterDuffColorFilter(this.mTintColor, (PorterDuff.Mode)localObject);
      }
    }
    else
    {
      this.mTintFilter = null;
    }
    Object localObject = this.mTickListener;
    if (localObject != null) {
      ((FunctionElement)localObject).perform();
    }
  }
  
  protected int evaluateAlpha()
  {
    int i = (int)this.mAlphaProperty.getValue();
    int j = i;
    if (!isInFolmeMode())
    {
      localObject = this.mAlphas;
      if (localObject != null) {
        j = ((AlphaAnimation)localObject).getAlpha();
      } else {
        j = 255;
      }
      j = Utils.mixAlpha(i, j);
    }
    Object localObject = this.mParent;
    i = j;
    if (localObject != null)
    {
      i = j;
      if (!(localObject instanceof LayerScreenElement)) {
        if (((localObject instanceof ElementGroup)) && (((ElementGroup)localObject).isLayered())) {
          i = j;
        } else {
          i = Utils.mixAlpha(j, this.mParent.getAlpha());
        }
      }
    }
    return i;
  }
  
  public void finish()
  {
    super.finish();
    getContext().getHandler().removeCallbacksAndMessages(this);
    try
    {
      if (this.mAnimTarget != null) {
        miuix.animation.a.g(new AnimatedScreenElement[] { this });
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void folmeCancel(Expression[] paramArrayOfExpression)
  {
    if (paramArrayOfExpression != null) {}
    try
    {
      n.b localb = new n/b;
      localb.<init>();
      int i = paramArrayOfExpression.length;
      for (int j = 0; j < i; j++)
      {
        miuix.animation.property.b localb1 = AnimatedProperty.getPropertyByName(paramArrayOfExpression[j].evaluateStr());
        if (localb1 != null)
        {
          localb.add(localb1);
          this.mToProperties.remove(localb1);
        }
      }
      miuix.animation.a.x(getAnimTarget()).a().H((miuix.animation.property.b[])localb.toArray(new miuix.animation.property.b[localb.size()]));
    }
    catch (Exception paramArrayOfExpression)
    {
      paramArrayOfExpression.printStackTrace();
    }
    miuix.animation.a.x(getAnimTarget()).a().cancel();
    this.mToProperties.clear();
  }
  
  public void folmeFromTo(String paramString1, String paramString2, String paramString3)
  {
    ScreenElement localScreenElement1 = getRoot().findElement(paramString1);
    ScreenElement localScreenElement2 = getRoot().findElement(paramString2);
    Object localObject = getRoot().findElement(paramString3);
    if (((localScreenElement1 instanceof StateElement)) && ((localScreenElement2 instanceof StateElement)))
    {
      paramString3 = (StateElement)localScreenElement1;
      paramString2 = (StateElement)localScreenElement2;
      if ((localObject instanceof ConfigElement)) {
        paramString1 = (ConfigElement)localObject;
      } else {
        paramString1 = null;
      }
      if (paramString1 != null) {
        paramString1 = paramString1.getAnimConfig(this.mListenerWrapper);
      } else {
        paramString1 = new d9.a();
      }
      localObject = paramString3.getAnimState("from");
      paramString3 = paramString2.getAnimState("to");
      setupToProperties(paramString2);
      folmeFromToImpl((e9.a)localObject, paramString3, paramString1);
      return;
    }
    paramString3 = new StringBuilder();
    paramString3.append("folmeFromTo: wrong state name ");
    paramString3.append(paramString1);
    paramString3.append(" ");
    paramString3.append(paramString2);
    Log.w("AnimatedScreenElement", paramString3.toString());
  }
  
  public void folmeSetTo(String paramString)
  {
    Object localObject = getRoot().findElement(paramString);
    if (!(localObject instanceof StateElement))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("folmeSetTo: wrong state name ");
      ((StringBuilder)localObject).append(paramString);
      Log.w("AnimatedScreenElement", ((StringBuilder)localObject).toString());
      return;
    }
    folmeSetToImpl(((StateElement)localObject).getAnimState("setTo"));
  }
  
  public void folmeTo(String paramString1, String paramString2)
  {
    ScreenElement localScreenElement = getRoot().findElement(paramString1);
    Object localObject = getRoot().findElement(paramString2);
    if (!(localScreenElement instanceof StateElement))
    {
      paramString2 = new StringBuilder();
      paramString2.append("folmeTo: wrong state name ");
      paramString2.append(paramString1);
      Log.w("AnimatedScreenElement", paramString2.toString());
      return;
    }
    paramString2 = (StateElement)localScreenElement;
    if ((localObject instanceof ConfigElement)) {
      paramString1 = (ConfigElement)localObject;
    } else {
      paramString1 = null;
    }
    if (paramString1 != null) {
      paramString1 = paramString1.getAnimConfig(this.mListenerWrapper);
    } else {
      paramString1 = new d9.a();
    }
    localObject = paramString2.getAnimState("to");
    setupToProperties(paramString2);
    folmeToImpl((e9.a)localObject, paramString1);
  }
  
  public float getAbsoluteLeft()
  {
    float f1 = getLeft();
    ElementGroup localElementGroup = this.mParent;
    float f2;
    if (localElementGroup == null) {
      f2 = 0.0F;
    } else {
      f2 = localElementGroup.getParentLeft();
    }
    return f1 + f2;
  }
  
  public float getAbsoluteTop()
  {
    float f1 = getTop();
    ElementGroup localElementGroup = this.mParent;
    float f2;
    if (localElementGroup == null) {
      f2 = 0.0F;
    } else {
      f2 = localElementGroup.getParentTop();
    }
    return f1 + f2;
  }
  
  public int getAlpha()
  {
    return this.mAlpha;
  }
  
  protected AnimatedTarget getAnimTarget()
  {
    if (this.mAnimTarget == null) {
      this.mAnimTarget = ((AnimatedTarget)miuix.animation.a.q(this, AnimatedTarget.sCreator));
    }
    return this.mAnimTarget;
  }
  
  public String getContentDescription()
  {
    Object localObject = this.mContentDescriptionExp;
    if (localObject != null)
    {
      String str = ((Expression)localObject).evaluateStr();
      localObject = str;
      if (str == null)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("element.getContentDescription() == null ");
        ((StringBuilder)localObject).append(this.mName);
        Log.e("AnimatedScreenElement", ((StringBuilder)localObject).toString());
        localObject = "";
      }
      return localObject;
    }
    return this.mContentDescription;
  }
  
  public float getHeight()
  {
    return scale(getHeightRaw());
  }
  
  public float getHeightRaw()
  {
    float f1 = (float)this.mHeightProperty.getValue();
    float f2 = f1;
    if (!isInFolmeMode())
    {
      SizeAnimation localSizeAnimation = this.mSizes;
      f2 = f1;
      if (localSizeAnimation != null) {
        f2 = (float)localSizeAnimation.getHeight();
      }
    }
    return f2;
  }
  
  protected float getLeft()
  {
    return getLeft(getX(), getWidth());
  }
  
  public final float getMarginBottom()
  {
    return scale(this.mMarginBottom);
  }
  
  public final float getMarginLeft()
  {
    return scale(this.mMarginLeft);
  }
  
  public final float getMarginRight()
  {
    return scale(this.mMarginRight);
  }
  
  public final float getMarginTop()
  {
    return scale(this.mMarginTop);
  }
  
  protected Matrix getMatrix()
  {
    return this.mMatrix;
  }
  
  protected float getPivotX()
  {
    return scale(this.mPivotXProperty.getValue());
  }
  
  protected float getPivotY()
  {
    return scale(this.mPivotYProperty.getValue());
  }
  
  protected float getPivotZ()
  {
    return scale(this.mPivotZProperty.getValue());
  }
  
  public float getRotation()
  {
    float f1 = (float)this.mRotationProperty.getValue();
    float f2 = f1;
    if (!isInFolmeMode())
    {
      RotationAnimation localRotationAnimation = this.mRotations;
      f2 = f1;
      if (localRotationAnimation != null) {
        f2 = f1 + localRotationAnimation.getAngle();
      }
    }
    return f2;
  }
  
  public float getRotationX()
  {
    return (float)this.mRotationXProperty.getValue();
  }
  
  public float getRotationY()
  {
    return (float)this.mRotationYProperty.getValue();
  }
  
  public float getRotationZ()
  {
    return (float)this.mRotationZProperty.getValue();
  }
  
  public float getScaleX()
  {
    float f1 = (float)this.mScaleXProperty.getValue();
    float f2 = f1;
    if (!isInFolmeMode())
    {
      Object localObject = this.mScaleExpression;
      if (localObject != null) {
        f1 = (float)((Expression)localObject).evaluate();
      }
      localObject = this.mScales;
      f2 = f1;
      if (localObject != null) {
        f2 = (float)(f1 * ((ScaleAnimation)localObject).getScaleX());
      }
    }
    return f2;
  }
  
  public float getScaleY()
  {
    float f1 = (float)this.mScaleYProperty.getValue();
    float f2 = f1;
    if (!isInFolmeMode())
    {
      Object localObject = this.mScaleExpression;
      if (localObject != null) {
        f1 = (float)((Expression)localObject).evaluate();
      }
      localObject = this.mScales;
      f2 = f1;
      if (localObject != null) {
        f2 = (float)(f1 * ((ScaleAnimation)localObject).getScaleY());
      }
    }
    return f2;
  }
  
  protected int getTintColor()
  {
    int i = (int)this.mTintColorProperty.getValue();
    int j = i;
    if (!isInFolmeMode())
    {
      ColorParser localColorParser = this.mTintColorParser;
      j = i;
      if (localColorParser != null) {
        j = localColorParser.getColor();
      }
    }
    return j;
  }
  
  protected float getTop()
  {
    return getTop(getY(), getHeight());
  }
  
  public float getWidth()
  {
    return scale(getWidthRaw());
  }
  
  public float getWidthRaw()
  {
    float f1 = (float)this.mWidthProperty.getValue();
    float f2 = f1;
    if (!isInFolmeMode())
    {
      SizeAnimation localSizeAnimation = this.mSizes;
      f2 = f1;
      if (localSizeAnimation != null) {
        f2 = (float)localSizeAnimation.getWidth();
      }
    }
    return f2;
  }
  
  protected float getX()
  {
    float f1 = (float)this.mXProperty.getValue();
    float f2 = f1;
    if (!isInFolmeMode())
    {
      PositionAnimation localPositionAnimation = this.mPositions;
      f2 = f1;
      if (localPositionAnimation != null) {
        f2 = (float)(f1 + localPositionAnimation.getX());
      }
    }
    return scale(f2);
  }
  
  protected float getY()
  {
    float f1 = (float)this.mYProperty.getValue();
    float f2 = f1;
    if (!isInFolmeMode())
    {
      PositionAnimation localPositionAnimation = this.mPositions;
      f2 = f1;
      if (localPositionAnimation != null) {
        f2 = (float)(f1 + localPositionAnimation.getY());
      }
    }
    return scale(f2);
  }
  
  public void init()
  {
    super.init();
    if (isInFolmeMode()) {
      initProperties();
    }
  }
  
  protected void initProperties()
  {
    this.mXProperty.init();
    this.mYProperty.init();
    this.mWidthProperty.init();
    this.mHeightProperty.init();
    this.mRotationProperty.init();
    this.mAlphaProperty.init();
    this.mRotationXProperty.init();
    this.mRotationYProperty.init();
    this.mRotationZProperty.init();
    this.mScaleXProperty.init();
    this.mScaleYProperty.init();
    this.mTintColorProperty.init();
    this.mPivotXProperty.init();
    this.mPivotYProperty.init();
    this.mPivotZProperty.init();
  }
  
  protected boolean isInFolmeMode()
  {
    boolean bool;
    if ((this.mFolmeMode) && (this.mHasName)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void onActionCancel() {}
  
  protected void onActionDown(float paramFloat1, float paramFloat2)
  {
    this.mRoot.onUIInteractive(this, "down");
  }
  
  protected void onActionMove(float paramFloat1, float paramFloat2)
  {
    this.mRoot.onUIInteractive(this, "move");
  }
  
  protected void onActionUp()
  {
    this.mRoot.onUIInteractive(this, "up");
  }
  
  protected BaseAnimation onCreateAnimation(String paramString, Element paramElement)
  {
    if ("AlphaAnimation".equals(paramString))
    {
      paramString = new AlphaAnimation(paramElement, this);
      this.mAlphas = paramString;
      return paramString;
    }
    if ("PositionAnimation".equals(paramString))
    {
      paramString = new PositionAnimation(paramElement, this);
      this.mPositions = paramString;
      return paramString;
    }
    if ("RotationAnimation".equals(paramString))
    {
      paramString = new RotationAnimation(paramElement, this);
      this.mRotations = paramString;
      return paramString;
    }
    if ("SizeAnimation".equals(paramString))
    {
      paramString = new SizeAnimation(paramElement, this);
      this.mSizes = paramString;
      return paramString;
    }
    if ("ScaleAnimation".equals(paramString))
    {
      paramString = new ScaleAnimation(paramElement, this);
      this.mScales = paramString;
      return paramString;
    }
    return super.onCreateAnimation(paramString, paramElement);
  }
  
  public boolean onHover(MotionEvent paramMotionEvent)
  {
    boolean bool1 = isVisible();
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1) {
      if (!this.mHasContentDescription)
      {
        bool3 = bool2;
      }
      else
      {
        String str = getContentDescription();
        float f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        bool1 = super.onHover(paramMotionEvent);
        int i = paramMotionEvent.getActionMasked();
        if (i != 7)
        {
          if ((i == 9) && (touched(f1, f2))) {
            this.mRoot.onHoverChange(this, str);
          }
        }
        else {
          for (;;)
          {
            bool1 = true;
            break;
            if (!touched(f1, f2)) {
              break;
            }
            if (this.mRoot.getHoverElement() != this) {
              this.mRoot.onHoverChange(this, str);
            }
          }
        }
        if (bool1) {
          requestUpdate();
        }
        bool3 = bool2;
        if (bool1)
        {
          bool3 = bool2;
          if (this.mInterceptTouch) {
            bool3 = true;
          }
        }
      }
    }
    return bool3;
  }
  
  protected void onSetAnimBefore()
  {
    this.mAlphas = null;
    this.mPositions = null;
    this.mRotations = null;
    this.mSizes = null;
    this.mScales = null;
  }
  
  protected void onSetAnimEnable(BaseAnimation paramBaseAnimation)
  {
    if ((paramBaseAnimation instanceof AlphaAnimation)) {
      this.mAlphas = ((AlphaAnimation)paramBaseAnimation);
    } else if ((paramBaseAnimation instanceof PositionAnimation)) {
      this.mPositions = ((PositionAnimation)paramBaseAnimation);
    } else if ((paramBaseAnimation instanceof RotationAnimation)) {
      this.mRotations = ((RotationAnimation)paramBaseAnimation);
    } else if ((paramBaseAnimation instanceof SizeAnimation)) {
      this.mSizes = ((SizeAnimation)paramBaseAnimation);
    } else if ((paramBaseAnimation instanceof ScaleAnimation)) {
      this.mScales = ((ScaleAnimation)paramBaseAnimation);
    }
  }
  
  public boolean onTouch(MotionEvent paramMotionEvent)
  {
    boolean bool1 = isVisible();
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1) {
      if (!this.mTouchable)
      {
        bool3 = bool2;
      }
      else
      {
        float f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        bool1 = super.onTouch(paramMotionEvent);
        int i = paramMotionEvent.getActionMasked();
        if (i != 0)
        {
          if (i != 1)
          {
            if (i != 2)
            {
              if (i != 3) {
                break label231;
              }
              handleCancel();
              break label231;
            }
            if (!this.mPressed) {
              break label231;
            }
            bool1 = touched(f1, f2);
            performAction("move");
            onActionMove(f1, f2);
            break label231;
          }
          if (!this.mPressed) {
            break label231;
          }
          this.mPressed = false;
          if (touched(f1, f2))
          {
            if (this.mIsHaptic) {
              this.mRoot.haptic(1);
            }
            performAction("up");
            onActionUp();
          }
          else
          {
            performAction("cancel");
            onActionCancel();
          }
        }
        else
        {
          if (!touched(f1, f2)) {
            break label231;
          }
          this.mPressed = true;
          if (this.mIsHaptic) {
            this.mRoot.haptic(1);
          }
          performAction("down");
          onActionDown(f1, f2);
        }
        bool1 = true;
        label231:
        if (bool1) {
          requestUpdate();
        }
        bool3 = bool2;
        if (bool1)
        {
          bool3 = bool2;
          if (this.mInterceptTouch) {
            bool3 = true;
          }
        }
      }
    }
    return bool3;
  }
  
  protected void onVisibilityChange(boolean paramBoolean)
  {
    super.onVisibilityChange(paramBoolean);
    if (!paramBoolean)
    {
      handleCancel();
      if ((this.mVirtualViewId != -2147483648) && (getRoot().getMamlAccessHelper() != null) && (getRoot().getMamlAccessHelper().getFocusedVirtualView() == this.mVirtualViewId)) {
        getRoot().getMamlAccessHelper().performAccessibilityAction(this.mVirtualViewId, 128);
      }
    }
  }
  
  public void pause()
  {
    super.pause();
    handleCancel();
    try
    {
      if ((this.mAnimTarget != null) && (this.mToProperties.size() > 0)) {
        miuix.animation.a.x(this.mAnimTarget).a().C(this.mToProperties.toArray());
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void render(Canvas paramCanvas)
  {
    updateVisibility();
    if (!isVisible()) {
      return;
    }
    doRenderWithTranslation(paramCanvas);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    Paint localPaint = this.mPaint;
    if (localPaint != null) {
      localPaint.setColorFilter(paramColorFilter);
    }
  }
  
  public void setHeight(double paramDouble)
  {
    this.mHeightProperty.setValue(descale(paramDouble));
  }
  
  public void setOnTickListener(FunctionElement paramFunctionElement)
  {
    this.mTickListener = paramFunctionElement;
  }
  
  public void setVirtualViewId(int paramInt)
  {
    this.mVirtualViewId = paramInt;
  }
  
  public void setWidth(double paramDouble)
  {
    this.mWidthProperty.setValue(descale(paramDouble));
  }
  
  public void setX(double paramDouble)
  {
    this.mXProperty.setValue(descale(paramDouble));
  }
  
  public void setY(double paramDouble)
  {
    this.mYProperty.setValue(descale(paramDouble));
  }
  
  public boolean touched(float paramFloat1, float paramFloat2)
  {
    return touched(paramFloat1, paramFloat2, true);
  }
  
  public boolean touched(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    float f1 = paramFloat1;
    float f2 = paramFloat2;
    if (paramBoolean)
    {
      ElementGroup localElementGroup = this.mParent;
      f1 = 0.0F;
      if (localElementGroup == null) {
        f2 = 0.0F;
      } else {
        f2 = localElementGroup.getParentLeft();
      }
      localElementGroup = this.mParent;
      if (localElementGroup != null) {
        f1 = localElementGroup.getParentTop();
      }
      paramFloat1 -= f2;
      f2 = paramFloat2 - f1;
      f1 = paramFloat1;
    }
    paramFloat2 = getLeft();
    float f3 = getTop();
    float f4 = getWidth();
    paramFloat1 = getHeight();
    if ((f1 >= paramFloat2) && (f1 <= paramFloat2 + f4) && (f2 >= f3) && (f2 <= f3 + paramFloat1)) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    return paramBoolean;
  }
  
  public void unsetOnTickListener()
  {
    this.mTickListener = null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.AnimatedScreenElement
 * JD-Core Version:    0.7.0.1
 */