package androidx.databinding;

import android.util.Log;
import android.view.View;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public class MergedDataBinderMapper
  extends e
{
  private Set<Class<? extends e>> a = new HashSet();
  private List<e> b = new CopyOnWriteArrayList();
  private List<String> c = new CopyOnWriteArrayList();
  
  private boolean b()
  {
    Iterator localIterator = this.c.iterator();
    boolean bool = false;
    for (;;)
    {
      String str;
      if (localIterator.hasNext()) {
        str = (String)localIterator.next();
      }
      try
      {
        localObject = Class.forName(str);
        if (e.class.isAssignableFrom((Class)localObject))
        {
          a((e)((Class)localObject).newInstance());
          this.c.remove(str);
          bool = true;
        }
      }
      catch (InstantiationException localInstantiationException)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("unable to add feature mapper for ");
        ((StringBuilder)localObject).append(str);
        Log.e("MergedDataBinderMapper", ((StringBuilder)localObject).toString(), localInstantiationException);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("unable to add feature mapper for ");
        ((StringBuilder)localObject).append(str);
        Log.e("MergedDataBinderMapper", ((StringBuilder)localObject).toString(), localIllegalAccessException);
        continue;
        return bool;
      }
      catch (ClassNotFoundException localClassNotFoundException) {}
    }
  }
  
  public void a(e parame)
  {
    Class localClass = parame.getClass();
    if (this.a.add(localClass))
    {
      this.b.add(parame);
      parame = parame.collectDependencies().iterator();
      while (parame.hasNext()) {
        a((e)parame.next());
      }
    }
  }
  
  public String convertBrIdToString(int paramInt)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      String str = ((e)localIterator.next()).convertBrIdToString(paramInt);
      if (str != null) {
        return str;
      }
    }
    if (b()) {
      return convertBrIdToString(paramInt);
    }
    return null;
  }
  
  public ViewDataBinding getDataBinder(f paramf, View paramView, int paramInt)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      ViewDataBinding localViewDataBinding = ((e)localIterator.next()).getDataBinder(paramf, paramView, paramInt);
      if (localViewDataBinding != null) {
        return localViewDataBinding;
      }
    }
    if (b()) {
      return getDataBinder(paramf, paramView, paramInt);
    }
    return null;
  }
  
  public ViewDataBinding getDataBinder(f paramf, View[] paramArrayOfView, int paramInt)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      ViewDataBinding localViewDataBinding = ((e)localIterator.next()).getDataBinder(paramf, paramArrayOfView, paramInt);
      if (localViewDataBinding != null) {
        return localViewDataBinding;
      }
    }
    if (b()) {
      return getDataBinder(paramf, paramArrayOfView, paramInt);
    }
    return null;
  }
  
  public int getLayoutId(String paramString)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      int i = ((e)localIterator.next()).getLayoutId(paramString);
      if (i != 0) {
        return i;
      }
    }
    if (b()) {
      return getLayoutId(paramString);
    }
    return 0;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.MergedDataBinderMapper
 * JD-Core Version:    0.7.0.1
 */