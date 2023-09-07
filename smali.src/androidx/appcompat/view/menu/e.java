package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;

public class e
  implements m, AdapterView.OnItemClickListener
{
  Context a;
  LayoutInflater b;
  g c;
  ExpandedMenuView d;
  int e;
  int f;
  int g;
  private m.a h;
  a i;
  private int j;
  
  public e(int paramInt1, int paramInt2)
  {
    this.g = paramInt1;
    this.f = paramInt2;
  }
  
  public e(Context paramContext, int paramInt)
  {
    this(paramInt, 0);
    this.a = paramContext;
    this.b = LayoutInflater.from(paramContext);
  }
  
  public ListAdapter a()
  {
    if (this.i == null) {
      this.i = new a();
    }
    return this.i;
  }
  
  public n b(ViewGroup paramViewGroup)
  {
    if (this.d == null)
    {
      this.d = ((ExpandedMenuView)this.b.inflate(d.g.g, paramViewGroup, false));
      if (this.i == null) {
        this.i = new a();
      }
      this.d.setAdapter(this.i);
      this.d.setOnItemClickListener(this);
    }
    return this.d;
  }
  
  public void c(Bundle paramBundle)
  {
    paramBundle = paramBundle.getSparseParcelableArray("android:menu:list");
    if (paramBundle != null) {
      this.d.restoreHierarchyState(paramBundle);
    }
  }
  
  public boolean collapseItemActionView(g paramg, i parami)
  {
    return false;
  }
  
  public void d(Bundle paramBundle)
  {
    SparseArray localSparseArray = new SparseArray();
    ExpandedMenuView localExpandedMenuView = this.d;
    if (localExpandedMenuView != null) {
      localExpandedMenuView.saveHierarchyState(localSparseArray);
    }
    paramBundle.putSparseParcelableArray("android:menu:list", localSparseArray);
  }
  
  public boolean expandItemActionView(g paramg, i parami)
  {
    return false;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public int getId()
  {
    return this.j;
  }
  
  public void initForMenu(Context paramContext, g paramg)
  {
    if (this.f != 0)
    {
      paramContext = new ContextThemeWrapper(paramContext, this.f);
      this.a = paramContext;
      this.b = LayoutInflater.from(paramContext);
    }
    else if (this.a != null)
    {
      this.a = paramContext;
      if (this.b == null) {
        this.b = LayoutInflater.from(paramContext);
      }
    }
    this.c = paramg;
    paramContext = this.i;
    if (paramContext != null) {
      paramContext.notifyDataSetChanged();
    }
  }
  
  public void onCloseMenu(g paramg, boolean paramBoolean)
  {
    m.a locala = this.h;
    if (locala != null) {
      locala.onCloseMenu(paramg, paramBoolean);
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.c.performItemAction(this.i.b(paramInt), this, 0);
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    c((Bundle)paramParcelable);
  }
  
  public Parcelable onSaveInstanceState()
  {
    if (this.d == null) {
      return null;
    }
    Bundle localBundle = new Bundle();
    d(localBundle);
    return localBundle;
  }
  
  public boolean onSubMenuSelected(r paramr)
  {
    if (!paramr.hasVisibleItems()) {
      return false;
    }
    new h(paramr).c(null);
    m.a locala = this.h;
    if (locala != null) {
      locala.a(paramr);
    }
    return true;
  }
  
  public void setCallback(m.a parama)
  {
    this.h = parama;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    a locala = this.i;
    if (locala != null) {
      locala.notifyDataSetChanged();
    }
  }
  
  private class a
    extends BaseAdapter
  {
    private int a = -1;
    
    public a()
    {
      a();
    }
    
    void a()
    {
      i locali = e.this.c.getExpandedItem();
      if (locali != null)
      {
        ArrayList localArrayList = e.this.c.getNonActionItems();
        int i = localArrayList.size();
        for (int j = 0; j < i; j++) {
          if ((i)localArrayList.get(j) == locali)
          {
            this.a = j;
            return;
          }
        }
      }
      this.a = -1;
    }
    
    public i b(int paramInt)
    {
      ArrayList localArrayList = e.this.c.getNonActionItems();
      int i = paramInt + e.this.e;
      int j = this.a;
      paramInt = i;
      if (j >= 0)
      {
        paramInt = i;
        if (i >= j) {
          paramInt = i + 1;
        }
      }
      return (i)localArrayList.get(paramInt);
    }
    
    public int getCount()
    {
      int i = e.this.c.getNonActionItems().size() - e.this.e;
      if (this.a < 0) {
        return i;
      }
      return i - 1;
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = paramView;
      if (paramView == null)
      {
        paramView = e.this;
        localView = paramView.b.inflate(paramView.g, paramViewGroup, false);
      }
      ((n.a)localView).initialize(b(paramInt), 0);
      return localView;
    }
    
    public void notifyDataSetChanged()
    {
      a();
      super.notifyDataSetChanged();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.e
 * JD-Core Version:    0.7.0.1
 */