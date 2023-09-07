package androidx.viewpager2.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import androidx.core.view.a0;
import androidx.recyclerview.widget.RecyclerView.c0;

public final class a
  extends RecyclerView.c0
{
  private a(FrameLayout paramFrameLayout)
  {
    super(paramFrameLayout);
  }
  
  static a a(ViewGroup paramViewGroup)
  {
    paramViewGroup = new FrameLayout(paramViewGroup.getContext());
    paramViewGroup.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    paramViewGroup.setId(a0.j());
    paramViewGroup.setSaveEnabled(false);
    return new a(paramViewGroup);
  }
  
  FrameLayout b()
  {
    return (FrameLayout)this.itemView;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.viewpager2.adapter.a
 * JD-Core Version:    0.7.0.1
 */