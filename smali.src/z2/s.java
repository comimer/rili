package z2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.b;
import com.bumptech.glide.h;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class s
  extends Fragment
{
  private final a a;
  private final q b = new a();
  private final Set<s> c = new HashSet();
  private s d;
  private h e;
  private Fragment f;
  
  public s()
  {
    this(new a());
  }
  
  @SuppressLint({"ValidFragment"})
  public s(a parama)
  {
    this.a = parama;
  }
  
  private void i(s params)
  {
    this.c.add(params);
  }
  
  private Fragment l()
  {
    Fragment localFragment = getParentFragment();
    if (localFragment == null) {
      localFragment = this.f;
    }
    return localFragment;
  }
  
  private static FragmentManager o(Fragment paramFragment)
  {
    while (paramFragment.getParentFragment() != null) {
      paramFragment = paramFragment.getParentFragment();
    }
    return paramFragment.getFragmentManager();
  }
  
  private boolean p(Fragment paramFragment)
  {
    Fragment localFragment1 = l();
    for (;;)
    {
      Fragment localFragment2 = paramFragment.getParentFragment();
      if (localFragment2 == null) {
        break;
      }
      if (localFragment2.equals(localFragment1)) {
        return true;
      }
      paramFragment = paramFragment.getParentFragment();
    }
    return false;
  }
  
  private void q(Context paramContext, FragmentManager paramFragmentManager)
  {
    u();
    paramContext = b.c(paramContext).k().k(paramFragmentManager);
    this.d = paramContext;
    if (!equals(paramContext)) {
      this.d.i(this);
    }
  }
  
  private void r(s params)
  {
    this.c.remove(params);
  }
  
  private void u()
  {
    s locals = this.d;
    if (locals != null)
    {
      locals.r(this);
      this.d = null;
    }
  }
  
  Set<s> j()
  {
    s locals = this.d;
    if (locals == null) {
      return Collections.emptySet();
    }
    if (equals(locals)) {
      return Collections.unmodifiableSet(this.c);
    }
    HashSet localHashSet = new HashSet();
    Iterator localIterator = this.d.j().iterator();
    while (localIterator.hasNext())
    {
      locals = (s)localIterator.next();
      if (p(locals.l())) {
        localHashSet.add(locals);
      }
    }
    return Collections.unmodifiableSet(localHashSet);
  }
  
  a k()
  {
    return this.a;
  }
  
  public h m()
  {
    return this.e;
  }
  
  public q n()
  {
    return this.b;
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    paramContext = o(this);
    if (paramContext == null)
    {
      if (Log.isLoggable("SupportRMFragment", 5)) {
        Log.w("SupportRMFragment", "Unable to register fragment with root, ancestor detached");
      }
      return;
    }
    try
    {
      q(getContext(), paramContext);
    }
    catch (IllegalStateException paramContext)
    {
      if (Log.isLoggable("SupportRMFragment", 5)) {
        Log.w("SupportRMFragment", "Unable to register fragment with root", paramContext);
      }
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    this.a.c();
    u();
  }
  
  public void onDetach()
  {
    super.onDetach();
    this.f = null;
    u();
  }
  
  public void onStart()
  {
    super.onStart();
    this.a.d();
  }
  
  public void onStop()
  {
    super.onStop();
    this.a.e();
  }
  
  void s(Fragment paramFragment)
  {
    this.f = paramFragment;
    if ((paramFragment != null) && (paramFragment.getContext() != null))
    {
      FragmentManager localFragmentManager = o(paramFragment);
      if (localFragmentManager == null) {
        return;
      }
      q(paramFragment.getContext(), localFragmentManager);
    }
  }
  
  public void t(h paramh)
  {
    this.e = paramh;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    localStringBuilder.append("{parent=");
    localStringBuilder.append(l());
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  private class a
    implements q
  {
    a() {}
    
    public Set<h> a()
    {
      Object localObject = s.this.j();
      HashSet localHashSet = new HashSet(((Set)localObject).size());
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        s locals = (s)((Iterator)localObject).next();
        if (locals.m() != null) {
          localHashSet.add(locals.m());
        }
      }
      return localHashSet;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(super.toString());
      localStringBuilder.append("{fragment=");
      localStringBuilder.append(s.this);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z2.s
 * JD-Core Version:    0.7.0.1
 */