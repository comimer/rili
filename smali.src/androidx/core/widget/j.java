package androidx.core.widget;

import android.widget.AbsListView;
import android.widget.ListView;

public final class j
{
  public static boolean a(ListView paramListView, int paramInt)
  {
    return a.a(paramListView, paramInt);
  }
  
  public static void b(ListView paramListView, int paramInt)
  {
    a.b(paramListView, paramInt);
  }
  
  static class a
  {
    static boolean a(ListView paramListView, int paramInt)
    {
      return paramListView.canScrollList(paramInt);
    }
    
    static void b(ListView paramListView, int paramInt)
    {
      paramListView.scrollListBy(paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.widget.j
 * JD-Core Version:    0.7.0.1
 */