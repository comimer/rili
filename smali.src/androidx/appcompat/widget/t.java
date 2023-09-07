package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsSeekBar;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import androidx.core.graphics.drawable.a;
import androidx.core.view.a0;
import d.j;

class t
  extends p
{
  private final SeekBar d;
  private Drawable e;
  private ColorStateList f = null;
  private PorterDuff.Mode g = null;
  private boolean h = false;
  private boolean i = false;
  
  t(SeekBar paramSeekBar)
  {
    super(paramSeekBar);
    this.d = paramSeekBar;
  }
  
  private void f()
  {
    Drawable localDrawable = this.e;
    if ((localDrawable != null) && ((this.h) || (this.i)))
    {
      localDrawable = a.r(localDrawable.mutate());
      this.e = localDrawable;
      if (this.h) {
        a.o(localDrawable, this.f);
      }
      if (this.i) {
        a.p(this.e, this.g);
      }
      if (this.e.isStateful()) {
        this.e.setState(this.d.getDrawableState());
      }
    }
  }
  
  void c(AttributeSet paramAttributeSet, int paramInt)
  {
    super.c(paramAttributeSet, paramInt);
    Object localObject = this.d.getContext();
    int[] arrayOfInt = j.T;
    localObject = z0.v((Context)localObject, paramAttributeSet, arrayOfInt, paramInt, 0);
    SeekBar localSeekBar = this.d;
    a0.j0(localSeekBar, localSeekBar.getContext(), arrayOfInt, paramAttributeSet, ((z0)localObject).r(), paramInt, 0);
    paramAttributeSet = ((z0)localObject).h(j.U);
    if (paramAttributeSet != null) {
      this.d.setThumb(paramAttributeSet);
    }
    j(((z0)localObject).g(j.V));
    paramInt = j.X;
    if (((z0)localObject).s(paramInt))
    {
      this.g = d0.e(((z0)localObject).k(paramInt, -1), this.g);
      this.i = true;
    }
    paramInt = j.W;
    if (((z0)localObject).s(paramInt))
    {
      this.f = ((z0)localObject).c(paramInt);
      this.h = true;
    }
    ((z0)localObject).w();
    f();
  }
  
  void g(Canvas paramCanvas)
  {
    if (this.e != null)
    {
      int j = this.d.getMax();
      int k = 1;
      if (j > 1)
      {
        int m = this.e.getIntrinsicWidth();
        int n = this.e.getIntrinsicHeight();
        if (m >= 0) {
          m /= 2;
        } else {
          m = 1;
        }
        if (n >= 0) {
          k = n / 2;
        }
        this.e.setBounds(-m, -k, m, k);
        float f1 = (this.d.getWidth() - this.d.getPaddingLeft() - this.d.getPaddingRight()) / j;
        k = paramCanvas.save();
        paramCanvas.translate(this.d.getPaddingLeft(), this.d.getHeight() / 2);
        for (m = 0; m <= j; m++)
        {
          this.e.draw(paramCanvas);
          paramCanvas.translate(f1, 0.0F);
        }
        paramCanvas.restoreToCount(k);
      }
    }
  }
  
  void h()
  {
    Drawable localDrawable = this.e;
    if ((localDrawable != null) && (localDrawable.isStateful()) && (localDrawable.setState(this.d.getDrawableState()))) {
      this.d.invalidateDrawable(localDrawable);
    }
  }
  
  void i()
  {
    Drawable localDrawable = this.e;
    if (localDrawable != null) {
      localDrawable.jumpToCurrentState();
    }
  }
  
  void j(Drawable paramDrawable)
  {
    Drawable localDrawable = this.e;
    if (localDrawable != null) {
      localDrawable.setCallback(null);
    }
    this.e = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this.d);
      a.m(paramDrawable, a0.z(this.d));
      if (paramDrawable.isStateful()) {
        paramDrawable.setState(this.d.getDrawableState());
      }
      f();
    }
    this.d.invalidate();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.t
 * JD-Core Version:    0.7.0.1
 */