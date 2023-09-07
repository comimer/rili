package com.android.calendar.homepage;

import android.graphics.Rect;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;

public class j0
{
  private int a = 0;
  private float b;
  private float c;
  private float d;
  private boolean e;
  
  public boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, l0.l paraml)
  {
    boolean bool = f.a(paraml.a);
    int i = 0;
    if (bool) {
      return false;
    }
    float f1 = this.b;
    int j = paraml.a.getEx().getStartJulianDay();
    int k = paraml.a.getEx().getEndJulianDay();
    if ((j <= paramInt1) && (k >= paramInt1))
    {
      int m = paraml.a.getEx().getStartMinute();
      int n = paraml.a.getEx().getEndMinute();
      if (j < paramInt1) {
        m = i;
      }
      if (k > paramInt1) {
        n = 1440;
      }
      k = paraml.f;
      j = paraml.g;
      int i1 = m / 60;
      i = n / 60;
      paramInt1 = i;
      if (i * 60 == n) {
        paramInt1 = i - 1;
      }
      float f2 = paramInt3;
      float f3 = (int)(m * f1);
      float f4 = this.c;
      f3 = f3 + f2 + (i1 + f4);
      paraml.d = f3;
      f1 = f2 + (int)(n * f1) + (paramInt1 - f4);
      paraml.e = f1;
      f4 = this.d;
      if (f1 < f3 + f4) {
        paraml.e = (f3 + f4);
      }
      paramInt1 = this.a;
      f1 = (paramInt4 - (j + 1) * paramInt1) / j;
      f3 = paramInt2 + k * (paramInt1 + f1);
      paraml.b = f3;
      paraml.c = (f3 + f1);
      return true;
    }
    return false;
  }
  
  boolean b(l0.l paraml, Rect paramRect)
  {
    return (paraml.b < paramRect.right) && (paraml.c >= paramRect.left) && (paraml.d < paramRect.bottom) && (paraml.e >= paramRect.top);
  }
  
  float c(float paramFloat1, float paramFloat2, l0.l paraml)
  {
    float f1 = paraml.b;
    float f2 = paraml.c;
    float f3 = paraml.d;
    float f4 = paraml.e;
    double d1;
    if (paramFloat1 >= f1)
    {
      if (paramFloat1 <= f2)
      {
        if (paramFloat2 >= f3)
        {
          if (paramFloat2 <= f4) {
            return 0.0F;
          }
          return paramFloat2 - f4;
        }
        return f3 - paramFloat2;
      }
      paramFloat1 -= f2;
      if (paramFloat2 < f3)
      {
        paramFloat2 = f3 - paramFloat2;
        d1 = Math.sqrt(paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2);
      }
    }
    for (;;)
    {
      return (float)d1;
      if (paramFloat2 > f4)
      {
        paramFloat2 -= f4;
        d1 = Math.sqrt(paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2);
      }
      else
      {
        return paramFloat1;
        paramFloat1 = f1 - paramFloat1;
        if (paramFloat2 < f3)
        {
          paramFloat2 = f3 - paramFloat2;
          d1 = Math.sqrt(paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2);
        }
        else
        {
          if (paramFloat2 <= f4) {
            break;
          }
          paramFloat2 -= f4;
          d1 = Math.sqrt(paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2);
        }
      }
    }
    return paramFloat1;
  }
  
  void d(int paramInt)
  {
    this.a = paramInt;
  }
  
  public void e(float paramFloat)
  {
    this.c = paramFloat;
  }
  
  public void f(float paramFloat)
  {
    this.b = (paramFloat / 60.0F);
  }
  
  public void g(float paramFloat)
  {
    this.d = paramFloat;
  }
  
  public void h(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.j0
 * JD-Core Version:    0.7.0.1
 */