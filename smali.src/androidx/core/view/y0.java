package androidx.core.view;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

public final class y0
{
  public static boolean a(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    try
    {
      paramBoolean = a.a(paramViewParent, paramView, paramFloat1, paramFloat2, paramBoolean);
      return paramBoolean;
    }
    catch (AbstractMethodError paramView)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ViewParent ");
      localStringBuilder.append(paramViewParent);
      localStringBuilder.append(" does not implement interface method onNestedFling");
      Log.e("ViewParentCompat", localStringBuilder.toString(), paramView);
    }
    return false;
  }
  
  public static boolean b(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2)
  {
    try
    {
      boolean bool = a.b(paramViewParent, paramView, paramFloat1, paramFloat2);
      return bool;
    }
    catch (AbstractMethodError paramView)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ViewParent ");
      localStringBuilder.append(paramViewParent);
      localStringBuilder.append(" does not implement interface method onNestedPreFling");
      Log.e("ViewParentCompat", localStringBuilder.toString(), paramView);
    }
    return false;
  }
  
  public static void c(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    if ((paramViewParent instanceof r)) {
      ((r)paramViewParent).onNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfInt, paramInt3);
    } else if (paramInt3 == 0) {
      try
      {
        a.c(paramViewParent, paramView, paramInt1, paramInt2, paramArrayOfInt);
      }
      catch (AbstractMethodError paramView)
      {
        paramArrayOfInt = new StringBuilder();
        paramArrayOfInt.append("ViewParent ");
        paramArrayOfInt.append(paramViewParent);
        paramArrayOfInt.append(" does not implement interface method onNestedPreScroll");
        Log.e("ViewParentCompat", paramArrayOfInt.toString(), paramView);
      }
    }
  }
  
  public static void d(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int[] paramArrayOfInt)
  {
    if ((paramViewParent instanceof s))
    {
      ((s)paramViewParent).onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramArrayOfInt);
    }
    else
    {
      paramArrayOfInt[0] += paramInt3;
      paramArrayOfInt[1] += paramInt4;
      if ((paramViewParent instanceof r)) {
        ((r)paramViewParent).onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
      } else if (paramInt5 == 0) {
        try
        {
          a.d(paramViewParent, paramView, paramInt1, paramInt2, paramInt3, paramInt4);
        }
        catch (AbstractMethodError paramView)
        {
          paramArrayOfInt = new StringBuilder();
          paramArrayOfInt.append("ViewParent ");
          paramArrayOfInt.append(paramViewParent);
          paramArrayOfInt.append(" does not implement interface method onNestedScroll");
          Log.e("ViewParentCompat", paramArrayOfInt.toString(), paramView);
        }
      }
    }
  }
  
  public static void e(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    if ((paramViewParent instanceof r)) {
      ((r)paramViewParent).onNestedScrollAccepted(paramView1, paramView2, paramInt1, paramInt2);
    } else if (paramInt2 == 0) {
      try
      {
        a.e(paramViewParent, paramView1, paramView2, paramInt1);
      }
      catch (AbstractMethodError paramView1)
      {
        paramView2 = new StringBuilder();
        paramView2.append("ViewParent ");
        paramView2.append(paramViewParent);
        paramView2.append(" does not implement interface method onNestedScrollAccepted");
        Log.e("ViewParentCompat", paramView2.toString(), paramView1);
      }
    }
  }
  
  public static boolean f(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    if ((paramViewParent instanceof r)) {
      return ((r)paramViewParent).onStartNestedScroll(paramView1, paramView2, paramInt1, paramInt2);
    }
    if (paramInt2 == 0) {
      try
      {
        boolean bool = a.f(paramViewParent, paramView1, paramView2, paramInt1);
        return bool;
      }
      catch (AbstractMethodError paramView1)
      {
        paramView2 = new StringBuilder();
        paramView2.append("ViewParent ");
        paramView2.append(paramViewParent);
        paramView2.append(" does not implement interface method onStartNestedScroll");
        Log.e("ViewParentCompat", paramView2.toString(), paramView1);
      }
    }
    return false;
  }
  
  public static void g(ViewParent paramViewParent, View paramView, int paramInt)
  {
    if ((paramViewParent instanceof r)) {
      ((r)paramViewParent).onStopNestedScroll(paramView, paramInt);
    } else if (paramInt == 0) {
      try
      {
        a.g(paramViewParent, paramView);
      }
      catch (AbstractMethodError localAbstractMethodError)
      {
        paramView = new StringBuilder();
        paramView.append("ViewParent ");
        paramView.append(paramViewParent);
        paramView.append(" does not implement interface method onStopNestedScroll");
        Log.e("ViewParentCompat", paramView.toString(), localAbstractMethodError);
      }
    }
  }
  
  static class a
  {
    static boolean a(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
    {
      return paramViewParent.onNestedFling(paramView, paramFloat1, paramFloat2, paramBoolean);
    }
    
    static boolean b(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2)
    {
      return paramViewParent.onNestedPreFling(paramView, paramFloat1, paramFloat2);
    }
    
    static void c(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
    {
      paramViewParent.onNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfInt);
    }
    
    static void d(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramViewParent.onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    static void e(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt)
    {
      paramViewParent.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    }
    
    static boolean f(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt)
    {
      return paramViewParent.onStartNestedScroll(paramView1, paramView2, paramInt);
    }
    
    static void g(ViewParent paramViewParent, View paramView)
    {
      paramViewParent.onStopNestedScroll(paramView);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.y0
 * JD-Core Version:    0.7.0.1
 */