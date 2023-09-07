package androidx.core.view;

import android.view.ViewGroup;

public final class x0
{
  public static boolean a(ViewGroup paramViewGroup)
  {
    return a.b(paramViewGroup);
  }
  
  static class a
  {
    static int a(ViewGroup paramViewGroup)
    {
      return paramViewGroup.getNestedScrollAxes();
    }
    
    static boolean b(ViewGroup paramViewGroup)
    {
      return paramViewGroup.isTransitionGroup();
    }
    
    static void c(ViewGroup paramViewGroup, boolean paramBoolean)
    {
      paramViewGroup.setTransitionGroup(paramBoolean);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.x0
 * JD-Core Version:    0.7.0.1
 */