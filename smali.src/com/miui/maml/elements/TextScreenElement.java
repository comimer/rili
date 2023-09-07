package com.miui.maml.elements;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ResourceManager;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import com.miui.maml.folme.AnimatedProperty;
import com.miui.maml.folme.AnimatedProperty.AnimatedColorProperty;
import com.miui.maml.folme.AnimatedTarget;
import com.miui.maml.folme.PropertyWrapper;
import com.miui.maml.util.ColorParser;
import com.miui.maml.util.HideSdkDependencyUtils;
import com.miui.maml.util.ReflectionHelper;
import com.miui.maml.util.TextFormatter;
import com.miui.maml.util.Utils;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;
import org.w3c.dom.Element;

public class TextScreenElement
  extends AnimatedScreenElement
{
  private static final String CRLF = "\n";
  private static final int DEFAULT_SIZE = 18;
  private static final String LOG_TAG = "TextScreenElement";
  private static final int MARQUEE_FRAMERATE = 45;
  private static final int PADDING = 50;
  private static final String PROPERTY_NAME_TEXT_COLOR = "textColor";
  private static final String PROPERTY_NAME_TEXT_SHADOW_COLOR = "textShadowColor";
  private static final String PROPERTY_NAME_TEXT_SIZE = "textSize";
  private static final String RAW_CRLF = "\\n";
  public static final String TAG_NAME = "Text";
  public static final AnimatedProperty.AnimatedColorProperty TEXT_COLOR;
  public static final String TEXT_HEIGHT = "text_height";
  public static final AnimatedProperty.AnimatedColorProperty TEXT_SHADOW_COLOR;
  public static final AnimatedProperty TEXT_SIZE;
  public static final String TEXT_WIDTH = "text_width";
  private static final Object mLock = new Object();
  private ColorParser mColorParser;
  private boolean mFontScaleEnabled;
  protected TextFormatter mFormatter;
  private float mLayoutWidth;
  private int mMarqueeGap;
  private float mMarqueePos = 3.4028235E+38F;
  private int mMarqueeSpeed;
  private boolean mMultiLine;
  private final TextPaint mPaint = new TextPaint();
  private long mPreviousTime;
  private String mSetText;
  private ColorParser mShadowColorParser;
  private float mShadowDx;
  private float mShadowDy;
  private float mShadowRadius;
  private boolean mShouldMarquee;
  private float mSpacingAdd;
  private Expression mSpacingAddExp;
  private float mSpacingMult;
  private Expression mSpacingMultExp;
  private String mText;
  private PropertyWrapper mTextColorProperty;
  private String mTextFontName = null;
  private IndexedVariable mTextFontVar;
  private float mTextHeight;
  private IndexedVariable mTextHeightVar;
  private StaticLayout mTextLayout;
  private PropertyWrapper mTextShadowColorProperty;
  private float mTextSize = scale(18.0D);
  private PropertyWrapper mTextSizeProperty;
  private float mTextWidth;
  private IndexedVariable mTextWidthVar;
  
  static
  {
    AnimatedProperty.AnimatedColorProperty local1 = new AnimatedProperty.AnimatedColorProperty("textColor")
    {
      public int getIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof TextScreenElement)) {
          return (int)((TextScreenElement)paramAnonymousAnimatedScreenElement).mTextColorProperty.getValue();
        }
        return -16777216;
      }
      
      public void setIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, int paramAnonymousInt)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof TextScreenElement)) {
          ((TextScreenElement)paramAnonymousAnimatedScreenElement).mTextColorProperty.setValue(paramAnonymousInt);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof TextScreenElement)) {
          ((TextScreenElement)paramAnonymousAnimatedScreenElement).mTextColorProperty.setVelocity(paramAnonymousFloat);
        }
      }
    };
    TEXT_COLOR = local1;
    Object localObject = new AnimatedProperty("textSize")
    {
      public float getValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof TextScreenElement)) {
          return (float)((TextScreenElement)paramAnonymousAnimatedScreenElement).mTextSizeProperty.getValue();
        }
        return 18.0F;
      }
      
      public void setValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof TextScreenElement)) {
          ((TextScreenElement)paramAnonymousAnimatedScreenElement).mTextSizeProperty.setValue(paramAnonymousFloat);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof TextScreenElement)) {
          ((TextScreenElement)paramAnonymousAnimatedScreenElement).mTextSizeProperty.setVelocity(paramAnonymousFloat);
        }
      }
    };
    TEXT_SIZE = (AnimatedProperty)localObject;
    AnimatedProperty.AnimatedColorProperty local3 = new AnimatedProperty.AnimatedColorProperty("textShadowColor")
    {
      public int getIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof TextScreenElement)) {
          return (int)((TextScreenElement)paramAnonymousAnimatedScreenElement).mTextShadowColorProperty.getValue();
        }
        return -16777216;
      }
      
      public void setIntValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, int paramAnonymousInt)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof TextScreenElement)) {
          ((TextScreenElement)paramAnonymousAnimatedScreenElement).mTextShadowColorProperty.setValue(paramAnonymousInt);
        }
      }
      
      public void setVelocityValue(AnimatedScreenElement paramAnonymousAnimatedScreenElement, float paramAnonymousFloat)
      {
        if ((paramAnonymousAnimatedScreenElement instanceof TextScreenElement)) {
          ((TextScreenElement)paramAnonymousAnimatedScreenElement).mTextShadowColorProperty.setVelocity(paramAnonymousFloat);
        }
      }
    };
    TEXT_SHADOW_COLOR = local3;
    AnimatedProperty.sPropertyNameMap.put("textColor", local1);
    ConcurrentHashMap localConcurrentHashMap = AnimatedTarget.sPropertyMap;
    Integer localInteger = Integer.valueOf(1003);
    localConcurrentHashMap.put(localInteger, local1);
    AnimatedTarget.sPropertyTypeMap.put(local1, localInteger);
    AnimatedProperty.sPropertyNameMap.put("textSize", localObject);
    localConcurrentHashMap = AnimatedTarget.sPropertyMap;
    localInteger = Integer.valueOf(1002);
    localConcurrentHashMap.put(localInteger, localObject);
    AnimatedTarget.sPropertyTypeMap.put(localObject, localInteger);
    AnimatedProperty.sPropertyNameMap.put("textShadowColor", local3);
    localObject = AnimatedTarget.sPropertyMap;
    localInteger = Integer.valueOf(1013);
    ((ConcurrentHashMap)localObject).put(localInteger, local3);
    AnimatedTarget.sPropertyTypeMap.put(local3, localInteger);
  }
  
  public TextScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement);
  }
  
  private Layout.Alignment getAlignment()
  {
    Object localObject = Layout.Alignment.ALIGN_NORMAL;
    int i = 4.$SwitchMap$com$miui$maml$elements$ScreenElement$Align[this.mAlign.ordinal()];
    StringBuilder localStringBuilder;
    if (i != 1)
    {
      if (i != 2)
      {
        if (i != 3) {
          return localObject;
        }
        try
        {
          Layout.Alignment localAlignment1 = (Layout.Alignment)ReflectionHelper.getFieldValue(localObject.getClass(), localObject, "ALIGN_RIGHT");
          localObject = localAlignment1;
        }
        catch (Exception localException1)
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Invoke | getAlignment_ALIGN_RIGHT occur EXCEPTION: ");
          localStringBuilder.append(localException1.getMessage());
          Log.e("TextScreenElement", localStringBuilder.toString());
          return localObject;
        }
      }
      return Layout.Alignment.ALIGN_CENTER;
    }
    try
    {
      Layout.Alignment localAlignment2 = (Layout.Alignment)ReflectionHelper.getFieldValue(localObject.getClass(), localObject, "ALIGN_LEFT");
      localObject = localAlignment2;
    }
    catch (Exception localException2)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Invoke | getAlignment_ALIGN_LEFT occur EXCEPTION: ");
      localStringBuilder.append(localException2.getMessage());
      Log.e("TextScreenElement", localStringBuilder.toString());
    }
    return localObject;
  }
  
  private float getSpacingAdd()
  {
    Expression localExpression = this.mSpacingAddExp;
    if (localExpression != null) {
      return (float)localExpression.evaluate();
    }
    return this.mSpacingAdd;
  }
  
  private float getSpacingMult()
  {
    Expression localExpression = this.mSpacingMultExp;
    if (localExpression != null) {
      return (float)localExpression.evaluate();
    }
    return this.mSpacingMult;
  }
  
  private void load(Element paramElement)
  {
    if (paramElement == null) {
      return;
    }
    Variables localVariables = getVariables();
    if (this.mHasName)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(this.mName);
      ((StringBuilder)localObject1).append(".");
      ((StringBuilder)localObject1).append("text_width");
      this.mTextWidthVar = new IndexedVariable(((StringBuilder)localObject1).toString(), localVariables, true);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(this.mName);
      ((StringBuilder)localObject1).append(".");
      ((StringBuilder)localObject1).append("text_height");
      this.mTextHeightVar = new IndexedVariable(((StringBuilder)localObject1).toString(), localVariables, true);
    }
    this.mFormatter = TextFormatter.fromElement(localVariables, paramElement, this.mStyle);
    this.mColorParser = ColorParser.fromElement(localVariables, paramElement, this.mStyle);
    this.mMarqueeSpeed = getAttrAsInt(paramElement, "marqueeSpeed", 0);
    this.mSpacingMult = getAttrAsFloat(paramElement, "spacingMult", 1.0F);
    this.mSpacingAdd = getAttrAsFloat(paramElement, "spacingAdd", 0.0F);
    this.mSpacingMultExp = Expression.build(localVariables, getAttr(paramElement, "spacingMultExp"));
    this.mSpacingAddExp = Expression.build(localVariables, getAttr(paramElement, "spacingAddExp"));
    this.mMarqueeGap = getAttrAsInt(paramElement, "marqueeGap", 2);
    this.mMultiLine = Boolean.parseBoolean(getAttr(paramElement, "multiLine"));
    this.mFontScaleEnabled = Boolean.parseBoolean(getAttr(paramElement, "enableFontScale"));
    Expression localExpression = Expression.build(localVariables, getAttr(paramElement, "size"));
    Object localObject1 = getAttr(paramElement, "fontFamily");
    String str = getAttr(paramElement, "fontPath");
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      int i = parseFontStyle(getAttr(paramElement, "fontStyle"));
      this.mPaint.setTypeface(Typeface.create((String)localObject1, i));
    }
    else if (!TextUtils.isEmpty(str))
    {
      localObject1 = null;
      try
      {
        localObject2 = Typeface.createFromAsset(getContext().mContext.getAssets(), str);
        localObject1 = localObject2;
      }
      catch (Exception localException)
      {
        Object localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("create typeface from asset fail :");
        ((StringBuilder)localObject2).append(localException);
        Log.e("TextScreenElement", ((StringBuilder)localObject2).toString());
      }
      if (localObject1 == null) {
        if (str.startsWith("@")) {
          this.mTextFontVar = new IndexedVariable(str.substring(1), localVariables, false);
        } else {
          updateTypeface(str);
        }
      }
      if (localObject1 != null) {
        this.mPaint.setTypeface((Typeface)localObject1);
      }
    }
    else
    {
      boolean bool = Boolean.parseBoolean(getAttr(paramElement, "bold"));
      this.mPaint.setFakeBoldText(bool);
      this.mPaint.setTypeface(HideSdkDependencyUtils.TypefaceUtils_replaceTypeface(getContext().mContext, this.mPaint.getTypeface()));
    }
    this.mPaint.setColor(getColor());
    this.mPaint.setTextSize(scale(18.0D));
    this.mPaint.setAntiAlias(true);
    this.mShadowRadius = getAttrAsFloat(paramElement, "shadowRadius", 0.0F);
    this.mShadowDx = getAttrAsFloat(paramElement, "shadowDx", 0.0F);
    this.mShadowDy = getAttrAsFloat(paramElement, "shadowDy", 0.0F);
    this.mShadowColorParser = ColorParser.fromElement(localVariables, paramElement, "shadowColor", this.mStyle);
    this.mPaint.setShadowLayer(this.mShadowRadius, this.mShadowDx, this.mShadowDy, getShadowColor());
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".textColor");
    this.mTextSizeProperty = new PropertyWrapper(paramElement.toString(), getVariables(), localExpression, isInFolmeMode(), 18.0D);
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".textSize");
    this.mTextColorProperty = new PropertyWrapper(paramElement.toString(), getVariables(), null, isInFolmeMode(), this.mColorParser.getColor());
    paramElement = new StringBuilder();
    paramElement.append(this.mName);
    paramElement.append(".textShadowColor");
    this.mTextShadowColorProperty = new PropertyWrapper(paramElement.toString(), getVariables(), null, isInFolmeMode(), this.mShadowColorParser.getColor());
  }
  
  private static int parseFontStyle(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (!"normal".equals(paramString)))
    {
      if ("bold".equals(paramString)) {
        return 1;
      }
      if ("italic".equals(paramString)) {
        return 2;
      }
      if ("bold_italic".equals(paramString)) {
        return 3;
      }
    }
    return 0;
  }
  
  private void updateTextFontIfNeed()
  {
    Object localObject = this.mTextFontVar;
    if (localObject != null)
    {
      localObject = ((IndexedVariable)localObject).getString();
      if ((localObject != null) && (((String)localObject).length() > 0) && (!((String)localObject).equals(this.mTextFontName))) {
        updateTypeface((String)localObject);
      }
    }
  }
  
  private void updateTextSize()
  {
    float f = scale(this.mTextSizeProperty.getValue());
    this.mTextSize = f;
    if (this.mFontScaleEnabled) {
      this.mTextSize = (f * this.mRoot.getFontScale());
    }
    this.mPaint.setTextSize(this.mTextSize);
  }
  
  private void updateTextWidth()
  {
    this.mTextWidth = 0.0F;
    if (!TextUtils.isEmpty(this.mText))
    {
      if (this.mMultiLine)
      {
        String[] arrayOfString = this.mText.split("\n");
        for (int i = 0; i < arrayOfString.length; i++)
        {
          float f = this.mPaint.measureText(arrayOfString[i]);
          if (f > this.mTextWidth) {
            this.mTextWidth = f;
          }
        }
      }
      this.mTextWidth = this.mPaint.measureText(this.mText);
    }
    if (this.mHasName) {
      this.mTextWidthVar.set(descale(this.mTextWidth));
    }
  }
  
  private void updateTypeface(String paramString)
  {
    this.mTextFontName = paramString;
    paramString = getContext().mResourceManager.getExtraFile(paramString);
    if ((paramString != null) && (paramString.exists())) {
      try
      {
        paramString = Typeface.createFromFile(paramString);
        this.mPaint.setTypeface(paramString);
      }
      catch (Exception localException)
      {
        paramString = new StringBuilder();
        paramString.append("int. create typeface from PATH failed. ");
        paramString.append(localException);
        Log.e("TextScreenElement", paramString.toString());
      }
    }
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    if (TextUtils.isEmpty(this.mText)) {
      return;
    }
    this.mPaint.setColor(getColor());
    Object localObject = this.mPaint;
    ((Paint)localObject).setAlpha(Utils.mixAlpha(((Paint)localObject).getAlpha(), getAlpha()));
    this.mPaint.setShadowLayer(this.mShadowRadius, this.mShadowDx, this.mShadowDy, getShadowColor());
    float f1 = getWidth();
    int i;
    if (f1 >= 0.0F) {
      i = 1;
    } else {
      i = 0;
    }
    float f2;
    if (f1 >= 0.0F)
    {
      f2 = f1;
      if (f1 <= this.mTextWidth) {}
    }
    else
    {
      f2 = this.mTextWidth;
    }
    f1 = getHeight();
    float f3 = this.mPaint.getTextSize();
    float f4 = f1;
    if (f1 < 0.0F) {
      f4 = this.mTextHeight;
    }
    float f5 = getLeft(0.0F, f2);
    float f6 = getTop(0.0F, f4);
    paramCanvas.save();
    f1 = this.mShadowRadius;
    float f7;
    float f8;
    float f9;
    if (f1 != 0.0F)
    {
      f7 = Math.min(0.0F, this.mShadowDx - f1);
      f1 = Math.max(0.0F, this.mShadowDx + this.mShadowRadius);
      f8 = Math.min(0.0F, this.mShadowDy - this.mShadowRadius);
      f9 = Math.max(0.0F, this.mShadowDy + this.mShadowRadius);
    }
    else
    {
      float f10 = 0.0F;
      f1 = f10;
      f7 = f1;
      f9 = f7;
      f8 = f7;
      f7 = f10;
    }
    paramCanvas.translate(f5, f6);
    if (i != 0) {
      f7 = 0.0F;
    }
    if (i != 0) {
      f1 = 0.0F;
    }
    paramCanvas.clipRect(f7, f8, f1 + f2, f4 + f9);
    localObject = this.mTextLayout;
    if (localObject != null) {
      if ((((StaticLayout)localObject).getLineCount() == 1) && (this.mShouldMarquee))
      {
        int j = this.mTextLayout.getLineStart(0);
        i = this.mTextLayout.getLineEnd(0);
        int k = this.mTextLayout.getLineTop(0);
        f1 = this.mTextLayout.getLineLeft(0);
        localObject = this.mText;
        f4 = this.mMarqueePos;
        f7 = f3 + k;
        paramCanvas.drawText((String)localObject, j, i, f1 + f4, f7, this.mPaint);
        f4 = this.mMarqueePos;
        if (f4 != 0.0F)
        {
          f4 = f4 + this.mTextWidth + this.mTextSize * this.mMarqueeGap;
          if (f4 < f2) {
            paramCanvas.drawText(this.mText, f1 + f4, f7, this.mPaint);
          }
        }
      }
      else
      {
        this.mTextLayout.draw(paramCanvas);
      }
    }
    paramCanvas.restore();
  }
  
  protected void doTick(long paramLong)
  {
    synchronized (mLock)
    {
      super.doTick(paramLong);
      if (!isVisible()) {
        return;
      }
      int i = 0;
      this.mShouldMarquee = false;
      Object localObject2 = this.mText;
      String str = getText();
      this.mText = str;
      if (TextUtils.isEmpty(str))
      {
        this.mTextLayout = null;
        updateTextWidth();
        return;
      }
      float f1 = this.mTextSize;
      updateTextSize();
      updateTextFontIfNeed();
      int j;
      if ((TextUtils.equals((CharSequence)localObject2, this.mText)) && (f1 == this.mTextSize)) {
        j = 0;
      } else {
        j = 1;
      }
      if (j != 0) {
        updateTextWidth();
      }
      float f2 = getWidth();
      boolean bool = this.mMultiLine;
      int k = i;
      if (!bool)
      {
        k = i;
        if (this.mMarqueeSpeed > 0)
        {
          k = i;
          if (this.mTextWidth > f2) {
            k = 1;
          }
        }
      }
      if (bool)
      {
        f1 = f2;
        if (f2 <= this.mTextWidth) {}
      }
      else
      {
        f1 = this.mTextWidth;
      }
      f2 = getSpacingMult();
      float f3 = getSpacingAdd();
      if ((this.mTextLayout == null) || (j != 0) || (this.mLayoutWidth != f1) || (this.mSpacingMult != f2) || (this.mSpacingAdd != f3))
      {
        this.mLayoutWidth = f1;
        this.mSpacingMult = f2;
        this.mSpacingAdd = f3;
        localObject2 = new android/text/StaticLayout;
        ((StaticLayout)localObject2).<init>(this.mText, this.mPaint, (int)Math.ceil(this.mLayoutWidth), getAlignment(), this.mSpacingMult, this.mSpacingAdd, false);
        this.mTextLayout = ((StaticLayout)localObject2);
        f1 = ((StaticLayout)localObject2).getLineTop(((StaticLayout)localObject2).getLineCount());
        this.mTextHeight = f1;
        if (this.mHasName) {
          this.mTextHeightVar.set(descale(f1));
        }
        this.mMarqueePos = 3.4028235E+38F;
      }
      if (k != 0)
      {
        f1 = this.mMarqueePos;
        if (f1 == 3.4028235E+38F)
        {
          this.mMarqueePos = 50.0F;
        }
        else
        {
          f2 = f1 - (float)(this.mMarqueeSpeed * (paramLong - this.mPreviousTime)) / 1000.0F;
          this.mMarqueePos = f2;
          f1 = this.mTextWidth;
          if (f2 < -f1) {
            this.mMarqueePos = (f2 + (f1 + this.mTextSize * this.mMarqueeGap));
          }
        }
        this.mPreviousTime = paramLong;
        this.mShouldMarquee = true;
      }
      if (this.mShouldMarquee) {
        f1 = 45.0F;
      } else {
        f1 = 0.0F;
      }
      requestFramerate(f1);
      return;
    }
  }
  
  public void finish()
  {
    super.finish();
    this.mText = null;
    this.mSetText = null;
    this.mMarqueePos = 3.4028235E+38F;
  }
  
  protected int getColor()
  {
    if (isInFolmeMode()) {
      return (int)this.mTextColorProperty.getValue();
    }
    return this.mColorParser.getColor();
  }
  
  protected String getFormat()
  {
    return this.mFormatter.getFormat();
  }
  
  public float getHeight()
  {
    float f1 = super.getHeight();
    float f2 = f1;
    if (f1 <= 0.0F) {
      f2 = this.mTextHeight;
    }
    return f2;
  }
  
  protected int getShadowColor()
  {
    if (isInFolmeMode()) {
      return (int)this.mTextShadowColorProperty.getValue();
    }
    return this.mShadowColorParser.getColor();
  }
  
  protected String getText()
  {
    Object localObject = this.mSetText;
    if (localObject != null) {
      return localObject;
    }
    String str = this.mFormatter.getText();
    localObject = str;
    if (str != null)
    {
      str = str.replace("\\n", "\n");
      localObject = str;
      if (!this.mMultiLine) {
        localObject = str.replace("\n", " ");
      }
    }
    return localObject;
  }
  
  public float getWidth()
  {
    float f1 = super.getWidth();
    float f2 = f1;
    if (f1 <= 0.0F) {
      f2 = this.mTextWidth;
    }
    return f2;
  }
  
  public void init()
  {
    super.init();
    updateTextFontIfNeed();
  }
  
  protected void initProperties()
  {
    super.initProperties();
    this.mTextSizeProperty.init();
    this.mTextColorProperty.init();
    this.mTextShadowColorProperty.init();
  }
  
  protected void onVisibilityChange(boolean paramBoolean)
  {
    super.onVisibilityChange(paramBoolean);
    float f;
    if ((this.mShouldMarquee) && (paramBoolean)) {
      f = 45.0F;
    } else {
      f = 0.0F;
    }
    requestFramerate(f);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    super.setColorFilter(paramColorFilter);
    TextPaint localTextPaint = this.mPaint;
    if (localTextPaint != null) {
      localTextPaint.setColorFilter(paramColorFilter);
    }
  }
  
  public void setParams(Object... paramVarArgs)
  {
    this.mFormatter.setParams(paramVarArgs);
  }
  
  public void setText(String paramString)
  {
    this.mSetText = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.TextScreenElement
 * JD-Core Version:    0.7.0.1
 */