package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class b
  implements m
{
  protected Context a;
  protected Context b;
  protected g c;
  protected LayoutInflater d;
  protected LayoutInflater e;
  private m.a f;
  private int g;
  private int h;
  protected n i;
  private int j;
  
  public b(Context paramContext, int paramInt1, int paramInt2)
  {
    this.a = paramContext;
    this.d = LayoutInflater.from(paramContext);
    this.g = paramInt1;
    this.h = paramInt2;
  }
  
  protected void a(View paramView, int paramInt)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(paramView);
    }
    ((ViewGroup)this.i).addView(paramView, paramInt);
  }
  
  public abstract void b(i parami, n.a parama);
  
  public n.a c(ViewGroup paramViewGroup)
  {
    return (n.a)this.d.inflate(this.h, paramViewGroup, false);
  }
  
  public boolean collapseItemActionView(g paramg, i parami)
  {
    return false;
  }
  
  protected boolean d(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }
  
  public m.a e()
  {
    return this.f;
  }
  
  public boolean expandItemActionView(g paramg, i parami)
  {
    return false;
  }
  
  public View f(i parami, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof n.a)) {
      paramView = (n.a)paramView;
    } else {
      paramView = c(paramViewGroup);
    }
    b(parami, paramView);
    return (View)paramView;
  }
  
  public n g(ViewGroup paramViewGroup)
  {
    if (this.i == null)
    {
      paramViewGroup = (n)this.d.inflate(this.g, paramViewGroup, false);
      this.i = paramViewGroup;
      paramViewGroup.initialize(this.c);
      updateMenuView(true);
    }
    return this.i;
  }
  
  public int getId()
  {
    return this.j;
  }
  
  public void h(int paramInt)
  {
    this.j = paramInt;
  }
  
  public abstract boolean i(int paramInt, i parami);
  
  public void initForMenu(Context paramContext, g paramg)
  {
    this.b = paramContext;
    this.e = LayoutInflater.from(paramContext);
    this.c = paramg;
  }
  
  public void onCloseMenu(g paramg, boolean paramBoolean)
  {
    m.a locala = this.f;
    if (locala != null) {
      locala.onCloseMenu(paramg, paramBoolean);
    }
  }
  
  public boolean onSubMenuSelected(r paramr)
  {
    m.a locala = this.f;
    if (locala != null)
    {
      if (paramr == null) {
        paramr = this.c;
      }
      return locala.a(paramr);
    }
    return false;
  }
  
  public void setCallback(m.a parama)
  {
    this.f = parama;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)this.i;
    if (localViewGroup == null) {
      return;
    }
    Object localObject = this.c;
    int k = 0;
    if (localObject != null)
    {
      ((g)localObject).flagActionItems();
      ArrayList localArrayList = this.c.getVisibleItems();
      int m = localArrayList.size();
      int n = 0;
      int i1;
      for (k = n; n < m; k = i1)
      {
        i locali = (i)localArrayList.get(n);
        i1 = k;
        if (i(k, locali))
        {
          View localView1 = localViewGroup.getChildAt(k);
          if ((localView1 instanceof n.a)) {
            localObject = ((n.a)localView1).getItemData();
          } else {
            localObject = null;
          }
          View localView2 = f(locali, localView1, localViewGroup);
          if (locali != localObject)
          {
            localView2.setPressed(false);
            localView2.jumpDrawablesToCurrentState();
          }
          if (localView2 != localView1) {
            a(localView2, k);
          }
          i1 = k + 1;
        }
        n++;
      }
    }
    while (k < localViewGroup.getChildCount()) {
      if (!d(localViewGroup, k)) {
        k++;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.b
 * JD-Core Version:    0.7.0.1
 */