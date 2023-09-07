package androidx.recyclerview.widget;

import android.view.View;

class q
{
  static int a(RecyclerView.z paramz, k paramk, View paramView1, View paramView2, RecyclerView.o paramo, boolean paramBoolean)
  {
    if ((paramo.getChildCount() != 0) && (paramz.b() != 0) && (paramView1 != null) && (paramView2 != null))
    {
      if (!paramBoolean) {
        return Math.abs(paramo.getPosition(paramView1) - paramo.getPosition(paramView2)) + 1;
      }
      int i = paramk.d(paramView2);
      int j = paramk.g(paramView1);
      return Math.min(paramk.n(), i - j);
    }
    return 0;
  }
  
  static int b(RecyclerView.z paramz, k paramk, View paramView1, View paramView2, RecyclerView.o paramo, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramo.getChildCount() != 0) && (paramz.b() != 0) && (paramView1 != null) && (paramView2 != null))
    {
      int i = Math.min(paramo.getPosition(paramView1), paramo.getPosition(paramView2));
      int j = Math.max(paramo.getPosition(paramView1), paramo.getPosition(paramView2));
      if (paramBoolean2) {
        j = Math.max(0, paramz.b() - j - 1);
      } else {
        j = Math.max(0, i);
      }
      if (!paramBoolean1) {
        return j;
      }
      i = Math.abs(paramk.d(paramView2) - paramk.g(paramView1));
      int k = Math.abs(paramo.getPosition(paramView1) - paramo.getPosition(paramView2));
      float f = i / (k + 1);
      return Math.round(j * f + (paramk.m() - paramk.g(paramView1)));
    }
    return 0;
  }
  
  static int c(RecyclerView.z paramz, k paramk, View paramView1, View paramView2, RecyclerView.o paramo, boolean paramBoolean)
  {
    if ((paramo.getChildCount() != 0) && (paramz.b() != 0) && (paramView1 != null) && (paramView2 != null))
    {
      if (!paramBoolean) {
        return paramz.b();
      }
      int i = paramk.d(paramView2);
      int j = paramk.g(paramView1);
      int k = Math.abs(paramo.getPosition(paramView1) - paramo.getPosition(paramView2));
      return (int)((i - j) / (k + 1) * paramz.b());
    }
    return 0;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.q
 * JD-Core Version:    0.7.0.1
 */