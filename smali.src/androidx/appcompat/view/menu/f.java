package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

public class f
  extends BaseAdapter
{
  g a;
  private int b = -1;
  private boolean c;
  private final boolean d;
  private final LayoutInflater e;
  private final int f;
  
  public f(g paramg, LayoutInflater paramLayoutInflater, boolean paramBoolean, int paramInt)
  {
    this.d = paramBoolean;
    this.e = paramLayoutInflater;
    this.a = paramg;
    this.f = paramInt;
    a();
  }
  
  void a()
  {
    i locali = this.a.getExpandedItem();
    if (locali != null)
    {
      ArrayList localArrayList = this.a.getNonActionItems();
      int i = localArrayList.size();
      for (int j = 0; j < i; j++) {
        if ((i)localArrayList.get(j) == locali)
        {
          this.b = j;
          return;
        }
      }
    }
    this.b = -1;
  }
  
  public g b()
  {
    return this.a;
  }
  
  public i c(int paramInt)
  {
    ArrayList localArrayList;
    if (this.d) {
      localArrayList = this.a.getNonActionItems();
    } else {
      localArrayList = this.a.getVisibleItems();
    }
    int i = this.b;
    int j = paramInt;
    if (i >= 0)
    {
      j = paramInt;
      if (paramInt >= i) {
        j = paramInt + 1;
      }
    }
    return (i)localArrayList.get(j);
  }
  
  public void d(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
  
  public int getCount()
  {
    ArrayList localArrayList;
    if (this.d) {
      localArrayList = this.a.getNonActionItems();
    } else {
      localArrayList = this.a.getVisibleItems();
    }
    if (this.b < 0) {
      return localArrayList.size();
    }
    return localArrayList.size() - 1;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = this.e.inflate(this.f, paramViewGroup, false);
    }
    int i = c(paramInt).getGroupId();
    int j = paramInt - 1;
    if (j >= 0) {
      j = c(j).getGroupId();
    } else {
      j = i;
    }
    paramView = (ListMenuItemView)localView;
    boolean bool;
    if ((this.a.isGroupDividerEnabled()) && (i != j)) {
      bool = true;
    } else {
      bool = false;
    }
    paramView.setGroupDividerEnabled(bool);
    paramViewGroup = (n.a)localView;
    if (this.c) {
      paramView.setForceShowIcon(true);
    }
    paramViewGroup.initialize(c(paramInt), 0);
    return localView;
  }
  
  public void notifyDataSetChanged()
  {
    a();
    super.notifyDataSetChanged();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.f
 * JD-Core Version:    0.7.0.1
 */