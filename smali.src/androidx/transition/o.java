package androidx.transition;

import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import androidx.core.view.a0;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import n.a;
import n.g;

public class o
{
  private static m a = new b();
  private static ThreadLocal<WeakReference<a<ViewGroup, ArrayList<m>>>> b = new ThreadLocal();
  static ArrayList<ViewGroup> c = new ArrayList();
  
  public static void a(ViewGroup paramViewGroup, m paramm)
  {
    if ((!c.contains(paramViewGroup)) && (a0.P(paramViewGroup)))
    {
      c.add(paramViewGroup);
      m localm = paramm;
      if (paramm == null) {
        localm = a;
      }
      paramm = localm.clone();
      d(paramViewGroup, paramm);
      k.c(paramViewGroup, null);
      c(paramViewGroup, paramm);
    }
  }
  
  static a<ViewGroup, ArrayList<m>> b()
  {
    Object localObject = (WeakReference)b.get();
    if (localObject != null)
    {
      localObject = (a)((Reference)localObject).get();
      if (localObject != null) {
        return localObject;
      }
    }
    a locala = new a();
    localObject = new WeakReference(locala);
    b.set(localObject);
    return locala;
  }
  
  private static void c(ViewGroup paramViewGroup, m paramm)
  {
    if ((paramm != null) && (paramViewGroup != null))
    {
      paramm = new a(paramm, paramViewGroup);
      paramViewGroup.addOnAttachStateChangeListener(paramm);
      paramViewGroup.getViewTreeObserver().addOnPreDrawListener(paramm);
    }
  }
  
  private static void d(ViewGroup paramViewGroup, m paramm)
  {
    Object localObject = (ArrayList)b().get(paramViewGroup);
    if ((localObject != null) && (((ArrayList)localObject).size() > 0))
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((m)((Iterator)localObject).next()).pause(paramViewGroup);
      }
    }
    if (paramm != null) {
      paramm.captureValues(paramViewGroup, true);
    }
    paramViewGroup = k.b(paramViewGroup);
    if (paramViewGroup != null) {
      paramViewGroup.a();
    }
  }
  
  private static class a
    implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener
  {
    m a;
    ViewGroup b;
    
    a(m paramm, ViewGroup paramViewGroup)
    {
      this.a = paramm;
      this.b = paramViewGroup;
    }
    
    private void a()
    {
      this.b.getViewTreeObserver().removeOnPreDrawListener(this);
      this.b.removeOnAttachStateChangeListener(this);
    }
    
    public boolean onPreDraw()
    {
      a();
      if (!o.c.remove(this.b)) {
        return true;
      }
      final a locala = o.b();
      ArrayList localArrayList1 = (ArrayList)locala.get(this.b);
      ArrayList localArrayList2 = null;
      Object localObject;
      if (localArrayList1 == null)
      {
        localObject = new ArrayList();
        locala.put(this.b, localObject);
      }
      else
      {
        localObject = localArrayList1;
        if (localArrayList1.size() > 0)
        {
          localArrayList2 = new ArrayList(localArrayList1);
          localObject = localArrayList1;
        }
      }
      ((ArrayList)localObject).add(this.a);
      this.a.addListener(new a(locala));
      this.a.captureValues(this.b, false);
      if (localArrayList2 != null)
      {
        localObject = localArrayList2.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((m)((Iterator)localObject).next()).resume(this.b);
        }
      }
      this.a.playTransition(this.b);
      return true;
    }
    
    public void onViewAttachedToWindow(View paramView) {}
    
    public void onViewDetachedFromWindow(View paramView)
    {
      a();
      o.c.remove(this.b);
      paramView = (ArrayList)o.b().get(this.b);
      if ((paramView != null) && (paramView.size() > 0))
      {
        paramView = paramView.iterator();
        while (paramView.hasNext()) {
          ((m)paramView.next()).resume(this.b);
        }
      }
      this.a.clearValues(true);
    }
    
    class a
      extends n
    {
      a(a parama) {}
      
      public void onTransitionEnd(m paramm)
      {
        ((ArrayList)locala.get(o.a.this.b)).remove(paramm);
        paramm.removeListener(this);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.o
 * JD-Core Version:    0.7.0.1
 */