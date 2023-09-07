package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.h;

public abstract class l
  extends b
{
  private boolean j;
  private boolean k;
  
  public l(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void i(ConstraintLayout paramConstraintLayout)
  {
    h(paramConstraintLayout);
  }
  
  protected void m(AttributeSet paramAttributeSet)
  {
    super.m(paramAttributeSet);
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, j.n1);
      int i = paramAttributeSet.getIndexCount();
      for (int m = 0; m < i; m++)
      {
        int n = paramAttributeSet.getIndex(m);
        if (n == j.u1) {
          this.j = true;
        } else if (n == j.B1) {
          this.k = true;
        }
      }
      paramAttributeSet.recycle();
    }
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((this.j) || (this.k))
    {
      Object localObject = getParent();
      if ((localObject instanceof ConstraintLayout))
      {
        localObject = (ConstraintLayout)localObject;
        int i = getVisibility();
        float f = getElevation();
        for (int m = 0; m < this.b; m++)
        {
          View localView = ((ConstraintLayout)localObject).h(this.a[m]);
          if (localView != null)
          {
            if (this.j) {
              localView.setVisibility(i);
            }
            if ((this.k) && (f > 0.0F)) {
              localView.setTranslationZ(localView.getTranslationZ() + f);
            }
          }
        }
      }
    }
  }
  
  public void setElevation(float paramFloat)
  {
    super.setElevation(paramFloat);
    g();
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    g();
  }
  
  public void t(h paramh, int paramInt1, int paramInt2) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.widget.l
 * JD-Core Version:    0.7.0.1
 */