package z2;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import com.bumptech.glide.b;
import com.bumptech.glide.h;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@Deprecated
public class o
  extends Fragment
{
  private final a a;
  private final q b = new a();
  private final Set<o> c = new HashSet();
  private h d;
  private o e;
  private Fragment f;
  
  public o()
  {
    this(new a());
  }
  
  @SuppressLint({"ValidFragment"})
  o(a parama)
  {
    this.a = parama;
  }
  
  private void a(o paramo)
  {
    this.c.add(paramo);
  }
  
  @TargetApi(17)
  private Fragment d()
  {
    Fragment localFragment = getParentFragment();
    if (localFragment == null) {
      localFragment = this.f;
    }
    return localFragment;
  }
  
  @TargetApi(17)
  private boolean g(Fragment paramFragment)
  {
    Fragment localFragment1 = getParentFragment();
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
  
  private void h(Activity paramActivity)
  {
    l();
    paramActivity = b.c(paramActivity).k().i(paramActivity);
    this.e = paramActivity;
    if (!equals(paramActivity)) {
      this.e.a(this);
    }
  }
  
  private void i(o paramo)
  {
    this.c.remove(paramo);
  }
  
  private void l()
  {
    o localo = this.e;
    if (localo != null)
    {
      localo.i(this);
      this.e = null;
    }
  }
  
  @TargetApi(17)
  Set<o> b()
  {
    if (equals(this.e)) {
      return Collections.unmodifiableSet(this.c);
    }
    if (this.e != null)
    {
      HashSet localHashSet = new HashSet();
      Iterator localIterator = this.e.b().iterator();
      while (localIterator.hasNext())
      {
        o localo = (o)localIterator.next();
        if (g(localo.getParentFragment())) {
          localHashSet.add(localo);
        }
      }
      return Collections.unmodifiableSet(localHashSet);
    }
    return Collections.emptySet();
  }
  
  a c()
  {
    return this.a;
  }
  
  public h e()
  {
    return this.d;
  }
  
  public q f()
  {
    return this.b;
  }
  
  void j(Fragment paramFragment)
  {
    this.f = paramFragment;
    if ((paramFragment != null) && (paramFragment.getActivity() != null)) {
      h(paramFragment.getActivity());
    }
  }
  
  public void k(h paramh)
  {
    this.d = paramh;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      h(paramActivity);
    }
    catch (IllegalStateException paramActivity)
    {
      if (Log.isLoggable("RMFragment", 5)) {
        Log.w("RMFragment", "Unable to register fragment with root", paramActivity);
      }
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    this.a.c();
    l();
  }
  
  public void onDetach()
  {
    super.onDetach();
    l();
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
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    localStringBuilder.append("{parent=");
    localStringBuilder.append(d());
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  private class a
    implements q
  {
    a() {}
    
    public Set<h> a()
    {
      Object localObject = o.this.b();
      HashSet localHashSet = new HashSet(((Set)localObject).size());
      Iterator localIterator = ((Set)localObject).iterator();
      while (localIterator.hasNext())
      {
        localObject = (o)localIterator.next();
        if (((o)localObject).e() != null) {
          localHashSet.add(((o)localObject).e());
        }
      }
      return localHashSet;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(super.toString());
      localStringBuilder.append("{fragment=");
      localStringBuilder.append(o.this);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z2.o
 * JD-Core Version:    0.7.0.1
 */