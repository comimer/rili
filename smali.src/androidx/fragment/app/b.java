package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import androidx.core.os.e.b;
import androidx.core.util.h;
import androidx.core.view.a0;
import androidx.core.view.x;
import androidx.core.view.x0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import n.a;
import n.g;

class b
  extends SpecialEffectsController
{
  b(ViewGroup paramViewGroup)
  {
    super(paramViewGroup);
  }
  
  private void w(List<k> paramList, final List<SpecialEffectsController.Operation> paramList1, boolean paramBoolean, final Map<SpecialEffectsController.Operation, Boolean> paramMap)
  {
    final ViewGroup localViewGroup = m();
    Context localContext = localViewGroup.getContext();
    Object localObject1 = new ArrayList();
    paramList = paramList.iterator();
    int i = 0;
    Object localObject2;
    while (paramList.hasNext())
    {
      localObject2 = (k)paramList.next();
      if (((l)localObject2).d()) {
        ((l)localObject2).a();
      }
      Object localObject4;
      for (;;)
      {
        break;
        localObject3 = ((k)localObject2).e(localContext);
        if (localObject3 == null)
        {
          ((l)localObject2).a();
        }
        else
        {
          localObject4 = ((e.d)localObject3).b;
          if (localObject4 != null) {
            break label113;
          }
          ((ArrayList)localObject1).add(localObject2);
        }
      }
      label113:
      final SpecialEffectsController.Operation localOperation = ((l)localObject2).b();
      Object localObject3 = localOperation.f();
      if (Boolean.TRUE.equals(paramMap.get(localOperation)))
      {
        if (FragmentManager.H0(2))
        {
          localObject4 = new StringBuilder();
          ((StringBuilder)localObject4).append("Ignoring Animator set on ");
          ((StringBuilder)localObject4).append(localObject3);
          ((StringBuilder)localObject4).append(" as this Fragment was involved in a Transition.");
          Log.v("FragmentManager", ((StringBuilder)localObject4).toString());
        }
        ((l)localObject2).a();
      }
      else
      {
        final boolean bool;
        if (localOperation.e() == SpecialEffectsController.Operation.State.GONE) {
          bool = true;
        } else {
          bool = false;
        }
        if (bool) {
          paramList1.remove(localOperation);
        }
        localObject3 = ((Fragment)localObject3).mView;
        localViewGroup.startViewTransition((View)localObject3);
        ((Animator)localObject4).addListener(new c(localViewGroup, (View)localObject3, bool, localOperation, (k)localObject2));
        ((Animator)localObject4).setTarget(localObject3);
        ((Animator)localObject4).start();
        ((l)localObject2).c().c(new d((Animator)localObject4));
        i = 1;
      }
    }
    paramList = ((ArrayList)localObject1).iterator();
    while (paramList.hasNext())
    {
      paramList1 = (k)paramList.next();
      localObject1 = paramList1.b();
      paramMap = ((SpecialEffectsController.Operation)localObject1).f();
      if (paramBoolean)
      {
        if (FragmentManager.H0(2))
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("Ignoring Animation set on ");
          ((StringBuilder)localObject1).append(paramMap);
          ((StringBuilder)localObject1).append(" as Animations cannot run alongside Transitions.");
          Log.v("FragmentManager", ((StringBuilder)localObject1).toString());
        }
        paramList1.a();
      }
      else if (i != 0)
      {
        if (FragmentManager.H0(2))
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("Ignoring Animation set on ");
          ((StringBuilder)localObject1).append(paramMap);
          ((StringBuilder)localObject1).append(" as Animations cannot run alongside Animators.");
          Log.v("FragmentManager", ((StringBuilder)localObject1).toString());
        }
        paramList1.a();
      }
      else
      {
        paramMap = paramMap.mView;
        localObject2 = (Animation)h.g(((e.d)h.g(paramList1.e(localContext))).a);
        if (((SpecialEffectsController.Operation)localObject1).e() != SpecialEffectsController.Operation.State.REMOVED)
        {
          paramMap.startAnimation((Animation)localObject2);
          paramList1.a();
        }
        else
        {
          localViewGroup.startViewTransition(paramMap);
          localObject1 = new e.e((Animation)localObject2, localViewGroup, paramMap);
          ((Animation)localObject1).setAnimationListener(new e(localViewGroup, paramMap, paramList1));
          paramMap.startAnimation((Animation)localObject1);
        }
        paramList1.c().c(new f(paramMap, localViewGroup, paramList1));
      }
    }
  }
  
  private Map<SpecialEffectsController.Operation, Boolean> x(List<m> paramList, List<SpecialEffectsController.Operation> paramList1, final boolean paramBoolean, final SpecialEffectsController.Operation paramOperation1, final SpecialEffectsController.Operation paramOperation2)
  {
    Object localObject1 = paramOperation1;
    Object localObject2 = paramOperation2;
    HashMap localHashMap = new HashMap();
    Object localObject3 = paramList.iterator();
    Object localObject4 = null;
    while (((Iterator)localObject3).hasNext())
    {
      localObject5 = (m)((Iterator)localObject3).next();
      if (!((l)localObject5).d())
      {
        localObject6 = ((m)localObject5).e();
        if (localObject4 == null)
        {
          localObject4 = localObject6;
        }
        else if ((localObject6 != null) && (localObject4 != localObject6))
        {
          paramList = new StringBuilder();
          paramList.append("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
          paramList.append(((l)localObject5).b().f());
          paramList.append(" returned Transition ");
          paramList.append(((m)localObject5).h());
          paramList.append(" which uses a different Transition  type than other Fragments.");
          throw new IllegalArgumentException(paramList.toString());
        }
      }
    }
    if (localObject4 == null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        paramList1 = (m)paramList.next();
        localHashMap.put(paramList1.b(), Boolean.FALSE);
        paramList1.a();
      }
      return localHashMap;
    }
    localObject3 = new View(m().getContext());
    final Rect localRect = new Rect();
    Object localObject5 = new ArrayList();
    Object localObject6 = new ArrayList();
    a locala = new a();
    Object localObject7 = paramList.iterator();
    Object localObject8 = null;
    Object localObject9 = null;
    int i = 0;
    final Object localObject10 = localObject4;
    localObject4 = localObject9;
    int j;
    Object localObject13;
    for (;;)
    {
      boolean bool = paramBoolean;
      if (!((Iterator)localObject7).hasNext()) {
        break;
      }
      localObject9 = (m)((Iterator)localObject7).next();
      if ((((m)localObject9).i()) && (localObject1 != null) && (localObject2 != null))
      {
        localObject9 = localObject10.B(localObject10.g(((m)localObject9).g()));
        localObject11 = paramOperation2.f().getSharedElementSourceNames();
        localObject12 = paramOperation1.f().getSharedElementSourceNames();
        localObject8 = paramOperation1.f().getSharedElementTargetNames();
        for (j = 0; j < ((ArrayList)localObject8).size(); j++)
        {
          k = ((ArrayList)localObject11).indexOf(((ArrayList)localObject8).get(j));
          if (k != -1) {
            ((ArrayList)localObject11).set(k, ((ArrayList)localObject12).get(j));
          }
        }
        localObject8 = paramOperation2.f().getSharedElementTargetNames();
        if (!bool)
        {
          paramOperation1.f().getExitTransitionCallback();
          paramOperation2.f().getEnterTransitionCallback();
        }
        else
        {
          paramOperation1.f().getEnterTransitionCallback();
          paramOperation2.f().getExitTransitionCallback();
        }
        int k = ((ArrayList)localObject11).size();
        for (j = 0; j < k; j++) {
          locala.put((String)((ArrayList)localObject11).get(j), (String)((ArrayList)localObject8).get(j));
        }
        localObject13 = new a();
        u((Map)localObject13, paramOperation1.f().mView);
        ((a)localObject13).r((Collection)localObject11);
        locala.r(((a)localObject13).keySet());
        localObject12 = new a();
        u((Map)localObject12, paramOperation2.f().mView);
        ((a)localObject12).r((Collection)localObject8);
        ((a)localObject12).r(locala.values());
        t.x(locala, (a)localObject12);
        v((a)localObject13, locala.keySet());
        v((a)localObject12, locala.values());
        if (locala.isEmpty())
        {
          ((ArrayList)localObject5).clear();
          ((ArrayList)localObject6).clear();
          localObject8 = null;
        }
        else
        {
          t.f(paramOperation2.f(), paramOperation1.f(), bool, (a)localObject13, true);
          x.a(m(), new g(paramOperation2, paramOperation1, paramBoolean, (a)localObject12));
          ((ArrayList)localObject5).addAll(((a)localObject13).values());
          if (!((ArrayList)localObject11).isEmpty())
          {
            localObject4 = (View)((g)localObject13).get((String)((ArrayList)localObject11).get(0));
            localObject10.v(localObject9, (View)localObject4);
          }
          localObject1 = ((a)localObject12).values();
          localObject2 = localObject6;
          ((ArrayList)localObject2).addAll((Collection)localObject1);
          j = i;
          if (!((ArrayList)localObject8).isEmpty())
          {
            localObject1 = (View)((g)localObject12).get((String)((ArrayList)localObject8).get(0));
            j = i;
            if (localObject1 != null)
            {
              x.a(m(), new h(localObject10, (View)localObject1, localRect));
              j = 1;
            }
          }
          localObject10.z(localObject9, (View)localObject3, (ArrayList)localObject5);
          localObject10.t(localObject9, null, null, null, null, localObject9, (ArrayList)localObject2);
          localObject8 = Boolean.TRUE;
          localObject1 = paramOperation1;
          localHashMap.put(localObject1, localObject8);
          localObject2 = paramOperation2;
          localHashMap.put(localObject2, localObject8);
          localObject8 = localObject9;
          i = j;
        }
      }
    }
    paramOperation1 = (SpecialEffectsController.Operation)localObject4;
    localObject4 = localObject6;
    localObject6 = localObject5;
    localObject5 = localObject3;
    Object localObject12 = new ArrayList();
    Object localObject11 = paramList.iterator();
    localObject9 = null;
    paramOperation2 = null;
    localObject3 = paramOperation1;
    paramOperation1 = (SpecialEffectsController.Operation)localObject9;
    while (((Iterator)localObject11).hasNext())
    {
      m localm = (m)((Iterator)localObject11).next();
      if (localm.d())
      {
        localHashMap.put(localm.b(), Boolean.FALSE);
        localm.a();
      }
      else
      {
        localObject13 = localObject10.g(localm.h());
        localObject9 = localm.b();
        if ((localObject8 != null) && ((localObject9 == localObject1) || (localObject9 == localObject2))) {
          j = 1;
        } else {
          j = 0;
        }
        if (localObject13 == null)
        {
          if (j == 0)
          {
            localHashMap.put(localObject9, Boolean.FALSE);
            localm.a();
          }
        }
        else
        {
          final ArrayList localArrayList1 = new ArrayList();
          t(localArrayList1, ((SpecialEffectsController.Operation)localObject9).f().mView);
          if (j != 0) {
            if (localObject9 == localObject1) {
              localArrayList1.removeAll((Collection)localObject6);
            } else {
              localArrayList1.removeAll((Collection)localObject4);
            }
          }
          if (localArrayList1.isEmpty())
          {
            localObject10.a(localObject13, (View)localObject5);
          }
          else
          {
            localObject10.b(localObject13, localArrayList1);
            localObject10.t(localObject13, localObject13, localArrayList1, null, null, null, null);
            if (((SpecialEffectsController.Operation)localObject9).e() == SpecialEffectsController.Operation.State.GONE)
            {
              localObject7 = localObject9;
              paramList1.remove(localObject7);
              ArrayList localArrayList2 = new ArrayList(localArrayList1);
              localArrayList2.remove(((SpecialEffectsController.Operation)localObject7).f().mView);
              localObject10.r(localObject13, ((SpecialEffectsController.Operation)localObject7).f().mView, localArrayList2);
              x.a(m(), new i(localArrayList1));
            }
          }
          if (((SpecialEffectsController.Operation)localObject9).e() == SpecialEffectsController.Operation.State.VISIBLE)
          {
            ((ArrayList)localObject12).addAll(localArrayList1);
            if (i != 0) {
              localObject10.u(localObject13, localRect);
            }
          }
          else
          {
            localObject10.v(localObject13, (View)localObject3);
          }
          localHashMap.put(localObject9, Boolean.TRUE);
          if (localm.j()) {
            paramOperation2 = localObject10.n(paramOperation2, localObject13, null);
          } else {
            paramOperation1 = localObject10.n(paramOperation1, localObject13, null);
          }
        }
      }
    }
    paramList1 = localObject10.m(paramOperation2, paramOperation1, localObject8);
    paramOperation2 = paramList.iterator();
    while (paramOperation2.hasNext())
    {
      paramOperation1 = (m)paramOperation2.next();
      if (!paramOperation1.d())
      {
        localObject3 = paramOperation1.h();
        paramList = paramOperation1.b();
        if ((localObject8 != null) && ((paramList == localObject1) || (paramList == localObject2))) {
          i = 1;
        } else {
          i = 0;
        }
        if ((localObject3 != null) || (i != 0)) {
          if (!a0.P(m()))
          {
            if (FragmentManager.H0(2))
            {
              localObject3 = new StringBuilder();
              ((StringBuilder)localObject3).append("SpecialEffectsController: Container ");
              ((StringBuilder)localObject3).append(m());
              ((StringBuilder)localObject3).append(" has not been laid out. Completing operation ");
              ((StringBuilder)localObject3).append(paramList);
              Log.v("FragmentManager", ((StringBuilder)localObject3).toString());
            }
            paramOperation1.a();
          }
          else
          {
            localObject10.w(paramOperation1.b().f(), paramList1, paramOperation1.c(), new j(paramOperation1));
          }
        }
      }
    }
    if (!a0.P(m())) {
      return localHashMap;
    }
    t.A((ArrayList)localObject12, 4);
    paramList = localObject10.o((ArrayList)localObject4);
    localObject10.c(m(), paramList1);
    localObject10.y(m(), (ArrayList)localObject6, (ArrayList)localObject4, paramList, locala);
    t.A((ArrayList)localObject12, 0);
    localObject10.A(localObject8, (ArrayList)localObject6, (ArrayList)localObject4);
    return localHashMap;
  }
  
  void f(List<SpecialEffectsController.Operation> paramList, boolean paramBoolean)
  {
    Object localObject1 = paramList.iterator();
    Object localObject2 = null;
    Object localObject3 = localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject4 = (SpecialEffectsController.Operation)((Iterator)localObject1).next();
      localObject5 = SpecialEffectsController.Operation.State.from(((SpecialEffectsController.Operation)localObject4).f().mView);
      int i = a.a[localObject4.e().ordinal()];
      if ((i != 1) && (i != 2) && (i != 3))
      {
        if ((i == 4) && (localObject5 != SpecialEffectsController.Operation.State.VISIBLE)) {
          localObject3 = localObject4;
        }
      }
      else if ((localObject5 == SpecialEffectsController.Operation.State.VISIBLE) && (localObject2 == null)) {
        localObject2 = localObject4;
      }
    }
    localObject1 = new ArrayList();
    Object localObject5 = new ArrayList();
    Object localObject4 = new ArrayList(paramList);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      final SpecialEffectsController.Operation localOperation = (SpecialEffectsController.Operation)paramList.next();
      androidx.core.os.e locale = new androidx.core.os.e();
      localOperation.j(locale);
      ((List)localObject1).add(new k(localOperation, locale, paramBoolean));
      locale = new androidx.core.os.e();
      localOperation.j(locale);
      boolean bool = false;
      if (paramBoolean ? localOperation == localObject2 : localOperation == localObject3) {
        bool = true;
      }
      ((List)localObject5).add(new m(localOperation, locale, paramBoolean, bool));
      localOperation.a(new b((List)localObject4, localOperation));
    }
    paramList = x((List)localObject5, (List)localObject4, paramBoolean, localObject2, localObject3);
    w((List)localObject1, (List)localObject4, paramList.containsValue(Boolean.TRUE), paramList);
    paramList = ((List)localObject4).iterator();
    while (paramList.hasNext()) {
      s((SpecialEffectsController.Operation)paramList.next());
    }
    ((List)localObject4).clear();
  }
  
  void s(SpecialEffectsController.Operation paramOperation)
  {
    View localView = paramOperation.f().mView;
    paramOperation.e().applyState(localView);
  }
  
  void t(ArrayList<View> paramArrayList, View paramView)
  {
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      if (x0.a(localViewGroup))
      {
        if (!paramArrayList.contains(paramView)) {
          paramArrayList.add(localViewGroup);
        }
      }
      else
      {
        int i = localViewGroup.getChildCount();
        for (int j = 0; j < i; j++)
        {
          paramView = localViewGroup.getChildAt(j);
          if (paramView.getVisibility() == 0) {
            t(paramArrayList, paramView);
          }
        }
      }
    }
    else if (!paramArrayList.contains(paramView))
    {
      paramArrayList.add(paramView);
    }
  }
  
  void u(Map<String, View> paramMap, View paramView)
  {
    Object localObject = a0.H(paramView);
    if (localObject != null) {
      paramMap.put(localObject, paramView);
    }
    if ((paramView instanceof ViewGroup))
    {
      localObject = (ViewGroup)paramView;
      int i = ((ViewGroup)localObject).getChildCount();
      for (int j = 0; j < i; j++)
      {
        paramView = ((ViewGroup)localObject).getChildAt(j);
        if (paramView.getVisibility() == 0) {
          u(paramMap, paramView);
        }
      }
    }
  }
  
  void v(a<String, View> parama, Collection<String> paramCollection)
  {
    parama = parama.entrySet().iterator();
    while (parama.hasNext()) {
      if (!paramCollection.contains(a0.H((View)((Map.Entry)parama.next()).getValue()))) {
        parama.remove();
      }
    }
  }
  
  class b
    implements Runnable
  {
    b(List paramList, SpecialEffectsController.Operation paramOperation) {}
    
    public void run()
    {
      if (this.a.contains(localOperation))
      {
        this.a.remove(localOperation);
        b.this.s(localOperation);
      }
    }
  }
  
  class c
    extends AnimatorListenerAdapter
  {
    c(ViewGroup paramViewGroup, View paramView, boolean paramBoolean, SpecialEffectsController.Operation paramOperation, b.k paramk) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      localViewGroup.endViewTransition(this.b);
      if (bool) {
        localOperation.e().applyState(this.b);
      }
      this.e.a();
    }
  }
  
  class d
    implements e.b
  {
    d(Animator paramAnimator) {}
    
    public void onCancel()
    {
      this.a.end();
    }
  }
  
  class e
    implements Animation.AnimationListener
  {
    e(ViewGroup paramViewGroup, View paramView, b.k paramk) {}
    
    public void onAnimationEnd(Animation paramAnimation)
    {
      localViewGroup.post(new a());
    }
    
    public void onAnimationRepeat(Animation paramAnimation) {}
    
    public void onAnimationStart(Animation paramAnimation) {}
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        b.e locale = b.e.this;
        locale.a.endViewTransition(locale.b);
        b.e.this.c.a();
      }
    }
  }
  
  class f
    implements e.b
  {
    f(View paramView, ViewGroup paramViewGroup, b.k paramk) {}
    
    public void onCancel()
    {
      paramMap.clearAnimation();
      localViewGroup.endViewTransition(paramMap);
      paramList1.a();
    }
  }
  
  class g
    implements Runnable
  {
    g(SpecialEffectsController.Operation paramOperation1, SpecialEffectsController.Operation paramOperation2, boolean paramBoolean, a parama) {}
    
    public void run()
    {
      t.f(paramOperation2.f(), paramOperation1.f(), paramBoolean, this.d, false);
    }
  }
  
  class h
    implements Runnable
  {
    h(v paramv, View paramView, Rect paramRect) {}
    
    public void run()
    {
      localObject10.k(this.b, localRect);
    }
  }
  
  class i
    implements Runnable
  {
    i(ArrayList paramArrayList) {}
    
    public void run()
    {
      t.A(localArrayList1, 4);
    }
  }
  
  class j
    implements Runnable
  {
    j(b.m paramm) {}
    
    public void run()
    {
      paramOperation1.a();
    }
  }
  
  private static class k
    extends b.l
  {
    private boolean c;
    private boolean d = false;
    private e.d e;
    
    k(SpecialEffectsController.Operation paramOperation, androidx.core.os.e parame, boolean paramBoolean)
    {
      super(parame);
      this.c = paramBoolean;
    }
    
    e.d e(Context paramContext)
    {
      if (this.d) {
        return this.e;
      }
      Fragment localFragment = b().f();
      boolean bool;
      if (b().e() == SpecialEffectsController.Operation.State.VISIBLE) {
        bool = true;
      } else {
        bool = false;
      }
      paramContext = e.c(paramContext, localFragment, bool, this.c);
      this.e = paramContext;
      this.d = true;
      return paramContext;
    }
  }
  
  private static class l
  {
    private final SpecialEffectsController.Operation a;
    private final androidx.core.os.e b;
    
    l(SpecialEffectsController.Operation paramOperation, androidx.core.os.e parame)
    {
      this.a = paramOperation;
      this.b = parame;
    }
    
    void a()
    {
      this.a.d(this.b);
    }
    
    SpecialEffectsController.Operation b()
    {
      return this.a;
    }
    
    androidx.core.os.e c()
    {
      return this.b;
    }
    
    boolean d()
    {
      SpecialEffectsController.Operation.State localState1 = SpecialEffectsController.Operation.State.from(this.a.f().mView);
      SpecialEffectsController.Operation.State localState2 = this.a.e();
      if (localState1 != localState2)
      {
        SpecialEffectsController.Operation.State localState3 = SpecialEffectsController.Operation.State.VISIBLE;
        if ((localState1 == localState3) || (localState2 == localState3))
        {
          bool = false;
          break label53;
        }
      }
      boolean bool = true;
      label53:
      return bool;
    }
  }
  
  private static class m
    extends b.l
  {
    private final Object c;
    private final boolean d;
    private final Object e;
    
    m(SpecialEffectsController.Operation paramOperation, androidx.core.os.e parame, boolean paramBoolean1, boolean paramBoolean2)
    {
      super(parame);
      if (paramOperation.e() == SpecialEffectsController.Operation.State.VISIBLE)
      {
        if (paramBoolean1) {
          parame = paramOperation.f().getReenterTransition();
        } else {
          parame = paramOperation.f().getEnterTransition();
        }
        this.c = parame;
        boolean bool;
        if (paramBoolean1) {
          bool = paramOperation.f().getAllowReturnTransitionOverlap();
        } else {
          bool = paramOperation.f().getAllowEnterTransitionOverlap();
        }
        this.d = bool;
      }
      else
      {
        if (paramBoolean1) {
          parame = paramOperation.f().getReturnTransition();
        } else {
          parame = paramOperation.f().getExitTransition();
        }
        this.c = parame;
        this.d = true;
      }
      if (paramBoolean2)
      {
        if (paramBoolean1) {
          this.e = paramOperation.f().getSharedElementReturnTransition();
        } else {
          this.e = paramOperation.f().getSharedElementEnterTransition();
        }
      }
      else {
        this.e = null;
      }
    }
    
    private v f(Object paramObject)
    {
      if (paramObject == null) {
        return null;
      }
      Object localObject = t.b;
      if ((localObject != null) && (((v)localObject).e(paramObject))) {
        return localObject;
      }
      localObject = t.c;
      if ((localObject != null) && (((v)localObject).e(paramObject))) {
        return localObject;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Transition ");
      ((StringBuilder)localObject).append(paramObject);
      ((StringBuilder)localObject).append(" for fragment ");
      ((StringBuilder)localObject).append(b().f());
      ((StringBuilder)localObject).append(" is not a valid framework Transition or AndroidX Transition");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    
    v e()
    {
      Object localObject = f(this.c);
      v localv = f(this.e);
      if ((localObject != null) && (localv != null) && (localObject != localv))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
        ((StringBuilder)localObject).append(b().f());
        ((StringBuilder)localObject).append(" returned Transition ");
        ((StringBuilder)localObject).append(this.c);
        ((StringBuilder)localObject).append(" which uses a different Transition  type than its shared element transition ");
        ((StringBuilder)localObject).append(this.e);
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      if (localObject == null) {
        localObject = localv;
      }
      return localObject;
    }
    
    public Object g()
    {
      return this.e;
    }
    
    Object h()
    {
      return this.c;
    }
    
    public boolean i()
    {
      boolean bool;
      if (this.e != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean j()
    {
      return this.d;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.b
 * JD-Core Version:    0.7.0.1
 */