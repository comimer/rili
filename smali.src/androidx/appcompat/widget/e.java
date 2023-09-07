package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.NotFoundException;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckedTextView;
import androidx.core.view.a0;
import androidx.core.widget.c;
import d.j;

class e
{
  private final CheckedTextView a;
  private ColorStateList b = null;
  private PorterDuff.Mode c = null;
  private boolean d = false;
  private boolean e = false;
  private boolean f;
  
  e(CheckedTextView paramCheckedTextView)
  {
    this.a = paramCheckedTextView;
  }
  
  void a()
  {
    Drawable localDrawable = c.a(this.a);
    if ((localDrawable != null) && ((this.d) || (this.e)))
    {
      localDrawable = androidx.core.graphics.drawable.a.r(localDrawable).mutate();
      if (this.d) {
        androidx.core.graphics.drawable.a.o(localDrawable, this.b);
      }
      if (this.e) {
        androidx.core.graphics.drawable.a.p(localDrawable, this.c);
      }
      if (localDrawable.isStateful()) {
        localDrawable.setState(this.a.getDrawableState());
      }
      this.a.setCheckMarkDrawable(localDrawable);
    }
  }
  
  ColorStateList b()
  {
    return this.b;
  }
  
  PorterDuff.Mode c()
  {
    return this.c;
  }
  
  void d(AttributeSet paramAttributeSet, int paramInt)
  {
    localObject = this.a.getContext();
    int[] arrayOfInt = j.P0;
    localObject = z0.v((Context)localObject, paramAttributeSet, arrayOfInt, paramInt, 0);
    CheckedTextView localCheckedTextView = this.a;
    a0.j0(localCheckedTextView, localCheckedTextView.getContext(), arrayOfInt, paramAttributeSet, ((z0)localObject).r(), paramInt, 0);
    try
    {
      paramInt = j.R0;
      if (((z0)localObject).s(paramInt))
      {
        paramInt = ((z0)localObject).n(paramInt, 0);
        if (paramInt == 0) {}
      }
    }
    finally
    {
      label93:
      ((z0)localObject).w();
    }
    try
    {
      paramAttributeSet = this.a;
      paramAttributeSet.setCheckMarkDrawable(e.a.b(paramAttributeSet.getContext(), paramInt));
      paramInt = 1;
    }
    catch (Resources.NotFoundException paramAttributeSet)
    {
      break label93;
    }
    paramInt = 0;
    if (paramInt == 0)
    {
      paramInt = j.Q0;
      if (((z0)localObject).s(paramInt))
      {
        paramInt = ((z0)localObject).n(paramInt, 0);
        if (paramInt != 0)
        {
          paramAttributeSet = this.a;
          paramAttributeSet.setCheckMarkDrawable(e.a.b(paramAttributeSet.getContext(), paramInt));
        }
      }
    }
    paramInt = j.S0;
    if (((z0)localObject).s(paramInt)) {
      c.b(this.a, ((z0)localObject).c(paramInt));
    }
    paramInt = j.T0;
    if (((z0)localObject).s(paramInt)) {
      c.c(this.a, d0.e(((z0)localObject).k(paramInt, -1), null));
    }
    ((z0)localObject).w();
  }
  
  void e()
  {
    if (this.f)
    {
      this.f = false;
      return;
    }
    this.f = true;
    a();
  }
  
  void f(ColorStateList paramColorStateList)
  {
    this.b = paramColorStateList;
    this.d = true;
    a();
  }
  
  void g(PorterDuff.Mode paramMode)
  {
    this.c = paramMode;
    this.e = true;
    a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.e
 * JD-Core Version:    0.7.0.1
 */