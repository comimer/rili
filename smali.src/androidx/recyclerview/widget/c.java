package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.a0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class c
  extends r
{
  private static TimeInterpolator s;
  private ArrayList<RecyclerView.c0> h = new ArrayList();
  private ArrayList<RecyclerView.c0> i = new ArrayList();
  private ArrayList<j> j = new ArrayList();
  private ArrayList<i> k = new ArrayList();
  ArrayList<ArrayList<RecyclerView.c0>> l = new ArrayList();
  ArrayList<ArrayList<j>> m = new ArrayList();
  ArrayList<ArrayList<i>> n = new ArrayList();
  ArrayList<RecyclerView.c0> o = new ArrayList();
  ArrayList<RecyclerView.c0> p = new ArrayList();
  ArrayList<RecyclerView.c0> q = new ArrayList();
  ArrayList<RecyclerView.c0> r = new ArrayList();
  
  private void U(final RecyclerView.c0 paramc0)
  {
    final View localView = paramc0.itemView;
    final ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
    this.q.add(paramc0);
    localViewPropertyAnimator.setDuration(o()).alpha(0.0F).setListener(new d(paramc0, localViewPropertyAnimator, localView)).start();
  }
  
  private void X(List<i> paramList, RecyclerView.c0 paramc0)
  {
    for (int i1 = paramList.size() - 1; i1 >= 0; i1--)
    {
      i locali = (i)paramList.get(i1);
      if ((Z(locali, paramc0)) && (locali.a == null) && (locali.b == null)) {
        paramList.remove(locali);
      }
    }
  }
  
  private void Y(i parami)
  {
    RecyclerView.c0 localc0 = parami.a;
    if (localc0 != null) {
      Z(parami, localc0);
    }
    localc0 = parami.b;
    if (localc0 != null) {
      Z(parami, localc0);
    }
  }
  
  private boolean Z(i parami, RecyclerView.c0 paramc0)
  {
    RecyclerView.c0 localc0 = parami.b;
    boolean bool = false;
    if (localc0 == paramc0)
    {
      parami.b = null;
    }
    else
    {
      if (parami.a != paramc0) {
        break label70;
      }
      parami.a = null;
      bool = true;
    }
    paramc0.itemView.setAlpha(1.0F);
    paramc0.itemView.setTranslationX(0.0F);
    paramc0.itemView.setTranslationY(0.0F);
    D(paramc0, bool);
    return true;
    label70:
    return false;
  }
  
  private void a0(RecyclerView.c0 paramc0)
  {
    if (s == null) {
      s = new ValueAnimator().getInterpolator();
    }
    paramc0.itemView.animate().setInterpolator(s);
    j(paramc0);
  }
  
  public boolean A(RecyclerView.c0 paramc0)
  {
    a0(paramc0);
    this.h.add(paramc0);
    return true;
  }
  
  void R(final RecyclerView.c0 paramc0)
  {
    final View localView = paramc0.itemView;
    final ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
    this.o.add(paramc0);
    localViewPropertyAnimator.alpha(1.0F).setDuration(l()).setListener(new e(paramc0, localView, localViewPropertyAnimator)).start();
  }
  
  void S(final i parami)
  {
    Object localObject1 = parami.a;
    final View localView = null;
    if (localObject1 == null) {
      localObject1 = null;
    } else {
      localObject1 = ((RecyclerView.c0)localObject1).itemView;
    }
    Object localObject2 = parami.b;
    if (localObject2 != null) {
      localView = ((RecyclerView.c0)localObject2).itemView;
    }
    if (localObject1 != null)
    {
      localObject2 = ((View)localObject1).animate().setDuration(m());
      this.r.add(parami.a);
      ((ViewPropertyAnimator)localObject2).translationX(parami.e - parami.c);
      ((ViewPropertyAnimator)localObject2).translationY(parami.f - parami.d);
      ((ViewPropertyAnimator)localObject2).alpha(0.0F).setListener(new g(parami, (ViewPropertyAnimator)localObject2, (View)localObject1)).start();
    }
    if (localView != null)
    {
      localObject1 = localView.animate();
      this.r.add(parami.b);
      ((ViewPropertyAnimator)localObject1).translationX(0.0F).translationY(0.0F).setDuration(m()).alpha(1.0F).setListener(new h(parami, (ViewPropertyAnimator)localObject1, localView)).start();
    }
  }
  
  void T(final RecyclerView.c0 paramc0, final int paramInt1, final int paramInt2, int paramInt3, int paramInt4)
  {
    final View localView = paramc0.itemView;
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    if (paramInt1 != 0) {
      localView.animate().translationX(0.0F);
    }
    if (paramInt2 != 0) {
      localView.animate().translationY(0.0F);
    }
    final ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
    this.p.add(paramc0);
    localViewPropertyAnimator.setDuration(n()).setListener(new f(paramc0, paramInt1, localView, paramInt2, localViewPropertyAnimator)).start();
  }
  
  void V(List<RecyclerView.c0> paramList)
  {
    for (int i1 = paramList.size() - 1; i1 >= 0; i1--) {
      ((RecyclerView.c0)paramList.get(i1)).itemView.animate().cancel();
    }
  }
  
  void W()
  {
    if (!p()) {
      i();
    }
  }
  
  public boolean g(RecyclerView.c0 paramc0, List<Object> paramList)
  {
    boolean bool;
    if ((paramList.isEmpty()) && (!super.g(paramc0, paramList))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void j(RecyclerView.c0 paramc0)
  {
    View localView = paramc0.itemView;
    localView.animate().cancel();
    for (int i1 = this.j.size() - 1; i1 >= 0; i1--) {
      if (((j)this.j.get(i1)).a == paramc0)
      {
        localView.setTranslationY(0.0F);
        localView.setTranslationX(0.0F);
        F(paramc0);
        this.j.remove(i1);
      }
    }
    X(this.k, paramc0);
    if (this.h.remove(paramc0))
    {
      localView.setAlpha(1.0F);
      H(paramc0);
    }
    if (this.i.remove(paramc0))
    {
      localView.setAlpha(1.0F);
      B(paramc0);
    }
    ArrayList localArrayList;
    for (i1 = this.n.size() - 1; i1 >= 0; i1--)
    {
      localArrayList = (ArrayList)this.n.get(i1);
      X(localArrayList, paramc0);
      if (localArrayList.isEmpty()) {
        this.n.remove(i1);
      }
    }
    for (i1 = this.m.size() - 1; i1 >= 0; i1--)
    {
      localArrayList = (ArrayList)this.m.get(i1);
      for (int i2 = localArrayList.size() - 1; i2 >= 0; i2--) {
        if (((j)localArrayList.get(i2)).a == paramc0)
        {
          localView.setTranslationY(0.0F);
          localView.setTranslationX(0.0F);
          F(paramc0);
          localArrayList.remove(i2);
          if (!localArrayList.isEmpty()) {
            break;
          }
          this.m.remove(i1);
          break;
        }
      }
    }
    for (i1 = this.l.size() - 1; i1 >= 0; i1--)
    {
      localArrayList = (ArrayList)this.l.get(i1);
      if (localArrayList.remove(paramc0))
      {
        localView.setAlpha(1.0F);
        B(paramc0);
        if (localArrayList.isEmpty()) {
          this.l.remove(i1);
        }
      }
    }
    this.q.remove(paramc0);
    this.o.remove(paramc0);
    this.r.remove(paramc0);
    this.p.remove(paramc0);
    W();
  }
  
  public void k()
  {
    Object localObject1;
    Object localObject2;
    for (int i1 = this.j.size() - 1; i1 >= 0; i1--)
    {
      localObject1 = (j)this.j.get(i1);
      localObject2 = ((j)localObject1).a.itemView;
      ((View)localObject2).setTranslationY(0.0F);
      ((View)localObject2).setTranslationX(0.0F);
      F(((j)localObject1).a);
      this.j.remove(i1);
    }
    for (i1 = this.h.size() - 1; i1 >= 0; i1--)
    {
      H((RecyclerView.c0)this.h.get(i1));
      this.h.remove(i1);
    }
    for (i1 = this.i.size() - 1; i1 >= 0; i1--)
    {
      localObject2 = (RecyclerView.c0)this.i.get(i1);
      ((RecyclerView.c0)localObject2).itemView.setAlpha(1.0F);
      B((RecyclerView.c0)localObject2);
      this.i.remove(i1);
    }
    for (i1 = this.k.size() - 1; i1 >= 0; i1--) {
      Y((i)this.k.get(i1));
    }
    this.k.clear();
    if (!p()) {
      return;
    }
    int i2;
    for (i1 = this.m.size() - 1; i1 >= 0; i1--)
    {
      ArrayList localArrayList = (ArrayList)this.m.get(i1);
      for (i2 = localArrayList.size() - 1; i2 >= 0; i2--)
      {
        localObject2 = (j)localArrayList.get(i2);
        localObject1 = ((j)localObject2).a.itemView;
        ((View)localObject1).setTranslationY(0.0F);
        ((View)localObject1).setTranslationX(0.0F);
        F(((j)localObject2).a);
        localArrayList.remove(i2);
        if (localArrayList.isEmpty()) {
          this.m.remove(localArrayList);
        }
      }
    }
    for (i1 = this.l.size() - 1; i1 >= 0; i1--)
    {
      localObject2 = (ArrayList)this.l.get(i1);
      for (i2 = ((ArrayList)localObject2).size() - 1; i2 >= 0; i2--)
      {
        localObject1 = (RecyclerView.c0)((ArrayList)localObject2).get(i2);
        ((RecyclerView.c0)localObject1).itemView.setAlpha(1.0F);
        B((RecyclerView.c0)localObject1);
        ((ArrayList)localObject2).remove(i2);
        if (((ArrayList)localObject2).isEmpty()) {
          this.l.remove(localObject2);
        }
      }
    }
    for (i1 = this.n.size() - 1; i1 >= 0; i1--)
    {
      localObject2 = (ArrayList)this.n.get(i1);
      for (i2 = ((ArrayList)localObject2).size() - 1; i2 >= 0; i2--)
      {
        Y((i)((ArrayList)localObject2).get(i2));
        if (((ArrayList)localObject2).isEmpty()) {
          this.n.remove(localObject2);
        }
      }
    }
    V(this.q);
    V(this.p);
    V(this.o);
    V(this.r);
    i();
  }
  
  public boolean p()
  {
    boolean bool;
    if ((this.i.isEmpty()) && (this.k.isEmpty()) && (this.j.isEmpty()) && (this.h.isEmpty()) && (this.p.isEmpty()) && (this.q.isEmpty()) && (this.o.isEmpty()) && (this.r.isEmpty()) && (this.m.isEmpty()) && (this.l.isEmpty()) && (this.n.isEmpty())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void u()
  {
    boolean bool1 = this.h.isEmpty() ^ true;
    boolean bool2 = this.j.isEmpty() ^ true;
    boolean bool3 = this.k.isEmpty() ^ true;
    boolean bool4 = this.i.isEmpty() ^ true;
    if ((!bool1) && (!bool2) && (!bool4) && (!bool3)) {
      return;
    }
    Object localObject1 = this.h.iterator();
    while (((Iterator)localObject1).hasNext()) {
      U((RecyclerView.c0)((Iterator)localObject1).next());
    }
    this.h.clear();
    Object localObject2;
    if (bool2)
    {
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).addAll(this.j);
      this.m.add(localObject2);
      this.j.clear();
      localObject1 = new a((ArrayList)localObject2);
      if (bool1) {
        a0.e0(((j)((ArrayList)localObject2).get(0)).a.itemView, (Runnable)localObject1, o());
      } else {
        ((Runnable)localObject1).run();
      }
    }
    if (bool3)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.k);
      this.n.add(localObject1);
      this.k.clear();
      localObject2 = new b((ArrayList)localObject1);
      if (bool1) {
        a0.e0(((i)((ArrayList)localObject1).get(0)).a.itemView, (Runnable)localObject2, o());
      } else {
        ((Runnable)localObject2).run();
      }
    }
    if (bool4)
    {
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).addAll(this.i);
      this.l.add(localObject2);
      this.i.clear();
      localObject1 = new c((ArrayList)localObject2);
      if ((!bool1) && (!bool2) && (!bool3))
      {
        ((Runnable)localObject1).run();
      }
      else
      {
        long l1 = 0L;
        long l2;
        if (bool1) {
          l2 = o();
        } else {
          l2 = 0L;
        }
        if (bool2) {
          l3 = n();
        } else {
          l3 = 0L;
        }
        if (bool3) {
          l1 = m();
        }
        long l3 = Math.max(l3, l1);
        a0.e0(((RecyclerView.c0)((ArrayList)localObject2).get(0)).itemView, (Runnable)localObject1, l2 + l3);
      }
    }
  }
  
  public boolean x(RecyclerView.c0 paramc0)
  {
    a0(paramc0);
    paramc0.itemView.setAlpha(0.0F);
    this.i.add(paramc0);
    return true;
  }
  
  public boolean y(RecyclerView.c0 paramc01, RecyclerView.c0 paramc02, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramc01 == paramc02) {
      return z(paramc01, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    float f1 = paramc01.itemView.getTranslationX();
    float f2 = paramc01.itemView.getTranslationY();
    float f3 = paramc01.itemView.getAlpha();
    a0(paramc01);
    int i1 = (int)(paramInt3 - paramInt1 - f1);
    int i2 = (int)(paramInt4 - paramInt2 - f2);
    paramc01.itemView.setTranslationX(f1);
    paramc01.itemView.setTranslationY(f2);
    paramc01.itemView.setAlpha(f3);
    if (paramc02 != null)
    {
      a0(paramc02);
      paramc02.itemView.setTranslationX(-i1);
      paramc02.itemView.setTranslationY(-i2);
      paramc02.itemView.setAlpha(0.0F);
    }
    this.k.add(new i(paramc01, paramc02, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  public boolean z(RecyclerView.c0 paramc0, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = paramc0.itemView;
    paramInt1 += (int)localView.getTranslationX();
    int i1 = paramInt2 + (int)paramc0.itemView.getTranslationY();
    a0(paramc0);
    paramInt2 = paramInt3 - paramInt1;
    int i2 = paramInt4 - i1;
    if ((paramInt2 == 0) && (i2 == 0))
    {
      F(paramc0);
      return false;
    }
    if (paramInt2 != 0) {
      localView.setTranslationX(-paramInt2);
    }
    if (i2 != 0) {
      localView.setTranslationY(-i2);
    }
    this.j.add(new j(paramc0, paramInt1, i1, paramInt3, paramInt4));
    return true;
  }
  
  class a
    implements Runnable
  {
    a(ArrayList paramArrayList) {}
    
    public void run()
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        c.j localj = (c.j)localIterator.next();
        c.this.T(localj.a, localj.b, localj.c, localj.d, localj.e);
      }
      this.a.clear();
      c.this.m.remove(this.a);
    }
  }
  
  class b
    implements Runnable
  {
    b(ArrayList paramArrayList) {}
    
    public void run()
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        c.i locali = (c.i)localIterator.next();
        c.this.S(locali);
      }
      this.a.clear();
      c.this.n.remove(this.a);
    }
  }
  
  class c
    implements Runnable
  {
    c(ArrayList paramArrayList) {}
    
    public void run()
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        RecyclerView.c0 localc0 = (RecyclerView.c0)localIterator.next();
        c.this.R(localc0);
      }
      this.a.clear();
      c.this.l.remove(this.a);
    }
  }
  
  class d
    extends AnimatorListenerAdapter
  {
    d(RecyclerView.c0 paramc0, ViewPropertyAnimator paramViewPropertyAnimator, View paramView) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      localViewPropertyAnimator.setListener(null);
      localView.setAlpha(1.0F);
      c.this.H(paramc0);
      c.this.q.remove(paramc0);
      c.this.W();
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      c.this.I(paramc0);
    }
  }
  
  class e
    extends AnimatorListenerAdapter
  {
    e(RecyclerView.c0 paramc0, View paramView, ViewPropertyAnimator paramViewPropertyAnimator) {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      localView.setAlpha(1.0F);
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      localViewPropertyAnimator.setListener(null);
      c.this.B(paramc0);
      c.this.o.remove(paramc0);
      c.this.W();
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      c.this.C(paramc0);
    }
  }
  
  class f
    extends AnimatorListenerAdapter
  {
    f(RecyclerView.c0 paramc0, int paramInt1, View paramView, int paramInt2, ViewPropertyAnimator paramViewPropertyAnimator) {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      if (paramInt1 != 0) {
        localView.setTranslationX(0.0F);
      }
      if (paramInt2 != 0) {
        localView.setTranslationY(0.0F);
      }
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      localViewPropertyAnimator.setListener(null);
      c.this.F(paramc0);
      c.this.p.remove(paramc0);
      c.this.W();
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      c.this.G(paramc0);
    }
  }
  
  class g
    extends AnimatorListenerAdapter
  {
    g(c.i parami, ViewPropertyAnimator paramViewPropertyAnimator, View paramView) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      this.b.setListener(null);
      this.c.setAlpha(1.0F);
      this.c.setTranslationX(0.0F);
      this.c.setTranslationY(0.0F);
      c.this.D(parami.a, true);
      c.this.r.remove(parami.a);
      c.this.W();
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      c.this.E(parami.a, true);
    }
  }
  
  class h
    extends AnimatorListenerAdapter
  {
    h(c.i parami, ViewPropertyAnimator paramViewPropertyAnimator, View paramView) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      this.b.setListener(null);
      localView.setAlpha(1.0F);
      localView.setTranslationX(0.0F);
      localView.setTranslationY(0.0F);
      c.this.D(parami.b, false);
      c.this.r.remove(parami.b);
      c.this.W();
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      c.this.E(parami.b, false);
    }
  }
  
  private static class i
  {
    public RecyclerView.c0 a;
    public RecyclerView.c0 b;
    public int c;
    public int d;
    public int e;
    public int f;
    
    private i(RecyclerView.c0 paramc01, RecyclerView.c0 paramc02)
    {
      this.a = paramc01;
      this.b = paramc02;
    }
    
    i(RecyclerView.c0 paramc01, RecyclerView.c0 paramc02, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this(paramc01, paramc02);
      this.c = paramInt1;
      this.d = paramInt2;
      this.e = paramInt3;
      this.f = paramInt4;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ChangeInfo{oldHolder=");
      localStringBuilder.append(this.a);
      localStringBuilder.append(", newHolder=");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", fromX=");
      localStringBuilder.append(this.c);
      localStringBuilder.append(", fromY=");
      localStringBuilder.append(this.d);
      localStringBuilder.append(", toX=");
      localStringBuilder.append(this.e);
      localStringBuilder.append(", toY=");
      localStringBuilder.append(this.f);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  private static class j
  {
    public RecyclerView.c0 a;
    public int b;
    public int c;
    public int d;
    public int e;
    
    j(RecyclerView.c0 paramc0, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.a = paramc0;
      this.b = paramInt1;
      this.c = paramInt2;
      this.d = paramInt3;
      this.e = paramInt4;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.c
 * JD-Core Version:    0.7.0.1
 */