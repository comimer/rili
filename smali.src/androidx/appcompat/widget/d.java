package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.a0;
import d.j;

class d
{
  private final View a;
  private final g b;
  private int c = -1;
  private x0 d;
  private x0 e;
  private x0 f;
  
  d(View paramView)
  {
    this.a = paramView;
    this.b = g.b();
  }
  
  private boolean a(Drawable paramDrawable)
  {
    if (this.f == null) {
      this.f = new x0();
    }
    x0 localx0 = this.f;
    localx0.a();
    Object localObject = a0.q(this.a);
    if (localObject != null)
    {
      localx0.d = true;
      localx0.a = ((ColorStateList)localObject);
    }
    localObject = a0.r(this.a);
    if (localObject != null)
    {
      localx0.c = true;
      localx0.b = ((PorterDuff.Mode)localObject);
    }
    if ((!localx0.d) && (!localx0.c)) {
      return false;
    }
    g.i(paramDrawable, localx0, this.a.getDrawableState());
    return true;
  }
  
  private boolean k()
  {
    boolean bool;
    if (this.d != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void b()
  {
    Drawable localDrawable = this.a.getBackground();
    if (localDrawable != null)
    {
      if ((k()) && (a(localDrawable))) {
        return;
      }
      x0 localx0 = this.e;
      if (localx0 != null)
      {
        g.i(localDrawable, localx0, this.a.getDrawableState());
      }
      else
      {
        localx0 = this.d;
        if (localx0 != null) {
          g.i(localDrawable, localx0, this.a.getDrawableState());
        }
      }
    }
  }
  
  ColorStateList c()
  {
    Object localObject = this.e;
    if (localObject != null) {
      localObject = ((x0)localObject).a;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  PorterDuff.Mode d()
  {
    Object localObject = this.e;
    if (localObject != null) {
      localObject = ((x0)localObject).b;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  void e(AttributeSet paramAttributeSet, int paramInt)
  {
    Object localObject = this.a.getContext();
    int[] arrayOfInt = j.K3;
    localObject = z0.v((Context)localObject, paramAttributeSet, arrayOfInt, paramInt, 0);
    View localView = this.a;
    a0.j0(localView, localView.getContext(), arrayOfInt, paramAttributeSet, ((z0)localObject).r(), paramInt, 0);
    try
    {
      paramInt = j.L3;
      if (((z0)localObject).s(paramInt))
      {
        this.c = ((z0)localObject).n(paramInt, -1);
        paramAttributeSet = this.b.f(this.a.getContext(), this.c);
        if (paramAttributeSet != null) {
          h(paramAttributeSet);
        }
      }
      paramInt = j.M3;
      if (((z0)localObject).s(paramInt)) {
        a0.q0(this.a, ((z0)localObject).c(paramInt));
      }
      paramInt = j.N3;
      if (((z0)localObject).s(paramInt)) {
        a0.r0(this.a, d0.e(((z0)localObject).k(paramInt, -1), null));
      }
      return;
    }
    finally
    {
      ((z0)localObject).w();
    }
  }
  
  void f(Drawable paramDrawable)
  {
    this.c = -1;
    h(null);
    b();
  }
  
  void g(int paramInt)
  {
    this.c = paramInt;
    Object localObject = this.b;
    if (localObject != null) {
      localObject = ((g)localObject).f(this.a.getContext(), paramInt);
    } else {
      localObject = null;
    }
    h((ColorStateList)localObject);
    b();
  }
  
  void h(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null)
    {
      if (this.d == null) {
        this.d = new x0();
      }
      x0 localx0 = this.d;
      localx0.a = paramColorStateList;
      localx0.d = true;
    }
    else
    {
      this.d = null;
    }
    b();
  }
  
  void i(ColorStateList paramColorStateList)
  {
    if (this.e == null) {
      this.e = new x0();
    }
    x0 localx0 = this.e;
    localx0.a = paramColorStateList;
    localx0.d = true;
    b();
  }
  
  void j(PorterDuff.Mode paramMode)
  {
    if (this.e == null) {
      this.e = new x0();
    }
    x0 localx0 = this.e;
    localx0.b = paramMode;
    localx0.c = true;
    b();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.d
 * JD-Core Version:    0.7.0.1
 */