package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.NotFoundException;
import android.graphics.PorterDuff.Mode;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.core.content.res.h.e;
import androidx.core.view.a0;
import androidx.core.widget.l;
import d.j;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

class w
{
  private final TextView a;
  private x0 b;
  private x0 c;
  private x0 d;
  private x0 e;
  private x0 f;
  private x0 g;
  private x0 h;
  private final x i;
  private int j = 0;
  private int k = -1;
  private Typeface l;
  private boolean m;
  
  w(TextView paramTextView)
  {
    this.a = paramTextView;
    this.i = new x(paramTextView);
  }
  
  private void B(int paramInt, float paramFloat)
  {
    this.i.u(paramInt, paramFloat);
  }
  
  private void C(Context paramContext, z0 paramz0)
  {
    this.j = paramz0.k(j.V2, this.j);
    int n = Build.VERSION.SDK_INT;
    boolean bool1 = false;
    if (n >= 28)
    {
      i1 = paramz0.k(j.Y2, -1);
      this.k = i1;
      if (i1 != -1) {
        this.j = (this.j & 0x2 | 0x0);
      }
    }
    int i1 = j.X2;
    if ((!paramz0.s(i1)) && (!paramz0.s(j.Z2)))
    {
      i1 = j.U2;
      if (paramz0.s(i1))
      {
        this.m = false;
        i1 = paramz0.k(i1, 1);
        if (i1 != 1)
        {
          if (i1 != 2)
          {
            if (i1 == 3) {
              this.l = Typeface.MONOSPACE;
            }
          }
          else {
            this.l = Typeface.SERIF;
          }
        }
        else {
          this.l = Typeface.SANS_SERIF;
        }
      }
      return;
    }
    this.l = null;
    final int i2 = j.Z2;
    if (paramz0.s(i2)) {
      i1 = i2;
    }
    final int i3 = this.k;
    i2 = this.j;
    if (!paramContext.isRestricted()) {
      paramContext = new a(i3, i2, new WeakReference(this.a));
    }
    try
    {
      paramContext = paramz0.j(i1, this.j, paramContext);
      if (paramContext != null) {
        if ((n >= 28) && (this.k != -1))
        {
          paramContext = Typeface.create(paramContext, 0);
          i2 = this.k;
          if ((this.j & 0x2) != 0) {
            bool2 = true;
          } else {
            bool2 = false;
          }
          this.l = v.a(paramContext, i2, bool2);
        }
        else
        {
          this.l = paramContext;
        }
      }
      if (this.l == null) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      this.m = bool2;
    }
    catch (UnsupportedOperationException|Resources.NotFoundException paramContext)
    {
      boolean bool2;
      label334:
      break label334;
    }
    if (this.l == null)
    {
      paramContext = paramz0.o(i1);
      if (paramContext != null) {
        if ((Build.VERSION.SDK_INT >= 28) && (this.k != -1))
        {
          paramContext = Typeface.create(paramContext, 0);
          i1 = this.k;
          bool2 = bool1;
          if ((this.j & 0x2) != 0) {
            bool2 = true;
          }
          this.l = v.a(paramContext, i1, bool2);
        }
        else
        {
          this.l = Typeface.create(paramContext, this.j);
        }
      }
    }
  }
  
  private void a(Drawable paramDrawable, x0 paramx0)
  {
    if ((paramDrawable != null) && (paramx0 != null)) {
      g.i(paramDrawable, paramx0, this.a.getDrawableState());
    }
  }
  
  private static x0 d(Context paramContext, g paramg, int paramInt)
  {
    paramContext = paramg.f(paramContext, paramInt);
    if (paramContext != null)
    {
      paramg = new x0();
      paramg.d = true;
      paramg.a = paramContext;
      return paramg;
    }
    return null;
  }
  
  private void y(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4, Drawable paramDrawable5, Drawable paramDrawable6)
  {
    if ((paramDrawable5 == null) && (paramDrawable6 == null))
    {
      if ((paramDrawable1 != null) || (paramDrawable2 != null) || (paramDrawable3 != null) || (paramDrawable4 != null))
      {
        paramDrawable6 = this.a.getCompoundDrawablesRelative();
        paramDrawable5 = paramDrawable6[0];
        if ((paramDrawable5 == null) && (paramDrawable6[2] == null))
        {
          paramDrawable6 = this.a.getCompoundDrawables();
          paramDrawable5 = this.a;
          if (paramDrawable1 == null) {
            paramDrawable1 = paramDrawable6[0];
          }
          if (paramDrawable2 == null) {
            paramDrawable2 = paramDrawable6[1];
          }
          if (paramDrawable3 == null) {
            paramDrawable3 = paramDrawable6[2];
          }
          if (paramDrawable4 == null) {
            paramDrawable4 = paramDrawable6[3];
          }
          paramDrawable5.setCompoundDrawablesWithIntrinsicBounds(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
        }
        else
        {
          paramDrawable1 = this.a;
          if (paramDrawable2 == null) {
            paramDrawable2 = paramDrawable6[1];
          }
          paramDrawable3 = paramDrawable6[2];
          if (paramDrawable4 == null) {
            paramDrawable4 = paramDrawable6[3];
          }
          paramDrawable1.setCompoundDrawablesRelativeWithIntrinsicBounds(paramDrawable5, paramDrawable2, paramDrawable3, paramDrawable4);
        }
      }
    }
    else
    {
      paramDrawable3 = this.a.getCompoundDrawablesRelative();
      paramDrawable1 = this.a;
      if (paramDrawable5 == null) {
        paramDrawable5 = paramDrawable3[0];
      }
      if (paramDrawable2 == null) {
        paramDrawable2 = paramDrawable3[1];
      }
      if (paramDrawable6 == null) {
        paramDrawable6 = paramDrawable3[2];
      }
      if (paramDrawable4 == null) {
        paramDrawable4 = paramDrawable3[3];
      }
      paramDrawable1.setCompoundDrawablesRelativeWithIntrinsicBounds(paramDrawable5, paramDrawable2, paramDrawable6, paramDrawable4);
    }
  }
  
  private void z()
  {
    x0 localx0 = this.h;
    this.b = localx0;
    this.c = localx0;
    this.d = localx0;
    this.e = localx0;
    this.f = localx0;
    this.g = localx0;
  }
  
  void A(int paramInt, float paramFloat)
  {
    if ((!androidx.core.widget.b.s) && (!l())) {
      B(paramInt, paramFloat);
    }
  }
  
  void b()
  {
    Drawable[] arrayOfDrawable;
    if ((this.b != null) || (this.c != null) || (this.d != null) || (this.e != null))
    {
      arrayOfDrawable = this.a.getCompoundDrawables();
      a(arrayOfDrawable[0], this.b);
      a(arrayOfDrawable[1], this.c);
      a(arrayOfDrawable[2], this.d);
      a(arrayOfDrawable[3], this.e);
    }
    if ((this.f != null) || (this.g != null))
    {
      arrayOfDrawable = this.a.getCompoundDrawablesRelative();
      a(arrayOfDrawable[0], this.f);
      a(arrayOfDrawable[2], this.g);
    }
  }
  
  void c()
  {
    this.i.a();
  }
  
  int e()
  {
    return this.i.g();
  }
  
  int f()
  {
    return this.i.h();
  }
  
  int g()
  {
    return this.i.i();
  }
  
  int[] h()
  {
    return this.i.j();
  }
  
  int i()
  {
    return this.i.k();
  }
  
  ColorStateList j()
  {
    Object localObject = this.h;
    if (localObject != null) {
      localObject = ((x0)localObject).a;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  PorterDuff.Mode k()
  {
    Object localObject = this.h;
    if (localObject != null) {
      localObject = ((x0)localObject).b;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  boolean l()
  {
    return this.i.o();
  }
  
  @SuppressLint({"NewApi"})
  void m(AttributeSet paramAttributeSet, int paramInt)
  {
    Object localObject1 = this.a.getContext();
    g localg = g.b();
    Object localObject2 = j.Y;
    Object localObject3 = z0.v((Context)localObject1, paramAttributeSet, (int[])localObject2, paramInt, 0);
    Object localObject4 = this.a;
    a0.j0((View)localObject4, ((View)localObject4).getContext(), (int[])localObject2, paramAttributeSet, ((z0)localObject3).r(), paramInt, 0);
    int n = ((z0)localObject3).n(j.Z, -1);
    int i1 = j.c0;
    if (((z0)localObject3).s(i1)) {
      this.b = d((Context)localObject1, localg, ((z0)localObject3).n(i1, 0));
    }
    i1 = j.a0;
    if (((z0)localObject3).s(i1)) {
      this.c = d((Context)localObject1, localg, ((z0)localObject3).n(i1, 0));
    }
    i1 = j.d0;
    if (((z0)localObject3).s(i1)) {
      this.d = d((Context)localObject1, localg, ((z0)localObject3).n(i1, 0));
    }
    i1 = j.b0;
    if (((z0)localObject3).s(i1)) {
      this.e = d((Context)localObject1, localg, ((z0)localObject3).n(i1, 0));
    }
    i1 = Build.VERSION.SDK_INT;
    int i2 = j.e0;
    if (((z0)localObject3).s(i2)) {
      this.f = d((Context)localObject1, localg, ((z0)localObject3).n(i2, 0));
    }
    i2 = j.f0;
    if (((z0)localObject3).s(i2)) {
      this.g = d((Context)localObject1, localg, ((z0)localObject3).n(i2, 0));
    }
    ((z0)localObject3).w();
    boolean bool1 = this.a.getTransformationMethod() instanceof PasswordTransformationMethod;
    boolean bool2;
    int i3;
    if (n != -1)
    {
      localObject2 = z0.t((Context)localObject1, n, j.S2);
      if (!bool1)
      {
        n = j.b3;
        if (((z0)localObject2).s(n))
        {
          bool2 = ((z0)localObject2).a(n, false);
          i3 = 1;
          break label346;
        }
      }
      bool2 = false;
      i3 = bool2;
      label346:
      C((Context)localObject1, (z0)localObject2);
      n = j.c3;
      if (((z0)localObject2).s(n)) {
        localObject3 = ((z0)localObject2).o(n);
      } else {
        localObject3 = null;
      }
      n = j.a3;
      if (((z0)localObject2).s(n)) {
        localObject4 = ((z0)localObject2).o(n);
      } else {
        localObject4 = null;
      }
      ((z0)localObject2).w();
      localObject2 = localObject3;
      localObject3 = localObject4;
    }
    else
    {
      bool2 = false;
      i3 = bool2;
      localObject2 = null;
      localObject3 = localObject2;
    }
    localObject4 = z0.v((Context)localObject1, paramAttributeSet, j.S2, paramInt, 0);
    if (!bool1)
    {
      n = j.b3;
      if (((z0)localObject4).s(n))
      {
        bool2 = ((z0)localObject4).a(n, false);
        i3 = 1;
      }
    }
    n = j.c3;
    if (((z0)localObject4).s(n)) {
      localObject2 = ((z0)localObject4).o(n);
    }
    n = j.a3;
    if (((z0)localObject4).s(n)) {
      localObject3 = ((z0)localObject4).o(n);
    }
    if (i1 >= 28)
    {
      i1 = j.T2;
      if ((((z0)localObject4).s(i1)) && (((z0)localObject4).f(i1, -1) == 0)) {
        this.a.setTextSize(0, 0.0F);
      }
    }
    C((Context)localObject1, (z0)localObject4);
    ((z0)localObject4).w();
    if ((!bool1) && (i3 != 0)) {
      s(bool2);
    }
    localObject4 = this.l;
    if (localObject4 != null) {
      if (this.k == -1) {
        this.a.setTypeface((Typeface)localObject4, this.j);
      } else {
        this.a.setTypeface((Typeface)localObject4);
      }
    }
    if (localObject3 != null) {
      this.a.setFontVariationSettings((String)localObject3);
    }
    if (localObject2 != null) {
      this.a.setTextLocales(LocaleList.forLanguageTags((String)localObject2));
    }
    this.i.p(paramAttributeSet, paramInt);
    if ((androidx.core.widget.b.s) && (this.i.k() != 0))
    {
      localObject3 = this.i.j();
      if (localObject3.length > 0) {
        if (this.a.getAutoSizeStepGranularity() != -1.0F) {
          this.a.setAutoSizeTextTypeUniformWithConfiguration(this.i.h(), this.i.g(), this.i.i(), 0);
        } else {
          this.a.setAutoSizeTextTypeUniformWithPresetSizes((int[])localObject3, 0);
        }
      }
    }
    z0 localz0 = z0.u((Context)localObject1, paramAttributeSet, j.g0);
    paramInt = localz0.n(j.o0, -1);
    if (paramInt != -1) {
      paramAttributeSet = localg.c((Context)localObject1, paramInt);
    } else {
      paramAttributeSet = null;
    }
    paramInt = localz0.n(j.t0, -1);
    if (paramInt != -1) {
      localObject3 = localg.c((Context)localObject1, paramInt);
    } else {
      localObject3 = null;
    }
    paramInt = localz0.n(j.p0, -1);
    if (paramInt != -1) {
      localObject2 = localg.c((Context)localObject1, paramInt);
    } else {
      localObject2 = null;
    }
    paramInt = localz0.n(j.m0, -1);
    if (paramInt != -1) {
      localObject4 = localg.c((Context)localObject1, paramInt);
    } else {
      localObject4 = null;
    }
    paramInt = localz0.n(j.q0, -1);
    Drawable localDrawable;
    if (paramInt != -1) {
      localDrawable = localg.c((Context)localObject1, paramInt);
    } else {
      localDrawable = null;
    }
    paramInt = localz0.n(j.n0, -1);
    if (paramInt != -1) {
      localObject1 = localg.c((Context)localObject1, paramInt);
    } else {
      localObject1 = null;
    }
    y(paramAttributeSet, (Drawable)localObject3, (Drawable)localObject2, (Drawable)localObject4, localDrawable, (Drawable)localObject1);
    paramInt = j.r0;
    if (localz0.s(paramInt))
    {
      paramAttributeSet = localz0.c(paramInt);
      l.h(this.a, paramAttributeSet);
    }
    paramInt = j.s0;
    if (localz0.s(paramInt))
    {
      paramAttributeSet = d0.e(localz0.k(paramInt, -1), null);
      l.i(this.a, paramAttributeSet);
    }
    i1 = localz0.f(j.v0, -1);
    paramInt = localz0.f(j.w0, -1);
    n = localz0.f(j.x0, -1);
    localz0.w();
    if (i1 != -1) {
      l.k(this.a, i1);
    }
    if (paramInt != -1) {
      l.l(this.a, paramInt);
    }
    if (n != -1) {
      l.m(this.a, n);
    }
  }
  
  void n(final WeakReference<TextView> paramWeakReference, final Typeface paramTypeface)
  {
    if (this.m)
    {
      this.l = paramTypeface;
      paramWeakReference = (TextView)paramWeakReference.get();
      if (paramWeakReference != null) {
        if (a0.O(paramWeakReference)) {
          paramWeakReference.post(new b(paramWeakReference, paramTypeface, this.j));
        } else {
          paramWeakReference.setTypeface(paramTypeface, this.j);
        }
      }
    }
  }
  
  void o(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!androidx.core.widget.b.s) {
      c();
    }
  }
  
  void p()
  {
    b();
  }
  
  void q(Context paramContext, int paramInt)
  {
    z0 localz0 = z0.t(paramContext, paramInt, j.S2);
    paramInt = j.b3;
    if (localz0.s(paramInt)) {
      s(localz0.a(paramInt, false));
    }
    paramInt = j.T2;
    if ((localz0.s(paramInt)) && (localz0.f(paramInt, -1) == 0)) {
      this.a.setTextSize(0, 0.0F);
    }
    C(paramContext, localz0);
    paramInt = j.a3;
    if (localz0.s(paramInt))
    {
      paramContext = localz0.o(paramInt);
      if (paramContext != null) {
        this.a.setFontVariationSettings(paramContext);
      }
    }
    localz0.w();
    paramContext = this.l;
    if (paramContext != null) {
      this.a.setTypeface(paramContext, this.j);
    }
  }
  
  void r(TextView paramTextView, InputConnection paramInputConnection, EditorInfo paramEditorInfo)
  {
    if ((Build.VERSION.SDK_INT < 30) && (paramInputConnection != null)) {
      w.b.e(paramEditorInfo, paramTextView.getText());
    }
  }
  
  void s(boolean paramBoolean)
  {
    this.a.setAllCaps(paramBoolean);
  }
  
  void t(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IllegalArgumentException
  {
    this.i.q(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  void u(int[] paramArrayOfInt, int paramInt)
    throws IllegalArgumentException
  {
    this.i.r(paramArrayOfInt, paramInt);
  }
  
  void v(int paramInt)
  {
    this.i.s(paramInt);
  }
  
  void w(ColorStateList paramColorStateList)
  {
    if (this.h == null) {
      this.h = new x0();
    }
    x0 localx0 = this.h;
    localx0.a = paramColorStateList;
    boolean bool;
    if (paramColorStateList != null) {
      bool = true;
    } else {
      bool = false;
    }
    localx0.d = bool;
    z();
  }
  
  void x(PorterDuff.Mode paramMode)
  {
    if (this.h == null) {
      this.h = new x0();
    }
    x0 localx0 = this.h;
    localx0.b = paramMode;
    boolean bool;
    if (paramMode != null) {
      bool = true;
    } else {
      bool = false;
    }
    localx0.c = bool;
    z();
  }
  
  class a
    extends h.e
  {
    a(int paramInt1, int paramInt2, WeakReference paramWeakReference) {}
    
    public void onFontRetrievalFailed(int paramInt) {}
    
    public void onFontRetrieved(Typeface paramTypeface)
    {
      Typeface localTypeface = paramTypeface;
      if (Build.VERSION.SDK_INT >= 28)
      {
        int i = i3;
        localTypeface = paramTypeface;
        if (i != -1)
        {
          boolean bool;
          if ((i2 & 0x2) != 0) {
            bool = true;
          } else {
            bool = false;
          }
          localTypeface = v.a(paramTypeface, i, bool);
        }
      }
      w.this.n(this.c, localTypeface);
    }
  }
  
  class b
    implements Runnable
  {
    b(TextView paramTextView, Typeface paramTypeface, int paramInt) {}
    
    public void run()
    {
      paramWeakReference.setTypeface(paramTypeface, this.c);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.w
 * JD-Core Version:    0.7.0.1
 */