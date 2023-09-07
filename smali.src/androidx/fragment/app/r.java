package androidx.fragment.app;

import android.util.Log;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

class r
{
  private final ArrayList<Fragment> a = new ArrayList();
  private final HashMap<String, q> b = new HashMap();
  private n c;
  
  void a(Fragment paramFragment)
  {
    if (!this.a.contains(paramFragment)) {
      synchronized (this.a)
      {
        this.a.add(paramFragment);
        paramFragment.mAdded = true;
        return;
      }
    }
    ??? = new StringBuilder();
    ((StringBuilder)???).append("Fragment already added: ");
    ((StringBuilder)???).append(paramFragment);
    throw new IllegalStateException(((StringBuilder)???).toString());
  }
  
  void b()
  {
    this.b.values().removeAll(Collections.singleton(null));
  }
  
  boolean c(String paramString)
  {
    boolean bool;
    if (this.b.get(paramString) != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void d(int paramInt)
  {
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      if (localq != null) {
        localq.u(paramInt);
      }
    }
  }
  
  void e(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(paramString);
    ((StringBuilder)localObject1).append("    ");
    String str = ((StringBuilder)localObject1).toString();
    if (!this.b.isEmpty())
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Fragments:");
      localObject1 = this.b.values().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (q)((Iterator)localObject1).next();
        paramPrintWriter.print(paramString);
        if (localObject2 != null)
        {
          localObject2 = ((q)localObject2).k();
          paramPrintWriter.println(localObject2);
          ((Fragment)localObject2).dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        }
        else
        {
          paramPrintWriter.println("null");
        }
      }
    }
    int i = this.a.size();
    if (i > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Added Fragments:");
      for (int j = 0; j < i; j++)
      {
        paramFileDescriptor = (Fragment)this.a.get(j);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(j);
        paramPrintWriter.print(": ");
        paramPrintWriter.println(paramFileDescriptor.toString());
      }
    }
  }
  
  Fragment f(String paramString)
  {
    paramString = (q)this.b.get(paramString);
    if (paramString != null) {
      return paramString.k();
    }
    return null;
  }
  
  Fragment g(int paramInt)
  {
    for (int i = this.a.size() - 1; i >= 0; i--)
    {
      localObject1 = (Fragment)this.a.get(i);
      if ((localObject1 != null) && (((Fragment)localObject1).mFragmentId == paramInt)) {
        return localObject1;
      }
    }
    Object localObject1 = this.b.values().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (q)((Iterator)localObject1).next();
      if (localObject2 != null)
      {
        localObject2 = ((q)localObject2).k();
        if (((Fragment)localObject2).mFragmentId == paramInt) {
          return localObject2;
        }
      }
    }
    return null;
  }
  
  Fragment h(String paramString)
  {
    Object localObject1;
    if (paramString != null) {
      for (int i = this.a.size() - 1; i >= 0; i--)
      {
        localObject1 = (Fragment)this.a.get(i);
        if ((localObject1 != null) && (paramString.equals(((Fragment)localObject1).mTag))) {
          return localObject1;
        }
      }
    }
    if (paramString != null)
    {
      localObject1 = this.b.values().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (q)((Iterator)localObject1).next();
        if (localObject2 != null)
        {
          localObject2 = ((q)localObject2).k();
          if (paramString.equals(((Fragment)localObject2).mTag)) {
            return localObject2;
          }
        }
      }
    }
    return null;
  }
  
  Fragment i(String paramString)
  {
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (q)localIterator.next();
      if (localObject != null)
      {
        localObject = ((q)localObject).k().findFragmentByWho(paramString);
        if (localObject != null) {
          return localObject;
        }
      }
    }
    return null;
  }
  
  int j(Fragment paramFragment)
  {
    ViewGroup localViewGroup = paramFragment.mContainer;
    if (localViewGroup == null) {
      return -1;
    }
    int i = this.a.indexOf(paramFragment);
    int k;
    for (int j = i - 1;; j--)
    {
      k = i;
      if (j < 0) {
        break;
      }
      paramFragment = (Fragment)this.a.get(j);
      if (paramFragment.mContainer == localViewGroup)
      {
        paramFragment = paramFragment.mView;
        if (paramFragment != null) {
          return localViewGroup.indexOfChild(paramFragment) + 1;
        }
      }
    }
    for (;;)
    {
      k++;
      if (k >= this.a.size()) {
        break;
      }
      paramFragment = (Fragment)this.a.get(k);
      if (paramFragment.mContainer == localViewGroup)
      {
        paramFragment = paramFragment.mView;
        if (paramFragment != null) {
          return localViewGroup.indexOfChild(paramFragment);
        }
      }
    }
    return -1;
  }
  
  List<q> k()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      if (localq != null) {
        localArrayList.add(localq);
      }
    }
    return localArrayList;
  }
  
  List<Fragment> l()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      if (localq != null) {
        localArrayList.add(localq.k());
      } else {
        localArrayList.add(null);
      }
    }
    return localArrayList;
  }
  
  q m(String paramString)
  {
    return (q)this.b.get(paramString);
  }
  
  List<Fragment> n()
  {
    if (this.a.isEmpty()) {
      return Collections.emptyList();
    }
    synchronized (this.a)
    {
      ArrayList localArrayList2 = new java/util/ArrayList;
      localArrayList2.<init>(this.a);
      return localArrayList2;
    }
  }
  
  n o()
  {
    return this.c;
  }
  
  void p(q paramq)
  {
    Fragment localFragment = paramq.k();
    if (c(localFragment.mWho)) {
      return;
    }
    this.b.put(localFragment.mWho, paramq);
    if (localFragment.mRetainInstanceChangedWhileDetached)
    {
      if (localFragment.mRetainInstance) {
        this.c.a(localFragment);
      } else {
        this.c.i(localFragment);
      }
      localFragment.mRetainInstanceChangedWhileDetached = false;
    }
    if (FragmentManager.H0(2))
    {
      paramq = new StringBuilder();
      paramq.append("Added fragment to active set ");
      paramq.append(localFragment);
      Log.v("FragmentManager", paramq.toString());
    }
  }
  
  void q(q paramq)
  {
    paramq = paramq.k();
    if (paramq.mRetainInstance) {
      this.c.i(paramq);
    }
    if ((q)this.b.put(paramq.mWho, null) == null) {
      return;
    }
    if (FragmentManager.H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Removed fragment from active set ");
      localStringBuilder.append(paramq);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
  }
  
  void r()
  {
    Iterator localIterator = this.a.iterator();
    Object localObject;
    while (localIterator.hasNext())
    {
      localObject = (Fragment)localIterator.next();
      localObject = (q)this.b.get(((Fragment)localObject).mWho);
      if (localObject != null) {
        ((q)localObject).m();
      }
    }
    localIterator = this.b.values().iterator();
    while (localIterator.hasNext())
    {
      localObject = (q)localIterator.next();
      if (localObject != null)
      {
        ((q)localObject).m();
        Fragment localFragment = ((q)localObject).k();
        int i;
        if ((localFragment.mRemoving) && (!localFragment.isInBackStack())) {
          i = 1;
        } else {
          i = 0;
        }
        if (i != 0) {
          q((q)localObject);
        }
      }
    }
  }
  
  void s(Fragment paramFragment)
  {
    synchronized (this.a)
    {
      this.a.remove(paramFragment);
      paramFragment.mAdded = false;
      return;
    }
  }
  
  void t()
  {
    this.b.clear();
  }
  
  void u(List<String> paramList)
  {
    this.a.clear();
    if (paramList != null)
    {
      Object localObject = paramList.iterator();
      while (((Iterator)localObject).hasNext())
      {
        paramList = (String)((Iterator)localObject).next();
        Fragment localFragment = f(paramList);
        if (localFragment != null)
        {
          if (FragmentManager.H0(2))
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("restoreSaveState: added (");
            localStringBuilder.append(paramList);
            localStringBuilder.append("): ");
            localStringBuilder.append(localFragment);
            Log.v("FragmentManager", localStringBuilder.toString());
          }
          a(localFragment);
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("No instantiated fragment for (");
          ((StringBuilder)localObject).append(paramList);
          ((StringBuilder)localObject).append(")");
          throw new IllegalStateException(((StringBuilder)localObject).toString());
        }
      }
    }
  }
  
  ArrayList<FragmentState> v()
  {
    ArrayList localArrayList = new ArrayList(this.b.size());
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (q)localIterator.next();
      if (localObject != null)
      {
        Fragment localFragment = ((q)localObject).k();
        FragmentState localFragmentState = ((q)localObject).s();
        localArrayList.add(localFragmentState);
        if (FragmentManager.H0(2))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Saved state of ");
          ((StringBuilder)localObject).append(localFragment);
          ((StringBuilder)localObject).append(": ");
          ((StringBuilder)localObject).append(localFragmentState.mSavedFragmentState);
          Log.v("FragmentManager", ((StringBuilder)localObject).toString());
        }
      }
    }
    return localArrayList;
  }
  
  ArrayList<String> w()
  {
    synchronized (this.a)
    {
      if (this.a.isEmpty()) {
        return null;
      }
      ArrayList localArrayList2 = new java/util/ArrayList;
      localArrayList2.<init>(this.a.size());
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        Fragment localFragment = (Fragment)localIterator.next();
        localArrayList2.add(localFragment.mWho);
        if (FragmentManager.H0(2))
        {
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("saveAllState: adding fragment (");
          localStringBuilder.append(localFragment.mWho);
          localStringBuilder.append("): ");
          localStringBuilder.append(localFragment);
          Log.v("FragmentManager", localStringBuilder.toString());
        }
      }
      return localArrayList2;
    }
  }
  
  void x(n paramn)
  {
    this.c = paramn;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.r
 * JD-Core Version:    0.7.0.1
 */