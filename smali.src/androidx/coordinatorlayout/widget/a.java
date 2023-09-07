package androidx.coordinatorlayout.widget;

import androidx.core.util.e;
import androidx.core.util.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import n.g;

public final class a<T>
{
  private final e<ArrayList<T>> a = new f(10);
  private final g<T, ArrayList<T>> b = new g();
  private final ArrayList<T> c = new ArrayList();
  private final HashSet<T> d = new HashSet();
  
  private void e(T paramT, ArrayList<T> paramArrayList, HashSet<T> paramHashSet)
  {
    if (paramArrayList.contains(paramT)) {
      return;
    }
    if (!paramHashSet.contains(paramT))
    {
      paramHashSet.add(paramT);
      ArrayList localArrayList = (ArrayList)this.b.get(paramT);
      if (localArrayList != null)
      {
        int i = 0;
        int j = localArrayList.size();
        while (i < j)
        {
          e(localArrayList.get(i), paramArrayList, paramHashSet);
          i++;
        }
      }
      paramHashSet.remove(paramT);
      paramArrayList.add(paramT);
      return;
    }
    throw new RuntimeException("This graph contains cyclic dependencies");
  }
  
  private ArrayList<T> f()
  {
    ArrayList localArrayList1 = (ArrayList)this.a.b();
    ArrayList localArrayList2 = localArrayList1;
    if (localArrayList1 == null) {
      localArrayList2 = new ArrayList();
    }
    return localArrayList2;
  }
  
  private void k(ArrayList<T> paramArrayList)
  {
    paramArrayList.clear();
    this.a.a(paramArrayList);
  }
  
  public void a(T paramT1, T paramT2)
  {
    if ((this.b.containsKey(paramT1)) && (this.b.containsKey(paramT2)))
    {
      ArrayList localArrayList1 = (ArrayList)this.b.get(paramT1);
      ArrayList localArrayList2 = localArrayList1;
      if (localArrayList1 == null)
      {
        localArrayList2 = f();
        this.b.put(paramT1, localArrayList2);
      }
      localArrayList2.add(paramT2);
      return;
    }
    throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
  }
  
  public void b(T paramT)
  {
    if (!this.b.containsKey(paramT)) {
      this.b.put(paramT, null);
    }
  }
  
  public void c()
  {
    int i = this.b.size();
    for (int j = 0; j < i; j++)
    {
      ArrayList localArrayList = (ArrayList)this.b.p(j);
      if (localArrayList != null) {
        k(localArrayList);
      }
    }
    this.b.clear();
  }
  
  public boolean d(T paramT)
  {
    return this.b.containsKey(paramT);
  }
  
  public List g(T paramT)
  {
    return (List)this.b.get(paramT);
  }
  
  public List<T> h(T paramT)
  {
    int i = this.b.size();
    Object localObject1 = null;
    int j = 0;
    while (j < i)
    {
      ArrayList localArrayList = (ArrayList)this.b.p(j);
      Object localObject2 = localObject1;
      if (localArrayList != null)
      {
        localObject2 = localObject1;
        if (localArrayList.contains(paramT))
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new ArrayList();
          }
          ((ArrayList)localObject2).add(this.b.l(j));
        }
      }
      j++;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  public ArrayList<T> i()
  {
    this.c.clear();
    this.d.clear();
    int i = this.b.size();
    for (int j = 0; j < i; j++) {
      e(this.b.l(j), this.c, this.d);
    }
    return this.c;
  }
  
  public boolean j(T paramT)
  {
    int i = this.b.size();
    for (int j = 0; j < i; j++)
    {
      ArrayList localArrayList = (ArrayList)this.b.p(j);
      if ((localArrayList != null) && (localArrayList.contains(paramT))) {
        return true;
      }
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.coordinatorlayout.widget.a
 * JD-Core Version:    0.7.0.1
 */