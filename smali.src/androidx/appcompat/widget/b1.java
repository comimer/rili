package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.Window.Callback;
import androidx.appcompat.app.a.a;
import androidx.appcompat.view.menu.b;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.g.a;
import androidx.appcompat.view.menu.m.a;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.c1;
import d.e;
import d.f;
import d.h;
import d.j;

public class b1
  implements c0
{
  Toolbar a;
  private int b;
  private View c;
  private View d;
  private Drawable e;
  private Drawable f;
  private Drawable g;
  private boolean h;
  CharSequence i;
  private CharSequence j;
  private CharSequence k;
  Window.Callback l;
  boolean m;
  private ActionMenuPresenter n;
  private int o = 0;
  private int p = 0;
  private Drawable q;
  
  public b1(Toolbar paramToolbar, boolean paramBoolean)
  {
    this(paramToolbar, paramBoolean, h.a, e.n);
  }
  
  public b1(Toolbar paramToolbar, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this.a = paramToolbar;
    this.i = paramToolbar.getTitle();
    this.j = paramToolbar.getSubtitle();
    boolean bool;
    if (this.i != null) {
      bool = true;
    } else {
      bool = false;
    }
    this.h = bool;
    this.g = paramToolbar.getNavigationIcon();
    paramToolbar = z0.v(paramToolbar.getContext(), null, j.a, d.a.c, 0);
    this.q = paramToolbar.g(j.l);
    if (paramBoolean)
    {
      Object localObject = paramToolbar.p(j.r);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        F((CharSequence)localObject);
      }
      localObject = paramToolbar.p(j.p);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        E((CharSequence)localObject);
      }
      localObject = paramToolbar.g(j.n);
      if (localObject != null) {
        A((Drawable)localObject);
      }
      localObject = paramToolbar.g(j.m);
      if (localObject != null) {
        setIcon((Drawable)localObject);
      }
      if (this.g == null)
      {
        localObject = this.q;
        if (localObject != null) {
          D((Drawable)localObject);
        }
      }
      k(paramToolbar.k(j.h, 0));
      paramInt2 = paramToolbar.n(j.g, 0);
      if (paramInt2 != 0)
      {
        y(LayoutInflater.from(this.a.getContext()).inflate(paramInt2, this.a, false));
        k(this.b | 0x10);
      }
      paramInt2 = paramToolbar.m(j.j, 0);
      if (paramInt2 > 0)
      {
        localObject = this.a.getLayoutParams();
        ((ViewGroup.LayoutParams)localObject).height = paramInt2;
        this.a.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      int i1 = paramToolbar.e(j.f, -1);
      paramInt2 = paramToolbar.e(j.e, -1);
      if ((i1 >= 0) || (paramInt2 >= 0)) {
        this.a.setContentInsetsRelative(Math.max(i1, 0), Math.max(paramInt2, 0));
      }
      paramInt2 = paramToolbar.n(j.s, 0);
      if (paramInt2 != 0)
      {
        localObject = this.a;
        ((Toolbar)localObject).setTitleTextAppearance(((View)localObject).getContext(), paramInt2);
      }
      paramInt2 = paramToolbar.n(j.q, 0);
      if (paramInt2 != 0)
      {
        localObject = this.a;
        ((Toolbar)localObject).setSubtitleTextAppearance(((View)localObject).getContext(), paramInt2);
      }
      paramInt2 = paramToolbar.n(j.o, 0);
      if (paramInt2 != 0) {
        this.a.setPopupTheme(paramInt2);
      }
    }
    else
    {
      this.b = x();
    }
    paramToolbar.w();
    z(paramInt1);
    this.k = this.a.getNavigationContentDescription();
    this.a.setNavigationOnClickListener(new a());
  }
  
  private void G(CharSequence paramCharSequence)
  {
    this.i = paramCharSequence;
    if ((this.b & 0x8) != 0)
    {
      this.a.setTitle(paramCharSequence);
      if (this.h) {
        a0.o0(this.a.getRootView(), paramCharSequence);
      }
    }
  }
  
  private void H()
  {
    if ((this.b & 0x4) != 0) {
      if (TextUtils.isEmpty(this.k)) {
        this.a.setNavigationContentDescription(this.p);
      } else {
        this.a.setNavigationContentDescription(this.k);
      }
    }
  }
  
  private void I()
  {
    if ((this.b & 0x4) != 0)
    {
      Toolbar localToolbar = this.a;
      Drawable localDrawable = this.g;
      if (localDrawable == null) {
        localDrawable = this.q;
      }
      localToolbar.setNavigationIcon(localDrawable);
    }
    else
    {
      this.a.setNavigationIcon(null);
    }
  }
  
  private void J()
  {
    int i1 = this.b;
    Drawable localDrawable;
    if ((i1 & 0x2) != 0)
    {
      if ((i1 & 0x1) != 0)
      {
        localDrawable = this.f;
        if (localDrawable == null) {
          localDrawable = this.e;
        }
      }
      else
      {
        localDrawable = this.e;
      }
    }
    else {
      localDrawable = null;
    }
    this.a.setLogo(localDrawable);
  }
  
  private int x()
  {
    int i1;
    if (this.a.getNavigationIcon() != null)
    {
      i1 = 15;
      this.q = this.a.getNavigationIcon();
    }
    else
    {
      i1 = 11;
    }
    return i1;
  }
  
  public void A(Drawable paramDrawable)
  {
    this.f = paramDrawable;
    J();
  }
  
  public void B(int paramInt)
  {
    String str;
    if (paramInt == 0) {
      str = null;
    } else {
      str = getContext().getString(paramInt);
    }
    C(str);
  }
  
  public void C(CharSequence paramCharSequence)
  {
    this.k = paramCharSequence;
    H();
  }
  
  public void D(Drawable paramDrawable)
  {
    this.g = paramDrawable;
    I();
  }
  
  public void E(CharSequence paramCharSequence)
  {
    this.j = paramCharSequence;
    if ((this.b & 0x8) != 0) {
      this.a.setSubtitle(paramCharSequence);
    }
  }
  
  public void F(CharSequence paramCharSequence)
  {
    this.h = true;
    G(paramCharSequence);
  }
  
  public void a(Menu paramMenu, m.a parama)
  {
    if (this.n == null)
    {
      ActionMenuPresenter localActionMenuPresenter = new ActionMenuPresenter(this.a.getContext());
      this.n = localActionMenuPresenter;
      localActionMenuPresenter.h(f.g);
    }
    this.n.setCallback(parama);
    this.a.setMenu((g)paramMenu, this.n);
  }
  
  public boolean b()
  {
    return this.a.isOverflowMenuShowing();
  }
  
  public void c()
  {
    this.m = true;
  }
  
  public void collapseActionView()
  {
    this.a.collapseActionView();
  }
  
  public boolean d()
  {
    return this.a.canShowOverflowMenu();
  }
  
  public boolean e()
  {
    return this.a.isOverflowMenuShowPending();
  }
  
  public boolean f()
  {
    return this.a.hideOverflowMenu();
  }
  
  public boolean g()
  {
    return this.a.showOverflowMenu();
  }
  
  public Context getContext()
  {
    return this.a.getContext();
  }
  
  public CharSequence getTitle()
  {
    return this.a.getTitle();
  }
  
  public void h()
  {
    this.a.dismissPopupMenus();
  }
  
  public void i(s0 params0)
  {
    Object localObject = this.c;
    if (localObject != null)
    {
      localObject = ((View)localObject).getParent();
      Toolbar localToolbar = this.a;
      if (localObject == localToolbar) {
        localToolbar.removeView(this.c);
      }
    }
    this.c = params0;
    if ((params0 != null) && (this.o == 2))
    {
      this.a.addView(params0, 0);
      localObject = (Toolbar.e)this.c.getLayoutParams();
      ((ViewGroup.MarginLayoutParams)localObject).width = -2;
      ((ViewGroup.MarginLayoutParams)localObject).height = -2;
      ((a.a)localObject).a = 8388691;
      params0.setAllowCollapse(true);
    }
  }
  
  public boolean j()
  {
    return this.a.hasExpandedActionView();
  }
  
  public void k(int paramInt)
  {
    int i1 = this.b ^ paramInt;
    this.b = paramInt;
    if (i1 != 0)
    {
      if ((i1 & 0x4) != 0)
      {
        if ((paramInt & 0x4) != 0) {
          H();
        }
        I();
      }
      if ((i1 & 0x3) != 0) {
        J();
      }
      if ((i1 & 0x8) != 0) {
        if ((paramInt & 0x8) != 0)
        {
          this.a.setTitle(this.i);
          this.a.setSubtitle(this.j);
        }
        else
        {
          this.a.setTitle(null);
          this.a.setSubtitle(null);
        }
      }
      if ((i1 & 0x10) != 0)
      {
        View localView = this.d;
        if (localView != null) {
          if ((paramInt & 0x10) != 0) {
            this.a.addView(localView);
          } else {
            this.a.removeView(localView);
          }
        }
      }
    }
  }
  
  public Menu l()
  {
    return this.a.getMenu();
  }
  
  public void m(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = e.a.b(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    A(localDrawable);
  }
  
  public int n()
  {
    return this.o;
  }
  
  public a1 o(final int paramInt, long paramLong)
  {
    a1 locala1 = a0.d(this.a);
    float f1;
    if (paramInt == 0) {
      f1 = 1.0F;
    } else {
      f1 = 0.0F;
    }
    return locala1.b(f1).f(paramLong).h(new b(paramInt));
  }
  
  public void p(m.a parama, g.a parama1)
  {
    this.a.setMenuCallbacks(parama, parama1);
  }
  
  public void q(int paramInt)
  {
    this.a.setVisibility(paramInt);
  }
  
  public ViewGroup r()
  {
    return this.a;
  }
  
  public void s(boolean paramBoolean) {}
  
  public void setIcon(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = e.a.b(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setIcon(localDrawable);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    this.e = paramDrawable;
    J();
  }
  
  public void setWindowCallback(Window.Callback paramCallback)
  {
    this.l = paramCallback;
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    if (!this.h) {
      G(paramCharSequence);
    }
  }
  
  public int t()
  {
    return this.b;
  }
  
  public void u()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public void v()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public void w(boolean paramBoolean)
  {
    this.a.setCollapsible(paramBoolean);
  }
  
  public void y(View paramView)
  {
    View localView = this.d;
    if ((localView != null) && ((this.b & 0x10) != 0)) {
      this.a.removeView(localView);
    }
    this.d = paramView;
    if ((paramView != null) && ((this.b & 0x10) != 0)) {
      this.a.addView(paramView);
    }
  }
  
  public void z(int paramInt)
  {
    if (paramInt == this.p) {
      return;
    }
    this.p = paramInt;
    if (TextUtils.isEmpty(this.a.getNavigationContentDescription())) {
      B(this.p);
    }
  }
  
  class a
    implements View.OnClickListener
  {
    final androidx.appcompat.view.menu.a a = new androidx.appcompat.view.menu.a(b1.this.a.getContext(), 0, 16908332, 0, 0, b1.this.i);
    
    a() {}
    
    public void onClick(View paramView)
    {
      paramView = b1.this;
      Window.Callback localCallback = paramView.l;
      if ((localCallback != null) && (paramView.m)) {
        localCallback.onMenuItemSelected(0, this.a);
      }
    }
  }
  
  class b
    extends c1
  {
    private boolean a = false;
    
    b(int paramInt) {}
    
    public void a(View paramView)
    {
      this.a = true;
    }
    
    public void b(View paramView)
    {
      if (!this.a) {
        b1.this.a.setVisibility(paramInt);
      }
    }
    
    public void c(View paramView)
    {
      b1.this.a.setVisibility(0);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.b1
 * JD-Core Version:    0.7.0.1
 */