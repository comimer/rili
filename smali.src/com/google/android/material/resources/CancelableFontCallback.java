package com.google.android.material.resources;

import android.graphics.Typeface;

public final class CancelableFontCallback
  extends TextAppearanceFontCallback
{
  private final ApplyFont applyFont;
  private boolean cancelled;
  private final Typeface fallbackFont;
  
  public CancelableFontCallback(ApplyFont paramApplyFont, Typeface paramTypeface)
  {
    this.fallbackFont = paramTypeface;
    this.applyFont = paramApplyFont;
  }
  
  private void updateIfNotCancelled(Typeface paramTypeface)
  {
    if (!this.cancelled) {
      this.applyFont.apply(paramTypeface);
    }
  }
  
  public void cancel()
  {
    this.cancelled = true;
  }
  
  public void onFontRetrievalFailed(int paramInt)
  {
    updateIfNotCancelled(this.fallbackFont);
  }
  
  public void onFontRetrieved(Typeface paramTypeface, boolean paramBoolean)
  {
    updateIfNotCancelled(paramTypeface);
  }
  
  public static abstract interface ApplyFont
  {
    public abstract void apply(Typeface paramTypeface);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.resources.CancelableFontCallback
 * JD-Core Version:    0.7.0.1
 */