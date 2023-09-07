package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import androidx.appcompat.widget.z0;

public final class ExpandedMenuView
  extends ListView
  implements g.b, n, AdapterView.OnItemClickListener
{
  private static final int[] c = { 16842964, 16843049 };
  private g a;
  private int b;
  
  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842868);
  }
  
  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    setOnItemClickListener(this);
    paramContext = z0.v(paramContext, paramAttributeSet, c, paramInt, 0);
    if (paramContext.s(0)) {
      setBackgroundDrawable(paramContext.g(0));
    }
    if (paramContext.s(1)) {
      setDivider(paramContext.g(1));
    }
    paramContext.w();
  }
  
  public boolean a(i parami)
  {
    return this.a.performItemAction(parami, 0);
  }
  
  public int getWindowAnimations()
  {
    return this.b;
  }
  
  public void initialize(g paramg)
  {
    this.a = paramg;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    setChildrenDrawingCacheEnabled(false);
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a((i)getAdapter().getItem(paramInt));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.ExpandedMenuView
 * JD-Core Version:    0.7.0.1
 */