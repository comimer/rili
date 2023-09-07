package androidx.constraintlayout.helper.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.e;
import androidx.constraintlayout.core.widgets.h;
import androidx.constraintlayout.widget.b;
import androidx.constraintlayout.widget.j;
import androidx.constraintlayout.widget.l;

public class Flow
  extends l
{
  private e l;
  
  public Flow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void m(AttributeSet paramAttributeSet)
  {
    super.m(paramAttributeSet);
    this.l = new e();
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, j.n1);
      int i = paramAttributeSet.getIndexCount();
      for (int j = 0; j < i; j++)
      {
        int k = paramAttributeSet.getIndex(j);
        if (k == j.o1) {
          this.l.D2(paramAttributeSet.getInt(k, 0));
        } else if (k == j.p1) {
          this.l.I1(paramAttributeSet.getDimensionPixelSize(k, 0));
        } else if (k == j.z1) {
          this.l.N1(paramAttributeSet.getDimensionPixelSize(k, 0));
        } else if (k == j.A1) {
          this.l.K1(paramAttributeSet.getDimensionPixelSize(k, 0));
        } else if (k == j.q1) {
          this.l.L1(paramAttributeSet.getDimensionPixelSize(k, 0));
        } else if (k == j.r1) {
          this.l.O1(paramAttributeSet.getDimensionPixelSize(k, 0));
        } else if (k == j.s1) {
          this.l.M1(paramAttributeSet.getDimensionPixelSize(k, 0));
        } else if (k == j.t1) {
          this.l.J1(paramAttributeSet.getDimensionPixelSize(k, 0));
        } else if (k == j.Z1) {
          this.l.I2(paramAttributeSet.getInt(k, 0));
        } else if (k == j.P1) {
          this.l.x2(paramAttributeSet.getInt(k, 0));
        } else if (k == j.Y1) {
          this.l.H2(paramAttributeSet.getInt(k, 0));
        } else if (k == j.J1) {
          this.l.r2(paramAttributeSet.getInt(k, 0));
        } else if (k == j.R1) {
          this.l.z2(paramAttributeSet.getInt(k, 0));
        } else if (k == j.L1) {
          this.l.t2(paramAttributeSet.getInt(k, 0));
        } else if (k == j.T1) {
          this.l.B2(paramAttributeSet.getInt(k, 0));
        } else if (k == j.N1) {
          this.l.v2(paramAttributeSet.getFloat(k, 0.5F));
        } else if (k == j.I1) {
          this.l.q2(paramAttributeSet.getFloat(k, 0.5F));
        } else if (k == j.Q1) {
          this.l.y2(paramAttributeSet.getFloat(k, 0.5F));
        } else if (k == j.K1) {
          this.l.s2(paramAttributeSet.getFloat(k, 0.5F));
        } else if (k == j.S1) {
          this.l.A2(paramAttributeSet.getFloat(k, 0.5F));
        } else if (k == j.W1) {
          this.l.F2(paramAttributeSet.getFloat(k, 0.5F));
        } else if (k == j.M1) {
          this.l.u2(paramAttributeSet.getInt(k, 2));
        } else if (k == j.V1) {
          this.l.E2(paramAttributeSet.getInt(k, 2));
        } else if (k == j.O1) {
          this.l.w2(paramAttributeSet.getDimensionPixelSize(k, 0));
        } else if (k == j.X1) {
          this.l.G2(paramAttributeSet.getDimensionPixelSize(k, 0));
        } else if (k == j.U1) {
          this.l.C2(paramAttributeSet.getInt(k, -1));
        }
      }
      paramAttributeSet.recycle();
    }
    this.d = this.l;
    s();
  }
  
  public void n(ConstraintWidget paramConstraintWidget, boolean paramBoolean)
  {
    this.l.t1(paramBoolean);
  }
  
  @SuppressLint({"WrongCall"})
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    t(this.l, paramInt1, paramInt2);
  }
  
  public void setFirstHorizontalBias(float paramFloat)
  {
    this.l.q2(paramFloat);
    requestLayout();
  }
  
  public void setFirstHorizontalStyle(int paramInt)
  {
    this.l.r2(paramInt);
    requestLayout();
  }
  
  public void setFirstVerticalBias(float paramFloat)
  {
    this.l.s2(paramFloat);
    requestLayout();
  }
  
  public void setFirstVerticalStyle(int paramInt)
  {
    this.l.t2(paramInt);
    requestLayout();
  }
  
  public void setHorizontalAlign(int paramInt)
  {
    this.l.u2(paramInt);
    requestLayout();
  }
  
  public void setHorizontalBias(float paramFloat)
  {
    this.l.v2(paramFloat);
    requestLayout();
  }
  
  public void setHorizontalGap(int paramInt)
  {
    this.l.w2(paramInt);
    requestLayout();
  }
  
  public void setHorizontalStyle(int paramInt)
  {
    this.l.x2(paramInt);
    requestLayout();
  }
  
  public void setLastHorizontalBias(float paramFloat)
  {
    this.l.y2(paramFloat);
    requestLayout();
  }
  
  public void setLastHorizontalStyle(int paramInt)
  {
    this.l.z2(paramInt);
    requestLayout();
  }
  
  public void setLastVerticalBias(float paramFloat)
  {
    this.l.A2(paramFloat);
    requestLayout();
  }
  
  public void setLastVerticalStyle(int paramInt)
  {
    this.l.B2(paramInt);
    requestLayout();
  }
  
  public void setMaxElementsWrap(int paramInt)
  {
    this.l.C2(paramInt);
    requestLayout();
  }
  
  public void setOrientation(int paramInt)
  {
    this.l.D2(paramInt);
    requestLayout();
  }
  
  public void setPadding(int paramInt)
  {
    this.l.I1(paramInt);
    requestLayout();
  }
  
  public void setPaddingBottom(int paramInt)
  {
    this.l.J1(paramInt);
    requestLayout();
  }
  
  public void setPaddingLeft(int paramInt)
  {
    this.l.L1(paramInt);
    requestLayout();
  }
  
  public void setPaddingRight(int paramInt)
  {
    this.l.M1(paramInt);
    requestLayout();
  }
  
  public void setPaddingTop(int paramInt)
  {
    this.l.O1(paramInt);
    requestLayout();
  }
  
  public void setVerticalAlign(int paramInt)
  {
    this.l.E2(paramInt);
    requestLayout();
  }
  
  public void setVerticalBias(float paramFloat)
  {
    this.l.F2(paramFloat);
    requestLayout();
  }
  
  public void setVerticalGap(int paramInt)
  {
    this.l.G2(paramInt);
    requestLayout();
  }
  
  public void setVerticalStyle(int paramInt)
  {
    this.l.H2(paramInt);
    requestLayout();
  }
  
  public void setWrapMode(int paramInt)
  {
    this.l.I2(paramInt);
    requestLayout();
  }
  
  public void t(h paramh, int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    paramInt1 = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if (paramh != null)
    {
      paramh.C1(i, j, paramInt1, paramInt2);
      setMeasuredDimension(paramh.x1(), paramh.w1());
    }
    else
    {
      setMeasuredDimension(0, 0);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.helper.widget.Flow
 * JD-Core Version:    0.7.0.1
 */