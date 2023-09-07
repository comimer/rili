package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window.Callback;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.g.a;
import androidx.appcompat.view.menu.m.a;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.Toolbar.f;
import androidx.appcompat.widget.b1;
import androidx.appcompat.widget.c0;
import androidx.core.util.h;
import androidx.core.view.a0;
import java.util.ArrayList;

class k
  extends a
{
  final c0 a;
  final Window.Callback b;
  final AppCompatDelegateImpl.g c;
  boolean d;
  private boolean e;
  private boolean f;
  private ArrayList<a.b> g = new ArrayList();
  private final Runnable h = new a();
  private final Toolbar.f i;
  
  k(Toolbar paramToolbar, CharSequence paramCharSequence, Window.Callback paramCallback)
  {
    b localb = new b();
    this.i = localb;
    h.g(paramToolbar);
    b1 localb1 = new b1(paramToolbar, false);
    this.a = localb1;
    this.b = ((Window.Callback)h.g(paramCallback));
    localb1.setWindowCallback(paramCallback);
    paramToolbar.setOnMenuItemClickListener(localb);
    localb1.setWindowTitle(paramCharSequence);
    this.c = new e();
  }
  
  private Menu E()
  {
    if (!this.e)
    {
      this.a.p(new c(), new d());
      this.e = true;
    }
    return this.a.l();
  }
  
  public void C(CharSequence paramCharSequence)
  {
    this.a.setWindowTitle(paramCharSequence);
  }
  
  void F()
  {
    Menu localMenu = E();
    g localg;
    if ((localMenu instanceof g)) {
      localg = (g)localMenu;
    } else {
      localg = null;
    }
    if (localg != null) {
      localg.stopDispatchingItemsChanged();
    }
    try
    {
      localMenu.clear();
      if ((!this.b.onCreatePanelMenu(0, localMenu)) || (!this.b.onPreparePanel(0, null, localMenu))) {
        localMenu.clear();
      }
      return;
    }
    finally
    {
      if (localg != null) {
        localg.startDispatchingItemsChanged();
      }
    }
  }
  
  public boolean g()
  {
    return this.a.f();
  }
  
  public boolean h()
  {
    if (this.a.j())
    {
      this.a.collapseActionView();
      return true;
    }
    return false;
  }
  
  public void i(boolean paramBoolean)
  {
    if (paramBoolean == this.f) {
      return;
    }
    this.f = paramBoolean;
    int j = this.g.size();
    for (int k = 0; k < j; k++) {
      ((a.b)this.g.get(k)).onMenuVisibilityChanged(paramBoolean);
    }
  }
  
  public int k()
  {
    return this.a.t();
  }
  
  public Context l()
  {
    return this.a.getContext();
  }
  
  public boolean n()
  {
    this.a.r().removeCallbacks(this.h);
    a0.d0(this.a.r(), this.h);
    return true;
  }
  
  public void p(Configuration paramConfiguration)
  {
    super.p(paramConfiguration);
  }
  
  void q()
  {
    this.a.r().removeCallbacks(this.h);
  }
  
  public boolean r(int paramInt, KeyEvent paramKeyEvent)
  {
    Menu localMenu = E();
    if (localMenu != null)
    {
      if (paramKeyEvent != null) {
        j = paramKeyEvent.getDeviceId();
      } else {
        j = -1;
      }
      int j = KeyCharacterMap.load(j).getKeyboardType();
      boolean bool = true;
      if (j == 1) {
        bool = false;
      }
      localMenu.setQwertyMode(bool);
      return localMenu.performShortcut(paramInt, paramKeyEvent, 0);
    }
    return false;
  }
  
  public boolean s(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 1) {
      t();
    }
    return true;
  }
  
  public boolean t()
  {
    return this.a.g();
  }
  
  public void w(boolean paramBoolean) {}
  
  public void y(boolean paramBoolean) {}
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      k.this.F();
    }
  }
  
  class b
    implements Toolbar.f
  {
    b() {}
    
    public boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      return k.this.b.onMenuItemSelected(0, paramMenuItem);
    }
  }
  
  private final class c
    implements m.a
  {
    private boolean a;
    
    c() {}
    
    public boolean a(g paramg)
    {
      k.this.b.onMenuOpened(108, paramg);
      return true;
    }
    
    public void onCloseMenu(g paramg, boolean paramBoolean)
    {
      if (this.a) {
        return;
      }
      this.a = true;
      k.this.a.h();
      k.this.b.onPanelClosed(108, paramg);
      this.a = false;
    }
  }
  
  private final class d
    implements g.a
  {
    d() {}
    
    public boolean onMenuItemSelected(g paramg, MenuItem paramMenuItem)
    {
      return false;
    }
    
    public void onMenuModeChange(g paramg)
    {
      if (k.this.a.b()) {
        k.this.b.onPanelClosed(108, paramg);
      } else if (k.this.b.onPreparePanel(0, null, paramg)) {
        k.this.b.onMenuOpened(108, paramg);
      }
    }
  }
  
  private class e
    implements AppCompatDelegateImpl.g
  {
    e() {}
    
    public boolean a(int paramInt)
    {
      if (paramInt == 0)
      {
        k localk = k.this;
        if (!localk.d)
        {
          localk.a.c();
          k.this.d = true;
        }
      }
      return false;
    }
    
    public View onCreatePanelView(int paramInt)
    {
      if (paramInt == 0) {
        return new View(k.this.a.getContext());
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.k
 * JD-Core Version:    0.7.0.1
 */