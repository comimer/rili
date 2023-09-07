package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import androidx.appcompat.widget.l0;
import androidx.appcompat.widget.m0;
import androidx.appcompat.widget.o0;
import androidx.core.view.a0;
import androidx.core.view.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class d
  extends k
  implements View.OnKeyListener, PopupWindow.OnDismissListener
{
  private static final int H = d.g.e;
  private m.a D;
  ViewTreeObserver E;
  private PopupWindow.OnDismissListener F;
  boolean G;
  private final Context b;
  private final int c;
  private final int d;
  private final int e;
  private final boolean f;
  final Handler g;
  private final List<g> h = new ArrayList();
  final List<d> i = new ArrayList();
  final ViewTreeObserver.OnGlobalLayoutListener j = new a();
  private final View.OnAttachStateChangeListener k = new b();
  private final m0 l = new c();
  private int m = 0;
  private int n = 0;
  private View o;
  View p;
  private int q;
  private boolean r;
  private boolean v;
  private int w;
  private int x;
  private boolean y;
  private boolean z;
  
  public d(Context paramContext, View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.b = paramContext;
    this.o = paramView;
    this.d = paramInt1;
    this.e = paramInt2;
    this.f = paramBoolean;
    this.y = false;
    this.q = t();
    paramContext = paramContext.getResources();
    this.c = Math.max(paramContext.getDisplayMetrics().widthPixels / 2, paramContext.getDimensionPixelSize(d.d.d));
    this.g = new Handler();
  }
  
  private o0 p()
  {
    o0 localo0 = new o0(this.b, null, this.d, this.e);
    localo0.P(this.l);
    localo0.H(this);
    localo0.G(this);
    localo0.z(this.o);
    localo0.C(this.n);
    localo0.F(true);
    localo0.E(2);
    return localo0;
  }
  
  private int q(g paramg)
  {
    int i1 = this.i.size();
    for (int i2 = 0; i2 < i1; i2++) {
      if (paramg == ((d)this.i.get(i2)).b) {
        return i2;
      }
    }
    return -1;
  }
  
  private MenuItem r(g paramg1, g paramg2)
  {
    int i1 = paramg1.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      MenuItem localMenuItem = paramg1.getItem(i2);
      if ((localMenuItem.hasSubMenu()) && (paramg2 == localMenuItem.getSubMenu())) {
        return localMenuItem;
      }
    }
    return null;
  }
  
  private View s(d paramd, g paramg)
  {
    paramg = r(paramd.b, paramg);
    if (paramg == null) {
      return null;
    }
    ListView localListView = paramd.a();
    paramd = localListView.getAdapter();
    boolean bool = paramd instanceof HeaderViewListAdapter;
    int i1 = 0;
    int i2;
    if (bool)
    {
      paramd = (HeaderViewListAdapter)paramd;
      i2 = paramd.getHeadersCount();
      paramd = (f)paramd.getWrappedAdapter();
    }
    else
    {
      paramd = (f)paramd;
      i2 = 0;
    }
    int i3 = paramd.getCount();
    while (i1 < i3)
    {
      if (paramg == paramd.c(i1)) {
        break label105;
      }
      i1++;
    }
    i1 = -1;
    label105:
    if (i1 == -1) {
      return null;
    }
    i1 = i1 + i2 - localListView.getFirstVisiblePosition();
    if ((i1 >= 0) && (i1 < localListView.getChildCount())) {
      return localListView.getChildAt(i1);
    }
    return null;
  }
  
  private int t()
  {
    int i1 = a0.z(this.o);
    int i2 = 1;
    if (i1 == 1) {
      i2 = 0;
    }
    return i2;
  }
  
  private int u(int paramInt)
  {
    Object localObject = this.i;
    ListView localListView = ((d)((List)localObject).get(((List)localObject).size() - 1)).a();
    int[] arrayOfInt = new int[2];
    localListView.getLocationOnScreen(arrayOfInt);
    localObject = new Rect();
    this.p.getWindowVisibleDisplayFrame((Rect)localObject);
    if (this.q == 1)
    {
      if (arrayOfInt[0] + localListView.getWidth() + paramInt > ((Rect)localObject).right) {
        return 0;
      }
      return 1;
    }
    if (arrayOfInt[0] - paramInt < 0) {
      return 1;
    }
    return 0;
  }
  
  private void v(g paramg)
  {
    Object localObject1 = LayoutInflater.from(this.b);
    Object localObject2 = new f(paramg, (LayoutInflater)localObject1, this.f, H);
    if ((!isShowing()) && (this.y)) {
      ((f)localObject2).d(true);
    } else if (isShowing()) {
      ((f)localObject2).d(k.n(paramg));
    }
    int i1 = k.d((ListAdapter)localObject2, null, this.b, this.c);
    o0 localo0 = p();
    localo0.i((ListAdapter)localObject2);
    localo0.B(i1);
    localo0.C(this.n);
    if (this.i.size() > 0)
    {
      localObject2 = this.i;
      localObject2 = (d)((List)localObject2).get(((List)localObject2).size() - 1);
      localObject3 = s((d)localObject2, paramg);
    }
    else
    {
      localObject2 = null;
      localObject3 = localObject2;
    }
    if (localObject3 != null)
    {
      localo0.Q(false);
      localo0.N(null);
      int i2 = u(i1);
      int i3;
      if (i2 == 1) {
        i3 = 1;
      } else {
        i3 = 0;
      }
      this.q = i2;
      localo0.z((View)localObject3);
      if ((this.n & 0x5) == 5)
      {
        if (i3 == 0)
        {
          i1 = ((View)localObject3).getWidth();
          break label255;
        }
      }
      else
      {
        if (i3 == 0) {
          break label255;
        }
        i1 = ((View)localObject3).getWidth();
      }
      i1 += 0;
      break label261;
      label255:
      i1 = 0 - i1;
      label261:
      localo0.c(i1);
      localo0.I(true);
      localo0.f(0);
    }
    else
    {
      if (this.r) {
        localo0.c(this.w);
      }
      if (this.v) {
        localo0.f(this.x);
      }
      localo0.D(c());
    }
    Object localObject3 = new d(localo0, paramg, this.q);
    this.i.add(localObject3);
    localo0.show();
    localObject3 = localo0.k();
    ((View)localObject3).setOnKeyListener(this);
    if ((localObject2 == null) && (this.z) && (paramg.getHeaderTitle() != null))
    {
      localObject2 = (FrameLayout)((LayoutInflater)localObject1).inflate(d.g.l, (ViewGroup)localObject3, false);
      localObject1 = (TextView)((View)localObject2).findViewById(16908310);
      ((View)localObject2).setEnabled(false);
      ((TextView)localObject1).setText(paramg.getHeaderTitle());
      ((ListView)localObject3).addHeaderView((View)localObject2, null, false);
      localo0.show();
    }
  }
  
  public void a(g paramg)
  {
    paramg.addMenuPresenter(this, this.b);
    if (isShowing()) {
      v(paramg);
    } else {
      this.h.add(paramg);
    }
  }
  
  protected boolean b()
  {
    return false;
  }
  
  public void dismiss()
  {
    int i1 = this.i.size();
    if (i1 > 0)
    {
      d[] arrayOfd = (d[])this.i.toArray(new d[i1]);
      i1--;
      while (i1 >= 0)
      {
        d locald = arrayOfd[i1];
        if (locald.a.isShowing()) {
          locald.a.dismiss();
        }
        i1--;
      }
    }
  }
  
  public void e(View paramView)
  {
    if (this.o != paramView)
    {
      this.o = paramView;
      this.n = e.b(this.m, a0.z(paramView));
    }
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public void g(boolean paramBoolean)
  {
    this.y = paramBoolean;
  }
  
  public void h(int paramInt)
  {
    if (this.m != paramInt)
    {
      this.m = paramInt;
      this.n = e.b(paramInt, a0.z(this.o));
    }
  }
  
  public void i(int paramInt)
  {
    this.r = true;
    this.w = paramInt;
  }
  
  public boolean isShowing()
  {
    int i1 = this.i.size();
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (i1 > 0)
    {
      bool2 = bool1;
      if (((d)this.i.get(0)).a.isShowing()) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public void j(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.F = paramOnDismissListener;
  }
  
  public ListView k()
  {
    Object localObject;
    if (this.i.isEmpty())
    {
      localObject = null;
    }
    else
    {
      localObject = this.i;
      localObject = ((d)((List)localObject).get(((List)localObject).size() - 1)).a();
    }
    return localObject;
  }
  
  public void l(boolean paramBoolean)
  {
    this.z = paramBoolean;
  }
  
  public void m(int paramInt)
  {
    this.v = true;
    this.x = paramInt;
  }
  
  public void onCloseMenu(g paramg, boolean paramBoolean)
  {
    int i1 = q(paramg);
    if (i1 < 0) {
      return;
    }
    int i2 = i1 + 1;
    if (i2 < this.i.size()) {
      ((d)this.i.get(i2)).b.close(false);
    }
    Object localObject = (d)this.i.remove(i1);
    ((d)localObject).b.removeMenuPresenter(this);
    if (this.G)
    {
      ((d)localObject).a.O(null);
      ((d)localObject).a.A(0);
    }
    ((d)localObject).a.dismiss();
    i1 = this.i.size();
    if (i1 > 0) {
      this.q = ((d)this.i.get(i1 - 1)).c;
    } else {
      this.q = t();
    }
    if (i1 == 0)
    {
      dismiss();
      localObject = this.D;
      if (localObject != null) {
        ((m.a)localObject).onCloseMenu(paramg, true);
      }
      paramg = this.E;
      if (paramg != null)
      {
        if (paramg.isAlive()) {
          this.E.removeGlobalOnLayoutListener(this.j);
        }
        this.E = null;
      }
      this.p.removeOnAttachStateChangeListener(this.k);
      this.F.onDismiss();
    }
    else if (paramBoolean)
    {
      ((d)this.i.get(0)).b.close(false);
    }
  }
  
  public void onDismiss()
  {
    int i1 = this.i.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      locald = (d)this.i.get(i2);
      if (!locald.a.isShowing()) {
        break label52;
      }
    }
    d locald = null;
    label52:
    if (locald != null) {
      locald.b.close(false);
    }
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      dismiss();
      return true;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState()
  {
    return null;
  }
  
  public boolean onSubMenuSelected(r paramr)
  {
    Object localObject = this.i.iterator();
    while (((Iterator)localObject).hasNext())
    {
      d locald = (d)((Iterator)localObject).next();
      if (paramr == locald.b)
      {
        locald.a().requestFocus();
        return true;
      }
    }
    if (paramr.hasVisibleItems())
    {
      a(paramr);
      localObject = this.D;
      if (localObject != null) {
        ((m.a)localObject).a(paramr);
      }
      return true;
    }
    return false;
  }
  
  public void setCallback(m.a parama)
  {
    this.D = parama;
  }
  
  public void show()
  {
    if (isShowing()) {
      return;
    }
    Object localObject = this.h.iterator();
    while (((Iterator)localObject).hasNext()) {
      v((g)((Iterator)localObject).next());
    }
    this.h.clear();
    localObject = this.o;
    this.p = ((View)localObject);
    if (localObject != null)
    {
      int i1;
      if (this.E == null) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      localObject = ((View)localObject).getViewTreeObserver();
      this.E = ((ViewTreeObserver)localObject);
      if (i1 != 0) {
        ((ViewTreeObserver)localObject).addOnGlobalLayoutListener(this.j);
      }
      this.p.addOnAttachStateChangeListener(this.k);
    }
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext()) {
      k.o(((d)localIterator.next()).a().getAdapter()).notifyDataSetChanged();
    }
  }
  
  class a
    implements ViewTreeObserver.OnGlobalLayoutListener
  {
    a() {}
    
    public void onGlobalLayout()
    {
      if ((d.this.isShowing()) && (d.this.i.size() > 0) && (!((d.d)d.this.i.get(0)).a.x()))
      {
        Object localObject = d.this.p;
        if ((localObject != null) && (((View)localObject).isShown())) {
          localObject = d.this.i.iterator();
        }
        while (((Iterator)localObject).hasNext())
        {
          ((d.d)((Iterator)localObject).next()).a.show();
          continue;
          d.this.dismiss();
        }
      }
    }
  }
  
  class b
    implements View.OnAttachStateChangeListener
  {
    b() {}
    
    public void onViewAttachedToWindow(View paramView) {}
    
    public void onViewDetachedFromWindow(View paramView)
    {
      Object localObject = d.this.E;
      if (localObject != null)
      {
        if (!((ViewTreeObserver)localObject).isAlive()) {
          d.this.E = paramView.getViewTreeObserver();
        }
        localObject = d.this;
        ((d)localObject).E.removeGlobalOnLayoutListener(((d)localObject).j);
      }
      paramView.removeOnAttachStateChangeListener(this);
    }
  }
  
  class c
    implements m0
  {
    c() {}
    
    public void a(final g paramg, final MenuItem paramMenuItem)
    {
      Handler localHandler = d.this.g;
      final d.d locald = null;
      localHandler.removeCallbacksAndMessages(null);
      int i = d.this.i.size();
      for (int j = 0; j < i; j++) {
        if (paramg == ((d.d)d.this.i.get(j)).b) {
          break label76;
        }
      }
      j = -1;
      label76:
      if (j == -1) {
        return;
      }
      j++;
      if (j < d.this.i.size()) {
        locald = (d.d)d.this.i.get(j);
      }
      paramMenuItem = new a(locald, paramMenuItem, paramg);
      long l = SystemClock.uptimeMillis();
      d.this.g.postAtTime(paramMenuItem, paramg, l + 200L);
    }
    
    public void j(g paramg, MenuItem paramMenuItem)
    {
      d.this.g.removeCallbacksAndMessages(paramg);
    }
    
    class a
      implements Runnable
    {
      a(d.d paramd, MenuItem paramMenuItem, g paramg) {}
      
      public void run()
      {
        d.d locald = locald;
        if (locald != null)
        {
          d.this.G = true;
          locald.b.close(false);
          d.this.G = false;
        }
        if ((paramMenuItem.isEnabled()) && (paramMenuItem.hasSubMenu())) {
          paramg.performItemAction(paramMenuItem, 4);
        }
      }
    }
  }
  
  private static class d
  {
    public final o0 a;
    public final g b;
    public final int c;
    
    public d(o0 paramo0, g paramg, int paramInt)
    {
      this.a = paramo0;
      this.b = paramg;
      this.c = paramInt;
    }
    
    public ListView a()
    {
      return this.a.k();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.d
 * JD-Core Version:    0.7.0.1
 */