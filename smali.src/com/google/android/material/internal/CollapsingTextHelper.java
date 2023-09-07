package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.Log;
import android.view.View;
import androidx.core.text.c;
import androidx.core.text.d;
import androidx.core.util.h;
import androidx.core.view.a0;
import androidx.core.view.e;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.android.material.resources.CancelableFontCallback.ApplyFont;
import com.google.android.material.resources.TextAppearance;
import v.a;

public final class CollapsingTextHelper
{
  private static final boolean DEBUG_DRAW = false;
  private static final Paint DEBUG_DRAW_PAINT = null;
  private static final String ELLIPSIS_NORMAL = "…";
  private static final String TAG = "CollapsingTextHelper";
  private static final boolean USE_SCALING_TEXTURE = false;
  private boolean boundsChanged;
  private final Rect collapsedBounds;
  private float collapsedDrawX;
  private float collapsedDrawY;
  private CancelableFontCallback collapsedFontCallback;
  private ColorStateList collapsedShadowColor;
  private float collapsedShadowDx;
  private float collapsedShadowDy;
  private float collapsedShadowRadius;
  private float collapsedTextBlend;
  private ColorStateList collapsedTextColor;
  private int collapsedTextGravity = 16;
  private float collapsedTextSize = 15.0F;
  private Typeface collapsedTypeface;
  private final RectF currentBounds;
  private float currentDrawX;
  private float currentDrawY;
  private float currentTextSize;
  private Typeface currentTypeface;
  private boolean drawTitle;
  private final Rect expandedBounds;
  private float expandedDrawX;
  private float expandedDrawY;
  private float expandedFirstLineDrawX;
  private CancelableFontCallback expandedFontCallback;
  private float expandedFraction;
  private ColorStateList expandedShadowColor;
  private float expandedShadowDx;
  private float expandedShadowDy;
  private float expandedShadowRadius;
  private float expandedTextBlend;
  private ColorStateList expandedTextColor;
  private int expandedTextGravity = 16;
  private float expandedTextSize = 15.0F;
  private Bitmap expandedTitleTexture;
  private Typeface expandedTypeface;
  private boolean isRtl;
  private int maxLines = 1;
  private TimeInterpolator positionInterpolator;
  private float scale;
  private int[] state;
  private CharSequence text;
  private StaticLayout textLayout;
  private final TextPaint textPaint;
  private TimeInterpolator textSizeInterpolator;
  private CharSequence textToDraw;
  private CharSequence textToDrawCollapsed;
  private Paint texturePaint;
  private final TextPaint tmpPaint;
  private boolean useTexture;
  private final View view;
  
  public CollapsingTextHelper(View paramView)
  {
    this.view = paramView;
    paramView = new TextPaint(129);
    this.textPaint = paramView;
    this.tmpPaint = new TextPaint(paramView);
    this.collapsedBounds = new Rect();
    this.expandedBounds = new Rect();
    this.currentBounds = new RectF();
  }
  
  private static int blendColors(int paramInt1, int paramInt2, float paramFloat)
  {
    float f1 = 1.0F - paramFloat;
    float f2 = Color.alpha(paramInt1);
    float f3 = Color.alpha(paramInt2);
    float f4 = Color.red(paramInt1);
    float f5 = Color.red(paramInt2);
    float f6 = Color.green(paramInt1);
    float f7 = Color.green(paramInt2);
    float f8 = Color.blue(paramInt1);
    float f9 = Color.blue(paramInt2);
    return Color.argb((int)(f2 * f1 + f3 * paramFloat), (int)(f4 * f1 + f5 * paramFloat), (int)(f6 * f1 + f7 * paramFloat), (int)(f8 * f1 + f9 * paramFloat));
  }
  
  private void calculateBaseOffsets()
  {
    float f1 = this.currentTextSize;
    calculateUsingTextSize(this.collapsedTextSize);
    CharSequence localCharSequence = this.textToDraw;
    if (localCharSequence != null)
    {
      localObject = this.textLayout;
      if (localObject != null) {
        this.textToDrawCollapsed = TextUtils.ellipsize(localCharSequence, this.textPaint, ((Layout)localObject).getWidth(), TextUtils.TruncateAt.END);
      }
    }
    Object localObject = this.textToDrawCollapsed;
    float f2 = 0.0F;
    float f3;
    if (localObject != null) {
      f3 = this.textPaint.measureText((CharSequence)localObject, 0, ((CharSequence)localObject).length());
    } else {
      f3 = 0.0F;
    }
    int i = e.b(this.collapsedTextGravity, this.isRtl);
    localObject = this.textLayout;
    float f4;
    if (localObject != null) {
      f4 = ((Layout)localObject).getHeight();
    } else {
      f4 = 0.0F;
    }
    int j = i & 0x70;
    if (j != 48)
    {
      if (j != 80)
      {
        f5 = (this.textPaint.descent() - this.textPaint.ascent()) / 2.0F;
        float f6 = this.textPaint.descent();
        if (shouldDrawMultiline()) {
          f5 = this.collapsedBounds.centerY() - f5;
        } else {
          f5 = f5 - f6 + this.collapsedBounds.centerY();
        }
        this.collapsedDrawY = f5;
      }
      else
      {
        this.collapsedDrawY = this.collapsedBounds.bottom;
      }
    }
    else {
      this.collapsedDrawY = (this.collapsedBounds.top - this.textPaint.ascent());
    }
    j = i & 0x800007;
    if (j != 1)
    {
      if (j != 5) {
        this.collapsedDrawX = this.collapsedBounds.left;
      } else {
        this.collapsedDrawX = (this.collapsedBounds.right - f3);
      }
    }
    else {
      this.collapsedDrawX = (this.collapsedBounds.centerX() - f3 / 2.0F);
    }
    calculateUsingTextSize(this.expandedTextSize);
    localObject = this.textToDraw;
    if (localObject != null) {
      f3 = this.textPaint.measureText((CharSequence)localObject, 0, ((CharSequence)localObject).length());
    } else {
      f3 = 0.0F;
    }
    localObject = this.textLayout;
    float f5 = f3;
    if (localObject != null)
    {
      f5 = f3;
      if (this.maxLines > 1)
      {
        f5 = f3;
        if (!this.isRtl) {
          f5 = ((Layout)localObject).getLineWidth(0);
        }
      }
    }
    localObject = this.textLayout;
    if (localObject != null) {
      f3 = ((Layout)localObject).getLineLeft(0);
    } else {
      f3 = 0.0F;
    }
    this.expandedFirstLineDrawX = f3;
    i = e.b(this.expandedTextGravity, this.isRtl);
    j = i & 0x70;
    if (j != 48)
    {
      if (j != 80)
      {
        f3 = (this.textPaint.descent() - this.textPaint.ascent()) / 2.0F;
        f2 = this.textPaint.descent();
        if (shouldDrawMultiline()) {
          f3 = this.expandedBounds.centerY() - f4 / 2.0F;
        } else {
          f3 = f3 - f2 + this.expandedBounds.centerY();
        }
        this.expandedDrawY = f3;
      }
      else
      {
        f3 = f2;
        if (shouldDrawMultiline()) {
          f3 = f4 - this.textPaint.descent();
        }
        this.expandedDrawY = (this.expandedBounds.bottom - f3);
      }
    }
    else {
      this.expandedDrawY = (this.expandedBounds.top - this.textPaint.ascent());
    }
    j = i & 0x800007;
    if (j != 1)
    {
      if (j != 5) {
        this.expandedDrawX = this.expandedBounds.left;
      } else {
        this.expandedDrawX = (this.expandedBounds.right - f5);
      }
    }
    else {
      this.expandedDrawX = (this.expandedBounds.centerX() - f5 / 2.0F);
    }
    clearTexture();
    setInterpolatedTextSize(f1);
  }
  
  private void calculateCurrentOffsets()
  {
    calculateOffsets(this.expandedFraction);
  }
  
  private boolean calculateIsRtl(CharSequence paramCharSequence)
  {
    c localc;
    if (isDefaultIsRtl()) {
      localc = d.d;
    } else {
      localc = d.c;
    }
    return localc.isRtl(paramCharSequence, 0, paramCharSequence.length());
  }
  
  private void calculateOffsets(float paramFloat)
  {
    interpolateBounds(paramFloat);
    this.currentDrawX = lerp(this.expandedDrawX, this.collapsedDrawX, paramFloat, this.positionInterpolator);
    this.currentDrawY = lerp(this.expandedDrawY, this.collapsedDrawY, paramFloat, this.positionInterpolator);
    setInterpolatedTextSize(lerp(this.expandedTextSize, this.collapsedTextSize, paramFloat, this.textSizeInterpolator));
    TimeInterpolator localTimeInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
    setCollapsedTextBlend(1.0F - lerp(0.0F, 1.0F, 1.0F - paramFloat, localTimeInterpolator));
    setExpandedTextBlend(lerp(1.0F, 0.0F, paramFloat, localTimeInterpolator));
    if (this.collapsedTextColor != this.expandedTextColor) {
      this.textPaint.setColor(blendColors(getCurrentExpandedTextColor(), getCurrentCollapsedTextColor(), paramFloat));
    } else {
      this.textPaint.setColor(getCurrentCollapsedTextColor());
    }
    this.textPaint.setShadowLayer(lerp(this.expandedShadowRadius, this.collapsedShadowRadius, paramFloat, null), lerp(this.expandedShadowDx, this.collapsedShadowDx, paramFloat, null), lerp(this.expandedShadowDy, this.collapsedShadowDy, paramFloat, null), blendColors(getCurrentColor(this.expandedShadowColor), getCurrentColor(this.collapsedShadowColor), paramFloat));
    a0.c0(this.view);
  }
  
  private void calculateUsingTextSize(float paramFloat)
  {
    if (this.text == null) {
      return;
    }
    float f1 = this.collapsedBounds.width();
    float f2 = this.expandedBounds.width();
    boolean bool1 = isClose(paramFloat, this.collapsedTextSize);
    boolean bool2 = false;
    int i = 1;
    float f3;
    Object localObject;
    Typeface localTypeface;
    int j;
    if (bool1)
    {
      f3 = this.collapsedTextSize;
      this.scale = 1.0F;
      localObject = this.currentTypeface;
      localTypeface = this.collapsedTypeface;
      if (localObject != localTypeface)
      {
        this.currentTypeface = localTypeface;
        j = 1;
        paramFloat = f1;
      }
      else
      {
        j = 0;
        paramFloat = f1;
      }
    }
    else
    {
      f3 = this.expandedTextSize;
      localObject = this.currentTypeface;
      localTypeface = this.expandedTypeface;
      if (localObject != localTypeface)
      {
        this.currentTypeface = localTypeface;
        j = 1;
      }
      else
      {
        j = 0;
      }
      if (isClose(paramFloat, f3)) {
        this.scale = 1.0F;
      } else {
        this.scale = (paramFloat / this.expandedTextSize);
      }
      paramFloat = this.collapsedTextSize / this.expandedTextSize;
      if (f2 * paramFloat > f1) {
        paramFloat = Math.min(f1 / paramFloat, f2);
      } else {
        paramFloat = f2;
      }
    }
    int k = j;
    if (paramFloat > 0.0F)
    {
      if ((this.currentTextSize == f3) && (!this.boundsChanged) && (j == 0)) {
        j = 0;
      } else {
        j = 1;
      }
      this.currentTextSize = f3;
      this.boundsChanged = false;
      k = j;
    }
    if ((this.textToDraw == null) || (k != 0))
    {
      this.textPaint.setTextSize(this.currentTextSize);
      this.textPaint.setTypeface(this.currentTypeface);
      localObject = this.textPaint;
      if (this.scale != 1.0F) {
        bool2 = true;
      }
      ((Paint)localObject).setLinearText(bool2);
      this.isRtl = calculateIsRtl(this.text);
      j = i;
      if (shouldDrawMultiline()) {
        j = this.maxLines;
      }
      localObject = createStaticLayout(j, paramFloat, this.isRtl);
      this.textLayout = ((StaticLayout)localObject);
      this.textToDraw = ((Layout)localObject).getText();
    }
  }
  
  private void clearTexture()
  {
    Bitmap localBitmap = this.expandedTitleTexture;
    if (localBitmap != null)
    {
      localBitmap.recycle();
      this.expandedTitleTexture = null;
    }
  }
  
  private StaticLayout createStaticLayout(int paramInt, float paramFloat, boolean paramBoolean)
  {
    Object localObject;
    try
    {
      StaticLayout localStaticLayout = StaticLayoutBuilderCompat.obtain(this.text, this.textPaint, (int)paramFloat).setEllipsize(TextUtils.TruncateAt.END).setIsRtl(paramBoolean).setAlignment(Layout.Alignment.ALIGN_NORMAL).setIncludePad(false).setMaxLines(paramInt).build();
    }
    catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException localStaticLayoutBuilderCompatException)
    {
      Log.e("CollapsingTextHelper", localStaticLayoutBuilderCompatException.getCause().getMessage(), localStaticLayoutBuilderCompatException);
      localObject = null;
    }
    return (StaticLayout)h.g(localObject);
  }
  
  private void drawMultinlineTransition(Canvas paramCanvas, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = this.textPaint.getAlpha();
    paramCanvas.translate(paramFloat1, paramFloat3);
    Object localObject = this.textPaint;
    paramFloat3 = this.expandedTextBlend;
    float f = i;
    ((Paint)localObject).setAlpha((int)(paramFloat3 * f));
    this.textLayout.draw(paramCanvas);
    paramCanvas.translate(paramFloat2 - paramFloat1, 0.0F);
    this.textPaint.setAlpha((int)(this.collapsedTextBlend * f));
    localObject = this.textToDrawCollapsed;
    int j = ((CharSequence)localObject).length();
    paramFloat1 = -paramFloat4;
    paramCanvas.drawText((CharSequence)localObject, 0, j, 0.0F, paramFloat1 / this.scale, this.textPaint);
    String str = this.textToDrawCollapsed.toString().trim();
    localObject = str;
    if (str.endsWith("…")) {
      localObject = str.substring(0, str.length() - 1);
    }
    this.textPaint.setAlpha(i);
    paramCanvas.drawText((String)localObject, 0, Math.min(this.textLayout.getLineEnd(0), ((String)localObject).length()), 0.0F, paramFloat1 / this.scale, this.textPaint);
  }
  
  private void ensureExpandedTexture()
  {
    if ((this.expandedTitleTexture == null) && (!this.expandedBounds.isEmpty()) && (!TextUtils.isEmpty(this.textToDraw)))
    {
      calculateOffsets(0.0F);
      int i = this.textLayout.getWidth();
      int j = this.textLayout.getHeight();
      if ((i > 0) && (j > 0))
      {
        this.expandedTitleTexture = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(this.expandedTitleTexture);
        this.textLayout.draw(localCanvas);
        if (this.texturePaint == null) {
          this.texturePaint = new Paint(3);
        }
      }
    }
  }
  
  private float getCollapsedTextLeftBound(int paramInt1, int paramInt2)
  {
    if ((paramInt2 != 17) && ((paramInt2 & 0x7) != 1))
    {
      float f;
      if (((paramInt2 & 0x800005) != 8388613) && ((paramInt2 & 0x5) != 5))
      {
        if (this.isRtl) {
          f = this.collapsedBounds.right - calculateCollapsedTextWidth();
        } else {
          f = this.collapsedBounds.left;
        }
        return f;
      }
      if (this.isRtl) {
        f = this.collapsedBounds.left;
      } else {
        f = this.collapsedBounds.right - calculateCollapsedTextWidth();
      }
      return f;
    }
    return paramInt1 / 2.0F - calculateCollapsedTextWidth() / 2.0F;
  }
  
  private float getCollapsedTextRightBound(RectF paramRectF, int paramInt1, int paramInt2)
  {
    if ((paramInt2 != 17) && ((paramInt2 & 0x7) != 1))
    {
      float f;
      if (((paramInt2 & 0x800005) != 8388613) && ((paramInt2 & 0x5) != 5))
      {
        if (this.isRtl) {
          f = this.collapsedBounds.right;
        } else {
          f = paramRectF.left + calculateCollapsedTextWidth();
        }
        return f;
      }
      if (this.isRtl) {
        f = paramRectF.left + calculateCollapsedTextWidth();
      } else {
        f = this.collapsedBounds.right;
      }
      return f;
    }
    return paramInt1 / 2.0F + calculateCollapsedTextWidth() / 2.0F;
  }
  
  private int getCurrentColor(ColorStateList paramColorStateList)
  {
    if (paramColorStateList == null) {
      return 0;
    }
    int[] arrayOfInt = this.state;
    if (arrayOfInt != null) {
      return paramColorStateList.getColorForState(arrayOfInt, 0);
    }
    return paramColorStateList.getDefaultColor();
  }
  
  private int getCurrentExpandedTextColor()
  {
    return getCurrentColor(this.expandedTextColor);
  }
  
  private void getTextPaintCollapsed(TextPaint paramTextPaint)
  {
    paramTextPaint.setTextSize(this.collapsedTextSize);
    paramTextPaint.setTypeface(this.collapsedTypeface);
  }
  
  private void getTextPaintExpanded(TextPaint paramTextPaint)
  {
    paramTextPaint.setTextSize(this.expandedTextSize);
    paramTextPaint.setTypeface(this.expandedTypeface);
  }
  
  private void interpolateBounds(float paramFloat)
  {
    this.currentBounds.left = lerp(this.expandedBounds.left, this.collapsedBounds.left, paramFloat, this.positionInterpolator);
    this.currentBounds.top = lerp(this.expandedDrawY, this.collapsedDrawY, paramFloat, this.positionInterpolator);
    this.currentBounds.right = lerp(this.expandedBounds.right, this.collapsedBounds.right, paramFloat, this.positionInterpolator);
    this.currentBounds.bottom = lerp(this.expandedBounds.bottom, this.collapsedBounds.bottom, paramFloat, this.positionInterpolator);
  }
  
  private static boolean isClose(float paramFloat1, float paramFloat2)
  {
    boolean bool;
    if (Math.abs(paramFloat1 - paramFloat2) < 0.001F) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean isDefaultIsRtl()
  {
    int i = a0.z(this.view);
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    return bool;
  }
  
  private static float lerp(float paramFloat1, float paramFloat2, float paramFloat3, TimeInterpolator paramTimeInterpolator)
  {
    float f = paramFloat3;
    if (paramTimeInterpolator != null) {
      f = paramTimeInterpolator.getInterpolation(paramFloat3);
    }
    return AnimationUtils.lerp(paramFloat1, paramFloat2, f);
  }
  
  private static boolean rectEquals(Rect paramRect, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool;
    if ((paramRect.left == paramInt1) && (paramRect.top == paramInt2) && (paramRect.right == paramInt3) && (paramRect.bottom == paramInt4)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void setCollapsedTextBlend(float paramFloat)
  {
    this.collapsedTextBlend = paramFloat;
    a0.c0(this.view);
  }
  
  private boolean setCollapsedTypefaceInternal(Typeface paramTypeface)
  {
    CancelableFontCallback localCancelableFontCallback = this.collapsedFontCallback;
    if (localCancelableFontCallback != null) {
      localCancelableFontCallback.cancel();
    }
    if (this.collapsedTypeface != paramTypeface)
    {
      this.collapsedTypeface = paramTypeface;
      return true;
    }
    return false;
  }
  
  private void setExpandedTextBlend(float paramFloat)
  {
    this.expandedTextBlend = paramFloat;
    a0.c0(this.view);
  }
  
  private boolean setExpandedTypefaceInternal(Typeface paramTypeface)
  {
    CancelableFontCallback localCancelableFontCallback = this.expandedFontCallback;
    if (localCancelableFontCallback != null) {
      localCancelableFontCallback.cancel();
    }
    if (this.expandedTypeface != paramTypeface)
    {
      this.expandedTypeface = paramTypeface;
      return true;
    }
    return false;
  }
  
  private void setInterpolatedTextSize(float paramFloat)
  {
    calculateUsingTextSize(paramFloat);
    boolean bool;
    if ((USE_SCALING_TEXTURE) && (this.scale != 1.0F)) {
      bool = true;
    } else {
      bool = false;
    }
    this.useTexture = bool;
    if (bool) {
      ensureExpandedTexture();
    }
    a0.c0(this.view);
  }
  
  private boolean shouldDrawMultiline()
  {
    int i = this.maxLines;
    boolean bool = true;
    if ((i <= 1) || (this.isRtl) || (this.useTexture)) {
      bool = false;
    }
    return bool;
  }
  
  public float calculateCollapsedTextWidth()
  {
    if (this.text == null) {
      return 0.0F;
    }
    getTextPaintCollapsed(this.tmpPaint);
    TextPaint localTextPaint = this.tmpPaint;
    CharSequence localCharSequence = this.text;
    return localTextPaint.measureText(localCharSequence, 0, localCharSequence.length());
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i = paramCanvas.save();
    if ((this.textToDraw != null) && (this.drawTitle))
    {
      float f1 = this.currentDrawX;
      float f2 = this.textLayout.getLineLeft(0);
      float f3 = this.expandedFirstLineDrawX;
      this.textPaint.setTextSize(this.currentTextSize);
      float f4 = this.currentDrawX;
      float f5 = this.currentDrawY;
      int j;
      if ((this.useTexture) && (this.expandedTitleTexture != null)) {
        j = 1;
      } else {
        j = 0;
      }
      float f6 = this.textLayout.getLineAscent(0);
      float f7 = this.scale;
      if (f7 != 1.0F) {
        paramCanvas.scale(f7, f7, f4, f5);
      }
      if (j != 0)
      {
        paramCanvas.drawBitmap(this.expandedTitleTexture, f4, f5 + f6, this.texturePaint);
        paramCanvas.restoreToCount(i);
        return;
      }
      if (shouldDrawMultiline())
      {
        drawMultinlineTransition(paramCanvas, f1 + f2 - f3 * 2.0F, f4, f5, f6);
      }
      else
      {
        paramCanvas.translate(f4, f5 + f6);
        this.textLayout.draw(paramCanvas);
      }
      paramCanvas.restoreToCount(i);
    }
  }
  
  public void getCollapsedTextActualBounds(RectF paramRectF, int paramInt1, int paramInt2)
  {
    this.isRtl = calculateIsRtl(this.text);
    paramRectF.left = getCollapsedTextLeftBound(paramInt1, paramInt2);
    paramRectF.top = this.collapsedBounds.top;
    paramRectF.right = getCollapsedTextRightBound(paramRectF, paramInt1, paramInt2);
    paramRectF.bottom = (this.collapsedBounds.top + getCollapsedTextHeight());
  }
  
  public ColorStateList getCollapsedTextColor()
  {
    return this.collapsedTextColor;
  }
  
  public int getCollapsedTextGravity()
  {
    return this.collapsedTextGravity;
  }
  
  public float getCollapsedTextHeight()
  {
    getTextPaintCollapsed(this.tmpPaint);
    return -this.tmpPaint.ascent();
  }
  
  public float getCollapsedTextSize()
  {
    return this.collapsedTextSize;
  }
  
  public Typeface getCollapsedTypeface()
  {
    Typeface localTypeface = this.collapsedTypeface;
    if (localTypeface == null) {
      localTypeface = Typeface.DEFAULT;
    }
    return localTypeface;
  }
  
  public int getCurrentCollapsedTextColor()
  {
    return getCurrentColor(this.collapsedTextColor);
  }
  
  public ColorStateList getExpandedTextColor()
  {
    return this.expandedTextColor;
  }
  
  public int getExpandedTextGravity()
  {
    return this.expandedTextGravity;
  }
  
  public float getExpandedTextHeight()
  {
    getTextPaintExpanded(this.tmpPaint);
    return -this.tmpPaint.ascent();
  }
  
  public float getExpandedTextSize()
  {
    return this.expandedTextSize;
  }
  
  public Typeface getExpandedTypeface()
  {
    Typeface localTypeface = this.expandedTypeface;
    if (localTypeface == null) {
      localTypeface = Typeface.DEFAULT;
    }
    return localTypeface;
  }
  
  public float getExpansionFraction()
  {
    return this.expandedFraction;
  }
  
  public int getMaxLines()
  {
    return this.maxLines;
  }
  
  public CharSequence getText()
  {
    return this.text;
  }
  
  public final boolean isStateful()
  {
    ColorStateList localColorStateList = this.collapsedTextColor;
    if ((localColorStateList == null) || (!localColorStateList.isStateful()))
    {
      localColorStateList = this.expandedTextColor;
      if ((localColorStateList == null) || (!localColorStateList.isStateful())) {}
    }
    else
    {
      return true;
    }
    boolean bool = false;
    return bool;
  }
  
  void onBoundsChanged()
  {
    boolean bool;
    if ((this.collapsedBounds.width() > 0) && (this.collapsedBounds.height() > 0) && (this.expandedBounds.width() > 0) && (this.expandedBounds.height() > 0)) {
      bool = true;
    } else {
      bool = false;
    }
    this.drawTitle = bool;
  }
  
  public void recalculate()
  {
    if ((this.view.getHeight() > 0) && (this.view.getWidth() > 0))
    {
      calculateBaseOffsets();
      calculateCurrentOffsets();
    }
  }
  
  public void setCollapsedBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!rectEquals(this.collapsedBounds, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      this.collapsedBounds.set(paramInt1, paramInt2, paramInt3, paramInt4);
      this.boundsChanged = true;
      onBoundsChanged();
    }
  }
  
  public void setCollapsedBounds(Rect paramRect)
  {
    setCollapsedBounds(paramRect.left, paramRect.top, paramRect.right, paramRect.bottom);
  }
  
  public void setCollapsedTextAppearance(int paramInt)
  {
    TextAppearance localTextAppearance = new TextAppearance(this.view.getContext(), paramInt);
    Object localObject = localTextAppearance.textColor;
    if (localObject != null) {
      this.collapsedTextColor = ((ColorStateList)localObject);
    }
    float f = localTextAppearance.textSize;
    if (f != 0.0F) {
      this.collapsedTextSize = f;
    }
    localObject = localTextAppearance.shadowColor;
    if (localObject != null) {
      this.collapsedShadowColor = ((ColorStateList)localObject);
    }
    this.collapsedShadowDx = localTextAppearance.shadowDx;
    this.collapsedShadowDy = localTextAppearance.shadowDy;
    this.collapsedShadowRadius = localTextAppearance.shadowRadius;
    localObject = this.collapsedFontCallback;
    if (localObject != null) {
      ((CancelableFontCallback)localObject).cancel();
    }
    this.collapsedFontCallback = new CancelableFontCallback(new CancelableFontCallback.ApplyFont()
    {
      public void apply(Typeface paramAnonymousTypeface)
      {
        CollapsingTextHelper.this.setCollapsedTypeface(paramAnonymousTypeface);
      }
    }, localTextAppearance.getFallbackFont());
    localTextAppearance.getFontAsync(this.view.getContext(), this.collapsedFontCallback);
    recalculate();
  }
  
  public void setCollapsedTextColor(ColorStateList paramColorStateList)
  {
    if (this.collapsedTextColor != paramColorStateList)
    {
      this.collapsedTextColor = paramColorStateList;
      recalculate();
    }
  }
  
  public void setCollapsedTextGravity(int paramInt)
  {
    if (this.collapsedTextGravity != paramInt)
    {
      this.collapsedTextGravity = paramInt;
      recalculate();
    }
  }
  
  public void setCollapsedTextSize(float paramFloat)
  {
    if (this.collapsedTextSize != paramFloat)
    {
      this.collapsedTextSize = paramFloat;
      recalculate();
    }
  }
  
  public void setCollapsedTypeface(Typeface paramTypeface)
  {
    if (setCollapsedTypefaceInternal(paramTypeface)) {
      recalculate();
    }
  }
  
  public void setExpandedBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!rectEquals(this.expandedBounds, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      this.expandedBounds.set(paramInt1, paramInt2, paramInt3, paramInt4);
      this.boundsChanged = true;
      onBoundsChanged();
    }
  }
  
  public void setExpandedBounds(Rect paramRect)
  {
    setExpandedBounds(paramRect.left, paramRect.top, paramRect.right, paramRect.bottom);
  }
  
  public void setExpandedTextAppearance(int paramInt)
  {
    TextAppearance localTextAppearance = new TextAppearance(this.view.getContext(), paramInt);
    Object localObject = localTextAppearance.textColor;
    if (localObject != null) {
      this.expandedTextColor = ((ColorStateList)localObject);
    }
    float f = localTextAppearance.textSize;
    if (f != 0.0F) {
      this.expandedTextSize = f;
    }
    localObject = localTextAppearance.shadowColor;
    if (localObject != null) {
      this.expandedShadowColor = ((ColorStateList)localObject);
    }
    this.expandedShadowDx = localTextAppearance.shadowDx;
    this.expandedShadowDy = localTextAppearance.shadowDy;
    this.expandedShadowRadius = localTextAppearance.shadowRadius;
    localObject = this.expandedFontCallback;
    if (localObject != null) {
      ((CancelableFontCallback)localObject).cancel();
    }
    this.expandedFontCallback = new CancelableFontCallback(new CancelableFontCallback.ApplyFont()
    {
      public void apply(Typeface paramAnonymousTypeface)
      {
        CollapsingTextHelper.this.setExpandedTypeface(paramAnonymousTypeface);
      }
    }, localTextAppearance.getFallbackFont());
    localTextAppearance.getFontAsync(this.view.getContext(), this.expandedFontCallback);
    recalculate();
  }
  
  public void setExpandedTextColor(ColorStateList paramColorStateList)
  {
    if (this.expandedTextColor != paramColorStateList)
    {
      this.expandedTextColor = paramColorStateList;
      recalculate();
    }
  }
  
  public void setExpandedTextGravity(int paramInt)
  {
    if (this.expandedTextGravity != paramInt)
    {
      this.expandedTextGravity = paramInt;
      recalculate();
    }
  }
  
  public void setExpandedTextSize(float paramFloat)
  {
    if (this.expandedTextSize != paramFloat)
    {
      this.expandedTextSize = paramFloat;
      recalculate();
    }
  }
  
  public void setExpandedTypeface(Typeface paramTypeface)
  {
    if (setExpandedTypefaceInternal(paramTypeface)) {
      recalculate();
    }
  }
  
  public void setExpansionFraction(float paramFloat)
  {
    paramFloat = a.a(paramFloat, 0.0F, 1.0F);
    if (paramFloat != this.expandedFraction)
    {
      this.expandedFraction = paramFloat;
      calculateCurrentOffsets();
    }
  }
  
  public void setMaxLines(int paramInt)
  {
    if (paramInt != this.maxLines)
    {
      this.maxLines = paramInt;
      clearTexture();
      recalculate();
    }
  }
  
  public void setPositionInterpolator(TimeInterpolator paramTimeInterpolator)
  {
    this.positionInterpolator = paramTimeInterpolator;
    recalculate();
  }
  
  public final boolean setState(int[] paramArrayOfInt)
  {
    this.state = paramArrayOfInt;
    if (isStateful())
    {
      recalculate();
      return true;
    }
    return false;
  }
  
  public void setText(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (!TextUtils.equals(this.text, paramCharSequence)))
    {
      this.text = paramCharSequence;
      this.textToDraw = null;
      clearTexture();
      recalculate();
    }
  }
  
  public void setTextSizeInterpolator(TimeInterpolator paramTimeInterpolator)
  {
    this.textSizeInterpolator = paramTimeInterpolator;
    recalculate();
  }
  
  public void setTypefaces(Typeface paramTypeface)
  {
    boolean bool1 = setCollapsedTypefaceInternal(paramTypeface);
    boolean bool2 = setExpandedTypefaceInternal(paramTypeface);
    if ((bool1) || (bool2)) {
      recalculate();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.CollapsingTextHelper
 * JD-Core Version:    0.7.0.1
 */