package com.miui.calendar.view;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class EllipsizeTextView
  extends TextView
{
  private final List<a> a = new ArrayList();
  private boolean b;
  private boolean c;
  private boolean d;
  private String e;
  private int f = -1;
  private float g = 1.0F;
  private float h = 0.0F;
  
  public EllipsizeTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private Layout a(String paramString)
  {
    return new StaticLayout(paramString, getPaint(), getWidth() - getPaddingLeft() - getPaddingRight(), Layout.Alignment.ALIGN_NORMAL, this.g, this.h, false);
  }
  
  private void b()
  {
    int i = getMaxLines();
    String str = this.e;
    if (i != -1)
    {
      Object localObject2 = a(str);
      if (((Layout)localObject2).getLineCount() > i)
      {
        for (str = this.e.substring(0, ((Layout)localObject2).getLineEnd(i - 1)).trim();; str = str.substring(0, str.length() - 1))
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append(str);
          ((StringBuilder)localObject2).append("...");
          if ((a(((StringBuilder)localObject2).toString()).getLineCount() <= i) || (str.length() <= 0)) {
            break;
          }
        }
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(str);
        ((StringBuilder)localObject2).append("...");
        str = ((StringBuilder)localObject2).toString();
        bool = true;
        break label141;
      }
    }
    boolean bool = false;
    label141:
    if (!str.equals(getText())) {
      this.d = true;
    }
    try
    {
      setText(str);
      this.d = false;
    }
    finally
    {
      this.d = false;
    }
    if (bool != this.b)
    {
      this.b = bool;
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext()) {
        ((a)localIterator.next()).a(bool);
      }
    }
  }
  
  public int getMaxLines()
  {
    return this.f;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (this.c)
    {
      super.setEllipsize(null);
      b();
    }
    super.onDraw(paramCanvas);
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    if (!this.d)
    {
      this.e = paramCharSequence.toString();
      this.c = true;
    }
  }
  
  public void setEllipsize(TextUtils.TruncateAt paramTruncateAt) {}
  
  public void setLineSpacing(float paramFloat1, float paramFloat2)
  {
    this.h = paramFloat1;
    this.g = paramFloat2;
    super.setLineSpacing(paramFloat1, paramFloat2);
  }
  
  public void setMaxLines(int paramInt)
  {
    super.setMaxLines(paramInt);
    this.f = paramInt;
    this.c = true;
  }
  
  public static abstract interface a
  {
    public abstract void a(boolean paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.EllipsizeTextView
 * JD-Core Version:    0.7.0.1
 */