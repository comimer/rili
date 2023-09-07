package androidx.recyclerview.widget;

import android.view.View;

public abstract class r
  extends RecyclerView.l
{
  boolean g = true;
  
  public abstract boolean A(RecyclerView.c0 paramc0);
  
  public final void B(RecyclerView.c0 paramc0)
  {
    J(paramc0);
    h(paramc0);
  }
  
  public final void C(RecyclerView.c0 paramc0)
  {
    K(paramc0);
  }
  
  public final void D(RecyclerView.c0 paramc0, boolean paramBoolean)
  {
    L(paramc0, paramBoolean);
    h(paramc0);
  }
  
  public final void E(RecyclerView.c0 paramc0, boolean paramBoolean)
  {
    M(paramc0, paramBoolean);
  }
  
  public final void F(RecyclerView.c0 paramc0)
  {
    N(paramc0);
    h(paramc0);
  }
  
  public final void G(RecyclerView.c0 paramc0)
  {
    O(paramc0);
  }
  
  public final void H(RecyclerView.c0 paramc0)
  {
    P(paramc0);
    h(paramc0);
  }
  
  public final void I(RecyclerView.c0 paramc0)
  {
    Q(paramc0);
  }
  
  public void J(RecyclerView.c0 paramc0) {}
  
  public void K(RecyclerView.c0 paramc0) {}
  
  public void L(RecyclerView.c0 paramc0, boolean paramBoolean) {}
  
  public void M(RecyclerView.c0 paramc0, boolean paramBoolean) {}
  
  public void N(RecyclerView.c0 paramc0) {}
  
  public void O(RecyclerView.c0 paramc0) {}
  
  public void P(RecyclerView.c0 paramc0) {}
  
  public void Q(RecyclerView.c0 paramc0) {}
  
  public boolean a(RecyclerView.c0 paramc0, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2)
  {
    if (paramc1 != null)
    {
      int i = paramc1.a;
      int j = paramc2.a;
      if ((i != j) || (paramc1.b != paramc2.b)) {
        return z(paramc0, i, paramc1.b, j, paramc2.b);
      }
    }
    return x(paramc0);
  }
  
  public boolean b(RecyclerView.c0 paramc01, RecyclerView.c0 paramc02, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2)
  {
    int i = paramc1.a;
    int j = paramc1.b;
    int k;
    int m;
    if (paramc02.shouldIgnore())
    {
      k = paramc1.a;
      m = paramc1.b;
    }
    else
    {
      k = paramc2.a;
      m = paramc2.b;
    }
    return y(paramc01, paramc02, i, j, k, m);
  }
  
  public boolean c(RecyclerView.c0 paramc0, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2)
  {
    int i = paramc1.a;
    int j = paramc1.b;
    paramc1 = paramc0.itemView;
    int k;
    if (paramc2 == null) {
      k = paramc1.getLeft();
    } else {
      k = paramc2.a;
    }
    int m;
    if (paramc2 == null) {
      m = paramc1.getTop();
    } else {
      m = paramc2.b;
    }
    if ((!paramc0.isRemoved()) && ((i != k) || (j != m)))
    {
      paramc1.layout(k, m, paramc1.getWidth() + k, paramc1.getHeight() + m);
      return z(paramc0, i, j, k, m);
    }
    return A(paramc0);
  }
  
  public boolean d(RecyclerView.c0 paramc0, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2)
  {
    int i = paramc1.a;
    int j = paramc2.a;
    if ((i == j) && (paramc1.b == paramc2.b))
    {
      F(paramc0);
      return false;
    }
    return z(paramc0, i, paramc1.b, j, paramc2.b);
  }
  
  public boolean f(RecyclerView.c0 paramc0)
  {
    boolean bool;
    if ((this.g) && (!paramc0.isInvalid())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public abstract boolean x(RecyclerView.c0 paramc0);
  
  public abstract boolean y(RecyclerView.c0 paramc01, RecyclerView.c0 paramc02, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract boolean z(RecyclerView.c0 paramc0, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.r
 * JD-Core Version:    0.7.0.1
 */