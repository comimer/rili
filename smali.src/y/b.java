package y;

import android.util.SparseArray;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public class b
{
  private static final SparseArray<WeakHashMap<View, WeakReference<?>>> a = new SparseArray();
  
  public static <T> T a(View paramView, T paramT, int paramInt)
  {
    Object localObject = paramView.getTag(paramInt);
    paramView.setTag(paramInt, paramT);
    return localObject;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y.b
 * JD-Core Version:    0.7.0.1
 */