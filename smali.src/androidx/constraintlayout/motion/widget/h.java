package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.b;
import androidx.constraintlayout.widget.j;

public class h
  extends b
  implements MotionLayout.d
{
  private boolean j;
  private boolean k;
  private float l;
  protected View[] m;
  
  public void a(MotionLayout paramMotionLayout, int paramInt1, int paramInt2, float paramFloat) {}
  
  public void b(MotionLayout paramMotionLayout, int paramInt1, int paramInt2) {}
  
  public void c(MotionLayout paramMotionLayout, int paramInt) {}
  
  public float getProgress()
  {
    return this.l;
  }
  
  protected void m(AttributeSet paramAttributeSet)
  {
    super.m(paramAttributeSet);
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, j.a7);
      int i = paramAttributeSet.getIndexCount();
      for (int n = 0; n < i; n++)
      {
        int i1 = paramAttributeSet.getIndex(n);
        if (i1 == j.c7) {
          this.j = paramAttributeSet.getBoolean(i1, this.j);
        } else if (i1 == j.b7) {
          this.k = paramAttributeSet.getBoolean(i1, this.k);
        }
      }
      paramAttributeSet.recycle();
    }
  }
  
  public void setProgress(float paramFloat)
  {
    this.l = paramFloat;
    int i = this.b;
    int n = 0;
    int i1 = 0;
    if (i > 0)
    {
      this.m = l((ConstraintLayout)getParent());
      for (n = i1; n < this.b; n++) {
        x(this.m[n], paramFloat);
      }
    }
    ViewGroup localViewGroup = (ViewGroup)getParent();
    i1 = localViewGroup.getChildCount();
    while (n < i1)
    {
      View localView = localViewGroup.getChildAt(n);
      if (!(localView instanceof h)) {
        x(localView, paramFloat);
      }
      n++;
    }
  }
  
  public boolean t()
  {
    return false;
  }
  
  public boolean u()
  {
    return this.k;
  }
  
  public boolean v()
  {
    return this.j;
  }
  
  public void w(Canvas paramCanvas) {}
  
  public void x(View paramView, float paramFloat) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.motion.widget.h
 * JD-Core Version:    0.7.0.1
 */