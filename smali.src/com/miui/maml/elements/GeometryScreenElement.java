package com.miui.maml.elements;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.text.TextUtils;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.data.Variables;
import com.miui.maml.folme.AnimatedProperty;
import com.miui.maml.folme.AnimatedProperty.AnimatedColorProperty;
import com.miui.maml.folme.AnimatedTarget;
import com.miui.maml.folme.PropertyWrapper;
import com.miui.maml.shader.ShadersElement;
import com.miui.maml.util.ColorParser;
import com.miui.maml.util.Utils;
import java.util.concurrent.ConcurrentHashMap;
import org.w3c.dom.Element;

public abstract class GeometryScreenElement
  extends AnimatedScreenElement
{
  public static final AnimatedProperty.AnimatedColorProperty FILL_COLOR;
  private static final String LOG_TAG = "GeometryScreenElement";
  private static final String PROPERTY_NAME_FILL_COLOR = "fillColor";
  private static final String PROPERTY_NAME_STROKE_COLOR = "strokeColor";
  private static final String PROPERTY_NAME_STROKE_WEIGHT = "strokeWeight";
  public static final AnimatedProperty.AnimatedColorProperty STROKE_COLOR;
  public static final AnimatedProperty STROKE_WEIGHT;
  private int mFillColor;
  protected ColorParser mFillColorParser;
  private PropertyWrapper mFillColorProperty;
  protected ShadersElement mFillShadersElement;
  protected Paint mPaint = new Paint();
  private final DrawMode mStrokeAlign;
  private int mStrokeColor;
  protected ColorParser mStrokeColorParser;
  private PropertyWrapper mStrokeColorProperty;
  protected ShadersElement mStrokeShadersElement;
  private PropertyWrapper mStrokeWeightProperty;
  protected float mWeight = scale(1.0D);
  protected Expression mXfermodeNumExp;
  
  static
  {
    Object localObject1 = new AnimatedProperty.AnimatedColorProperty("fillColor")
    {
      public int getIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof GeometryScreenElement)) {
          return (int)((GeometryScreenElement)paramAnonymousAnimatedScreenElement).mFillColorProperty.getValue();
        }
        return 0;
      }
      
      public void setIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, int paramAnonymousInt)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof GeometryScreenElement)) {
          ((GeometryScreenElement)paramAnonymousAnimatedScreenElement).mFillColorProperty.setValue(paramAnonymousInt);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof GeometryScreenElement)) {
          ((GeometryScreenElement)paramAnonymousAnimatedScreenElement).mFillColorProperty.setVelocity(paramAnonymousFloat);
        }
      }
    };
    FILL_COLOR = (AnimatedProperty.AnimatedColorProperty)localObject1;
    Object localObject2 = new AnimatedProperty.AnimatedColorProperty("strokeColor")
    {
      public int getIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof GeometryScreenElement)) {
          return (int)((GeometryScreenElement)paramAnonymousAnimatedScreenElement).mStrokeColorProperty.getValue();
        }
        return 0;
      }
      
      public void setIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, int paramAnonymousInt)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof GeometryScreenElement)) {
          ((GeometryScreenElement)paramAnonymousAnimatedScreenElement).mStrokeColorProperty.setValue(paramAnonymousInt);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof GeometryScreenElement)) {
          ((GeometryScreenElement)paramAnonymousAnimatedScreenElement).mStrokeColorProperty.setVelocity(paramAnonymousFloat);
        }
      }
    };
    STROKE_COLOR = (AnimatedProperty.AnimatedColorProperty)localObject2;
    AnimatedProperty local3 = new AnimatedProperty("strokeWeight")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof GeometryScreenElement)) {
          return (float)((GeometryScreenElement)paramAnonymousAnimatedScreenElement).mStrokeWeightProperty.getValue();
        }
        return 0.0F;
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof GeometryScreenElement)) {
          ((GeometryScreenElement)paramAnonymousAnimatedScreenElement).mStrokeWeightProperty.setValue(paramAnonymousFloat);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof GeometryScreenElement)) {
          ((GeometryScreenElement)paramAnonymousAnimatedScreenElement).mStrokeWeightProperty.setVelocity(paramAnonymousFloat);
        }
      }
    };
    STROKE_WEIGHT = local3;
    AnimatedProperty.sPropertyNameMap.put("fillColor", localObject1);
    ConcurrentHashMap localConcurrentHashMap = AnimatedTarget.sPropertyMap;
    Object localObject3 = Integer.valueOf(1004);
    localConcurrentHashMap.put(localObject3, localObject1);
    AnimatedTarget.sPropertyTypeMap.put(localObject1, localObject3);
    AnimatedProperty.sPropertyNameMap.put("strokeColor", localObject2);
    localObject3 = AnimatedTarget.sPropertyMap;
    localObject1 = Integer.valueOf(1005);
    ((ConcurrentHashMap)localObject3).put(localObject1, localObject2);
    AnimatedTarget.sPropertyTypeMap.put(localObject2, localObject1);
    AnimatedProperty.sPropertyNameMap.put("strokeWeight", local3);
    localObject2 = AnimatedTarget.sPropertyMap;
    localObject1 = Integer.valueOf(1012);
    ((ConcurrentHashMap)localObject2).put(localObject1, local3);
    AnimatedTarget.sPropertyTypeMap.put(local3, localObject1);
  }
  
  public GeometryScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    Object localObject1 = getAttr(paramElement, "strokeColor");
    Object localObject2 = getVariables();
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      this.mStrokeColorParser = new ColorParser((Variables)localObject2, (String)localObject1);
    }
    localObject1 = getAttr(paramElement, "fillColor");
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      this.mFillColorParser = new ColorParser((Variables)localObject2, (String)localObject1);
    }
    localObject1 = Expression.build((Variables)localObject2, getAttr(paramElement, "weight"));
    Object localObject3 = getCap(getAttr(paramElement, "cap"));
    this.mPaint.setStrokeCap((Paint.Cap)localObject3);
    localObject3 = resolveDashIntervals(paramElement);
    if (localObject3 != null) {
      this.mPaint.setPathEffect(new DashPathEffect((float[])localObject3, 0.0F));
    }
    this.mStrokeAlign = DrawMode.getStrokeAlign(getAttr(paramElement, "strokeAlign"));
    localObject2 = Expression.build((Variables)localObject2, getAttr(paramElement, "xfermodeNum"));
    this.mXfermodeNumExp = ((Expression)localObject2);
    if (localObject2 == null)
    {
      localObject2 = Utils.getPorterDuffMode(getAttr(paramElement, "xfermode"));
      this.mPaint.setXfermode(new PorterDuffXfermode((PorterDuff.Mode)localObject2));
    }
    this.mPaint.setAntiAlias(true);
    localObject2 = this.mStrokeColorParser;
    int i = 0;
    if (localObject2 != null) {
      j = ((ColorParser)localObject2).getColor();
    } else {
      j = 0;
    }
    this.mStrokeColor = j;
    localObject2 = this.mFillColorParser;
    int j = i;
    if (localObject2 != null) {
      j = ((ColorParser)localObject2).getColor();
    }
    this.mFillColor = j;
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append(this.mName);
    ((StringBuilder)localObject2).append(".fillColor");
    this.mFillColorProperty = new PropertyWrapper(((StringBuilder)localObject2).toString(), getVariables(), null, isInFolmeMode(), this.mFillColor);
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append(this.mName);
    ((StringBuilder)localObject2).append(".strokeColor");
    this.mStrokeColorProperty = new PropertyWrapper(((StringBuilder)localObject2).toString(), getVariables(), null, isInFolmeMode(), this.mStrokeColor);
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append(this.mName);
    ((StringBuilder)localObject2).append(".strokeWeight");
    this.mStrokeWeightProperty = new PropertyWrapper(((StringBuilder)localObject2).toString(), getVariables(), (Expression)localObject1, isInFolmeMode(), 0.0D);
    loadShadersElement(paramElement, paramScreenElementRoot);
  }
  
  private final Paint.Cap getCap(String paramString)
  {
    Paint.Cap localCap = Paint.Cap.BUTT;
    if (TextUtils.isEmpty(paramString)) {
      return localCap;
    }
    if (paramString.equalsIgnoreCase("round")) {
      localCap = Paint.Cap.ROUND;
    } else if (paramString.equalsIgnoreCase("square")) {
      localCap = Paint.Cap.SQUARE;
    }
    return localCap;
  }
  
  private void loadShadersElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    Element localElement = Utils.getChild(paramElement, "StrokeShaders");
    if (localElement != null) {
      this.mStrokeShadersElement = new ShadersElement(localElement, paramScreenElementRoot);
    }
    paramElement = Utils.getChild(paramElement, "FillShaders");
    if (paramElement != null) {
      this.mFillShadersElement = new ShadersElement(paramElement, paramScreenElementRoot);
    }
  }
  
  private float[] resolveDashIntervals(Element paramElement)
  {
    paramElement = getAttr(paramElement, "dash");
    if (TextUtils.isEmpty(paramElement)) {
      return null;
    }
    paramElement = paramElement.split(",");
    if ((paramElement.length >= 2) && (paramElement.length % 2 == 0))
    {
      float[] arrayOfFloat = new float[paramElement.length];
      int i = 0;
      while (i < paramElement.length) {
        try
        {
          arrayOfFloat[i] = Float.parseFloat(paramElement[i]);
          i++;
        }
        catch (NumberFormatException paramElement)
        {
          return null;
        }
      }
      return arrayOfFloat;
    }
    return null;
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    Object localObject;
    if ((this.mFillShadersElement != null) || (this.mFillColor != 0))
    {
      this.mPaint.setStyle(Paint.Style.FILL);
      localObject = this.mFillShadersElement;
      if (localObject != null)
      {
        this.mPaint.setShader(((ShadersElement)localObject).getShader());
        this.mPaint.setAlpha(this.mAlpha);
      }
      else
      {
        this.mPaint.setShader(null);
        this.mPaint.setColor(this.mFillColor);
        localObject = this.mPaint;
        ((Paint)localObject).setAlpha(Utils.mixAlpha(((Paint)localObject).getAlpha(), this.mAlpha));
      }
      onDraw(paramCanvas, DrawMode.FILL);
    }
    if ((this.mWeight > 0.0F) && ((this.mStrokeShadersElement != null) || (this.mStrokeColor != 0)))
    {
      this.mPaint.setStyle(Paint.Style.STROKE);
      this.mPaint.setStrokeWidth(this.mWeight);
      localObject = this.mStrokeShadersElement;
      if (localObject != null)
      {
        this.mPaint.setShader(((ShadersElement)localObject).getShader());
        this.mPaint.setAlpha(this.mAlpha);
      }
      else
      {
        this.mPaint.setShader(null);
        this.mPaint.setColor(this.mStrokeColor);
        localObject = this.mPaint;
        ((Paint)localObject).setAlpha(Utils.mixAlpha(((Paint)localObject).getAlpha(), this.mAlpha));
      }
      onDraw(paramCanvas, this.mStrokeAlign);
    }
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    if (!isVisible()) {
      return;
    }
    if (isInFolmeMode())
    {
      this.mStrokeColor = ((int)this.mStrokeColorProperty.getValue());
      this.mFillColor = ((int)this.mFillColorProperty.getValue());
    }
    else
    {
      localObject = this.mStrokeColorParser;
      if (localObject != null) {
        this.mStrokeColor = ((ColorParser)localObject).getColor();
      }
      localObject = this.mFillColorParser;
      if (localObject != null) {
        this.mFillColor = ((ColorParser)localObject).getColor();
      }
    }
    Object localObject = this.mStrokeShadersElement;
    if (localObject != null) {
      ((ShadersElement)localObject).updateShader();
    }
    localObject = this.mFillShadersElement;
    if (localObject != null) {
      ((ShadersElement)localObject).updateShader();
    }
    this.mWeight = scale(this.mStrokeWeightProperty.getValue());
    localObject = this.mXfermodeNumExp;
    if (localObject != null)
    {
      localObject = Utils.getPorterDuffMode((int)((Expression)localObject).evaluate());
      this.mPaint.setXfermode(new PorterDuffXfermode((PorterDuff.Mode)localObject));
    }
    if (this.mTintChanged) {
      this.mPaint.setColorFilter(this.mTintFilter);
    }
  }
  
  protected void initProperties()
  {
    super.initProperties();
    this.mFillColorProperty.init();
    this.mStrokeColorProperty.init();
    this.mStrokeWeightProperty.init();
  }
  
  protected abstract void onDraw(Canvas paramCanvas, DrawMode paramDrawMode);
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    super.setColorFilter(paramColorFilter);
    Paint localPaint = this.mPaint;
    if (localPaint != null) {
      localPaint.setColorFilter(paramColorFilter);
    }
  }
  
  protected static enum DrawMode
  {
    static
    {
      DrawMode localDrawMode1 = new DrawMode("STROKE_CENTER", 0);
      STROKE_CENTER = localDrawMode1;
      DrawMode localDrawMode2 = new DrawMode("STROKE_OUTER", 1);
      STROKE_OUTER = localDrawMode2;
      DrawMode localDrawMode3 = new DrawMode("STROKE_INNER", 2);
      STROKE_INNER = localDrawMode3;
      DrawMode localDrawMode4 = new DrawMode("FILL", 3);
      FILL = localDrawMode4;
      $VALUES = new DrawMode[] { localDrawMode1, localDrawMode2, localDrawMode3, localDrawMode4 };
    }
    
    private DrawMode() {}
    
    public static DrawMode getStrokeAlign(String paramString)
    {
      if ("inner".equalsIgnoreCase(paramString)) {
        return STROKE_INNER;
      }
      if ("center".equalsIgnoreCase(paramString)) {
        return STROKE_CENTER;
      }
      return STROKE_OUTER;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.GeometryScreenElement
 * JD-Core Version:    0.7.0.1
 */