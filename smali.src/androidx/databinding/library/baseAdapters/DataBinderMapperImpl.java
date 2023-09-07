package androidx.databinding.library.baseAdapters;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DataBinderMapperImpl
  extends e
{
  private static final SparseIntArray a = new SparseIntArray(0);
  
  public List<e> collectDependencies()
  {
    return new ArrayList(0);
  }
  
  public String convertBrIdToString(int paramInt)
  {
    return (String)a.a.get(paramInt);
  }
  
  public ViewDataBinding getDataBinder(f paramf, View paramView, int paramInt)
  {
    if ((a.get(paramInt) > 0) && (paramView.getTag() == null)) {
      throw new RuntimeException("view must have a tag");
    }
    return null;
  }
  
  public ViewDataBinding getDataBinder(f paramf, View[] paramArrayOfView, int paramInt)
  {
    if ((paramArrayOfView != null) && (paramArrayOfView.length != 0) && (a.get(paramInt) > 0) && (paramArrayOfView[0].getTag() == null)) {
      throw new RuntimeException("view must have a tag");
    }
    return null;
  }
  
  public int getLayoutId(String paramString)
  {
    int i = 0;
    if (paramString == null) {
      return 0;
    }
    paramString = (Integer)b.a.get(paramString);
    if (paramString != null) {
      i = paramString.intValue();
    }
    return i;
  }
  
  private static class a
  {
    static final SparseArray<String> a;
    
    static
    {
      SparseArray localSparseArray = new SparseArray(1);
      a = localSparseArray;
      localSparseArray.put(0, "_all");
    }
  }
  
  private static class b
  {
    static final HashMap<String, Integer> a = new HashMap(0);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.library.baseAdapters.DataBinderMapperImpl
 * JD-Core Version:    0.7.0.1
 */