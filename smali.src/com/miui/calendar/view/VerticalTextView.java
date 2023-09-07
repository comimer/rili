package com.miui.calendar.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.miui.calendar.util.w;
import com.miui.calendar.util.z;

public class VerticalTextView
  extends View
{
  private Paint a;
  private int b;
  private int c;
  private float d;
  private int e;
  private float f = 36.0F;
  private int g;
  private String[] h = { "" };
  private int i = 0;
  private int j = 0;
  
  public VerticalTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public VerticalTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = new Paint();
    this.a = paramContext;
    paramContext.setTextAlign(Paint.Align.LEFT);
    this.a.setAntiAlias(true);
    this.a.setColor(-16777216);
  }
  
  private void a()
  {
    if (this.c == 0) {
      return;
    }
    Object localObject = new float[1];
    this.a.setTextSize(this.f);
    this.a.getTextWidths("正", (float[])localObject);
    this.a.setTypeface(w.c());
    this.d = localObject[0];
    localObject = this.a.getFontMetrics();
    this.e = ((int)(Math.ceil(((Paint.FontMetrics)localObject).descent - ((Paint.FontMetrics)localObject).top) * 0.9D));
    this.g = ((int)Math.ceil(this.d * 1.1D + 2.0D));
    int k = 1;
    int m = 0;
    int n = m;
    int i1 = n;
    int i2;
    for (;;)
    {
      localObject = this.h;
      i2 = k;
      if (m >= localObject.length) {
        break;
      }
      i2 = n;
      if (n != 0) {
        i2 = n + this.e / 3;
      }
      n = i2 + this.e * localObject[m].length();
      if (n > this.c)
      {
        k++;
        m--;
        if (i1 != 0)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("can't draw this word:");
          ((StringBuilder)localObject).append(this.h[(m + 1)]);
          z.m("Cal:D:VerticalTextView", ((StringBuilder)localObject).toString());
          i2 = k;
          break;
        }
        i1 = 1;
        n = 0;
      }
      else
      {
        i1 = 0;
      }
      m++;
    }
    this.b = (this.g * i2);
  }
  
  private void b(Canvas paramCanvas)
  {
    if (this.c == 0) {
      return;
    }
    this.j = 0;
    int k = this.b;
    int m = this.g;
    this.i = (k - m + (m - (int)this.d) / 2);
    k = 0;
    m = k;
    for (;;)
    {
      String[] arrayOfString = this.h;
      if (k >= arrayOfString.length) {
        break;
      }
      int n = this.j;
      if (n != 0) {
        this.j = (n + this.e / 3);
      }
      n = this.j + this.e * arrayOfString[k].length();
      if (n > this.c)
      {
        this.i -= this.g;
        k--;
        this.j = 0;
        if (m != 0)
        {
          paramCanvas = new StringBuilder();
          paramCanvas.append("can't draw this word:");
          paramCanvas.append(this.h[(k + 1)]);
          z.m("Cal:D:VerticalTextView", paramCanvas.toString());
          break;
        }
        m = 1;
      }
      else
      {
        m = 0;
        while (m < this.h[k].length())
        {
          char c1 = this.h[k].charAt(m);
          float f1 = this.i;
          int i1 = this.j;
          int i2 = this.e;
          m++;
          paramCanvas.drawText(String.valueOf(c1), f1, i1 + i2 * m, this.a);
        }
        this.j = n;
        m = 0;
      }
      k++;
    }
  }
  
  private int c(int paramInt)
  {
    int k = View.MeasureSpec.getMode(paramInt);
    paramInt = View.MeasureSpec.getSize(paramInt);
    if (k == -2147483648) {
      this.c = paramInt;
    } else if (k == 1073741824) {
      this.c = paramInt;
    }
    return this.c;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    b(paramCanvas);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt1 = c(paramInt2);
    if ((this.b == 0) && (this.c != 0)) {
      a();
    }
    setMeasuredDimension(this.b, paramInt1);
  }
  
  public void setText(String paramString)
  {
    this.h = paramString.split(" ");
    if (this.c > 0)
    {
      a();
      requestLayout();
    }
  }
  
  public void setTextColor(int paramInt)
  {
    this.a.setColor(paramInt);
  }
  
  public void setTextSize(float paramFloat)
  {
    this.f = paramFloat;
    requestLayout();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.VerticalTextView
 * JD-Core Version:    0.7.0.1
 */