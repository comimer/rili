package androidx.preference;

import android.os.Bundle;
import android.view.View;
import androidx.core.view.a;
import androidx.core.view.accessibility.g;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m;

@Deprecated
public class k
  extends m
{
  final RecyclerView a;
  final a b = super.getItemDelegate();
  final a c = new a();
  
  public k(RecyclerView paramRecyclerView)
  {
    super(paramRecyclerView);
    this.a = paramRecyclerView;
  }
  
  public a getItemDelegate()
  {
    return this.c;
  }
  
  class a
    extends a
  {
    a() {}
    
    public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
    {
      k.this.b.onInitializeAccessibilityNodeInfo(paramView, paramg);
      int i = k.this.a.getChildAdapterPosition(paramView);
      paramView = k.this.a.getAdapter();
      if (!(paramView instanceof h)) {
        return;
      }
      paramView = ((h)paramView).i(i);
      if (paramView == null) {
        return;
      }
      paramView.c0(paramg);
    }
    
    public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      return k.this.b.performAccessibilityAction(paramView, paramInt, paramBundle);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.k
 * JD-Core Version:    0.7.0.1
 */