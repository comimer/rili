package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;

public class e
  extends ViewGroup
{
  d a;
  
  protected a a()
  {
    return new a(-2, -2);
  }
  
  public a b(AttributeSet paramAttributeSet)
  {
    return new a(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new ConstraintLayout.b(paramLayoutParams);
  }
  
  public d getConstraintSet()
  {
    if (this.a == null) {
      this.a = new d();
    }
    this.a.i(this);
    return this.a;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public static class a
    extends ConstraintLayout.b
  {
    public float A0;
    public float B0;
    public float C0;
    public float D0;
    public float E0;
    public float F0;
    public float G0;
    public float H0;
    public float I0;
    public float J0;
    public float x0 = 1.0F;
    public boolean y0;
    public float z0;
    
    public a(int paramInt1, int paramInt2)
    {
      super(paramInt2);
      this.y0 = false;
      this.z0 = 0.0F;
      this.A0 = 0.0F;
      this.B0 = 0.0F;
      this.C0 = 0.0F;
      this.D0 = 1.0F;
      this.E0 = 1.0F;
      this.F0 = 0.0F;
      this.G0 = 0.0F;
      this.H0 = 0.0F;
      this.I0 = 0.0F;
      this.J0 = 0.0F;
    }
    
    public a(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      int i = 0;
      this.y0 = false;
      this.z0 = 0.0F;
      this.A0 = 0.0F;
      this.B0 = 0.0F;
      this.C0 = 0.0F;
      this.D0 = 1.0F;
      this.E0 = 1.0F;
      this.F0 = 0.0F;
      this.G0 = 0.0F;
      this.H0 = 0.0F;
      this.I0 = 0.0F;
      this.J0 = 0.0F;
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.K4);
      int j = paramContext.getIndexCount();
      while (i < j)
      {
        int k = paramContext.getIndex(i);
        if (k == j.L4)
        {
          this.x0 = paramContext.getFloat(k, this.x0);
        }
        else if (k == j.W4)
        {
          this.z0 = paramContext.getFloat(k, this.z0);
          this.y0 = true;
        }
        else if (k == j.T4)
        {
          this.B0 = paramContext.getFloat(k, this.B0);
        }
        else if (k == j.U4)
        {
          this.C0 = paramContext.getFloat(k, this.C0);
        }
        else if (k == j.S4)
        {
          this.A0 = paramContext.getFloat(k, this.A0);
        }
        else if (k == j.Q4)
        {
          this.D0 = paramContext.getFloat(k, this.D0);
        }
        else if (k == j.R4)
        {
          this.E0 = paramContext.getFloat(k, this.E0);
        }
        else if (k == j.M4)
        {
          this.F0 = paramContext.getFloat(k, this.F0);
        }
        else if (k == j.N4)
        {
          this.G0 = paramContext.getFloat(k, this.G0);
        }
        else if (k == j.O4)
        {
          this.H0 = paramContext.getFloat(k, this.H0);
        }
        else if (k == j.P4)
        {
          this.I0 = paramContext.getFloat(k, this.I0);
        }
        else if (k == j.V4)
        {
          this.J0 = paramContext.getFloat(k, this.J0);
        }
        i++;
      }
      paramContext.recycle();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.widget.e
 * JD-Core Version:    0.7.0.1
 */