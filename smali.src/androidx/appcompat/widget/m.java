package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.core.view.a0;
import androidx.core.widget.h;
import d.j;
import e.a;

public class m
{
  private final ImageView a;
  private x0 b;
  private x0 c;
  private x0 d;
  private int e = 0;
  
  public m(ImageView paramImageView)
  {
    this.a = paramImageView;
  }
  
  private boolean a(Drawable paramDrawable)
  {
    if (this.d == null) {
      this.d = new x0();
    }
    x0 localx0 = this.d;
    localx0.a();
    Object localObject = h.a(this.a);
    if (localObject != null)
    {
      localx0.d = true;
      localx0.a = ((ColorStateList)localObject);
    }
    localObject = h.b(this.a);
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
  
  private boolean l()
  {
    boolean bool;
    if (this.b != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void b()
  {
    if (this.a.getDrawable() != null) {
      this.a.getDrawable().setLevel(this.e);
    }
  }
  
  void c()
  {
    Drawable localDrawable = this.a.getDrawable();
    if (localDrawable != null) {
      d0.b(localDrawable);
    }
    if (localDrawable != null)
    {
      if ((l()) && (a(localDrawable))) {
        return;
      }
      x0 localx0 = this.c;
      if (localx0 != null)
      {
        g.i(localDrawable, localx0, this.a.getDrawableState());
      }
      else
      {
        localx0 = this.b;
        if (localx0 != null) {
          g.i(localDrawable, localx0, this.a.getDrawableState());
        }
      }
    }
  }
  
  ColorStateList d()
  {
    Object localObject = this.c;
    if (localObject != null) {
      localObject = ((x0)localObject).a;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  PorterDuff.Mode e()
  {
    Object localObject = this.c;
    if (localObject != null) {
      localObject = ((x0)localObject).b;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  boolean f()
  {
    return !(this.a.getBackground() instanceof RippleDrawable);
  }
  
  public void g(AttributeSet paramAttributeSet, int paramInt)
  {
    Object localObject1 = this.a.getContext();
    Object localObject2 = j.P;
    localObject1 = z0.v((Context)localObject1, paramAttributeSet, (int[])localObject2, paramInt, 0);
    ImageView localImageView = this.a;
    a0.j0(localImageView, localImageView.getContext(), (int[])localObject2, paramAttributeSet, ((z0)localObject1).r(), paramInt, 0);
    try
    {
      localObject2 = this.a.getDrawable();
      paramAttributeSet = (AttributeSet)localObject2;
      if (localObject2 == null)
      {
        paramInt = ((z0)localObject1).n(j.Q, -1);
        paramAttributeSet = (AttributeSet)localObject2;
        if (paramInt != -1)
        {
          localObject2 = a.b(this.a.getContext(), paramInt);
          paramAttributeSet = (AttributeSet)localObject2;
          if (localObject2 != null)
          {
            this.a.setImageDrawable((Drawable)localObject2);
            paramAttributeSet = (AttributeSet)localObject2;
          }
        }
      }
      if (paramAttributeSet != null) {
        d0.b(paramAttributeSet);
      }
      paramInt = j.R;
      if (((z0)localObject1).s(paramInt)) {
        h.c(this.a, ((z0)localObject1).c(paramInt));
      }
      paramInt = j.S;
      if (((z0)localObject1).s(paramInt)) {
        h.d(this.a, d0.e(((z0)localObject1).k(paramInt, -1), null));
      }
      return;
    }
    finally
    {
      ((z0)localObject1).w();
    }
  }
  
  void h(Drawable paramDrawable)
  {
    this.e = paramDrawable.getLevel();
  }
  
  public void i(int paramInt)
  {
    if (paramInt != 0)
    {
      Drawable localDrawable = a.b(this.a.getContext(), paramInt);
      if (localDrawable != null) {
        d0.b(localDrawable);
      }
      this.a.setImageDrawable(localDrawable);
    }
    else
    {
      this.a.setImageDrawable(null);
    }
    c();
  }
  
  void j(ColorStateList paramColorStateList)
  {
    if (this.c == null) {
      this.c = new x0();
    }
    x0 localx0 = this.c;
    localx0.a = paramColorStateList;
    localx0.d = true;
    c();
  }
  
  void k(PorterDuff.Mode paramMode)
  {
    if (this.c == null) {
      this.c = new x0();
    }
    x0 localx0 = this.c;
    localx0.b = paramMode;
    localx0.c = true;
    c();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.m
 * JD-Core Version:    0.7.0.1
 */