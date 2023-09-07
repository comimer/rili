package com.android.calendar.common;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.a0;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/common/i;", "Landroidx/recyclerview/widget/r;", "Landroidx/recyclerview/widget/RecyclerView$c0;", "holder", "Lkotlin/u;", "X", "", "Lcom/android/calendar/common/i$a;", "infoList", "item", "a0", "changeInfo", "b0", "", "c0", "h0", "u", "A", "x", "U", "", "fromX", "fromY", "toX", "toY", "z", "W", "oldHolder", "newHolder", "y", "V", "j", "p", "Z", "k", "", "viewHolders", "Y", "viewHolder", "", "payloads", "g", "Ljava/util/ArrayList;", "h", "Ljava/util/ArrayList;", "mPendingRemovals", "i", "mPendingAdditions", "Lcom/android/calendar/common/i$c;", "mPendingMoves", "mPendingChanges", "l", "getMAdditionsList", "()Ljava/util/ArrayList;", "setMAdditionsList", "(Ljava/util/ArrayList;)V", "mAdditionsList", "m", "getMMovesList", "setMMovesList", "mMovesList", "n", "getMChangesList", "setMChangesList", "mChangesList", "o", "d0", "setMAddAnimations", "mAddAnimations", "f0", "setMMoveAnimations", "mMoveAnimations", "q", "g0", "setMRemoveAnimations", "mRemoveAnimations", "r", "e0", "setMChangeAnimations", "mChangeAnimations", "<init>", "()V", "s", "a", "b", "c", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class i
  extends androidx.recyclerview.widget.r
{
  public static final b s = new b(null);
  private static TimeInterpolator t;
  private final ArrayList<RecyclerView.c0> h = new ArrayList();
  private final ArrayList<RecyclerView.c0> i = new ArrayList();
  private final ArrayList<c> j = new ArrayList();
  private final ArrayList<a> k = new ArrayList();
  private ArrayList<ArrayList<RecyclerView.c0>> l = new ArrayList();
  private ArrayList<ArrayList<c>> m = new ArrayList();
  private ArrayList<ArrayList<a>> n = new ArrayList();
  private ArrayList<RecyclerView.c0> o = new ArrayList();
  private ArrayList<RecyclerView.c0> p = new ArrayList();
  private ArrayList<RecyclerView.c0> q = new ArrayList();
  private ArrayList<RecyclerView.c0> r = new ArrayList();
  
  private final void X(final RecyclerView.c0 paramc0)
  {
    final View localView = paramc0.itemView;
    kotlin.jvm.internal.r.e(localView, "holder.itemView");
    final ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
    this.q.add(paramc0);
    localViewPropertyAnimator.setDuration(o()).scaleX(0.85F).scaleY(0.85F).alpha(0.0F).setListener(new h(this, paramc0, localViewPropertyAnimator, localView)).start();
  }
  
  private final void a0(List<a> paramList, RecyclerView.c0 paramc0)
  {
    int i1 = paramList.size() - 1;
    if (i1 >= 0) {
      for (;;)
      {
        int i2 = i1 - 1;
        a locala = (a)paramList.get(i1);
        if ((c0(locala, paramc0)) && (locala.d() == null) && (locala.c() == null)) {
          paramList.remove(locala);
        }
        if (i2 < 0) {
          break;
        }
        i1 = i2;
      }
    }
  }
  
  private final void b0(a parama)
  {
    if (parama.d() != null) {
      c0(parama, parama.d());
    }
    if (parama.c() != null) {
      c0(parama, parama.c());
    }
  }
  
  private final boolean c0(a parama, RecyclerView.c0 paramc0)
  {
    RecyclerView.c0 localc0 = parama.c();
    boolean bool = false;
    if (localc0 == paramc0)
    {
      parama.g(null);
    }
    else
    {
      if (parama.d() != paramc0) {
        break label74;
      }
      parama.h(null);
      bool = true;
    }
    kotlin.jvm.internal.r.c(paramc0);
    paramc0.itemView.setAlpha(1.0F);
    paramc0.itemView.setTranslationX(0.0F);
    paramc0.itemView.setTranslationY(0.0F);
    D(paramc0, bool);
    return true;
    label74:
    return false;
  }
  
  private final void h0(RecyclerView.c0 paramc0)
  {
    if (t == null) {
      t = new ValueAnimator().getInterpolator();
    }
    paramc0.itemView.animate().setInterpolator(t);
    j(paramc0);
  }
  
  private static final void i0(ArrayList paramArrayList, i parami)
  {
    kotlin.jvm.internal.r.f(paramArrayList, "$moves");
    kotlin.jvm.internal.r.f(parami, "this$0");
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      parami.W(localc.c(), localc.a(), localc.b(), localc.d(), localc.e());
    }
    paramArrayList.clear();
    parami.m.remove(paramArrayList);
  }
  
  private static final void j0(ArrayList paramArrayList, i parami)
  {
    kotlin.jvm.internal.r.f(paramArrayList, "$changes");
    kotlin.jvm.internal.r.f(parami, "this$0");
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      kotlin.jvm.internal.r.e(locala, "change");
      parami.V(locala);
    }
    paramArrayList.clear();
    parami.n.remove(paramArrayList);
  }
  
  private static final void k0(ArrayList paramArrayList, i parami)
  {
    kotlin.jvm.internal.r.f(paramArrayList, "$additions");
    kotlin.jvm.internal.r.f(parami, "this$0");
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      RecyclerView.c0 localc0 = (RecyclerView.c0)localIterator.next();
      kotlin.jvm.internal.r.e(localc0, "holder");
      parami.U(localc0);
    }
    paramArrayList.clear();
    parami.l.remove(paramArrayList);
  }
  
  public boolean A(RecyclerView.c0 paramc0)
  {
    kotlin.jvm.internal.r.f(paramc0, "holder");
    h0(paramc0);
    this.h.add(paramc0);
    return true;
  }
  
  public final void U(final RecyclerView.c0 paramc0)
  {
    kotlin.jvm.internal.r.f(paramc0, "holder");
    final View localView = paramc0.itemView;
    kotlin.jvm.internal.r.e(localView, "holder.itemView");
    final ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
    this.o.add(paramc0);
    localViewPropertyAnimator.alpha(1.0F).setDuration(l()).setListener(new d(this, paramc0, localView, localViewPropertyAnimator)).start();
  }
  
  public final void V(final a parama)
  {
    kotlin.jvm.internal.r.f(parama, "changeInfo");
    Object localObject1 = parama.d();
    final View localView = null;
    if (localObject1 != null) {
      localObject1 = ((RecyclerView.c0)localObject1).itemView;
    } else {
      localObject1 = null;
    }
    Object localObject2 = parama.c();
    if (localObject2 != null) {
      localView = ((RecyclerView.c0)localObject2).itemView;
    }
    if (localObject1 != null)
    {
      localObject2 = ((View)localObject1).animate().setDuration(m());
      kotlin.jvm.internal.r.e(localObject2, "view.animate().setDurati…          changeDuration)");
      this.r.add(parama.d());
      ((ViewPropertyAnimator)localObject2).translationX(parama.e() - parama.a());
      ((ViewPropertyAnimator)localObject2).translationY(parama.f() - parama.b());
      ((ViewPropertyAnimator)localObject2).alpha(0.0F).setListener(new e(this, parama, (ViewPropertyAnimator)localObject2, (View)localObject1)).start();
    }
    if (localView != null)
    {
      localObject1 = localView.animate();
      this.r.add(parama.c());
      ((ViewPropertyAnimator)localObject1).translationX(0.0F).translationY(0.0F).setDuration(m()).alpha(1.0F).setListener(new f(this, parama, (ViewPropertyAnimator)localObject1, localView)).start();
    }
  }
  
  public final void W(final RecyclerView.c0 paramc0, final int paramInt1, final int paramInt2, int paramInt3, int paramInt4)
  {
    kotlin.jvm.internal.r.f(paramc0, "holder");
    final View localView = paramc0.itemView;
    kotlin.jvm.internal.r.e(localView, "holder.itemView");
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
    localViewPropertyAnimator.setDuration(n()).setListener(new g(this, paramc0, paramInt1, localView, paramInt2, localViewPropertyAnimator)).start();
  }
  
  public final void Y(List<? extends RecyclerView.c0> paramList)
  {
    kotlin.jvm.internal.r.f(paramList, "viewHolders");
    int i1 = paramList.size() - 1;
    if (i1 >= 0) {
      for (;;)
      {
        int i2 = i1 - 1;
        Object localObject = paramList.get(i1);
        kotlin.jvm.internal.r.c(localObject);
        ((RecyclerView.c0)localObject).itemView.animate().cancel();
        if (i2 < 0) {
          break;
        }
        i1 = i2;
      }
    }
  }
  
  public final void Z()
  {
    if (!p()) {
      i();
    }
  }
  
  public final ArrayList<RecyclerView.c0> d0()
  {
    return this.o;
  }
  
  public final ArrayList<RecyclerView.c0> e0()
  {
    return this.r;
  }
  
  public final ArrayList<RecyclerView.c0> f0()
  {
    return this.p;
  }
  
  public boolean g(RecyclerView.c0 paramc0, List<? extends Object> paramList)
  {
    kotlin.jvm.internal.r.f(paramc0, "viewHolder");
    kotlin.jvm.internal.r.f(paramList, "payloads");
    boolean bool;
    if ((paramList.isEmpty()) && (!super.g(paramc0, paramList))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public final ArrayList<RecyclerView.c0> g0()
  {
    return this.q;
  }
  
  public void j(RecyclerView.c0 paramc0)
  {
    kotlin.jvm.internal.r.f(paramc0, "item");
    View localView = paramc0.itemView;
    kotlin.jvm.internal.r.e(localView, "item.itemView");
    localView.animate().cancel();
    int i1 = this.j.size() - 1;
    int i2;
    Object localObject;
    if (i1 >= 0) {
      for (;;)
      {
        i2 = i1 - 1;
        localObject = this.j.get(i1);
        kotlin.jvm.internal.r.e(localObject, "mPendingMoves[i]");
        if (((c)localObject).c() == paramc0)
        {
          localView.setTranslationY(0.0F);
          localView.setTranslationX(0.0F);
          F(paramc0);
          this.j.remove(i1);
        }
        if (i2 < 0) {
          break;
        }
        i1 = i2;
      }
    }
    a0(this.k, paramc0);
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
    i1 = this.n.size() - 1;
    if (i1 >= 0) {
      for (;;)
      {
        i2 = i1 - 1;
        localObject = this.n.get(i1);
        kotlin.jvm.internal.r.e(localObject, "mChangesList[i]");
        localObject = (ArrayList)localObject;
        a0((List)localObject, paramc0);
        if (((ArrayList)localObject).isEmpty()) {
          this.n.remove(i1);
        }
        if (i2 < 0) {
          break;
        }
        i1 = i2;
      }
    }
    i1 = this.m.size() - 1;
    if (i1 >= 0) {
      for (;;)
      {
        int i3 = i1 - 1;
        localObject = this.m.get(i1);
        kotlin.jvm.internal.r.e(localObject, "mMovesList[i]");
        ArrayList localArrayList = (ArrayList)localObject;
        i2 = localArrayList.size() - 1;
        if (i2 >= 0) {
          for (;;)
          {
            int i4 = i2 - 1;
            localObject = localArrayList.get(i2);
            kotlin.jvm.internal.r.e(localObject, "moves[j]");
            if (((c)localObject).c() == paramc0)
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
            if (i4 < 0) {
              break;
            }
            i2 = i4;
          }
        }
        if (i3 < 0) {
          break;
        }
        i1 = i3;
      }
    }
    i1 = this.l.size() - 1;
    if (i1 >= 0) {
      for (;;)
      {
        i2 = i1 - 1;
        localObject = this.l.get(i1);
        kotlin.jvm.internal.r.e(localObject, "mAdditionsList[i]");
        localObject = (ArrayList)localObject;
        if (((ArrayList)localObject).remove(paramc0))
        {
          localView.setAlpha(1.0F);
          B(paramc0);
          if (((ArrayList)localObject).isEmpty()) {
            this.l.remove(i1);
          }
        }
        if (i2 < 0) {
          break;
        }
        i1 = i2;
      }
    }
    this.q.remove(paramc0);
    this.o.remove(paramc0);
    this.r.remove(paramc0);
    this.p.remove(paramc0);
    Z();
  }
  
  public void k()
  {
    Object localObject1;
    Object localObject2;
    for (int i1 = this.j.size() - 1; -1 < i1; i1--)
    {
      localObject1 = this.j.get(i1);
      kotlin.jvm.internal.r.e(localObject1, "mPendingMoves[i]");
      localObject1 = (c)localObject1;
      localObject2 = ((c)localObject1).c().itemView;
      kotlin.jvm.internal.r.e(localObject2, "item.holder.itemView");
      ((View)localObject2).setTranslationY(0.0F);
      ((View)localObject2).setTranslationX(0.0F);
      F(((c)localObject1).c());
      this.j.remove(i1);
    }
    for (i1 = this.h.size() - 1; -1 < i1; i1--)
    {
      localObject1 = this.h.get(i1);
      kotlin.jvm.internal.r.e(localObject1, "mPendingRemovals[i]");
      H((RecyclerView.c0)localObject1);
      this.h.remove(i1);
    }
    for (i1 = this.i.size() - 1; -1 < i1; i1--)
    {
      localObject1 = this.i.get(i1);
      kotlin.jvm.internal.r.e(localObject1, "mPendingAdditions[i]");
      localObject1 = (RecyclerView.c0)localObject1;
      ((RecyclerView.c0)localObject1).itemView.setAlpha(1.0F);
      B((RecyclerView.c0)localObject1);
      this.i.remove(i1);
    }
    for (i1 = this.k.size() - 1; -1 < i1; i1--)
    {
      localObject1 = this.k.get(i1);
      kotlin.jvm.internal.r.e(localObject1, "mPendingChanges[i]");
      b0((a)localObject1);
    }
    this.k.clear();
    if (!p()) {
      return;
    }
    int i2;
    Object localObject3;
    for (i1 = this.m.size() - 1; -1 < i1; i1--)
    {
      localObject1 = this.m.get(i1);
      kotlin.jvm.internal.r.e(localObject1, "mMovesList[i]");
      localObject1 = (ArrayList)localObject1;
      for (i2 = ((ArrayList)localObject1).size() - 1; -1 < i2; i2--)
      {
        localObject2 = ((ArrayList)localObject1).get(i2);
        kotlin.jvm.internal.r.e(localObject2, "moves[j]");
        localObject3 = (c)localObject2;
        localObject2 = ((c)localObject3).c().itemView;
        kotlin.jvm.internal.r.e(localObject2, "item.itemView");
        ((View)localObject2).setTranslationY(0.0F);
        ((View)localObject2).setTranslationX(0.0F);
        F(((c)localObject3).c());
        ((ArrayList)localObject1).remove(i2);
        if (((ArrayList)localObject1).isEmpty()) {
          this.m.remove(localObject1);
        }
      }
    }
    for (i1 = this.l.size() - 1; -1 < i1; i1--)
    {
      localObject1 = this.l.get(i1);
      kotlin.jvm.internal.r.e(localObject1, "mAdditionsList[i]");
      localObject1 = (ArrayList)localObject1;
      for (i2 = ((ArrayList)localObject1).size() - 1; -1 < i2; i2--)
      {
        localObject2 = ((ArrayList)localObject1).get(i2);
        kotlin.jvm.internal.r.e(localObject2, "additions[j]");
        localObject2 = (RecyclerView.c0)localObject2;
        localObject3 = ((RecyclerView.c0)localObject2).itemView;
        kotlin.jvm.internal.r.e(localObject3, "item.itemView");
        ((View)localObject3).setAlpha(1.0F);
        B((RecyclerView.c0)localObject2);
        ((ArrayList)localObject1).remove(i2);
        if (((ArrayList)localObject1).isEmpty()) {
          this.l.remove(localObject1);
        }
      }
    }
    for (i1 = this.n.size() - 1; -1 < i1; i1--)
    {
      localObject1 = this.n.get(i1);
      kotlin.jvm.internal.r.e(localObject1, "mChangesList[i]");
      localObject2 = (ArrayList)localObject1;
      for (i2 = ((ArrayList)localObject2).size() - 1; -1 < i2; i2--)
      {
        localObject1 = ((ArrayList)localObject2).get(i2);
        kotlin.jvm.internal.r.e(localObject1, "changes[j]");
        b0((a)localObject1);
        if (((ArrayList)localObject2).isEmpty()) {
          this.n.remove(localObject2);
        }
      }
    }
    Y(this.q);
    Y(this.p);
    Y(this.o);
    Y(this.r);
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
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (RecyclerView.c0)((Iterator)localObject1).next();
      kotlin.jvm.internal.r.e(localObject2, "holder");
      X((RecyclerView.c0)localObject2);
    }
    this.h.clear();
    if (bool2)
    {
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).addAll(this.j);
      this.m.add(localObject2);
      this.j.clear();
      localObject1 = new f((ArrayList)localObject2, this);
      if (bool1)
      {
        localObject2 = ((c)((ArrayList)localObject2).get(0)).c().itemView;
        kotlin.jvm.internal.r.e(localObject2, "moves[0].holder.itemView");
        a0.e0((View)localObject2, (Runnable)localObject1, o());
      }
      else
      {
        ((Runnable)localObject1).run();
      }
    }
    if (bool3)
    {
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).addAll(this.k);
      this.n.add(localObject2);
      this.k.clear();
      localObject1 = new g((ArrayList)localObject2, this);
      if (bool1)
      {
        localObject2 = ((a)((ArrayList)localObject2).get(0)).d();
        kotlin.jvm.internal.r.c(localObject2);
        a0.e0(((RecyclerView.c0)localObject2).itemView, (Runnable)localObject1, o());
      }
      else
      {
        ((Runnable)localObject1).run();
      }
    }
    if (bool4)
    {
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).addAll(this.i);
      this.l.add(localObject2);
      this.i.clear();
      localObject1 = new h((ArrayList)localObject2, this);
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
        localObject2 = ((RecyclerView.c0)((ArrayList)localObject2).get(0)).itemView;
        kotlin.jvm.internal.r.e(localObject2, "additions[0].itemView");
        a0.e0((View)localObject2, (Runnable)localObject1, l2 + l3);
      }
    }
  }
  
  public boolean x(RecyclerView.c0 paramc0)
  {
    kotlin.jvm.internal.r.f(paramc0, "holder");
    h0(paramc0);
    paramc0.itemView.setAlpha(0.0F);
    this.i.add(paramc0);
    return true;
  }
  
  public boolean y(RecyclerView.c0 paramc01, RecyclerView.c0 paramc02, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    kotlin.jvm.internal.r.f(paramc01, "oldHolder");
    kotlin.jvm.internal.r.f(paramc02, "newHolder");
    if (paramc01 == paramc02) {
      return z(paramc01, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    float f1 = paramc01.itemView.getTranslationX();
    float f2 = paramc01.itemView.getTranslationY();
    float f3 = paramc01.itemView.getAlpha();
    h0(paramc01);
    int i1 = (int)(paramInt3 - paramInt1 - f1);
    int i2 = (int)(paramInt4 - paramInt2 - f2);
    paramc01.itemView.setTranslationX(f1);
    paramc01.itemView.setTranslationY(f2);
    paramc01.itemView.setAlpha(f3);
    h0(paramc02);
    paramc02.itemView.setTranslationX(-i1);
    paramc02.itemView.setTranslationY(-i2);
    paramc02.itemView.setAlpha(0.0F);
    this.k.add(new a(paramc01, paramc02, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  public boolean z(RecyclerView.c0 paramc0, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    kotlin.jvm.internal.r.f(paramc0, "holder");
    View localView = paramc0.itemView;
    kotlin.jvm.internal.r.e(localView, "holder.itemView");
    paramInt1 += (int)paramc0.itemView.getTranslationX();
    paramInt2 += (int)paramc0.itemView.getTranslationY();
    h0(paramc0);
    int i1 = paramInt3 - paramInt1;
    int i2 = paramInt4 - paramInt2;
    if ((i1 == 0) && (i2 == 0))
    {
      F(paramc0);
      return false;
    }
    if (i1 != 0) {
      localView.setTranslationX(-i1);
    }
    if (i2 != 0) {
      localView.setTranslationY(-i2);
    }
    this.j.add(new c(paramc0, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/common/i$a;", "", "", "toString", "Landroidx/recyclerview/widget/RecyclerView$c0;", "a", "Landroidx/recyclerview/widget/RecyclerView$c0;", "d", "()Landroidx/recyclerview/widget/RecyclerView$c0;", "h", "(Landroidx/recyclerview/widget/RecyclerView$c0;)V", "oldHolder", "b", "c", "g", "newHolder", "", "I", "()I", "setFromX", "(I)V", "fromX", "setFromY", "fromY", "e", "setToX", "toX", "f", "setToY", "toY", "<init>", "(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;)V", "(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;IIII)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    private RecyclerView.c0 a;
    private RecyclerView.c0 b;
    private int c;
    private int d;
    private int e;
    private int f;
    
    private a(RecyclerView.c0 paramc01, RecyclerView.c0 paramc02)
    {
      this.a = paramc01;
      this.b = paramc02;
    }
    
    public a(RecyclerView.c0 paramc01, RecyclerView.c0 paramc02, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this(paramc01, paramc02);
      this.c = paramInt1;
      this.d = paramInt2;
      this.e = paramInt3;
      this.f = paramInt4;
    }
    
    public final int a()
    {
      return this.c;
    }
    
    public final int b()
    {
      return this.d;
    }
    
    public final RecyclerView.c0 c()
    {
      return this.b;
    }
    
    public final RecyclerView.c0 d()
    {
      return this.a;
    }
    
    public final int e()
    {
      return this.e;
    }
    
    public final int f()
    {
      return this.f;
    }
    
    public final void g(RecyclerView.c0 paramc0)
    {
      this.b = paramc0;
    }
    
    public final void h(RecyclerView.c0 paramc0)
    {
      this.a = paramc0;
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
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/common/i$b;", "", "", "DEBUG", "Z", "Landroid/animation/TimeInterpolator;", "sDefaultInterpolator", "Landroid/animation/TimeInterpolator;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/common/i$c;", "", "Landroidx/recyclerview/widget/RecyclerView$c0;", "a", "Landroidx/recyclerview/widget/RecyclerView$c0;", "c", "()Landroidx/recyclerview/widget/RecyclerView$c0;", "setHolder", "(Landroidx/recyclerview/widget/RecyclerView$c0;)V", "holder", "", "b", "I", "()I", "setFromX", "(I)V", "fromX", "setFromY", "fromY", "d", "setToX", "toX", "e", "setToY", "toY", "<init>", "(Landroidx/recyclerview/widget/RecyclerView$c0;IIII)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c
  {
    private RecyclerView.c0 a;
    private int b;
    private int c;
    private int d;
    private int e;
    
    public c(RecyclerView.c0 paramc0, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.a = paramc0;
      this.b = paramInt1;
      this.c = paramInt2;
      this.d = paramInt3;
      this.e = paramInt4;
    }
    
    public final int a()
    {
      return this.b;
    }
    
    public final int b()
    {
      return this.c;
    }
    
    public final RecyclerView.c0 c()
    {
      return this.a;
    }
    
    public final int d()
    {
      return this.d;
    }
    
    public final int e()
    {
      return this.e;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/common/i$d", "Landroid/animation/AnimatorListenerAdapter;", "Landroid/animation/Animator;", "animator", "Lkotlin/u;", "onAnimationStart", "onAnimationCancel", "onAnimationEnd", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class d
    extends AnimatorListenerAdapter
  {
    d(i parami, RecyclerView.c0 paramc0, View paramView, ViewPropertyAnimator paramViewPropertyAnimator) {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      localView.setAlpha(1.0F);
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      localViewPropertyAnimator.setListener(null);
      this.a.B(paramc0);
      this.a.d0().remove(paramc0);
      this.a.Z();
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      this.a.C(paramc0);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/common/i$e", "Landroid/animation/AnimatorListenerAdapter;", "Landroid/animation/Animator;", "animator", "Lkotlin/u;", "onAnimationStart", "onAnimationEnd", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class e
    extends AnimatorListenerAdapter
  {
    e(i parami, i.a parama, ViewPropertyAnimator paramViewPropertyAnimator, View paramView) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      this.c.setListener(null);
      this.d.setAlpha(1.0F);
      this.d.setTranslationX(0.0F);
      this.d.setTranslationY(0.0F);
      this.a.D(parama.d(), true);
      this.a.e0().remove(parama.d());
      this.a.Z();
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      this.a.E(parama.d(), true);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/common/i$f", "Landroid/animation/AnimatorListenerAdapter;", "Landroid/animation/Animator;", "animator", "Lkotlin/u;", "onAnimationStart", "onAnimationEnd", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class f
    extends AnimatorListenerAdapter
  {
    f(i parami, i.a parama, ViewPropertyAnimator paramViewPropertyAnimator, View paramView) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      this.c.setListener(null);
      localView.setAlpha(1.0F);
      localView.setTranslationX(0.0F);
      localView.setTranslationY(0.0F);
      this.a.D(parama.c(), false);
      this.a.e0().remove(parama.c());
      this.a.Z();
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      this.a.E(parama.c(), false);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/common/i$g", "Landroid/animation/AnimatorListenerAdapter;", "Landroid/animation/Animator;", "animator", "Lkotlin/u;", "onAnimationStart", "onAnimationCancel", "onAnimationEnd", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class g
    extends AnimatorListenerAdapter
  {
    g(i parami, RecyclerView.c0 paramc0, int paramInt1, View paramView, int paramInt2, ViewPropertyAnimator paramViewPropertyAnimator) {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      if (paramInt1 != 0) {
        localView.setTranslationX(0.0F);
      }
      if (paramInt2 != 0) {
        localView.setTranslationY(0.0F);
      }
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      localViewPropertyAnimator.setListener(null);
      this.a.F(paramc0);
      this.a.f0().remove(paramc0);
      this.a.Z();
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      this.a.G(paramc0);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/common/i$h", "Landroid/animation/AnimatorListenerAdapter;", "Landroid/animation/Animator;", "animator", "Lkotlin/u;", "onAnimationStart", "onAnimationEnd", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class h
    extends AnimatorListenerAdapter
  {
    h(i parami, RecyclerView.c0 paramc0, ViewPropertyAnimator paramViewPropertyAnimator, View paramView) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      localViewPropertyAnimator.setListener(null);
      localView.setAlpha(1.0F);
      this.a.H(paramc0);
      this.a.g0().remove(paramc0);
      this.a.Z();
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      kotlin.jvm.internal.r.f(paramAnimator, "animator");
      this.a.I(paramc0);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.i
 * JD-Core Version:    0.7.0.1
 */