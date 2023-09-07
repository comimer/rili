package androidx.databinding;

import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;

public class ObservableArrayList<T>
  extends ArrayList<T>
  implements k<T>
{
  private transient i mListeners = new i();
  
  private void notifyAdd(int paramInt1, int paramInt2)
  {
    i locali = this.mListeners;
    if (locali != null) {
      locali.t(this, paramInt1, paramInt2);
    }
  }
  
  private void notifyRemove(int paramInt1, int paramInt2)
  {
    i locali = this.mListeners;
    if (locali != null) {
      locali.u(this, paramInt1, paramInt2);
    }
  }
  
  public void add(int paramInt, T paramT)
  {
    super.add(paramInt, paramT);
    notifyAdd(paramInt, 1);
  }
  
  public boolean add(T paramT)
  {
    super.add(paramT);
    notifyAdd(size() - 1, 1);
    return true;
  }
  
  public boolean addAll(int paramInt, Collection<? extends T> paramCollection)
  {
    boolean bool = super.addAll(paramInt, paramCollection);
    if (bool) {
      notifyAdd(paramInt, paramCollection.size());
    }
    return bool;
  }
  
  public boolean addAll(Collection<? extends T> paramCollection)
  {
    int i = size();
    boolean bool = super.addAll(paramCollection);
    if (bool) {
      notifyAdd(i, size() - i);
    }
    return bool;
  }
  
  public void addOnListChangedCallback(k.a parama)
  {
    if (this.mListeners == null) {
      this.mListeners = new i();
    }
    this.mListeners.a(parama);
  }
  
  public void clear()
  {
    int i = size();
    super.clear();
    if (i != 0) {
      notifyRemove(0, i);
    }
  }
  
  public T remove(int paramInt)
  {
    Object localObject = super.remove(paramInt);
    notifyRemove(paramInt, 1);
    return localObject;
  }
  
  public boolean remove(Object paramObject)
  {
    int i = indexOf(paramObject);
    if (i >= 0)
    {
      remove(i);
      return true;
    }
    return false;
  }
  
  public void removeOnListChangedCallback(k.a parama)
  {
    i locali = this.mListeners;
    if (locali != null) {
      locali.k(parama);
    }
  }
  
  protected void removeRange(int paramInt1, int paramInt2)
  {
    super.removeRange(paramInt1, paramInt2);
    notifyRemove(paramInt1, paramInt2 - paramInt1);
  }
  
  public T set(int paramInt, T paramT)
  {
    paramT = super.set(paramInt, paramT);
    i locali = this.mListeners;
    if (locali != null) {
      locali.r(this, paramInt, 1);
    }
    return paramT;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ObservableArrayList
 * JD-Core Version:    0.7.0.1
 */