package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.NotFoundException;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import androidx.core.view.a0;
import androidx.core.widget.d;
import d.j;

class f
{
  private final CompoundButton a;
  private ColorStateList b = null;
  private PorterDuff.Mode c = null;
  private boolean d = false;
  private boolean e = false;
  private boolean f;
  
  f(CompoundButton paramCompoundButton)
  {
    this.a = paramCompoundButton;
  }
  
  void a()
  {
    Drawable localDrawable = d.a(this.a);
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
      this.a.setButtonDrawable(localDrawable);
    }
  }
  
  int b(int paramInt)
  {
    return paramInt;
  }
  
  ColorStateList c()
  {
    return this.b;
  }
  
  PorterDuff.Mode d()
  {
    return this.c;
  }
  
  void e(AttributeSet paramAttributeSet, int paramInt)
  {
    localObject = this.a.getContext();
    int[] arrayOfInt = j.U0;
    localObject = z0.v((Context)localObject, paramAttributeSet, arrayOfInt, paramInt, 0);
    CompoundButton localCompoundButton = this.a;
    a0.j0(localCompoundButton, localCompoundButton.getContext(), arrayOfInt, paramAttributeSet, ((z0)localObject).r(), paramInt, 0);
    try
    {
      paramInt = j.W0;
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
      paramAttributeSet.setButtonDrawable(e.a.b(paramAttributeSet.getContext(), paramInt));
      paramInt = 1;
    }
    catch (Resources.NotFoundException paramAttributeSet)
    {
      break label93;
    }
    paramInt = 0;
    if (paramInt == 0)
    {
      paramInt = j.V0;
      if (((z0)localObject).s(paramInt))
      {
        paramInt = ((z0)localObject).n(paramInt, 0);
        if (paramInt != 0)
        {
          paramAttributeSet = this.a;
          paramAttributeSet.setButtonDrawable(e.a.b(paramAttributeSet.getContext(), paramInt));
        }
      }
    }
    paramInt = j.X0;
    if (((z0)localObject).s(paramInt)) {
      d.c(this.a, ((z0)localObject).c(paramInt));
    }
    paramInt = j.Y0;
    if (((z0)localObject).s(paramInt)) {
      d.d(this.a, d0.e(((z0)localObject).k(paramInt, -1), null));
    }
    ((z0)localObject).w();
  }
  
  void f()
  {
    if (this.f)
    {
      this.f = false;
      return;
    }
    this.f = true;
    a();
  }
  
  void g(ColorStateList paramColorStateList)
  {
    this.b = paramColorStateList;
    this.d = true;
    a();
  }
  
  void h(PorterDuff.Mode paramMode)
  {
    this.c = paramMode;
    this.e = true;
    a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.f
 * JD-Core Version:    0.7.0.1
 */