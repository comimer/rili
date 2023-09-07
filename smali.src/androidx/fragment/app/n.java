package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.i0;
import androidx.lifecycle.k0;
import androidx.lifecycle.k0.b;
import androidx.lifecycle.m0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

final class n
  extends i0
{
  private static final k0.b h = new a();
  private final HashMap<String, Fragment> a = new HashMap();
  private final HashMap<String, n> b = new HashMap();
  private final HashMap<String, m0> c = new HashMap();
  private final boolean d;
  private boolean e = false;
  private boolean f = false;
  private boolean g = false;
  
  n(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  static n e(m0 paramm0)
  {
    return (n)new k0(paramm0, h).a(n.class);
  }
  
  void a(Fragment paramFragment)
  {
    if (this.g)
    {
      if (FragmentManager.H0(2)) {
        Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
      }
      return;
    }
    if (this.a.containsKey(paramFragment.mWho)) {
      return;
    }
    this.a.put(paramFragment.mWho, paramFragment);
    if (FragmentManager.H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Updating retained Fragments: Added ");
      localStringBuilder.append(paramFragment);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
  }
  
  void b(Fragment paramFragment)
  {
    if (FragmentManager.H0(3))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Clearing non-config state for ");
      ((StringBuilder)localObject).append(paramFragment);
      Log.d("FragmentManager", ((StringBuilder)localObject).toString());
    }
    Object localObject = (n)this.b.get(paramFragment.mWho);
    if (localObject != null)
    {
      ((n)localObject).onCleared();
      this.b.remove(paramFragment.mWho);
    }
    localObject = (m0)this.c.get(paramFragment.mWho);
    if (localObject != null)
    {
      ((m0)localObject).a();
      this.c.remove(paramFragment.mWho);
    }
  }
  
  Fragment c(String paramString)
  {
    return (Fragment)this.a.get(paramString);
  }
  
  n d(Fragment paramFragment)
  {
    n localn1 = (n)this.b.get(paramFragment.mWho);
    n localn2 = localn1;
    if (localn1 == null)
    {
      localn2 = new n(this.d);
      this.b.put(paramFragment.mWho, localn2);
    }
    return localn2;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (n.class == paramObject.getClass()))
    {
      paramObject = (n)paramObject;
      if ((!this.a.equals(paramObject.a)) || (!this.b.equals(paramObject.b)) || (!this.c.equals(paramObject.c))) {
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  Collection<Fragment> f()
  {
    return new ArrayList(this.a.values());
  }
  
  m0 g(Fragment paramFragment)
  {
    m0 localm01 = (m0)this.c.get(paramFragment.mWho);
    m0 localm02 = localm01;
    if (localm01 == null)
    {
      localm02 = new m0();
      this.c.put(paramFragment.mWho, localm02);
    }
    return localm02;
  }
  
  boolean h()
  {
    return this.e;
  }
  
  public int hashCode()
  {
    return (this.a.hashCode() * 31 + this.b.hashCode()) * 31 + this.c.hashCode();
  }
  
  void i(Fragment paramFragment)
  {
    if (this.g)
    {
      if (FragmentManager.H0(2)) {
        Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
      }
      return;
    }
    int i;
    if (this.a.remove(paramFragment.mWho) != null) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i != 0) && (FragmentManager.H0(2)))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Updating retained Fragments: Removed ");
      localStringBuilder.append(paramFragment);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
  }
  
  void j(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }
  
  boolean k(Fragment paramFragment)
  {
    if (!this.a.containsKey(paramFragment.mWho)) {
      return true;
    }
    if (this.d) {
      return this.e;
    }
    return this.f ^ true;
  }
  
  protected void onCleared()
  {
    if (FragmentManager.H0(3))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onCleared called for ");
      localStringBuilder.append(this);
      Log.d("FragmentManager", localStringBuilder.toString());
    }
    this.e = true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("FragmentManagerViewModel{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append("} Fragments (");
    Iterator localIterator = this.a.values().iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append(localIterator.next());
      if (localIterator.hasNext()) {
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append(") Child Non Config (");
    localIterator = this.b.keySet().iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append((String)localIterator.next());
      if (localIterator.hasNext()) {
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append(") ViewModelStores (");
    localIterator = this.c.keySet().iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append((String)localIterator.next());
      if (localIterator.hasNext()) {
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
  
  class a
    implements k0.b
  {
    public <T extends i0> T a(Class<T> paramClass)
    {
      return new n(true);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.n
 * JD-Core Version:    0.7.0.1
 */