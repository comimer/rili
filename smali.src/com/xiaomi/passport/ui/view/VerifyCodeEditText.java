package com.xiaomi.passport.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Typeface;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.appcompat.widget.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n5.b;
import n5.c;

public class VerifyCodeEditText
  extends h
{
  private int a = 6;
  private float b;
  private float c;
  private float d;
  private float e;
  private int f;
  private int g;
  private int h;
  private float i;
  private float j;
  private Paint k;
  private Paint l;
  private Paint m;
  private final List<Character> n = new ArrayList();
  private c o;
  private final Runnable p = new b();
  
  public VerifyCodeEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public VerifyCodeEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setCursorVisible(false);
    setFocusableInTouchMode(true);
    setFilters(new InputFilter[] { new a() });
    e(paramAttributeSet);
    h();
  }
  
  private void e(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = getResources();
    this.f = paramAttributeSet.getColor(b.h);
    this.g = paramAttributeSet.getColor(b.f);
    this.h = paramAttributeSet.getColor(b.g);
    this.i = paramAttributeSet.getDimension(c.e);
    this.j = paramAttributeSet.getDimension(c.d);
  }
  
  private void f(int paramInt1, int paramInt2)
  {
    int i1 = this.a;
    float f1 = paramInt1 * 1.0F / (i1 * 12 + (i1 - 1) * 2);
    this.b = (12.0F * f1);
    this.d = (f1 * 2.0F);
    this.c = paramInt2;
    this.e = Math.min(paramInt1 / 2, paramInt2 / 3);
    Paint localPaint = new Paint();
    this.k = localPaint;
    localPaint.setAntiAlias(true);
    this.k.setColor(this.f);
    this.k.setStyle(Paint.Style.FILL);
    this.k.setTextSize(this.e);
    this.k.setTextAlign(Paint.Align.CENTER);
    this.k.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
    localPaint = new Paint();
    this.l = localPaint;
    localPaint.setAntiAlias(true);
    this.l.setColor(this.g);
    this.l.setStyle(Paint.Style.FILL);
    localPaint = new Paint();
    this.m = localPaint;
    localPaint.setAntiAlias(true);
    this.m.setColor(this.h);
    this.m.setStrokeWidth(this.i);
    this.m.setStyle(Paint.Style.STROKE);
  }
  
  private void g()
  {
    if (this.o != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = this.n.iterator();
      while (localIterator.hasNext()) {
        localStringBuilder.append((Character)localIterator.next());
      }
      this.o.a(localStringBuilder.toString());
    }
  }
  
  private void h()
  {
    postDelayed(this.p, 500L);
  }
  
  public void d()
  {
    this.n.clear();
    invalidate();
    h();
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.p);
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (this.b <= 0.0F) {
      f(getWidth(), getHeight());
    }
    int i1;
    if (getLayoutDirection() == 1) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0)
    {
      paramCanvas.save();
      paramCanvas.scale(-1.0F, 1.0F, getWidth() / 2.0F, getHeight() / 2.0F);
    }
    for (int i2 = 0; i2 < this.a; i2++)
    {
      float f1 = i2;
      float f2 = this.b;
      float f3 = this.d;
      float f4 = this.c;
      float f5 = this.j;
      paramCanvas.drawRoundRect((f2 + f3) * f1, 0.0F, f1 * (f3 + f2) + f2, f4, f5, f5, this.l);
      if (i2 < this.n.size())
      {
        f4 = i2;
        f3 = this.b;
        f4 = f4 * (this.d + f3) + f3 / 2.0F;
        f3 = this.c;
        f3 -= (f3 - this.e) / 2.0F;
        if (i1 != 0)
        {
          paramCanvas.save();
          paramCanvas.scale(-1.0F, 1.0F, f4, f3);
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("");
        localStringBuilder.append(this.n.get(i2));
        paramCanvas.drawText(localStringBuilder.toString(), f4, f3, this.k);
        if (i1 != 0) {
          paramCanvas.restore();
        }
      }
      if (i2 == this.n.size())
      {
        f2 = i2;
        f5 = this.b;
        f1 = this.d;
        float f6 = this.i;
        f3 = f6 / 2.0F;
        float f7 = f6 / 2.0F;
        float f8 = f6 / 2.0F;
        f4 = this.c;
        float f9 = f6 / 2.0F;
        f6 = this.j;
        paramCanvas.drawRoundRect((f5 + f1) * f2 + f3, f7, f2 * (f1 + f5) + f5 - f8, f4 - f9, f6, f6, this.m);
      }
    }
    if (i1 != 0) {
      paramCanvas.restore();
    }
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 67)
    {
      if (this.n.size() > 0)
      {
        paramKeyEvent = this.n;
        paramKeyEvent.remove(paramKeyEvent.size() - 1);
      }
      invalidate();
      return true;
    }
    return false;
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void setInputCompleteListener(c paramc)
  {
    this.o = paramc;
  }
  
  public void setSmsVerifyCodeIfNeeded(String paramString)
  {
    if (this.n.isEmpty()) {
      for (int i1 = 0; i1 < paramString.length(); i1++)
      {
        this.n.add(Character.valueOf(paramString.charAt(i1)));
        if (this.n.size() == this.a)
        {
          g();
          return;
        }
      }
    }
  }
  
  public void setVerifyCodeLength(int paramInt)
  {
    this.a = paramInt;
    this.b = -1.0F;
    this.c = -1.0F;
    this.d = -1.0F;
    this.e = 0.0F;
    invalidate();
  }
  
  class a
    implements InputFilter
  {
    a() {}
    
    public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
    {
      if (paramCharSequence.length() <= 0) {
        return "";
      }
      for (paramInt1 = 0; paramInt1 < paramCharSequence.length(); paramInt1++)
      {
        char c = paramCharSequence.charAt(paramInt1);
        if ((c >= '0') && (c <= '9') && (VerifyCodeEditText.a(VerifyCodeEditText.this).size() < VerifyCodeEditText.b(VerifyCodeEditText.this)))
        {
          VerifyCodeEditText.a(VerifyCodeEditText.this).add(Character.valueOf(c));
          VerifyCodeEditText.this.invalidate();
          if (VerifyCodeEditText.a(VerifyCodeEditText.this).size() == VerifyCodeEditText.b(VerifyCodeEditText.this)) {
            VerifyCodeEditText.c(VerifyCodeEditText.this);
          }
        }
      }
      return "";
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      VerifyCodeEditText.this.requestFocus();
      ((InputMethodManager)VerifyCodeEditText.this.getContext().getSystemService("input_method")).showSoftInput(VerifyCodeEditText.this, 1);
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(String paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.view.VerifyCodeEditText
 * JD-Core Version:    0.7.0.1
 */