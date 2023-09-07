package com.android.calendar;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import x1.b;

public class DataBinderMapperImpl
  extends e
{
  private static final SparseIntArray a;
  
  static
  {
    SparseIntArray localSparseIntArray = new SparseIntArray(1);
    a = localSparseIntArray;
    localSparseIntArray.put(2131558440, 1);
  }
  
  public List<e> collectDependencies()
  {
    ArrayList localArrayList = new ArrayList(2);
    localArrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
    localArrayList.add(new at.bitfire.cert4android.DataBinderMapperImpl());
    return localArrayList;
  }
  
  public String convertBrIdToString(int paramInt)
  {
    return (String)a.a.get(paramInt);
  }
  
  public ViewDataBinding getDataBinder(f paramf, View paramView, int paramInt)
  {
    paramInt = a.get(paramInt);
    if (paramInt > 0)
    {
      Object localObject = paramView.getTag();
      if (localObject != null)
      {
        if (paramInt == 1)
        {
          if ("layout/activity_caldav_login_0".equals(localObject)) {
            return new b(paramf, paramView);
          }
          paramf = new StringBuilder();
          paramf.append("The tag for activity_caldav_login is invalid. Received: ");
          paramf.append(localObject);
          throw new IllegalArgumentException(paramf.toString());
        }
      }
      else {
        throw new RuntimeException("view must have a tag");
      }
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
      SparseArray localSparseArray = new SparseArray(3);
      a = localSparseArray;
      localSparseArray.put(0, "_all");
      localSparseArray.put(1, "accountModel");
      localSparseArray.put(2, "model");
    }
  }
  
  private static class b
  {
    static final HashMap<String, Integer> a;
    
    static
    {
      HashMap localHashMap = new HashMap(1);
      a = localHashMap;
      localHashMap.put("layout/activity_caldav_login_0", Integer.valueOf(2131558440));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.DataBinderMapperImpl
 * JD-Core Version:    0.7.0.1
 */