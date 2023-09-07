package h;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.a1;
import androidx.core.view.b1;
import androidx.core.view.c1;
import java.util.ArrayList;
import java.util.Iterator;

public class h
{
  final ArrayList<a1> a = new ArrayList();
  private long b = -1L;
  private Interpolator c;
  b1 d;
  private boolean e;
  private final c1 f = new a();
  
  public void a()
  {
    if (!this.e) {
      return;
    }
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((a1)localIterator.next()).c();
    }
    this.e = false;
  }
  
  void b()
  {
    this.e = false;
  }
  
  public h c(a1 parama1)
  {
    if (!this.e) {
      this.a.add(parama1);
    }
    return this;
  }
  
  public h d(a1 parama11, a1 parama12)
  {
    this.a.add(parama11);
    parama12.j(parama11.d());
    this.a.add(parama12);
    return this;
  }
  
  public h e(long paramLong)
  {
    if (!this.e) {
      this.b = paramLong;
    }
    return this;
  }
  
  public h f(Interpolator paramInterpolator)
  {
    if (!this.e) {
      this.c = paramInterpolator;
    }
    return this;
  }
  
  public h g(b1 paramb1)
  {
    if (!this.e) {
      this.d = paramb1;
    }
    return this;
  }
  
  public void h()
  {
    if (this.e) {
      return;
    }
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      a1 locala1 = (a1)localIterator.next();
      long l = this.b;
      if (l >= 0L) {
        locala1.f(l);
      }
      Interpolator localInterpolator = this.c;
      if (localInterpolator != null) {
        locala1.g(localInterpolator);
      }
      if (this.d != null) {
        locala1.h(this.f);
      }
      locala1.l();
    }
    this.e = true;
  }
  
  class a
    extends c1
  {
    private boolean a = false;
    private int b = 0;
    
    a() {}
    
    public void b(View paramView)
    {
      int i = this.b + 1;
      this.b = i;
      if (i == h.this.a.size())
      {
        paramView = h.this.d;
        if (paramView != null) {
          paramView.b(null);
        }
        d();
      }
    }
    
    public void c(View paramView)
    {
      if (this.a) {
        return;
      }
      this.a = true;
      paramView = h.this.d;
      if (paramView != null) {
        paramView.c(null);
      }
    }
    
    void d()
    {
      this.b = 0;
      this.a = false;
      h.this.b();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h.h
 * JD-Core Version:    0.7.0.1
 */