package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import android.util.Log;
import androidx.core.app.c;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.l;
import androidx.lifecycle.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

public abstract class ActivityResultRegistry
{
  private Random a = new Random();
  private final Map<Integer, String> b = new HashMap();
  final Map<String, Integer> c = new HashMap();
  private final Map<String, d> d = new HashMap();
  ArrayList<String> e = new ArrayList();
  final transient Map<String, c<?>> f = new HashMap();
  final Map<String, Object> g = new HashMap();
  final Bundle h = new Bundle();
  
  private void a(int paramInt, String paramString)
  {
    this.b.put(Integer.valueOf(paramInt), paramString);
    this.c.put(paramString, Integer.valueOf(paramInt));
  }
  
  private <O> void d(String paramString, int paramInt, Intent paramIntent, c<O> paramc)
  {
    if (paramc != null)
    {
      a locala = paramc.a;
      if (locala != null)
      {
        locala.a(paramc.b.c(paramInt, paramIntent));
        return;
      }
    }
    this.g.remove(paramString);
    this.h.putParcelable(paramString, new ActivityResult(paramInt, paramIntent));
  }
  
  private int e()
  {
    for (int i = this.a.nextInt(2147418112);; i = this.a.nextInt(2147418112))
    {
      i += 65536;
      if (!this.b.containsKey(Integer.valueOf(i))) {
        break;
      }
    }
    return i;
  }
  
  private int k(String paramString)
  {
    Integer localInteger = (Integer)this.c.get(paramString);
    if (localInteger != null) {
      return localInteger.intValue();
    }
    int i = e();
    a(i, paramString);
    return i;
  }
  
  public final boolean b(int paramInt1, int paramInt2, Intent paramIntent)
  {
    String str = (String)this.b.get(Integer.valueOf(paramInt1));
    if (str == null) {
      return false;
    }
    this.e.remove(str);
    d(str, paramInt2, paramIntent, (c)this.f.get(str));
    return true;
  }
  
  public final <O> boolean c(int paramInt, @SuppressLint({"UnknownNullness"}) O paramO)
  {
    String str = (String)this.b.get(Integer.valueOf(paramInt));
    if (str == null) {
      return false;
    }
    this.e.remove(str);
    Object localObject = (c)this.f.get(str);
    if (localObject != null)
    {
      localObject = ((c)localObject).a;
      if (localObject != null)
      {
        ((a)localObject).a(paramO);
        break label98;
      }
    }
    this.h.remove(str);
    this.g.put(str, paramO);
    label98:
    return true;
  }
  
  public abstract <I, O> void f(int paramInt, c.a<I, O> parama, @SuppressLint({"UnknownNullness"}) I paramI, c paramc);
  
  public final void g(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return;
    }
    ArrayList localArrayList1 = paramBundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
    ArrayList localArrayList2 = paramBundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
    if ((localArrayList2 != null) && (localArrayList1 != null))
    {
      this.e = paramBundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
      this.a = ((Random)paramBundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"));
      this.h.putAll(paramBundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
      for (int i = 0; i < localArrayList2.size(); i++)
      {
        String str = (String)localArrayList2.get(i);
        if (this.c.containsKey(str))
        {
          paramBundle = (Integer)this.c.remove(str);
          if (!this.h.containsKey(str)) {
            this.b.remove(paramBundle);
          }
        }
        a(((Integer)localArrayList1.get(i)).intValue(), (String)localArrayList2.get(i));
      }
    }
  }
  
  public final void h(Bundle paramBundle)
  {
    paramBundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList(this.c.values()));
    paramBundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList(this.c.keySet()));
    paramBundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList(this.e));
    paramBundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle)this.h.clone());
    paramBundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", this.a);
  }
  
  public final <I, O> b<I> i(final String paramString, n paramn, final c.a<I, O> parama, final a<O> parama1)
  {
    Lifecycle localLifecycle = paramn.getLifecycle();
    if (!localLifecycle.b().isAtLeast(Lifecycle.State.STARTED))
    {
      final int i = k(paramString);
      d locald = (d)this.d.get(paramString);
      paramn = locald;
      if (locald == null) {
        paramn = new d(localLifecycle);
      }
      paramn.a(new l()
      {
        public void g(n paramAnonymousn, Lifecycle.Event paramAnonymousEvent)
        {
          if (Lifecycle.Event.ON_START.equals(paramAnonymousEvent))
          {
            ActivityResultRegistry.this.f.put(paramString, new ActivityResultRegistry.c(parama1, parama));
            if (ActivityResultRegistry.this.g.containsKey(paramString))
            {
              paramAnonymousn = ActivityResultRegistry.this.g.get(paramString);
              ActivityResultRegistry.this.g.remove(paramString);
              parama1.a(paramAnonymousn);
            }
            paramAnonymousn = (ActivityResult)ActivityResultRegistry.this.h.getParcelable(paramString);
            if (paramAnonymousn != null)
            {
              ActivityResultRegistry.this.h.remove(paramString);
              parama1.a(parama.c(paramAnonymousn.getResultCode(), paramAnonymousn.getData()));
            }
          }
          else if (Lifecycle.Event.ON_STOP.equals(paramAnonymousEvent))
          {
            ActivityResultRegistry.this.f.remove(paramString);
          }
          else if (Lifecycle.Event.ON_DESTROY.equals(paramAnonymousEvent))
          {
            ActivityResultRegistry.this.l(paramString);
          }
        }
      });
      this.d.put(paramString, paramn);
      return new a(paramString, i, parama);
    }
    paramString = new StringBuilder();
    paramString.append("LifecycleOwner ");
    paramString.append(paramn);
    paramString.append(" is attempting to register while current state is ");
    paramString.append(localLifecycle.b());
    paramString.append(". LifecycleOwners must call register before they are STARTED.");
    throw new IllegalStateException(paramString.toString());
  }
  
  public final <I, O> b<I> j(final String paramString, final c.a<I, O> parama, a<O> parama1)
  {
    final int i = k(paramString);
    this.f.put(paramString, new c(parama1, parama));
    if (this.g.containsKey(paramString))
    {
      localObject = this.g.get(paramString);
      this.g.remove(paramString);
      parama1.a(localObject);
    }
    Object localObject = (ActivityResult)this.h.getParcelable(paramString);
    if (localObject != null)
    {
      this.h.remove(paramString);
      parama1.a(parama.c(((ActivityResult)localObject).getResultCode(), ((ActivityResult)localObject).getData()));
    }
    return new b(paramString, i, parama);
  }
  
  final void l(String paramString)
  {
    if (!this.e.contains(paramString))
    {
      localObject = (Integer)this.c.remove(paramString);
      if (localObject != null) {
        this.b.remove(localObject);
      }
    }
    this.f.remove(paramString);
    if (this.g.containsKey(paramString))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Dropping pending result for request ");
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append(": ");
      ((StringBuilder)localObject).append(this.g.get(paramString));
      Log.w("ActivityResultRegistry", ((StringBuilder)localObject).toString());
      this.g.remove(paramString);
    }
    if (this.h.containsKey(paramString))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Dropping pending result for request ");
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append(": ");
      ((StringBuilder)localObject).append(this.h.getParcelable(paramString));
      Log.w("ActivityResultRegistry", ((StringBuilder)localObject).toString());
      this.h.remove(paramString);
    }
    Object localObject = (d)this.d.get(paramString);
    if (localObject != null)
    {
      ((d)localObject).b();
      this.d.remove(paramString);
    }
  }
  
  class a
    extends b<I>
  {
    a(String paramString, int paramInt, c.a parama) {}
    
    public void b(I paramI, c paramc)
    {
      ActivityResultRegistry.this.e.add(paramString);
      Integer localInteger = (Integer)ActivityResultRegistry.this.c.get(paramString);
      ActivityResultRegistry localActivityResultRegistry = ActivityResultRegistry.this;
      int i;
      if (localInteger != null) {
        i = localInteger.intValue();
      } else {
        i = i;
      }
      localActivityResultRegistry.f(i, parama, paramI, paramc);
    }
    
    public void c()
    {
      ActivityResultRegistry.this.l(paramString);
    }
  }
  
  class b
    extends b<I>
  {
    b(String paramString, int paramInt, c.a parama) {}
    
    public void b(I paramI, c paramc)
    {
      ActivityResultRegistry.this.e.add(paramString);
      Integer localInteger = (Integer)ActivityResultRegistry.this.c.get(paramString);
      ActivityResultRegistry localActivityResultRegistry = ActivityResultRegistry.this;
      int i;
      if (localInteger != null) {
        i = localInteger.intValue();
      } else {
        i = i;
      }
      localActivityResultRegistry.f(i, parama, paramI, paramc);
    }
    
    public void c()
    {
      ActivityResultRegistry.this.l(paramString);
    }
  }
  
  private static class c<O>
  {
    final a<O> a;
    final c.a<?, O> b;
    
    c(a<O> parama, c.a<?, O> parama1)
    {
      this.a = parama;
      this.b = parama1;
    }
  }
  
  private static class d
  {
    final Lifecycle a;
    private final ArrayList<l> b;
    
    d(Lifecycle paramLifecycle)
    {
      this.a = paramLifecycle;
      this.b = new ArrayList();
    }
    
    void a(l paraml)
    {
      this.a.a(paraml);
      this.b.add(paraml);
    }
    
    void b()
    {
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
      {
        l locall = (l)localIterator.next();
        this.a.c(locall);
      }
      this.b.clear();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.activity.result.ActivityResultRegistry
 * JD-Core Version:    0.7.0.1
 */