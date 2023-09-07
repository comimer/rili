package androidx.core.view;

import android.view.ViewGroup.MarginLayoutParams;

public final class h
{
  public static int a(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return a.b(paramMarginLayoutParams);
  }
  
  public static int b(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return a.c(paramMarginLayoutParams);
  }
  
  public static void c(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
  {
    a.g(paramMarginLayoutParams, paramInt);
  }
  
  public static void d(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
  {
    a.h(paramMarginLayoutParams, paramInt);
  }
  
  static class a
  {
    static int a(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return paramMarginLayoutParams.getLayoutDirection();
    }
    
    static int b(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return paramMarginLayoutParams.getMarginEnd();
    }
    
    static int c(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return paramMarginLayoutParams.getMarginStart();
    }
    
    static boolean d(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return paramMarginLayoutParams.isMarginRelative();
    }
    
    static void e(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
    {
      paramMarginLayoutParams.resolveLayoutDirection(paramInt);
    }
    
    static void f(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
    {
      paramMarginLayoutParams.setLayoutDirection(paramInt);
    }
    
    static void g(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
    {
      paramMarginLayoutParams.setMarginEnd(paramInt);
    }
    
    static void h(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
    {
      paramMarginLayoutParams.setMarginStart(paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.h
 * JD-Core Version:    0.7.0.1
 */