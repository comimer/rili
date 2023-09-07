package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.core.graphics.c;
import d.j;

public class u0
{
  private static final ThreadLocal<TypedValue> a = new ThreadLocal();
  static final int[] b = { -16842910 };
  static final int[] c = { 16842908 };
  static final int[] d = { 16843518 };
  static final int[] e = { 16842919 };
  static final int[] f = { 16842912 };
  static final int[] g = { 16842913 };
  static final int[] h = { -16842919, -16842908 };
  static final int[] i = new int[0];
  private static final int[] j = new int[1];
  
  public static void a(View paramView, Context paramContext)
  {
    paramContext = paramContext.obtainStyledAttributes(j.y0);
    try
    {
      if (!paramContext.hasValue(j.D0))
      {
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append("View ");
        localStringBuilder.append(paramView.getClass());
        localStringBuilder.append(" is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
        Log.e("ThemeUtils", localStringBuilder.toString());
      }
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public static int b(Context paramContext, int paramInt)
  {
    Object localObject = e(paramContext, paramInt);
    if ((localObject != null) && (((ColorStateList)localObject).isStateful())) {
      return ((ColorStateList)localObject).getColorForState(b, ((ColorStateList)localObject).getDefaultColor());
    }
    localObject = f();
    paramContext.getTheme().resolveAttribute(16842803, (TypedValue)localObject, true);
    return d(paramContext, paramInt, ((TypedValue)localObject).getFloat());
  }
  
  public static int c(Context paramContext, int paramInt)
  {
    int[] arrayOfInt = j;
    arrayOfInt[0] = paramInt;
    paramContext = z0.u(paramContext, null, arrayOfInt);
    try
    {
      paramInt = paramContext.b(0, 0);
      return paramInt;
    }
    finally
    {
      paramContext.w();
    }
  }
  
  static int d(Context paramContext, int paramInt, float paramFloat)
  {
    paramInt = c(paramContext, paramInt);
    return c.f(paramInt, Math.round(Color.alpha(paramInt) * paramFloat));
  }
  
  public static ColorStateList e(Context paramContext, int paramInt)
  {
    Object localObject1 = j;
    localObject1[0] = paramInt;
    paramContext = z0.u(paramContext, null, (int[])localObject1);
    try
    {
      localObject1 = paramContext.c(0);
      return localObject1;
    }
    finally
    {
      paramContext.w();
    }
  }
  
  private static TypedValue f()
  {
    ThreadLocal localThreadLocal = a;
    TypedValue localTypedValue1 = (TypedValue)localThreadLocal.get();
    TypedValue localTypedValue2 = localTypedValue1;
    if (localTypedValue1 == null)
    {
      localTypedValue2 = new TypedValue();
      localThreadLocal.set(localTypedValue2);
    }
    return localTypedValue2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.u0
 * JD-Core Version:    0.7.0.1
 */