package com.google.android.material.internal;

import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.StaticLayout.Builder;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;

final class StaticLayoutBuilderCompat
{
  private static final String TEXT_DIRS_CLASS = "android.text.TextDirectionHeuristics";
  private static final String TEXT_DIR_CLASS = "android.text.TextDirectionHeuristic";
  private static final String TEXT_DIR_CLASS_LTR = "LTR";
  private static final String TEXT_DIR_CLASS_RTL = "RTL";
  private static Constructor<StaticLayout> constructor;
  private static boolean initialized;
  private static Object textDirection;
  private Layout.Alignment alignment;
  private TextUtils.TruncateAt ellipsize;
  private int end;
  private boolean includePad;
  private boolean isRtl;
  private int maxLines;
  private final TextPaint paint;
  private CharSequence source;
  private int start;
  private final int width;
  
  private StaticLayoutBuilderCompat(CharSequence paramCharSequence, TextPaint paramTextPaint, int paramInt)
  {
    this.source = paramCharSequence;
    this.paint = paramTextPaint;
    this.width = paramInt;
    this.start = 0;
    this.end = paramCharSequence.length();
    this.alignment = Layout.Alignment.ALIGN_NORMAL;
    this.maxLines = 2147483647;
    this.includePad = true;
    this.ellipsize = null;
  }
  
  private void createConstructorWithReflection()
    throws StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException
  {
    if (initialized) {
      return;
    }
    try
    {
      int i;
      if (this.isRtl) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0) {
        localObject = TextDirectionHeuristics.RTL;
      } else {
        localObject = TextDirectionHeuristics.LTR;
      }
      textDirection = localObject;
      Class localClass = Integer.TYPE;
      Object localObject = Float.TYPE;
      localObject = StaticLayout.class.getDeclaredConstructor(new Class[] { CharSequence.class, localClass, localClass, TextPaint.class, localClass, Layout.Alignment.class, TextDirectionHeuristic.class, localObject, localObject, Boolean.TYPE, TextUtils.TruncateAt.class, localClass, localClass });
      constructor = (Constructor)localObject;
      ((AccessibleObject)localObject).setAccessible(true);
      initialized = true;
      return;
    }
    catch (Exception localException)
    {
      throw new StaticLayoutBuilderCompatException(localException);
    }
  }
  
  public static StaticLayoutBuilderCompat obtain(CharSequence paramCharSequence, TextPaint paramTextPaint, int paramInt)
  {
    return new StaticLayoutBuilderCompat(paramCharSequence, paramTextPaint, paramInt);
  }
  
  public StaticLayout build()
    throws StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException
  {
    if (this.source == null) {
      this.source = "";
    }
    int i = Math.max(0, this.width);
    Object localObject1 = this.source;
    Object localObject2 = localObject1;
    if (this.maxLines == 1) {
      localObject2 = TextUtils.ellipsize((CharSequence)localObject1, this.paint, i, this.ellipsize);
    }
    int j = Math.min(((CharSequence)localObject2).length(), this.end);
    this.end = j;
    if (this.isRtl) {
      this.alignment = Layout.Alignment.ALIGN_OPPOSITE;
    }
    localObject1 = StaticLayout.Builder.obtain((CharSequence)localObject2, this.start, j, this.paint, i);
    ((StaticLayout.Builder)localObject1).setAlignment(this.alignment);
    ((StaticLayout.Builder)localObject1).setIncludePad(this.includePad);
    if (this.isRtl) {
      localObject2 = TextDirectionHeuristics.RTL;
    } else {
      localObject2 = TextDirectionHeuristics.LTR;
    }
    ((StaticLayout.Builder)localObject1).setTextDirection((TextDirectionHeuristic)localObject2);
    localObject2 = this.ellipsize;
    if (localObject2 != null) {
      ((StaticLayout.Builder)localObject1).setEllipsize((TextUtils.TruncateAt)localObject2);
    }
    ((StaticLayout.Builder)localObject1).setMaxLines(this.maxLines);
    return ((StaticLayout.Builder)localObject1).build();
  }
  
  public StaticLayoutBuilderCompat setAlignment(Layout.Alignment paramAlignment)
  {
    this.alignment = paramAlignment;
    return this;
  }
  
  public StaticLayoutBuilderCompat setEllipsize(TextUtils.TruncateAt paramTruncateAt)
  {
    this.ellipsize = paramTruncateAt;
    return this;
  }
  
  public StaticLayoutBuilderCompat setEnd(int paramInt)
  {
    this.end = paramInt;
    return this;
  }
  
  public StaticLayoutBuilderCompat setIncludePad(boolean paramBoolean)
  {
    this.includePad = paramBoolean;
    return this;
  }
  
  public StaticLayoutBuilderCompat setIsRtl(boolean paramBoolean)
  {
    this.isRtl = paramBoolean;
    return this;
  }
  
  public StaticLayoutBuilderCompat setMaxLines(int paramInt)
  {
    this.maxLines = paramInt;
    return this;
  }
  
  public StaticLayoutBuilderCompat setStart(int paramInt)
  {
    this.start = paramInt;
    return this;
  }
  
  static class StaticLayoutBuilderCompatException
    extends Exception
  {
    StaticLayoutBuilderCompatException(Throwable paramThrowable)
    {
      super(paramThrowable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.StaticLayoutBuilderCompat
 * JD-Core Version:    0.7.0.1
 */