package androidx.databinding;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

public class g
{
  private static e a = new DataBinderMapperImpl();
  private static f b = null;
  
  static <T extends ViewDataBinding> T a(f paramf, View paramView, int paramInt)
  {
    return a.getDataBinder(paramf, paramView, paramInt);
  }
  
  static <T extends ViewDataBinding> T b(f paramf, View[] paramArrayOfView, int paramInt)
  {
    return a.getDataBinder(paramf, paramArrayOfView, paramInt);
  }
  
  private static <T extends ViewDataBinding> T c(f paramf, ViewGroup paramViewGroup, int paramInt1, int paramInt2)
  {
    int i = paramViewGroup.getChildCount();
    int j = i - paramInt1;
    if (j == 1) {
      return a(paramf, paramViewGroup.getChildAt(i - 1), paramInt2);
    }
    View[] arrayOfView = new View[j];
    for (i = 0; i < j; i++) {
      arrayOfView[i] = paramViewGroup.getChildAt(i + paramInt1);
    }
    return b(paramf, arrayOfView, paramInt2);
  }
  
  public static f d()
  {
    return b;
  }
  
  public static <T extends ViewDataBinding> T e(LayoutInflater paramLayoutInflater, int paramInt, ViewGroup paramViewGroup, boolean paramBoolean, f paramf)
  {
    int i = 0;
    int j;
    if ((paramViewGroup != null) && (paramBoolean)) {
      j = 1;
    } else {
      j = 0;
    }
    if (j != 0) {
      i = paramViewGroup.getChildCount();
    }
    paramLayoutInflater = paramLayoutInflater.inflate(paramInt, paramViewGroup, paramBoolean);
    if (j != 0) {
      return c(paramf, paramViewGroup, i, paramInt);
    }
    return a(paramf, paramLayoutInflater, paramInt);
  }
  
  public static <T extends ViewDataBinding> T f(Activity paramActivity, int paramInt)
  {
    return g(paramActivity, paramInt, b);
  }
  
  public static <T extends ViewDataBinding> T g(Activity paramActivity, int paramInt, f paramf)
  {
    paramActivity.setContentView(paramInt);
    return c(paramf, (ViewGroup)paramActivity.getWindow().getDecorView().findViewById(16908290), 0, paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.g
 * JD-Core Version:    0.7.0.1
 */