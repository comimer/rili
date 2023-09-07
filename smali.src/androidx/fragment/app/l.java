package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

class l
{
  private final CopyOnWriteArrayList<a> a = new CopyOnWriteArrayList();
  private final FragmentManager b;
  
  l(FragmentManager paramFragmentManager)
  {
    this.b = paramFragmentManager;
  }
  
  void a(Fragment paramFragment, Bundle paramBundle, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().a(paramFragment, paramBundle, true);
    }
    localObject = this.a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      a locala = (a)((Iterator)localObject).next();
      if ((!paramBoolean) || (locala.b)) {
        locala.a.a(this.b, paramFragment, paramBundle);
      }
    }
  }
  
  void b(Fragment paramFragment, boolean paramBoolean)
  {
    Context localContext = this.b.v0().f();
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().b(paramFragment, true);
    }
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      localObject = (a)localIterator.next();
      if ((!paramBoolean) || (((a)localObject).b)) {
        ((a)localObject).a.b(this.b, paramFragment, localContext);
      }
    }
  }
  
  void c(Fragment paramFragment, Bundle paramBundle, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().c(paramFragment, paramBundle, true);
    }
    localObject = this.a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      a locala = (a)((Iterator)localObject).next();
      if ((!paramBoolean) || (locala.b)) {
        locala.a.c(this.b, paramFragment, paramBundle);
      }
    }
  }
  
  void d(Fragment paramFragment, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().d(paramFragment, true);
    }
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      localObject = (a)localIterator.next();
      if ((!paramBoolean) || (((a)localObject).b)) {
        ((a)localObject).a.d(this.b, paramFragment);
      }
    }
  }
  
  void e(Fragment paramFragment, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().e(paramFragment, true);
    }
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      localObject = (a)localIterator.next();
      if ((!paramBoolean) || (((a)localObject).b)) {
        ((a)localObject).a.e(this.b, paramFragment);
      }
    }
  }
  
  void f(Fragment paramFragment, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().f(paramFragment, true);
    }
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      localObject = (a)localIterator.next();
      if ((!paramBoolean) || (((a)localObject).b)) {
        ((a)localObject).a.f(this.b, paramFragment);
      }
    }
  }
  
  void g(Fragment paramFragment, boolean paramBoolean)
  {
    Context localContext = this.b.v0().f();
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().g(paramFragment, true);
    }
    localObject = this.a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      a locala = (a)((Iterator)localObject).next();
      if ((!paramBoolean) || (locala.b)) {
        locala.a.g(this.b, paramFragment, localContext);
      }
    }
  }
  
  void h(Fragment paramFragment, Bundle paramBundle, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().h(paramFragment, paramBundle, true);
    }
    localObject = this.a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      a locala = (a)((Iterator)localObject).next();
      if ((!paramBoolean) || (locala.b)) {
        locala.a.h(this.b, paramFragment, paramBundle);
      }
    }
  }
  
  void i(Fragment paramFragment, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().i(paramFragment, true);
    }
    localObject = this.a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      a locala = (a)((Iterator)localObject).next();
      if ((!paramBoolean) || (locala.b)) {
        locala.a.i(this.b, paramFragment);
      }
    }
  }
  
  void j(Fragment paramFragment, Bundle paramBundle, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().j(paramFragment, paramBundle, true);
    }
    localObject = this.a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      a locala = (a)((Iterator)localObject).next();
      if ((!paramBoolean) || (locala.b)) {
        locala.a.j(this.b, paramFragment, paramBundle);
      }
    }
  }
  
  void k(Fragment paramFragment, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().k(paramFragment, true);
    }
    localObject = this.a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      a locala = (a)((Iterator)localObject).next();
      if ((!paramBoolean) || (locala.b)) {
        locala.a.k(this.b, paramFragment);
      }
    }
  }
  
  void l(Fragment paramFragment, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().l(paramFragment, true);
    }
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      localObject = (a)localIterator.next();
      if ((!paramBoolean) || (((a)localObject).b)) {
        ((a)localObject).a.l(this.b, paramFragment);
      }
    }
  }
  
  void m(Fragment paramFragment, View paramView, Bundle paramBundle, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().m(paramFragment, paramView, paramBundle, true);
    }
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      localObject = (a)localIterator.next();
      if ((!paramBoolean) || (((a)localObject).b)) {
        ((a)localObject).a.m(this.b, paramFragment, paramView, paramBundle);
      }
    }
  }
  
  void n(Fragment paramFragment, boolean paramBoolean)
  {
    Object localObject = this.b.y0();
    if (localObject != null) {
      ((Fragment)localObject).getParentFragmentManager().x0().n(paramFragment, true);
    }
    localObject = this.a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      a locala = (a)((Iterator)localObject).next();
      if ((!paramBoolean) || (locala.b)) {
        locala.a.n(this.b, paramFragment);
      }
    }
  }
  
  public void o(FragmentManager.m paramm, boolean paramBoolean)
  {
    this.a.add(new a(paramm, paramBoolean));
  }
  
  public void p(FragmentManager.m paramm)
  {
    CopyOnWriteArrayList localCopyOnWriteArrayList = this.a;
    int i = 0;
    try
    {
      int j = this.a.size();
      while (i < j)
      {
        if (((a)this.a.get(i)).a == paramm)
        {
          this.a.remove(i);
          break;
        }
        i++;
      }
      return;
    }
    finally {}
  }
  
  private static final class a
  {
    final FragmentManager.m a;
    final boolean b;
    
    a(FragmentManager.m paramm, boolean paramBoolean)
    {
      this.a = paramm;
      this.b = paramBoolean;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.l
 * JD-Core Version:    0.7.0.1
 */