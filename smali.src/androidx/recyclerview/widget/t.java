package androidx.recyclerview.widget;

import android.view.View;

class t
{
  final b a;
  a b;
  
  t(b paramb)
  {
    this.a = paramb;
    this.b = new a();
  }
  
  View a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.a.c();
    int j = this.a.d();
    int k;
    if (paramInt2 > paramInt1) {
      k = 1;
    } else {
      k = -1;
    }
    Object localObject2;
    for (Object localObject1 = null; paramInt1 != paramInt2; localObject1 = localObject2)
    {
      View localView = this.a.a(paramInt1);
      int m = this.a.b(localView);
      int n = this.a.e(localView);
      this.b.e(i, j, m, n);
      if (paramInt3 != 0)
      {
        this.b.d();
        this.b.a(paramInt3);
        if (this.b.b()) {
          return localView;
        }
      }
      localObject2 = localObject1;
      if (paramInt4 != 0)
      {
        this.b.d();
        this.b.a(paramInt4);
        localObject2 = localObject1;
        if (this.b.b()) {
          localObject2 = localView;
        }
      }
      paramInt1 += k;
    }
    return localObject1;
  }
  
  boolean b(View paramView, int paramInt)
  {
    this.b.e(this.a.c(), this.a.d(), this.a.b(paramView), this.a.e(paramView));
    if (paramInt != 0)
    {
      this.b.d();
      this.b.a(paramInt);
      return this.b.b();
    }
    return false;
  }
  
  static class a
  {
    int a = 0;
    int b;
    int c;
    int d;
    int e;
    
    void a(int paramInt)
    {
      this.a = (paramInt | this.a);
    }
    
    boolean b()
    {
      int i = this.a;
      if (((i & 0x7) != 0) && ((i & c(this.d, this.b) << 0) == 0)) {
        return false;
      }
      i = this.a;
      if (((i & 0x70) != 0) && ((i & c(this.d, this.c) << 4) == 0)) {
        return false;
      }
      i = this.a;
      if (((i & 0x700) != 0) && ((i & c(this.e, this.b) << 8) == 0)) {
        return false;
      }
      i = this.a;
      return ((i & 0x7000) == 0) || ((i & c(this.e, this.c) << 12) != 0);
    }
    
    int c(int paramInt1, int paramInt2)
    {
      if (paramInt1 > paramInt2) {
        return 1;
      }
      if (paramInt1 == paramInt2) {
        return 2;
      }
      return 4;
    }
    
    void d()
    {
      this.a = 0;
    }
    
    void e(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.b = paramInt1;
      this.c = paramInt2;
      this.d = paramInt3;
      this.e = paramInt4;
    }
  }
  
  static abstract interface b
  {
    public abstract View a(int paramInt);
    
    public abstract int b(View paramView);
    
    public abstract int c();
    
    public abstract int d();
    
    public abstract int e(View paramView);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.t
 * JD-Core Version:    0.7.0.1
 */