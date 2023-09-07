package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayout.b;
import androidx.constraintlayout.widget.b;
import androidx.constraintlayout.widget.j;

public class Layer
  extends b
{
  private float D = 0.0F;
  private float E = 0.0F;
  private boolean F;
  private boolean G;
  private float j = (0.0F / 0.0F);
  private float k = (0.0F / 0.0F);
  private float l = (0.0F / 0.0F);
  ConstraintLayout m;
  private float n = 1.0F;
  private float o = 1.0F;
  protected float p = (0.0F / 0.0F);
  protected float q = (0.0F / 0.0F);
  protected float r = (0.0F / 0.0F);
  protected float v = (0.0F / 0.0F);
  protected float w = (0.0F / 0.0F);
  protected float x = (0.0F / 0.0F);
  boolean y = true;
  View[] z = null;
  
  public Layer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void u()
  {
    if (this.m == null) {
      return;
    }
    int i = this.b;
    if (i == 0) {
      return;
    }
    View[] arrayOfView = this.z;
    if ((arrayOfView == null) || (arrayOfView.length != i)) {
      this.z = new View[i];
    }
    for (i = 0; i < this.b; i++)
    {
      int i1 = this.a[i];
      this.z[i] = this.m.h(i1);
    }
  }
  
  private void v()
  {
    if (this.m == null) {
      return;
    }
    if (this.z == null) {
      u();
    }
    t();
    double d;
    if (Float.isNaN(this.l)) {
      d = 0.0D;
    } else {
      d = Math.toRadians(this.l);
    }
    float f1 = (float)Math.sin(d);
    float f2 = (float)Math.cos(d);
    float f3 = this.n;
    float f4 = this.o;
    float f5 = -f4;
    for (int i = 0; i < this.b; i++)
    {
      View localView = this.z[i];
      int i1 = (localView.getLeft() + localView.getRight()) / 2;
      int i2 = (localView.getTop() + localView.getBottom()) / 2;
      float f6 = i1 - this.p;
      float f7 = i2 - this.q;
      float f8 = this.D;
      float f9 = this.E;
      localView.setTranslationX(f3 * f2 * f6 + f5 * f1 * f7 - f6 + f8);
      localView.setTranslationY(f6 * (f3 * f1) + f4 * f2 * f7 - f7 + f9);
      localView.setScaleY(this.o);
      localView.setScaleX(this.n);
      if (!Float.isNaN(this.l)) {
        localView.setRotation(this.l);
      }
    }
  }
  
  protected void i(ConstraintLayout paramConstraintLayout)
  {
    h(paramConstraintLayout);
  }
  
  protected void m(AttributeSet paramAttributeSet)
  {
    super.m(paramAttributeSet);
    int i = 0;
    this.e = false;
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, j.n1);
      int i1 = paramAttributeSet.getIndexCount();
      while (i < i1)
      {
        int i2 = paramAttributeSet.getIndex(i);
        if (i2 == j.u1) {
          this.F = true;
        } else if (i2 == j.B1) {
          this.G = true;
        }
        i++;
      }
      paramAttributeSet.recycle();
    }
  }
  
  public void o(ConstraintLayout paramConstraintLayout)
  {
    u();
    this.p = (0.0F / 0.0F);
    this.q = (0.0F / 0.0F);
    paramConstraintLayout = ((ConstraintLayout.b)getLayoutParams()).a();
    paramConstraintLayout.k1(0);
    paramConstraintLayout.L0(0);
    t();
    layout((int)this.w - getPaddingLeft(), (int)this.x - getPaddingTop(), (int)this.r + getPaddingRight(), (int)this.v + getPaddingBottom());
    v();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.m = ((ConstraintLayout)getParent());
    if ((this.F) || (this.G))
    {
      int i = getVisibility();
      float f = getElevation();
      for (int i1 = 0; i1 < this.b; i1++)
      {
        int i2 = this.a[i1];
        View localView = this.m.h(i2);
        if (localView != null)
        {
          if (this.F) {
            localView.setVisibility(i);
          }
          if ((this.G) && (f > 0.0F)) {
            localView.setTranslationZ(localView.getTranslationZ() + f);
          }
        }
      }
    }
  }
  
  public void q(ConstraintLayout paramConstraintLayout)
  {
    this.m = paramConstraintLayout;
    float f = getRotation();
    if (f == 0.0F)
    {
      if (!Float.isNaN(this.l)) {
        this.l = f;
      }
    }
    else {
      this.l = f;
    }
  }
  
  public void setElevation(float paramFloat)
  {
    super.setElevation(paramFloat);
    g();
  }
  
  public void setPivotX(float paramFloat)
  {
    this.j = paramFloat;
    v();
  }
  
  public void setPivotY(float paramFloat)
  {
    this.k = paramFloat;
    v();
  }
  
  public void setRotation(float paramFloat)
  {
    this.l = paramFloat;
    v();
  }
  
  public void setScaleX(float paramFloat)
  {
    this.n = paramFloat;
    v();
  }
  
  public void setScaleY(float paramFloat)
  {
    this.o = paramFloat;
    v();
  }
  
  public void setTranslationX(float paramFloat)
  {
    this.D = paramFloat;
    v();
  }
  
  public void setTranslationY(float paramFloat)
  {
    this.E = paramFloat;
    v();
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    g();
  }
  
  protected void t()
  {
    if (this.m == null) {
      return;
    }
    if ((!this.y) && (!Float.isNaN(this.p)) && (!Float.isNaN(this.q))) {
      return;
    }
    if ((!Float.isNaN(this.j)) && (!Float.isNaN(this.k)))
    {
      this.q = this.k;
      this.p = this.j;
    }
    else
    {
      View[] arrayOfView = l(this.m);
      int i = 0;
      int i1 = arrayOfView[0].getLeft();
      int i2 = arrayOfView[0].getTop();
      int i3 = arrayOfView[0].getRight();
      int i4 = arrayOfView[0].getBottom();
      while (i < this.b)
      {
        View localView = arrayOfView[i];
        i1 = Math.min(i1, localView.getLeft());
        i2 = Math.min(i2, localView.getTop());
        i3 = Math.max(i3, localView.getRight());
        i4 = Math.max(i4, localView.getBottom());
        i++;
      }
      this.r = i3;
      this.v = i4;
      this.w = i1;
      this.x = i2;
      if (Float.isNaN(this.j)) {
        this.p = ((i1 + i3) / 2);
      } else {
        this.p = this.j;
      }
      if (Float.isNaN(this.k)) {
        this.q = ((i2 + i4) / 2);
      } else {
        this.q = this.k;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.helper.widget.Layer
 * JD-Core Version:    0.7.0.1
 */