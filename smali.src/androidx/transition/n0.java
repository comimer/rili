package androidx.transition;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

class n0
{
  private static Field a;
  private static boolean b;
  
  public void a(View paramView)
  {
    throw null;
  }
  
  public float b(View paramView)
  {
    throw null;
  }
  
  public void c(View paramView)
  {
    throw null;
  }
  
  public void d(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw null;
  }
  
  public void e(View paramView, float paramFloat)
  {
    throw null;
  }
  
  public void f(View paramView, int paramInt)
  {
    if (!b)
    {
      try
      {
        Field localField1 = View.class.getDeclaredField("mViewFlags");
        a = localField1;
        localField1.setAccessible(true);
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        Log.i("ViewUtilsBase", "fetchViewFlagsField: ");
      }
      b = true;
    }
    Field localField2 = a;
    if (localField2 != null) {}
    try
    {
      int i = localField2.getInt(paramView);
      a.setInt(paramView, paramInt | i & 0xFFFFFFF3);
      label68:
      return;
    }
    catch (IllegalAccessException paramView)
    {
      break label68;
    }
  }
  
  public void g(View paramView, Matrix paramMatrix)
  {
    throw null;
  }
  
  public void h(View paramView, Matrix paramMatrix)
  {
    throw null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.n0
 * JD-Core Version:    0.7.0.1
 */