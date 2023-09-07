package z2;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.d;
import com.bumptech.glide.c.d;
import com.bumptech.glide.e;
import java.util.HashMap;
import java.util.Map;
import n.a;

public class p
  implements Handler.Callback
{
  private static final b j = new a();
  private volatile com.bumptech.glide.h a;
  final Map<android.app.FragmentManager, o> b = new HashMap();
  final Map<androidx.fragment.app.FragmentManager, s> c = new HashMap();
  private final Handler d;
  private final b e;
  private final a<View, androidx.fragment.app.Fragment> f = new a();
  private final a<View, android.app.Fragment> g = new a();
  private final Bundle h = new Bundle();
  private final k i;
  
  public p(b paramb, e parame)
  {
    if (paramb == null) {
      paramb = j;
    }
    this.e = paramb;
    this.d = new Handler(Looper.getMainLooper(), this);
    this.i = b(parame);
  }
  
  @TargetApi(17)
  private static void a(Activity paramActivity)
  {
    if (!paramActivity.isDestroyed()) {
      return;
    }
    throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
  }
  
  private static k b(e parame)
  {
    if ((com.bumptech.glide.load.resource.bitmap.q.h) && (com.bumptech.glide.load.resource.bitmap.q.g))
    {
      if (parame.a(c.d.class)) {
        parame = new i();
      } else {
        parame = new j();
      }
      return parame;
    }
    return new g();
  }
  
  private static Activity c(Context paramContext)
  {
    if ((paramContext instanceof Activity)) {
      return (Activity)paramContext;
    }
    if ((paramContext instanceof ContextWrapper)) {
      return c(((ContextWrapper)paramContext).getBaseContext());
    }
    return null;
  }
  
  @Deprecated
  private com.bumptech.glide.h d(Context paramContext, android.app.FragmentManager paramFragmentManager, android.app.Fragment paramFragment, boolean paramBoolean)
  {
    o localo = j(paramFragmentManager, paramFragment);
    paramFragment = localo.e();
    paramFragmentManager = paramFragment;
    if (paramFragment == null)
    {
      paramFragmentManager = com.bumptech.glide.b.c(paramContext);
      paramFragmentManager = this.e.a(paramFragmentManager, localo.c(), localo.f(), paramContext);
      if (paramBoolean) {
        paramFragmentManager.a();
      }
      localo.k(paramFragmentManager);
    }
    return paramFragmentManager;
  }
  
  private com.bumptech.glide.h h(Context paramContext)
  {
    if (this.a == null) {
      try
      {
        if (this.a == null)
        {
          com.bumptech.glide.b localb = com.bumptech.glide.b.c(paramContext.getApplicationContext());
          b localb1 = this.e;
          b localb2 = new z2/b;
          localb2.<init>();
          h localh = new z2/h;
          localh.<init>();
          this.a = localb1.a(localb, localb2, localh, paramContext.getApplicationContext());
        }
      }
      finally {}
    }
    return this.a;
  }
  
  private o j(android.app.FragmentManager paramFragmentManager, android.app.Fragment paramFragment)
  {
    o localo1 = (o)paramFragmentManager.findFragmentByTag("com.bumptech.glide.manager");
    o localo2 = localo1;
    if (localo1 == null)
    {
      localo1 = (o)this.b.get(paramFragmentManager);
      localo2 = localo1;
      if (localo1 == null)
      {
        localo2 = new o();
        localo2.j(paramFragment);
        this.b.put(paramFragmentManager, localo2);
        paramFragmentManager.beginTransaction().add(localo2, "com.bumptech.glide.manager").commitAllowingStateLoss();
        this.d.obtainMessage(1, paramFragmentManager).sendToTarget();
      }
    }
    return localo2;
  }
  
  private s l(androidx.fragment.app.FragmentManager paramFragmentManager, androidx.fragment.app.Fragment paramFragment)
  {
    s locals1 = (s)paramFragmentManager.i0("com.bumptech.glide.manager");
    s locals2 = locals1;
    if (locals1 == null)
    {
      locals1 = (s)this.c.get(paramFragmentManager);
      locals2 = locals1;
      if (locals1 == null)
      {
        locals2 = new s();
        locals2.s(paramFragment);
        this.c.put(paramFragmentManager, locals2);
        paramFragmentManager.m().e(locals2, "com.bumptech.glide.manager").i();
        this.d.obtainMessage(2, paramFragmentManager).sendToTarget();
      }
    }
    return locals2;
  }
  
  private static boolean m(Context paramContext)
  {
    paramContext = c(paramContext);
    boolean bool;
    if ((paramContext != null) && (paramContext.isFinishing())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private com.bumptech.glide.h n(Context paramContext, androidx.fragment.app.FragmentManager paramFragmentManager, androidx.fragment.app.Fragment paramFragment, boolean paramBoolean)
  {
    s locals = l(paramFragmentManager, paramFragment);
    paramFragment = locals.m();
    paramFragmentManager = paramFragment;
    if (paramFragment == null)
    {
      paramFragmentManager = com.bumptech.glide.b.c(paramContext);
      paramFragmentManager = this.e.a(paramFragmentManager, locals.k(), locals.n(), paramContext);
      if (paramBoolean) {
        paramFragmentManager.a();
      }
      locals.t(paramFragmentManager);
    }
    return paramFragmentManager;
  }
  
  public com.bumptech.glide.h e(Activity paramActivity)
  {
    if (f3.k.q()) {
      return f(paramActivity.getApplicationContext());
    }
    if ((paramActivity instanceof d)) {
      return g((d)paramActivity);
    }
    a(paramActivity);
    this.i.a(paramActivity);
    return d(paramActivity, paramActivity.getFragmentManager(), null, m(paramActivity));
  }
  
  public com.bumptech.glide.h f(Context paramContext)
  {
    if (paramContext != null)
    {
      if ((f3.k.r()) && (!(paramContext instanceof Application)))
      {
        if ((paramContext instanceof d)) {
          return g((d)paramContext);
        }
        if ((paramContext instanceof Activity)) {
          return e((Activity)paramContext);
        }
        if ((paramContext instanceof ContextWrapper))
        {
          ContextWrapper localContextWrapper = (ContextWrapper)paramContext;
          if (localContextWrapper.getBaseContext().getApplicationContext() != null) {
            return f(localContextWrapper.getBaseContext());
          }
        }
      }
      return h(paramContext);
    }
    throw new IllegalArgumentException("You cannot start a load on a null Context");
  }
  
  public com.bumptech.glide.h g(d paramd)
  {
    if (f3.k.q()) {
      return f(paramd.getApplicationContext());
    }
    a(paramd);
    this.i.a(paramd);
    return n(paramd, paramd.getSupportFragmentManager(), null, m(paramd));
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    int k = paramMessage.what;
    Object localObject = null;
    boolean bool = true;
    if (k != 1)
    {
      if (k != 2)
      {
        bool = false;
        paramMessage = null;
      }
      else
      {
        paramMessage = (androidx.fragment.app.FragmentManager)paramMessage.obj;
        localObject = this.c.remove(paramMessage);
      }
    }
    else
    {
      paramMessage = (android.app.FragmentManager)paramMessage.obj;
      localObject = this.b.remove(paramMessage);
    }
    if ((bool) && (localObject == null) && (Log.isLoggable("RMRetriever", 5)))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Failed to remove expected request manager fragment, manager: ");
      ((StringBuilder)localObject).append(paramMessage);
      Log.w("RMRetriever", ((StringBuilder)localObject).toString());
    }
    return bool;
  }
  
  @Deprecated
  o i(Activity paramActivity)
  {
    return j(paramActivity.getFragmentManager(), null);
  }
  
  s k(androidx.fragment.app.FragmentManager paramFragmentManager)
  {
    return l(paramFragmentManager, null);
  }
  
  class a
    implements p.b
  {
    public com.bumptech.glide.h a(com.bumptech.glide.b paramb, l paraml, q paramq, Context paramContext)
    {
      return new com.bumptech.glide.h(paramb, paraml, paramq, paramContext);
    }
  }
  
  public static abstract interface b
  {
    public abstract com.bumptech.glide.h a(com.bumptech.glide.b paramb, l paraml, q paramq, Context paramContext);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z2.p
 * JD-Core Version:    0.7.0.1
 */