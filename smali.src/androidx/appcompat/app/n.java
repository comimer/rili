package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.view.menu.g.a;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionBarOverlayLayout.d;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.c0;
import androidx.appcompat.widget.s0;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.b1;
import androidx.core.view.c1;
import androidx.core.view.d1;
import d.f;
import d.j;
import h.b;
import h.b.a;
import h.h;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class n
  extends a
  implements ActionBarOverlayLayout.d
{
  private static final Interpolator E = new AccelerateInterpolator();
  private static final Interpolator F = new DecelerateInterpolator();
  boolean A;
  final b1 B = new a();
  final b1 C = new b();
  final d1 D = new c();
  Context a;
  private Context b;
  private Activity c;
  ActionBarOverlayLayout d;
  ActionBarContainer e;
  c0 f;
  ActionBarContextView g;
  View h;
  s0 i;
  private ArrayList<Object> j = new ArrayList();
  private int k = -1;
  private boolean l;
  d m;
  b n;
  b.a o;
  private boolean p;
  private ArrayList<a.b> q = new ArrayList();
  private boolean r;
  private int s = 0;
  boolean t = true;
  boolean u;
  boolean v;
  private boolean w;
  private boolean x = true;
  h y;
  private boolean z;
  
  public n(Activity paramActivity, boolean paramBoolean)
  {
    this.c = paramActivity;
    paramActivity = paramActivity.getWindow().getDecorView();
    M(paramActivity);
    if (!paramBoolean) {
      this.h = paramActivity.findViewById(16908290);
    }
  }
  
  public n(Dialog paramDialog)
  {
    M(paramDialog.getWindow().getDecorView());
  }
  
  static boolean F(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean3) {
      return true;
    }
    return (!paramBoolean1) && (!paramBoolean2);
  }
  
  private c0 J(View paramView)
  {
    if ((paramView instanceof c0)) {
      return (c0)paramView;
    }
    if ((paramView instanceof Toolbar)) {
      return ((Toolbar)paramView).getWrapper();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Can't make a decor toolbar out of ");
    if (paramView != null) {
      paramView = paramView.getClass().getSimpleName();
    } else {
      paramView = "null";
    }
    localStringBuilder.append(paramView);
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  private void L()
  {
    if (this.w)
    {
      this.w = false;
      ActionBarOverlayLayout localActionBarOverlayLayout = this.d;
      if (localActionBarOverlayLayout != null) {
        localActionBarOverlayLayout.setShowingForActionMode(false);
      }
      V(false);
    }
  }
  
  private void M(View paramView)
  {
    Object localObject = (ActionBarOverlayLayout)paramView.findViewById(f.p);
    this.d = ((ActionBarOverlayLayout)localObject);
    if (localObject != null) {
      ((ActionBarOverlayLayout)localObject).setActionBarVisibilityCallback(this);
    }
    this.f = J(paramView.findViewById(f.a));
    this.g = ((ActionBarContextView)paramView.findViewById(f.f));
    paramView = (ActionBarContainer)paramView.findViewById(f.c);
    this.e = paramView;
    localObject = this.f;
    if ((localObject != null) && (this.g != null) && (paramView != null))
    {
      this.a = ((c0)localObject).getContext();
      if ((this.f.t() & 0x4) != 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if (i1 != 0) {
        this.l = true;
      }
      paramView = h.a.b(this.a);
      boolean bool;
      if ((!paramView.a()) && (i1 == 0)) {
        bool = false;
      } else {
        bool = true;
      }
      S(bool);
      Q(paramView.g());
      paramView = this.a.obtainStyledAttributes(null, j.a, d.a.c, 0);
      if (paramView.getBoolean(j.k, false)) {
        R(true);
      }
      int i1 = paramView.getDimensionPixelSize(j.i, 0);
      if (i1 != 0) {
        P(i1);
      }
      paramView.recycle();
      return;
    }
    paramView = new StringBuilder();
    paramView.append(getClass().getSimpleName());
    paramView.append(" can only be used with a compatible window decor layout");
    throw new IllegalStateException(paramView.toString());
  }
  
  private void Q(boolean paramBoolean)
  {
    this.r = paramBoolean;
    if (!paramBoolean)
    {
      this.f.i(null);
      this.e.setTabContainer(this.i);
    }
    else
    {
      this.e.setTabContainer(null);
      this.f.i(this.i);
    }
    int i1 = K();
    boolean bool = true;
    if (i1 == 2) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    Object localObject = this.i;
    if (localObject != null) {
      if (i1 != 0)
      {
        ((View)localObject).setVisibility(0);
        localObject = this.d;
        if (localObject != null) {
          a0.i0((View)localObject);
        }
      }
      else
      {
        ((View)localObject).setVisibility(8);
      }
    }
    localObject = this.f;
    if ((!this.r) && (i1 != 0)) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    ((c0)localObject).w(paramBoolean);
    localObject = this.d;
    if ((!this.r) && (i1 != 0)) {
      paramBoolean = bool;
    } else {
      paramBoolean = false;
    }
    ((ActionBarOverlayLayout)localObject).setHasNonEmbeddedTabs(paramBoolean);
  }
  
  private boolean T()
  {
    return a0.P(this.e);
  }
  
  private void U()
  {
    if (!this.w)
    {
      this.w = true;
      ActionBarOverlayLayout localActionBarOverlayLayout = this.d;
      if (localActionBarOverlayLayout != null) {
        localActionBarOverlayLayout.setShowingForActionMode(true);
      }
      V(false);
    }
  }
  
  private void V(boolean paramBoolean)
  {
    if (F(this.u, this.v, this.w))
    {
      if (!this.x)
      {
        this.x = true;
        I(paramBoolean);
      }
    }
    else if (this.x)
    {
      this.x = false;
      H(paramBoolean);
    }
  }
  
  public void C(CharSequence paramCharSequence)
  {
    this.f.setWindowTitle(paramCharSequence);
  }
  
  public b D(b.a parama)
  {
    d locald = this.m;
    if (locald != null) {
      locald.a();
    }
    this.d.setHideOnContentScrollEnabled(false);
    this.g.k();
    parama = new d(this.g.getContext(), parama);
    if (parama.r())
    {
      this.m = parama;
      parama.i();
      this.g.h(parama);
      E(true);
      return parama;
    }
    return null;
  }
  
  public void E(boolean paramBoolean)
  {
    if (paramBoolean) {
      U();
    } else {
      L();
    }
    if (T())
    {
      a1 locala11;
      a1 locala12;
      if (paramBoolean)
      {
        locala11 = this.f.o(4, 100L);
        locala12 = this.g.f(0, 200L);
      }
      else
      {
        locala12 = this.f.o(0, 200L);
        locala11 = this.g.f(8, 100L);
      }
      h localh = new h();
      localh.d(locala11, locala12);
      localh.h();
    }
    else if (paramBoolean)
    {
      this.f.q(4);
      this.g.setVisibility(0);
    }
    else
    {
      this.f.q(0);
      this.g.setVisibility(8);
    }
  }
  
  void G()
  {
    b.a locala = this.o;
    if (locala != null)
    {
      locala.d(this.n);
      this.n = null;
      this.o = null;
    }
  }
  
  public void H(boolean paramBoolean)
  {
    h localh = this.y;
    if (localh != null) {
      localh.a();
    }
    if ((this.s == 0) && ((this.z) || (paramBoolean)))
    {
      this.e.setAlpha(1.0F);
      this.e.setTransitioning(true);
      localh = new h();
      float f1 = -this.e.getHeight();
      float f2 = f1;
      if (paramBoolean)
      {
        localObject = new int[2];
        Object tmp79_77 = localObject;
        tmp79_77[0] = 0;
        Object tmp83_79 = tmp79_77;
        tmp83_79[1] = 0;
        tmp83_79;
        this.e.getLocationInWindow((int[])localObject);
        f2 = f1 - localObject[1];
      }
      Object localObject = a0.d(this.e).m(f2);
      ((a1)localObject).k(this.D);
      localh.c((a1)localObject);
      if (this.t)
      {
        localObject = this.h;
        if (localObject != null) {
          localh.c(a0.d((View)localObject).m(f2));
        }
      }
      localh.f(E);
      localh.e(250L);
      localh.g(this.B);
      this.y = localh;
      localh.h();
    }
    else
    {
      this.B.b(null);
    }
  }
  
  public void I(boolean paramBoolean)
  {
    Object localObject1 = this.y;
    if (localObject1 != null) {
      ((h)localObject1).a();
    }
    this.e.setVisibility(0);
    if ((this.s == 0) && ((this.z) || (paramBoolean)))
    {
      this.e.setTranslationY(0.0F);
      float f1 = -this.e.getHeight();
      float f2 = f1;
      if (paramBoolean)
      {
        localObject1 = new int[2];
        Object tmp69_68 = localObject1;
        tmp69_68[0] = 0;
        Object tmp73_69 = tmp69_68;
        tmp73_69[1] = 0;
        tmp73_69;
        this.e.getLocationInWindow((int[])localObject1);
        f2 = f1 - localObject1[1];
      }
      this.e.setTranslationY(f2);
      localObject1 = new h();
      Object localObject2 = a0.d(this.e).m(0.0F);
      ((a1)localObject2).k(this.D);
      ((h)localObject1).c((a1)localObject2);
      if (this.t)
      {
        localObject2 = this.h;
        if (localObject2 != null)
        {
          ((View)localObject2).setTranslationY(f2);
          ((h)localObject1).c(a0.d(this.h).m(0.0F));
        }
      }
      ((h)localObject1).f(F);
      ((h)localObject1).e(250L);
      ((h)localObject1).g(this.C);
      this.y = ((h)localObject1);
      ((h)localObject1).h();
    }
    else
    {
      this.e.setAlpha(1.0F);
      this.e.setTranslationY(0.0F);
      if (this.t)
      {
        localObject1 = this.h;
        if (localObject1 != null) {
          ((View)localObject1).setTranslationY(0.0F);
        }
      }
      this.C.b(null);
    }
    localObject1 = this.d;
    if (localObject1 != null) {
      a0.i0((View)localObject1);
    }
  }
  
  public int K()
  {
    return this.f.n();
  }
  
  public void N(boolean paramBoolean)
  {
    int i1;
    if (paramBoolean) {
      i1 = 4;
    } else {
      i1 = 0;
    }
    O(i1, 4);
  }
  
  public void O(int paramInt1, int paramInt2)
  {
    int i1 = this.f.t();
    if ((paramInt2 & 0x4) != 0) {
      this.l = true;
    }
    this.f.k(paramInt1 & paramInt2 | paramInt2 & i1);
  }
  
  public void P(float paramFloat)
  {
    a0.t0(this.e, paramFloat);
  }
  
  public void R(boolean paramBoolean)
  {
    if ((paramBoolean) && (!this.d.q())) {
      throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }
    this.A = paramBoolean;
    this.d.setHideOnContentScrollEnabled(paramBoolean);
  }
  
  public void S(boolean paramBoolean)
  {
    this.f.s(paramBoolean);
  }
  
  public void a()
  {
    if (this.v)
    {
      this.v = false;
      V(true);
    }
  }
  
  public void b() {}
  
  public void c(boolean paramBoolean)
  {
    this.t = paramBoolean;
  }
  
  public void d()
  {
    if (!this.v)
    {
      this.v = true;
      V(true);
    }
  }
  
  public void e()
  {
    h localh = this.y;
    if (localh != null)
    {
      localh.a();
      this.y = null;
    }
  }
  
  public void f(int paramInt)
  {
    this.s = paramInt;
  }
  
  public boolean h()
  {
    c0 localc0 = this.f;
    if ((localc0 != null) && (localc0.j()))
    {
      this.f.collapseActionView();
      return true;
    }
    return false;
  }
  
  public void i(boolean paramBoolean)
  {
    if (paramBoolean == this.p) {
      return;
    }
    this.p = paramBoolean;
    int i1 = this.q.size();
    for (int i2 = 0; i2 < i1; i2++) {
      ((a.b)this.q.get(i2)).onMenuVisibilityChanged(paramBoolean);
    }
  }
  
  public int k()
  {
    return this.f.t();
  }
  
  public Context l()
  {
    if (this.b == null)
    {
      TypedValue localTypedValue = new TypedValue();
      this.a.getTheme().resolveAttribute(d.a.g, localTypedValue, true);
      int i1 = localTypedValue.resourceId;
      if (i1 != 0) {
        this.b = new ContextThemeWrapper(this.a, i1);
      } else {
        this.b = this.a;
      }
    }
    return this.b;
  }
  
  public void p(Configuration paramConfiguration)
  {
    Q(h.a.b(this.a).g());
  }
  
  public boolean r(int paramInt, KeyEvent paramKeyEvent)
  {
    Object localObject = this.m;
    if (localObject == null) {
      return false;
    }
    localObject = ((d)localObject).c();
    if (localObject != null)
    {
      if (paramKeyEvent != null) {
        i1 = paramKeyEvent.getDeviceId();
      } else {
        i1 = -1;
      }
      int i1 = KeyCharacterMap.load(i1).getKeyboardType();
      boolean bool = true;
      if (i1 == 1) {
        bool = false;
      }
      ((Menu)localObject).setQwertyMode(bool);
      return ((Menu)localObject).performShortcut(paramInt, paramKeyEvent, 0);
    }
    return false;
  }
  
  public void w(boolean paramBoolean)
  {
    if (!this.l) {
      N(paramBoolean);
    }
  }
  
  public void y(boolean paramBoolean)
  {
    this.z = paramBoolean;
    if (!paramBoolean)
    {
      h localh = this.y;
      if (localh != null) {
        localh.a();
      }
    }
  }
  
  class a
    extends c1
  {
    a() {}
    
    public void b(View paramView)
    {
      paramView = n.this;
      if (paramView.t)
      {
        paramView = paramView.h;
        if (paramView != null)
        {
          paramView.setTranslationY(0.0F);
          n.this.e.setTranslationY(0.0F);
        }
      }
      n.this.e.setVisibility(8);
      n.this.e.setTransitioning(false);
      paramView = n.this;
      paramView.y = null;
      paramView.G();
      paramView = n.this.d;
      if (paramView != null) {
        a0.i0(paramView);
      }
    }
  }
  
  class b
    extends c1
  {
    b() {}
    
    public void b(View paramView)
    {
      paramView = n.this;
      paramView.y = null;
      paramView.e.requestLayout();
    }
  }
  
  class c
    implements d1
  {
    c() {}
    
    public void a(View paramView)
    {
      ((View)n.this.e.getParent()).invalidate();
    }
  }
  
  public class d
    extends b
    implements g.a
  {
    private final Context c;
    private final androidx.appcompat.view.menu.g d;
    private b.a e;
    private WeakReference<View> f;
    
    public d(Context paramContext, b.a parama)
    {
      this.c = paramContext;
      this.e = parama;
      this$1 = new androidx.appcompat.view.menu.g(paramContext).setDefaultShowAsAction(1);
      this.d = n.this;
      n.this.setCallback(this);
    }
    
    public void a()
    {
      n localn = n.this;
      if (localn.m != this) {
        return;
      }
      if (!n.F(localn.u, localn.v, false))
      {
        localn = n.this;
        localn.n = this;
        localn.o = this.e;
      }
      else
      {
        this.e.d(this);
      }
      this.e = null;
      n.this.E(false);
      n.this.g.g();
      localn = n.this;
      localn.d.setHideOnContentScrollEnabled(localn.A);
      n.this.m = null;
    }
    
    public View b()
    {
      Object localObject = this.f;
      if (localObject != null) {
        localObject = (View)((Reference)localObject).get();
      } else {
        localObject = null;
      }
      return localObject;
    }
    
    public Menu c()
    {
      return this.d;
    }
    
    public MenuInflater d()
    {
      return new h.g(this.c);
    }
    
    public CharSequence e()
    {
      return n.this.g.getSubtitle();
    }
    
    public CharSequence g()
    {
      return n.this.g.getTitle();
    }
    
    public void i()
    {
      if (n.this.m != this) {
        return;
      }
      this.d.stopDispatchingItemsChanged();
      try
      {
        this.e.b(this, this.d);
        return;
      }
      finally
      {
        this.d.startDispatchingItemsChanged();
      }
    }
    
    public boolean j()
    {
      return n.this.g.j();
    }
    
    public void k(View paramView)
    {
      n.this.g.setCustomView(paramView);
      this.f = new WeakReference(paramView);
    }
    
    public void l(int paramInt)
    {
      m(n.this.a.getResources().getString(paramInt));
    }
    
    public void m(CharSequence paramCharSequence)
    {
      n.this.g.setSubtitle(paramCharSequence);
    }
    
    public void o(int paramInt)
    {
      p(n.this.a.getResources().getString(paramInt));
    }
    
    public boolean onMenuItemSelected(androidx.appcompat.view.menu.g paramg, MenuItem paramMenuItem)
    {
      paramg = this.e;
      if (paramg != null) {
        return paramg.c(this, paramMenuItem);
      }
      return false;
    }
    
    public void onMenuModeChange(androidx.appcompat.view.menu.g paramg)
    {
      if (this.e == null) {
        return;
      }
      i();
      n.this.g.l();
    }
    
    public void p(CharSequence paramCharSequence)
    {
      n.this.g.setTitle(paramCharSequence);
    }
    
    public void q(boolean paramBoolean)
    {
      super.q(paramBoolean);
      n.this.g.setTitleOptional(paramBoolean);
    }
    
    public boolean r()
    {
      this.d.stopDispatchingItemsChanged();
      try
      {
        boolean bool = this.e.a(this, this.d);
        return bool;
      }
      finally
      {
        this.d.startDispatchingItemsChanged();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.n
 * JD-Core Version:    0.7.0.1
 */