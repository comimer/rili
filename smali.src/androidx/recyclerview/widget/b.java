package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

class b
{
  final b a;
  final a b;
  final List<View> c;
  
  b(b paramb)
  {
    this.a = paramb;
    this.b = new a();
    this.c = new ArrayList();
  }
  
  private int h(int paramInt)
  {
    if (paramInt < 0) {
      return -1;
    }
    int i = this.a.c();
    int j = paramInt;
    while (j < i)
    {
      int k = paramInt - (j - this.b.b(j));
      if (k == 0)
      {
        while (this.b.d(j)) {
          j++;
        }
        return j;
      }
      j += k;
    }
    return -1;
  }
  
  private void l(View paramView)
  {
    this.c.add(paramView);
    this.a.b(paramView);
  }
  
  private boolean t(View paramView)
  {
    if (this.c.remove(paramView))
    {
      this.a.g(paramView);
      return true;
    }
    return false;
  }
  
  void a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0) {
      paramInt = this.a.c();
    } else {
      paramInt = h(paramInt);
    }
    this.b.e(paramInt, paramBoolean);
    if (paramBoolean) {
      l(paramView);
    }
    this.a.addView(paramView, paramInt);
  }
  
  void b(View paramView, boolean paramBoolean)
  {
    a(paramView, -1, paramBoolean);
  }
  
  void c(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0) {
      paramInt = this.a.c();
    } else {
      paramInt = h(paramInt);
    }
    this.b.e(paramInt, paramBoolean);
    if (paramBoolean) {
      l(paramView);
    }
    this.a.h(paramView, paramInt, paramLayoutParams);
  }
  
  void d(int paramInt)
  {
    paramInt = h(paramInt);
    this.b.f(paramInt);
    this.a.f(paramInt);
  }
  
  View e(int paramInt)
  {
    int i = this.c.size();
    for (int j = 0; j < i; j++)
    {
      View localView = (View)this.c.get(j);
      RecyclerView.c0 localc0 = this.a.e(localView);
      if ((localc0.getLayoutPosition() == paramInt) && (!localc0.isInvalid()) && (!localc0.isRemoved())) {
        return localView;
      }
    }
    return null;
  }
  
  View f(int paramInt)
  {
    paramInt = h(paramInt);
    return this.a.a(paramInt);
  }
  
  int g()
  {
    return this.a.c() - this.c.size();
  }
  
  View i(int paramInt)
  {
    return this.a.a(paramInt);
  }
  
  int j()
  {
    return this.a.c();
  }
  
  void k(View paramView)
  {
    int i = this.a.d(paramView);
    if (i >= 0)
    {
      this.b.h(i);
      l(paramView);
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("view is not a child, cannot hide ");
    localStringBuilder.append(paramView);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  int m(View paramView)
  {
    int i = this.a.d(paramView);
    if (i == -1) {
      return -1;
    }
    if (this.b.d(i)) {
      return -1;
    }
    return i - this.b.b(i);
  }
  
  boolean n(View paramView)
  {
    return this.c.contains(paramView);
  }
  
  void o()
  {
    this.b.g();
    for (int i = this.c.size() - 1; i >= 0; i--)
    {
      this.a.g((View)this.c.get(i));
      this.c.remove(i);
    }
    this.a.removeAllViews();
  }
  
  void p(View paramView)
  {
    int i = this.a.d(paramView);
    if (i < 0) {
      return;
    }
    if (this.b.f(i)) {
      t(paramView);
    }
    this.a.removeViewAt(i);
  }
  
  void q(int paramInt)
  {
    paramInt = h(paramInt);
    View localView = this.a.a(paramInt);
    if (localView == null) {
      return;
    }
    if (this.b.f(paramInt)) {
      t(localView);
    }
    this.a.removeViewAt(paramInt);
  }
  
  boolean r(View paramView)
  {
    int i = this.a.d(paramView);
    if (i == -1)
    {
      t(paramView);
      return true;
    }
    if (this.b.d(i))
    {
      this.b.f(i);
      t(paramView);
      this.a.removeViewAt(i);
      return true;
    }
    return false;
  }
  
  void s(View paramView)
  {
    int i = this.a.d(paramView);
    if (i >= 0)
    {
      if (this.b.d(i))
      {
        this.b.a(i);
        t(paramView);
        return;
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("trying to unhide a view that was not hidden");
      localStringBuilder.append(paramView);
      throw new RuntimeException(localStringBuilder.toString());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("view is not a child, cannot hide ");
    localStringBuilder.append(paramView);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.b.toString());
    localStringBuilder.append(", hidden list:");
    localStringBuilder.append(this.c.size());
    return localStringBuilder.toString();
  }
  
  static class a
  {
    long a = 0L;
    a b;
    
    private void c()
    {
      if (this.b == null) {
        this.b = new a();
      }
    }
    
    void a(int paramInt)
    {
      if (paramInt >= 64)
      {
        a locala = this.b;
        if (locala != null) {
          locala.a(paramInt - 64);
        }
      }
      else
      {
        this.a &= 1L << paramInt;
      }
    }
    
    int b(int paramInt)
    {
      a locala = this.b;
      if (locala == null)
      {
        if (paramInt >= 64) {
          return Long.bitCount(this.a);
        }
        return Long.bitCount(this.a & (1L << paramInt) - 1L);
      }
      if (paramInt < 64) {
        return Long.bitCount(this.a & (1L << paramInt) - 1L);
      }
      return locala.b(paramInt - 64) + Long.bitCount(this.a);
    }
    
    boolean d(int paramInt)
    {
      if (paramInt >= 64)
      {
        c();
        return this.b.d(paramInt - 64);
      }
      boolean bool;
      if ((this.a & 1L << paramInt) != 0L) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    void e(int paramInt, boolean paramBoolean)
    {
      if (paramInt >= 64)
      {
        c();
        this.b.e(paramInt - 64, paramBoolean);
      }
      else
      {
        long l1 = this.a;
        boolean bool;
        if ((0x0 & l1) != 0L) {
          bool = true;
        } else {
          bool = false;
        }
        long l2 = (1L << paramInt) - 1L;
        this.a = ((l1 & l2) << 1 | l1 & l2);
        if (paramBoolean) {
          h(paramInt);
        } else {
          a(paramInt);
        }
        if ((bool) || (this.b != null))
        {
          c();
          this.b.e(0, bool);
        }
      }
    }
    
    boolean f(int paramInt)
    {
      if (paramInt >= 64)
      {
        c();
        return this.b.f(paramInt - 64);
      }
      long l1 = 1L << paramInt;
      long l2 = this.a;
      boolean bool;
      if ((l2 & l1) != 0L) {
        bool = true;
      } else {
        bool = false;
      }
      l2 &= l1;
      this.a = l2;
      l1 -= 1L;
      this.a = (l2 & l1 | Long.rotateRight(l1 & l2, 1));
      a locala = this.b;
      if (locala != null)
      {
        if (locala.d(0)) {
          h(63);
        }
        this.b.f(0);
      }
      return bool;
    }
    
    void g()
    {
      this.a = 0L;
      a locala = this.b;
      if (locala != null) {
        locala.g();
      }
    }
    
    void h(int paramInt)
    {
      if (paramInt >= 64)
      {
        c();
        this.b.h(paramInt - 64);
      }
      else
      {
        this.a |= 1L << paramInt;
      }
    }
    
    public String toString()
    {
      Object localObject;
      if (this.b == null)
      {
        localObject = Long.toBinaryString(this.a);
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(this.b.toString());
        ((StringBuilder)localObject).append("xx");
        ((StringBuilder)localObject).append(Long.toBinaryString(this.a));
        localObject = ((StringBuilder)localObject).toString();
      }
      return localObject;
    }
  }
  
  static abstract interface b
  {
    public abstract View a(int paramInt);
    
    public abstract void addView(View paramView, int paramInt);
    
    public abstract void b(View paramView);
    
    public abstract int c();
    
    public abstract int d(View paramView);
    
    public abstract RecyclerView.c0 e(View paramView);
    
    public abstract void f(int paramInt);
    
    public abstract void g(View paramView);
    
    public abstract void h(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams);
    
    public abstract void removeAllViews();
    
    public abstract void removeViewAt(int paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.b
 * JD-Core Version:    0.7.0.1
 */