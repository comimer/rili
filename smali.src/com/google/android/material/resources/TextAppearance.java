package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import androidx.core.content.res.h;
import androidx.core.content.res.h.e;
import com.google.android.material.R.styleable;

public class TextAppearance
{
  private static final String TAG = "TextAppearance";
  private static final int TYPEFACE_MONOSPACE = 3;
  private static final int TYPEFACE_SANS = 1;
  private static final int TYPEFACE_SERIF = 2;
  private Typeface font;
  public final String fontFamily;
  private final int fontFamilyResourceId;
  private boolean fontResolved = false;
  public final ColorStateList shadowColor;
  public final float shadowDx;
  public final float shadowDy;
  public final float shadowRadius;
  public final boolean textAllCaps;
  public final ColorStateList textColor;
  public final ColorStateList textColorHint;
  public final ColorStateList textColorLink;
  public final float textSize;
  public final int textStyle;
  public final int typeface;
  
  public TextAppearance(Context paramContext, int paramInt)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramInt, R.styleable.TextAppearance);
    this.textSize = localTypedArray.getDimension(R.styleable.TextAppearance_android_textSize, 0.0F);
    this.textColor = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.TextAppearance_android_textColor);
    this.textColorHint = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.TextAppearance_android_textColorHint);
    this.textColorLink = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.TextAppearance_android_textColorLink);
    this.textStyle = localTypedArray.getInt(R.styleable.TextAppearance_android_textStyle, 0);
    this.typeface = localTypedArray.getInt(R.styleable.TextAppearance_android_typeface, 1);
    paramInt = MaterialResources.getIndexWithValue(localTypedArray, R.styleable.TextAppearance_fontFamily, R.styleable.TextAppearance_android_fontFamily);
    this.fontFamilyResourceId = localTypedArray.getResourceId(paramInt, 0);
    this.fontFamily = localTypedArray.getString(paramInt);
    this.textAllCaps = localTypedArray.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
    this.shadowColor = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.TextAppearance_android_shadowColor);
    this.shadowDx = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0F);
    this.shadowDy = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0F);
    this.shadowRadius = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0F);
    localTypedArray.recycle();
  }
  
  private void createFallbackFont()
  {
    if (this.font == null)
    {
      String str = this.fontFamily;
      if (str != null) {
        this.font = Typeface.create(str, this.textStyle);
      }
    }
    if (this.font == null)
    {
      int i = this.typeface;
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3) {
            this.font = Typeface.DEFAULT;
          } else {
            this.font = Typeface.MONOSPACE;
          }
        }
        else {
          this.font = Typeface.SERIF;
        }
      }
      else {
        this.font = Typeface.SANS_SERIF;
      }
      this.font = Typeface.create(this.font, this.textStyle);
    }
  }
  
  public Typeface getFallbackFont()
  {
    createFallbackFont();
    return this.font;
  }
  
  public Typeface getFont(Context paramContext)
  {
    if (this.fontResolved) {
      return this.font;
    }
    if (!paramContext.isRestricted()) {}
    try
    {
      try
      {
        paramContext = h.f(paramContext, this.fontFamilyResourceId);
        this.font = paramContext;
        if (paramContext != null) {
          this.font = Typeface.create(paramContext, this.textStyle);
        }
      }
      catch (Exception paramContext)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Error loading font ");
        localStringBuilder.append(this.fontFamily);
        Log.d("TextAppearance", localStringBuilder.toString(), paramContext);
      }
    }
    catch (UnsupportedOperationException|Resources.NotFoundException paramContext)
    {
      label88:
      break label88;
    }
    createFallbackFont();
    this.fontResolved = true;
    return this.font;
  }
  
  public void getFontAsync(Context paramContext, final TextPaint paramTextPaint, final TextAppearanceFontCallback paramTextAppearanceFontCallback)
  {
    updateTextPaintMeasureState(paramTextPaint, getFallbackFont());
    getFontAsync(paramContext, new TextAppearanceFontCallback()
    {
      public void onFontRetrievalFailed(int paramAnonymousInt)
      {
        paramTextAppearanceFontCallback.onFontRetrievalFailed(paramAnonymousInt);
      }
      
      public void onFontRetrieved(Typeface paramAnonymousTypeface, boolean paramAnonymousBoolean)
      {
        TextAppearance.this.updateTextPaintMeasureState(paramTextPaint, paramAnonymousTypeface);
        paramTextAppearanceFontCallback.onFontRetrieved(paramAnonymousTypeface, paramAnonymousBoolean);
      }
    });
  }
  
  public void getFontAsync(Context paramContext, TextAppearanceFontCallback paramTextAppearanceFontCallback)
  {
    if (TextAppearanceConfig.shouldLoadFontSynchronously()) {
      getFont(paramContext);
    } else {
      createFallbackFont();
    }
    int i = this.fontFamilyResourceId;
    if (i == 0) {
      this.fontResolved = true;
    }
    if (this.fontResolved)
    {
      paramTextAppearanceFontCallback.onFontRetrieved(this.font, true);
      return;
    }
    try
    {
      localObject = new com/google/android/material/resources/TextAppearance$1;
      ((1)localObject).<init>(this, paramTextAppearanceFontCallback);
      h.h(paramContext, i, (h.e)localObject, null);
    }
    catch (Exception paramContext)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Error loading font ");
      ((StringBuilder)localObject).append(this.fontFamily);
      Log.d("TextAppearance", ((StringBuilder)localObject).toString(), paramContext);
      this.fontResolved = true;
      paramTextAppearanceFontCallback.onFontRetrievalFailed(-3);
    }
    catch (Resources.NotFoundException paramContext)
    {
      this.fontResolved = true;
      paramTextAppearanceFontCallback.onFontRetrievalFailed(1);
    }
  }
  
  public void updateDrawState(Context paramContext, TextPaint paramTextPaint, TextAppearanceFontCallback paramTextAppearanceFontCallback)
  {
    updateMeasureState(paramContext, paramTextPaint, paramTextAppearanceFontCallback);
    paramContext = this.textColor;
    int i;
    if (paramContext != null) {
      i = paramContext.getColorForState(paramTextPaint.drawableState, paramContext.getDefaultColor());
    } else {
      i = -16777216;
    }
    paramTextPaint.setColor(i);
    float f1 = this.shadowRadius;
    float f2 = this.shadowDx;
    float f3 = this.shadowDy;
    paramContext = this.shadowColor;
    if (paramContext != null) {
      i = paramContext.getColorForState(paramTextPaint.drawableState, paramContext.getDefaultColor());
    } else {
      i = 0;
    }
    paramTextPaint.setShadowLayer(f1, f2, f3, i);
  }
  
  public void updateMeasureState(Context paramContext, TextPaint paramTextPaint, TextAppearanceFontCallback paramTextAppearanceFontCallback)
  {
    if (TextAppearanceConfig.shouldLoadFontSynchronously()) {
      updateTextPaintMeasureState(paramTextPaint, getFont(paramContext));
    } else {
      getFontAsync(paramContext, paramTextPaint, paramTextAppearanceFontCallback);
    }
  }
  
  public void updateTextPaintMeasureState(TextPaint paramTextPaint, Typeface paramTypeface)
  {
    paramTextPaint.setTypeface(paramTypeface);
    int i = this.textStyle;
    i = paramTypeface.getStyle() & i;
    boolean bool;
    if ((i & 0x1) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    paramTextPaint.setFakeBoldText(bool);
    float f;
    if ((i & 0x2) != 0) {
      f = -0.25F;
    } else {
      f = 0.0F;
    }
    paramTextPaint.setTextSkewX(f);
    paramTextPaint.setTextSize(this.textSize);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.resources.TextAppearance
 * JD-Core Version:    0.7.0.1
 */