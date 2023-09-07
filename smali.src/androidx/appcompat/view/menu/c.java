package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import n.g;
import u.b;

abstract class c
{
  final Context a;
  private g<b, MenuItem> b;
  private g<u.c, SubMenu> c;
  
  c(Context paramContext)
  {
    this.a = paramContext;
  }
  
  final MenuItem c(MenuItem paramMenuItem)
  {
    Object localObject = paramMenuItem;
    if ((paramMenuItem instanceof b))
    {
      b localb = (b)paramMenuItem;
      if (this.b == null) {
        this.b = new g();
      }
      paramMenuItem = (MenuItem)this.b.get(paramMenuItem);
      localObject = paramMenuItem;
      if (paramMenuItem == null)
      {
        localObject = new j(this.a, localb);
        this.b.put(localb, localObject);
      }
    }
    return localObject;
  }
  
  final SubMenu d(SubMenu paramSubMenu)
  {
    if ((paramSubMenu instanceof u.c))
    {
      u.c localc = (u.c)paramSubMenu;
      if (this.c == null) {
        this.c = new g();
      }
      SubMenu localSubMenu = (SubMenu)this.c.get(localc);
      paramSubMenu = localSubMenu;
      if (localSubMenu == null)
      {
        paramSubMenu = new s(this.a, localc);
        this.c.put(localc, paramSubMenu);
      }
      return paramSubMenu;
    }
    return paramSubMenu;
  }
  
  final void e()
  {
    g localg = this.b;
    if (localg != null) {
      localg.clear();
    }
    localg = this.c;
    if (localg != null) {
      localg.clear();
    }
  }
  
  final void f(int paramInt)
  {
    if (this.b == null) {
      return;
    }
    int j;
    for (int i = 0; i < this.b.size(); i = j + 1)
    {
      j = i;
      if (((b)this.b.l(i)).getGroupId() == paramInt)
      {
        this.b.n(i);
        j = i - 1;
      }
    }
  }
  
  final void g(int paramInt)
  {
    if (this.b == null) {
      return;
    }
    for (int i = 0; i < this.b.size(); i++) {
      if (((b)this.b.l(i)).getItemId() == paramInt)
      {
        this.b.n(i);
        break;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.c
 * JD-Core Version:    0.7.0.1
 */