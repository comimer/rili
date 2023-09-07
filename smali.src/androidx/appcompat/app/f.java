package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import androidx.appcompat.widget.Toolbar;
import h.b.a;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Iterator;

public abstract class f
{
  private static int a = -100;
  private static final n.b<WeakReference<f>> b = new n.b();
  private static final Object c = new Object();
  
  static void a(f paramf)
  {
    synchronized (c)
    {
      x(paramf);
      n.b localb = b;
      WeakReference localWeakReference = new java/lang/ref/WeakReference;
      localWeakReference.<init>(paramf);
      localb.add(localWeakReference);
      return;
    }
  }
  
  public static f e(Activity paramActivity, e parame)
  {
    return new AppCompatDelegateImpl(paramActivity, parame);
  }
  
  public static f f(Dialog paramDialog, e parame)
  {
    return new AppCompatDelegateImpl(paramDialog, parame);
  }
  
  public static int h()
  {
    return a;
  }
  
  static void w(f paramf)
  {
    synchronized (c)
    {
      x(paramf);
      return;
    }
  }
  
  private static void x(f paramf)
  {
    synchronized (c)
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        f localf = (f)((WeakReference)localIterator.next()).get();
        if ((localf == paramf) || (localf == null)) {
          localIterator.remove();
        }
      }
      return;
    }
  }
  
  public abstract void A(View paramView);
  
  public abstract void B(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  public abstract void C(Toolbar paramToolbar);
  
  public void D(int paramInt) {}
  
  public abstract void E(CharSequence paramCharSequence);
  
  public abstract h.b F(b.a parama);
  
  public abstract void b(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  @Deprecated
  public void c(Context paramContext) {}
  
  public Context d(Context paramContext)
  {
    c(paramContext);
    return paramContext;
  }
  
  public abstract <T extends View> T g(int paramInt);
  
  public abstract b i();
  
  public int j()
  {
    return -100;
  }
  
  public abstract MenuInflater k();
  
  public abstract a l();
  
  public abstract void m();
  
  public abstract void n();
  
  public abstract void o(Configuration paramConfiguration);
  
  public abstract void p(Bundle paramBundle);
  
  public abstract void q();
  
  public abstract void r(Bundle paramBundle);
  
  public abstract void s();
  
  public abstract void t(Bundle paramBundle);
  
  public abstract void u();
  
  public abstract void v();
  
  public abstract boolean y(int paramInt);
  
  public abstract void z(int paramInt);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.f
 * JD-Core Version:    0.7.0.1
 */