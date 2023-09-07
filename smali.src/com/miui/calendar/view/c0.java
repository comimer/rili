package com.miui.calendar.view;

import android.content.Context;
import android.view.VelocityTracker;
import android.view.View;
import com.android.calendar.common.Utils;

public class c0
  extends b
{
  private static final float y = (float)Math.log(1.5D);
  private final int n;
  private final int o;
  private final int p;
  private final int q;
  private final int r;
  final l v;
  private Context w;
  private int x = 0;
  
  public c0(Context paramContext, u paramu, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    super(paramContext, paramu);
    this.n = paramInt1;
    this.o = paramInt2;
    this.p = paramInt3;
    this.c = paramInt1;
    this.q = paramInt4;
    this.r = paramInt5;
    this.v = l.a(paramContext);
    this.w = paramContext;
  }
  
  private int u(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 != 0) && (paramInt2 != paramInt3)) {
      return (int)(Math.log(paramInt1) / y) * 10;
    }
    return 0;
  }
  
  protected int e(VelocityTracker paramVelocityTracker)
  {
    int i;
    if (paramVelocityTracker != null)
    {
      paramVelocityTracker.computeCurrentVelocity(1000, this.f);
      i = (int)paramVelocityTracker.getYVelocity();
    }
    else
    {
      i = 0;
    }
    return i;
  }
  
  protected int h(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int i = (int)paramView.getY() + this.c;
    int j = this.v.c();
    paramInt4 = this.v.d();
    if (Utils.t(this.w) == 6)
    {
      paramInt2 = this.o;
      if (i <= paramInt2)
      {
        paramInt1 = paramInt2;
        break label79;
      }
      paramInt1 = this.r;
    }
    for (;;)
    {
      break;
      paramInt2 = this.n;
      if (i <= paramInt2)
      {
        paramInt1 = paramInt2;
        label79:
        paramInt2 = paramInt1;
      }
      else
      {
        paramInt1 = this.p;
        if (i > paramInt1)
        {
          paramInt3 = this.q;
          paramInt2 = paramInt1;
          paramInt1 = paramInt3;
        }
      }
    }
    if (Math.abs(paramInt5) < j)
    {
      paramInt3 = this.x;
      if ((i < paramInt3) && (i < paramInt1 - paramInt4))
      {
        paramInt3 = paramInt2;
        break label173;
      }
      if ((i > paramInt3) && (i > paramInt4 + paramInt2))
      {
        paramInt3 = paramInt1;
        break label173;
      }
    }
    paramInt3 = 2147483647;
    label173:
    paramInt4 = paramInt3;
    if (paramInt3 == 2147483647)
    {
      paramInt4 = i + u(paramInt5, this.x, i);
      paramInt3 = paramInt1;
      if (Math.abs(paramInt2 - paramInt4) < Math.abs(paramInt1 - paramInt4)) {
        paramInt3 = paramInt2;
      }
      paramInt4 = paramInt3;
    }
    return paramInt4;
  }
  
  protected int j(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramInt3 = (int)(paramView.getTranslationY() + this.c + paramInt2 - paramInt4);
    if (Utils.t(this.w) == 6)
    {
      paramInt2 = this.o;
      if (paramInt3 > paramInt2)
      {
        paramInt1 = this.q;
        break label95;
      }
    }
    else
    {
      paramInt2 = this.n;
      if (paramInt3 > paramInt2) {
        break label70;
      }
    }
    paramInt1 = paramInt2;
    break label95;
    label70:
    paramInt1 = this.p;
    if (paramInt3 > paramInt1)
    {
      paramInt3 = this.q;
      paramInt2 = paramInt1;
      paramInt1 = paramInt3;
    }
    label95:
    if (paramInt5 >= 0) {
      paramInt2 = paramInt1;
    }
    return paramInt2;
  }
  
  protected int k(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = (int)(paramView.getTranslationY() + this.c + paramInt2 - paramInt4);
    if (Utils.t(this.w) == 6)
    {
      paramInt1 = this.o;
      if (paramInt3 > paramInt1)
      {
        paramInt2 = this.q;
        break label98;
      }
    }
    else
    {
      paramInt1 = this.n;
      if (paramInt3 > paramInt1) {
        break label70;
      }
    }
    paramInt2 = paramInt1;
    break label98;
    label70:
    paramInt2 = this.p;
    if (paramInt3 > paramInt2)
    {
      paramInt4 = this.q + 100;
      paramInt1 = paramInt2;
      paramInt2 = paramInt4;
    }
    label98:
    if (paramInt3 >= paramInt1)
    {
      paramInt1 = paramInt3;
      if (paramInt3 > paramInt2) {
        paramInt1 = paramInt2;
      }
    }
    return paramInt1;
  }
  
  public void n(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, VelocityTracker paramVelocityTracker)
  {
    super.n(paramView, paramInt1, paramInt2, paramInt3, paramInt4, paramVelocityTracker);
  }
  
  public void o(View paramView, int paramInt1, int paramInt2)
  {
    super.o(paramView, paramInt1, paramInt2);
    this.x = ((int)paramView.getY() + this.c);
  }
  
  protected void t(View paramView, float paramFloat)
  {
    paramView.setTranslationY(paramFloat - this.c);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.c0
 * JD-Core Version:    0.7.0.1
 */