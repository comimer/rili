package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow.OnDismissListener;

abstract class k
  implements p, m, AdapterView.OnItemClickListener
{
  private Rect a;
  
  protected static int d(ListAdapter paramListAdapter, ViewGroup paramViewGroup, Context paramContext, int paramInt)
  {
    int i = 0;
    int j = View.MeasureSpec.makeMeasureSpec(0, 0);
    int k = View.MeasureSpec.makeMeasureSpec(0, 0);
    int m = paramListAdapter.getCount();
    int n = 0;
    int i1 = n;
    Object localObject1 = null;
    Object localObject2 = paramViewGroup;
    paramViewGroup = (ViewGroup)localObject1;
    while (i < m)
    {
      int i2 = paramListAdapter.getItemViewType(i);
      int i3 = i1;
      if (i2 != i1)
      {
        paramViewGroup = null;
        i3 = i2;
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new FrameLayout(paramContext);
      }
      paramViewGroup = paramListAdapter.getView(i, paramViewGroup, (ViewGroup)localObject1);
      paramViewGroup.measure(j, k);
      i2 = paramViewGroup.getMeasuredWidth();
      if (i2 >= paramInt) {
        return paramInt;
      }
      i1 = n;
      if (i2 > n) {
        i1 = i2;
      }
      i++;
      n = i1;
      i1 = i3;
      localObject2 = localObject1;
    }
    return n;
  }
  
  protected static boolean n(g paramg)
  {
    int i = paramg.size();
    boolean bool1 = false;
    boolean bool2;
    for (int j = 0;; j++)
    {
      bool2 = bool1;
      if (j >= i) {
        break;
      }
      MenuItem localMenuItem = paramg.getItem(j);
      if ((localMenuItem.isVisible()) && (localMenuItem.getIcon() != null))
      {
        bool2 = true;
        break;
      }
    }
    return bool2;
  }
  
  protected static f o(ListAdapter paramListAdapter)
  {
    if ((paramListAdapter instanceof HeaderViewListAdapter)) {
      return (f)((HeaderViewListAdapter)paramListAdapter).getWrappedAdapter();
    }
    return (f)paramListAdapter;
  }
  
  public abstract void a(g paramg);
  
  protected boolean b()
  {
    return true;
  }
  
  public Rect c()
  {
    return this.a;
  }
  
  public boolean collapseItemActionView(g paramg, i parami)
  {
    return false;
  }
  
  public abstract void e(View paramView);
  
  public boolean expandItemActionView(g paramg, i parami)
  {
    return false;
  }
  
  public void f(Rect paramRect)
  {
    this.a = paramRect;
  }
  
  public abstract void g(boolean paramBoolean);
  
  public int getId()
  {
    return 0;
  }
  
  public abstract void h(int paramInt);
  
  public abstract void i(int paramInt);
  
  public void initForMenu(Context paramContext, g paramg) {}
  
  public abstract void j(PopupWindow.OnDismissListener paramOnDismissListener);
  
  public abstract void l(boolean paramBoolean);
  
  public abstract void m(int paramInt);
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramView = (ListAdapter)paramAdapterView.getAdapter();
    paramAdapterView = o(paramView).a;
    paramView = (MenuItem)paramView.getItem(paramInt);
    if (b()) {
      paramInt = 0;
    } else {
      paramInt = 4;
    }
    paramAdapterView.performItemAction(paramView, this, paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.k
 * JD-Core Version:    0.7.0.1
 */