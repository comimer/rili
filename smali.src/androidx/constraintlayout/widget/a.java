package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

public class a
  extends b
{
  private int j;
  private int k;
  private androidx.constraintlayout.core.widgets.a l;
  
  public a(Context paramContext)
  {
    super(paramContext);
    super.setVisibility(8);
  }
  
  private void t(ConstraintWidget paramConstraintWidget, int paramInt, boolean paramBoolean)
  {
    this.k = paramInt;
    if (paramBoolean)
    {
      paramInt = this.j;
      if (paramInt == 5) {
        this.k = 1;
      } else if (paramInt == 6) {
        this.k = 0;
      }
    }
    else
    {
      paramInt = this.j;
      if (paramInt == 5) {
        this.k = 0;
      } else if (paramInt == 6) {
        this.k = 1;
      }
    }
    if ((paramConstraintWidget instanceof androidx.constraintlayout.core.widgets.a)) {
      ((androidx.constraintlayout.core.widgets.a)paramConstraintWidget).A1(this.k);
    }
  }
  
  public boolean getAllowsGoneWidget()
  {
    return this.l.u1();
  }
  
  public int getMargin()
  {
    return this.l.w1();
  }
  
  public int getType()
  {
    return this.j;
  }
  
  protected void m(AttributeSet paramAttributeSet)
  {
    super.m(paramAttributeSet);
    this.l = new androidx.constraintlayout.core.widgets.a();
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, j.n1);
      int i = paramAttributeSet.getIndexCount();
      for (int m = 0; m < i; m++)
      {
        int n = paramAttributeSet.getIndex(m);
        if (n == j.D1)
        {
          setType(paramAttributeSet.getInt(n, 0));
        }
        else if (n == j.C1)
        {
          this.l.z1(paramAttributeSet.getBoolean(n, true));
        }
        else if (n == j.E1)
        {
          n = paramAttributeSet.getDimensionPixelSize(n, 0);
          this.l.B1(n);
        }
      }
      paramAttributeSet.recycle();
    }
    this.d = this.l;
    s();
  }
  
  public void n(ConstraintWidget paramConstraintWidget, boolean paramBoolean)
  {
    t(paramConstraintWidget, this.j, paramBoolean);
  }
  
  public void setAllowsGoneWidget(boolean paramBoolean)
  {
    this.l.z1(paramBoolean);
  }
  
  public void setDpMargin(int paramInt)
  {
    float f = getResources().getDisplayMetrics().density;
    paramInt = (int)(paramInt * f + 0.5F);
    this.l.B1(paramInt);
  }
  
  public void setMargin(int paramInt)
  {
    this.l.B1(paramInt);
  }
  
  public void setType(int paramInt)
  {
    this.j = paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.widget.a
 * JD-Core Version:    0.7.0.1
 */