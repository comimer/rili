package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import androidx.appcompat.widget.l0;
import androidx.appcompat.widget.o0;
import androidx.core.view.a0;
import d.d;

final class q
  extends k
  implements PopupWindow.OnDismissListener, View.OnKeyListener
{
  private static final int y = d.g.m;
  private final Context b;
  private final g c;
  private final f d;
  private final boolean e;
  private final int f;
  private final int g;
  private final int h;
  final o0 i;
  final ViewTreeObserver.OnGlobalLayoutListener j = new a();
  private final View.OnAttachStateChangeListener k = new b();
  private PopupWindow.OnDismissListener l;
  private View m;
  View n;
  private m.a o;
  ViewTreeObserver p;
  private boolean q;
  private boolean r;
  private int v;
  private int w = 0;
  private boolean x;
  
  public q(Context paramContext, g paramg, View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.b = paramContext;
    this.c = paramg;
    this.e = paramBoolean;
    this.d = new f(paramg, LayoutInflater.from(paramContext), paramBoolean, y);
    this.g = paramInt1;
    this.h = paramInt2;
    Resources localResources = paramContext.getResources();
    this.f = Math.max(localResources.getDisplayMetrics().widthPixels / 2, localResources.getDimensionPixelSize(d.d));
    this.m = paramView;
    this.i = new o0(paramContext, null, paramInt1, paramInt2);
    paramg.addMenuPresenter(this, paramContext);
  }
  
  private boolean p()
  {
    if (isShowing()) {
      return true;
    }
    if (!this.q)
    {
      Object localObject1 = this.m;
      if (localObject1 != null)
      {
        this.n = ((View)localObject1);
        this.i.G(this);
        this.i.H(this);
        this.i.F(true);
        Object localObject2 = this.n;
        int i1;
        if (this.p == null) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        localObject1 = ((View)localObject2).getViewTreeObserver();
        this.p = ((ViewTreeObserver)localObject1);
        if (i1 != 0) {
          ((ViewTreeObserver)localObject1).addOnGlobalLayoutListener(this.j);
        }
        ((View)localObject2).addOnAttachStateChangeListener(this.k);
        this.i.z((View)localObject2);
        this.i.C(this.w);
        if (!this.r)
        {
          this.v = k.d(this.d, null, this.b, this.f);
          this.r = true;
        }
        this.i.B(this.v);
        this.i.E(2);
        this.i.D(c());
        this.i.show();
        localObject2 = this.i.k();
        ((View)localObject2).setOnKeyListener(this);
        if ((this.x) && (this.c.getHeaderTitle() != null))
        {
          FrameLayout localFrameLayout = (FrameLayout)LayoutInflater.from(this.b).inflate(d.g.l, (ViewGroup)localObject2, false);
          localObject1 = (TextView)localFrameLayout.findViewById(16908310);
          if (localObject1 != null) {
            ((TextView)localObject1).setText(this.c.getHeaderTitle());
          }
          localFrameLayout.setEnabled(false);
          ((ListView)localObject2).addHeaderView(localFrameLayout, null, false);
        }
        this.i.i(this.d);
        this.i.show();
        return true;
      }
    }
    return false;
  }
  
  public void a(g paramg) {}
  
  public void dismiss()
  {
    if (isShowing()) {
      this.i.dismiss();
    }
  }
  
  public void e(View paramView)
  {
    this.m = paramView;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public void g(boolean paramBoolean)
  {
    this.d.d(paramBoolean);
  }
  
  public void h(int paramInt)
  {
    this.w = paramInt;
  }
  
  public void i(int paramInt)
  {
    this.i.c(paramInt);
  }
  
  public boolean isShowing()
  {
    boolean bool;
    if ((!this.q) && (this.i.isShowing())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void j(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.l = paramOnDismissListener;
  }
  
  public ListView k()
  {
    return this.i.k();
  }
  
  public void l(boolean paramBoolean)
  {
    this.x = paramBoolean;
  }
  
  public void m(int paramInt)
  {
    this.i.f(paramInt);
  }
  
  public void onCloseMenu(g paramg, boolean paramBoolean)
  {
    if (paramg != this.c) {
      return;
    }
    dismiss();
    m.a locala = this.o;
    if (locala != null) {
      locala.onCloseMenu(paramg, paramBoolean);
    }
  }
  
  public void onDismiss()
  {
    this.q = true;
    this.c.close();
    Object localObject = this.p;
    if (localObject != null)
    {
      if (!((ViewTreeObserver)localObject).isAlive()) {
        this.p = this.n.getViewTreeObserver();
      }
      this.p.removeGlobalOnLayoutListener(this.j);
      this.p = null;
    }
    this.n.removeOnAttachStateChangeListener(this.k);
    localObject = this.l;
    if (localObject != null) {
      ((PopupWindow.OnDismissListener)localObject).onDismiss();
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
    if (paramr.hasVisibleItems())
    {
      Object localObject = new l(this.b, paramr, this.n, this.e, this.g, this.h);
      ((l)localObject).j(this.o);
      ((l)localObject).g(k.n(paramr));
      ((l)localObject).i(this.l);
      this.l = null;
      this.c.close(false);
      int i1 = this.i.b();
      int i2 = this.i.h();
      int i3 = i1;
      if ((Gravity.getAbsoluteGravity(this.w, a0.z(this.m)) & 0x7) == 5) {
        i3 = i1 + this.m.getWidth();
      }
      if (((l)localObject).n(i3, i2))
      {
        localObject = this.o;
        if (localObject != null) {
          ((m.a)localObject).a(paramr);
        }
        return true;
      }
    }
    return false;
  }
  
  public void setCallback(m.a parama)
  {
    this.o = parama;
  }
  
  public void show()
  {
    if (p()) {
      return;
    }
    throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    this.r = false;
    f localf = this.d;
    if (localf != null) {
      localf.notifyDataSetChanged();
    }
  }
  
  class a
    implements ViewTreeObserver.OnGlobalLayoutListener
  {
    a() {}
    
    public void onGlobalLayout()
    {
      if ((q.this.isShowing()) && (!q.this.i.x()))
      {
        View localView = q.this.n;
        if ((localView != null) && (localView.isShown())) {
          q.this.i.show();
        } else {
          q.this.dismiss();
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
      Object localObject = q.this.p;
      if (localObject != null)
      {
        if (!((ViewTreeObserver)localObject).isAlive()) {
          q.this.p = paramView.getViewTreeObserver();
        }
        localObject = q.this;
        ((q)localObject).p.removeGlobalOnLayoutListener(((q)localObject).j);
      }
      paramView.removeOnAttachStateChangeListener(this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.q
 * JD-Core Version:    0.7.0.1
 */