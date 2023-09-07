package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import androidx.core.view.a0;
import d.f;
import d.j;

public class ButtonBarLayout
  extends LinearLayout
{
  private boolean a;
  private boolean b;
  private int c = -1;
  
  public ButtonBarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    int[] arrayOfInt = j.N0;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, arrayOfInt);
    a0.j0(this, paramContext, arrayOfInt, paramAttributeSet, localTypedArray, 0, 0);
    this.a = localTypedArray.getBoolean(j.O0, true);
    localTypedArray.recycle();
    if (getOrientation() == 1) {
      setStacked(this.a);
    }
  }
  
  private int a(int paramInt)
  {
    int i = getChildCount();
    while (paramInt < i)
    {
      if (getChildAt(paramInt).getVisibility() == 0) {
        return paramInt;
      }
      paramInt++;
    }
    return -1;
  }
  
  private boolean b()
  {
    return this.b;
  }
  
  private void setStacked(boolean paramBoolean)
  {
    if ((this.b != paramBoolean) && ((!paramBoolean) || (this.a)))
    {
      this.b = paramBoolean;
      setOrientation(paramBoolean);
      int i;
      if (paramBoolean) {
        i = 8388613;
      } else {
        i = 80;
      }
      setGravity(i);
      View localView = findViewById(f.F);
      if (localView != null)
      {
        if (paramBoolean) {
          paramBoolean = true;
        } else {
          paramBoolean = true;
        }
        localView.setVisibility(paramBoolean);
      }
      for (paramBoolean = getChildCount() - 2; !paramBoolean; paramBoolean--) {
        bringChildToFront(getChildAt(paramBoolean));
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    boolean bool = this.a;
    int j = 0;
    if (bool)
    {
      if ((i > this.c) && (b())) {
        setStacked(false);
      }
      this.c = i;
    }
    int k;
    if ((!b()) && (View.MeasureSpec.getMode(paramInt1) == 1073741824))
    {
      k = View.MeasureSpec.makeMeasureSpec(i, -2147483648);
      i = 1;
    }
    else
    {
      k = paramInt1;
      i = 0;
    }
    super.onMeasure(k, paramInt2);
    int m = i;
    if (this.a)
    {
      m = i;
      if (!b())
      {
        if ((getMeasuredWidthAndState() & 0xFF000000) == 16777216) {
          k = 1;
        } else {
          k = 0;
        }
        m = i;
        if (k != 0)
        {
          setStacked(true);
          m = 1;
        }
      }
    }
    if (m != 0) {
      super.onMeasure(paramInt1, paramInt2);
    }
    m = a(0);
    i = j;
    if (m >= 0)
    {
      View localView = getChildAt(m);
      LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localView.getLayoutParams();
      k = getPaddingTop() + localView.getMeasuredHeight() + localLayoutParams.topMargin + localLayoutParams.bottomMargin + 0;
      if (b())
      {
        m = a(m + 1);
        i = k;
        if (m >= 0) {
          i = k + (getChildAt(m).getPaddingTop() + (int)(getResources().getDisplayMetrics().density * 16.0F));
        }
      }
      else
      {
        i = k + getPaddingBottom();
      }
    }
    if (a0.A(this) != i)
    {
      setMinimumHeight(i);
      if (paramInt2 == 0) {
        super.onMeasure(paramInt1, paramInt2);
      }
    }
  }
  
  public void setAllowStacking(boolean paramBoolean)
  {
    if (this.a != paramBoolean)
    {
      this.a = paramBoolean;
      if ((!paramBoolean) && (b())) {
        setStacked(false);
      }
      requestLayout();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.ButtonBarLayout
 * JD-Core Version:    0.7.0.1
 */