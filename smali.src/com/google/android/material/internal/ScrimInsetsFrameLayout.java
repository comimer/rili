package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.a0;
import androidx.core.view.e1;
import androidx.core.view.u;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;

public class ScrimInsetsFrameLayout
  extends FrameLayout
{
  private boolean drawBottomInsetForeground = true;
  private boolean drawTopInsetForeground = true;
  Drawable insetForeground;
  Rect insets;
  private Rect tempRect = new Rect();
  
  public ScrimInsetsFrameLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ScrimInsetsFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ScrimInsetsFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.ScrimInsetsFrameLayout, paramInt, R.style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
    this.insetForeground = paramContext.getDrawable(R.styleable.ScrimInsetsFrameLayout_insetForeground);
    paramContext.recycle();
    setWillNotDraw(true);
    a0.z0(this, new u()
    {
      public e1 onApplyWindowInsets(View paramAnonymousView, e1 paramAnonymouse1)
      {
        paramAnonymousView = ScrimInsetsFrameLayout.this;
        if (paramAnonymousView.insets == null) {
          paramAnonymousView.insets = new Rect();
        }
        ScrimInsetsFrameLayout.this.insets.set(paramAnonymouse1.i(), paramAnonymouse1.k(), paramAnonymouse1.j(), paramAnonymouse1.h());
        ScrimInsetsFrameLayout.this.onInsetsChanged(paramAnonymouse1);
        paramAnonymousView = ScrimInsetsFrameLayout.this;
        boolean bool;
        if ((paramAnonymouse1.l()) && (ScrimInsetsFrameLayout.this.insetForeground != null)) {
          bool = false;
        } else {
          bool = true;
        }
        paramAnonymousView.setWillNotDraw(bool);
        a0.c0(ScrimInsetsFrameLayout.this);
        return paramAnonymouse1.c();
      }
    });
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i = getWidth();
    int j = getHeight();
    if ((this.insets != null) && (this.insetForeground != null))
    {
      int k = paramCanvas.save();
      paramCanvas.translate(getScrollX(), getScrollY());
      if (this.drawTopInsetForeground)
      {
        this.tempRect.set(0, 0, i, this.insets.top);
        this.insetForeground.setBounds(this.tempRect);
        this.insetForeground.draw(paramCanvas);
      }
      if (this.drawBottomInsetForeground)
      {
        this.tempRect.set(0, j - this.insets.bottom, i, j);
        this.insetForeground.setBounds(this.tempRect);
        this.insetForeground.draw(paramCanvas);
      }
      Rect localRect1 = this.tempRect;
      Rect localRect2 = this.insets;
      localRect1.set(0, localRect2.top, localRect2.left, j - localRect2.bottom);
      this.insetForeground.setBounds(this.tempRect);
      this.insetForeground.draw(paramCanvas);
      localRect2 = this.tempRect;
      localRect1 = this.insets;
      localRect2.set(i - localRect1.right, localRect1.top, i, j - localRect1.bottom);
      this.insetForeground.setBounds(this.tempRect);
      this.insetForeground.draw(paramCanvas);
      paramCanvas.restoreToCount(k);
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    Drawable localDrawable = this.insetForeground;
    if (localDrawable != null) {
      localDrawable.setCallback(this);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Drawable localDrawable = this.insetForeground;
    if (localDrawable != null) {
      localDrawable.setCallback(null);
    }
  }
  
  protected void onInsetsChanged(e1 parame1) {}
  
  public void setDrawBottomInsetForeground(boolean paramBoolean)
  {
    this.drawBottomInsetForeground = paramBoolean;
  }
  
  public void setDrawTopInsetForeground(boolean paramBoolean)
  {
    this.drawTopInsetForeground = paramBoolean;
  }
  
  public void setScrimInsetForeground(Drawable paramDrawable)
  {
    this.insetForeground = paramDrawable;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.ScrimInsetsFrameLayout
 * JD-Core Version:    0.7.0.1
 */