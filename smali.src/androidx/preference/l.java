package androidx.preference;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView.c0;

public class l
  extends RecyclerView.c0
{
  private final SparseArray<View> a;
  private boolean b;
  private boolean c;
  
  l(View paramView)
  {
    super(paramView);
    SparseArray localSparseArray = new SparseArray(4);
    this.a = localSparseArray;
    localSparseArray.put(16908310, paramView.findViewById(16908310));
    localSparseArray.put(16908304, paramView.findViewById(16908304));
    localSparseArray.put(16908294, paramView.findViewById(16908294));
    int i = o.a;
    localSparseArray.put(i, paramView.findViewById(i));
    localSparseArray.put(16908350, paramView.findViewById(16908350));
  }
  
  public View a(int paramInt)
  {
    View localView = (View)this.a.get(paramInt);
    if (localView != null) {
      return localView;
    }
    localView = this.itemView.findViewById(paramInt);
    if (localView != null) {
      this.a.put(paramInt, localView);
    }
    return localView;
  }
  
  public boolean b()
  {
    return this.b;
  }
  
  public boolean c()
  {
    return this.c;
  }
  
  public void d(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public void e(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.l
 * JD-Core Version:    0.7.0.1
 */