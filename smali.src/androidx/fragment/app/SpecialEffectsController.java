package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.e;
import androidx.core.os.e.b;
import androidx.core.view.a0;
import d0.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

abstract class SpecialEffectsController
{
  private final ViewGroup a;
  final ArrayList<Operation> b = new ArrayList();
  final ArrayList<Operation> c = new ArrayList();
  boolean d = false;
  boolean e = false;
  
  SpecialEffectsController(ViewGroup paramViewGroup)
  {
    this.a = paramViewGroup;
  }
  
  private void a(SpecialEffectsController.Operation.State paramState, SpecialEffectsController.Operation.LifecycleImpact paramLifecycleImpact, q paramq)
  {
    synchronized (this.b)
    {
      e locale = new androidx/core/os/e;
      locale.<init>();
      Object localObject = h(paramq.k());
      if (localObject != null)
      {
        ((Operation)localObject).k(paramState, paramLifecycleImpact);
        return;
      }
      localObject = new androidx/fragment/app/SpecialEffectsController$d;
      ((d)localObject).<init>(paramState, paramLifecycleImpact, paramq, locale);
      this.b.add(localObject);
      paramState = new androidx/fragment/app/SpecialEffectsController$a;
      paramState.<init>(this, (d)localObject);
      ((Operation)localObject).a(paramState);
      paramState = new androidx/fragment/app/SpecialEffectsController$b;
      paramState.<init>(this, (d)localObject);
      ((Operation)localObject).a(paramState);
      return;
    }
  }
  
  private Operation h(Fragment paramFragment)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      Operation localOperation = (Operation)localIterator.next();
      if ((localOperation.f().equals(paramFragment)) && (!localOperation.h())) {
        return localOperation;
      }
    }
    return null;
  }
  
  private Operation i(Fragment paramFragment)
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      Operation localOperation = (Operation)localIterator.next();
      if ((localOperation.f().equals(paramFragment)) && (!localOperation.h())) {
        return localOperation;
      }
    }
    return null;
  }
  
  static SpecialEffectsController n(ViewGroup paramViewGroup, FragmentManager paramFragmentManager)
  {
    return o(paramViewGroup, paramFragmentManager.A0());
  }
  
  static SpecialEffectsController o(ViewGroup paramViewGroup, y paramy)
  {
    int i = b.b;
    Object localObject = paramViewGroup.getTag(i);
    if ((localObject instanceof SpecialEffectsController)) {
      return (SpecialEffectsController)localObject;
    }
    paramy = paramy.a(paramViewGroup);
    paramViewGroup.setTag(i, paramy);
    return paramy;
  }
  
  private void q()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      Operation localOperation = (Operation)localIterator.next();
      if (localOperation.g() == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
        localOperation.k(SpecialEffectsController.Operation.State.from(localOperation.f().requireView().getVisibility()), SpecialEffectsController.Operation.LifecycleImpact.NONE);
      }
    }
  }
  
  void b(SpecialEffectsController.Operation.State paramState, q paramq)
  {
    if (FragmentManager.H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("SpecialEffectsController: Enqueuing add operation for fragment ");
      localStringBuilder.append(paramq.k());
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    a(paramState, SpecialEffectsController.Operation.LifecycleImpact.ADDING, paramq);
  }
  
  void c(q paramq)
  {
    if (FragmentManager.H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("SpecialEffectsController: Enqueuing hide operation for fragment ");
      localStringBuilder.append(paramq.k());
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    a(SpecialEffectsController.Operation.State.GONE, SpecialEffectsController.Operation.LifecycleImpact.NONE, paramq);
  }
  
  void d(q paramq)
  {
    if (FragmentManager.H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("SpecialEffectsController: Enqueuing remove operation for fragment ");
      localStringBuilder.append(paramq.k());
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    a(SpecialEffectsController.Operation.State.REMOVED, SpecialEffectsController.Operation.LifecycleImpact.REMOVING, paramq);
  }
  
  void e(q paramq)
  {
    if (FragmentManager.H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("SpecialEffectsController: Enqueuing show operation for fragment ");
      localStringBuilder.append(paramq.k());
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    a(SpecialEffectsController.Operation.State.VISIBLE, SpecialEffectsController.Operation.LifecycleImpact.NONE, paramq);
  }
  
  abstract void f(List<Operation> paramList, boolean paramBoolean);
  
  void g()
  {
    if (this.e) {
      return;
    }
    if (!a0.O(this.a))
    {
      j();
      this.d = false;
      return;
    }
    synchronized (this.b)
    {
      if (!this.b.isEmpty())
      {
        Object localObject1 = new java/util/ArrayList;
        ((ArrayList)localObject1).<init>(this.c);
        this.c.clear();
        localObject1 = ((ArrayList)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          Operation localOperation = (Operation)((Iterator)localObject1).next();
          if (FragmentManager.H0(2))
          {
            localObject3 = new java/lang/StringBuilder;
            ((StringBuilder)localObject3).<init>();
            ((StringBuilder)localObject3).append("SpecialEffectsController: Cancelling operation ");
            ((StringBuilder)localObject3).append(localOperation);
            Log.v("FragmentManager", ((StringBuilder)localObject3).toString());
          }
          localOperation.b();
          if (!localOperation.i()) {
            this.c.add(localOperation);
          }
        }
        q();
        Object localObject3 = new java/util/ArrayList;
        ((ArrayList)localObject3).<init>(this.b);
        this.b.clear();
        this.c.addAll((Collection)localObject3);
        localObject1 = ((ArrayList)localObject3).iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((Operation)((Iterator)localObject1).next()).l();
        }
        f((List)localObject3, this.d);
        this.d = false;
      }
      return;
    }
  }
  
  void j()
  {
    boolean bool = a0.O(this.a);
    synchronized (this.b)
    {
      q();
      Object localObject1 = this.b.iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((Operation)((Iterator)localObject1).next()).l();
      }
      localObject1 = new java/util/ArrayList;
      ((ArrayList)localObject1).<init>(this.c);
      Iterator localIterator = ((ArrayList)localObject1).iterator();
      Operation localOperation;
      StringBuilder localStringBuilder;
      while (localIterator.hasNext())
      {
        localOperation = (Operation)localIterator.next();
        if (FragmentManager.H0(2))
        {
          localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("SpecialEffectsController: ");
          if (bool)
          {
            localObject1 = "";
          }
          else
          {
            localObject1 = new java/lang/StringBuilder;
            ((StringBuilder)localObject1).<init>();
            ((StringBuilder)localObject1).append("Container ");
            ((StringBuilder)localObject1).append(this.a);
            ((StringBuilder)localObject1).append(" is not attached to window. ");
            localObject1 = ((StringBuilder)localObject1).toString();
          }
          localStringBuilder.append((String)localObject1);
          localStringBuilder.append("Cancelling running operation ");
          localStringBuilder.append(localOperation);
          Log.v("FragmentManager", localStringBuilder.toString());
        }
        localOperation.b();
      }
      localObject1 = new java/util/ArrayList;
      ((ArrayList)localObject1).<init>(this.b);
      localIterator = ((ArrayList)localObject1).iterator();
      while (localIterator.hasNext())
      {
        localOperation = (Operation)localIterator.next();
        if (FragmentManager.H0(2))
        {
          localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("SpecialEffectsController: ");
          if (bool)
          {
            localObject1 = "";
          }
          else
          {
            localObject1 = new java/lang/StringBuilder;
            ((StringBuilder)localObject1).<init>();
            ((StringBuilder)localObject1).append("Container ");
            ((StringBuilder)localObject1).append(this.a);
            ((StringBuilder)localObject1).append(" is not attached to window. ");
            localObject1 = ((StringBuilder)localObject1).toString();
          }
          localStringBuilder.append((String)localObject1);
          localStringBuilder.append("Cancelling pending operation ");
          localStringBuilder.append(localOperation);
          Log.v("FragmentManager", localStringBuilder.toString());
        }
        localOperation.b();
      }
      return;
    }
  }
  
  void k()
  {
    if (this.e)
    {
      this.e = false;
      g();
    }
  }
  
  SpecialEffectsController.Operation.LifecycleImpact l(q paramq)
  {
    Object localObject = h(paramq.k());
    if (localObject != null) {
      localObject = ((Operation)localObject).g();
    } else {
      localObject = null;
    }
    paramq = i(paramq.k());
    if ((paramq != null) && ((localObject == null) || (localObject == SpecialEffectsController.Operation.LifecycleImpact.NONE))) {
      return paramq.g();
    }
    return localObject;
  }
  
  public ViewGroup m()
  {
    return this.a;
  }
  
  void p()
  {
    synchronized (this.b)
    {
      q();
      this.e = false;
      for (int i = this.b.size() - 1; i >= 0; i--)
      {
        Operation localOperation = (Operation)this.b.get(i);
        SpecialEffectsController.Operation.State localState1 = SpecialEffectsController.Operation.State.from(localOperation.f().mView);
        SpecialEffectsController.Operation.State localState2 = localOperation.e();
        SpecialEffectsController.Operation.State localState3 = SpecialEffectsController.Operation.State.VISIBLE;
        if ((localState2 == localState3) && (localState1 != localState3))
        {
          this.e = localOperation.f().isPostponed();
          break;
        }
      }
      return;
    }
  }
  
  void r(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  static class Operation
  {
    private State a;
    private LifecycleImpact b;
    private final Fragment c;
    private final List<Runnable> d = new ArrayList();
    private final HashSet<e> e = new HashSet();
    private boolean f = false;
    private boolean g = false;
    
    Operation(State paramState, LifecycleImpact paramLifecycleImpact, Fragment paramFragment, e parame)
    {
      this.a = paramState;
      this.b = paramLifecycleImpact;
      this.c = paramFragment;
      parame.c(new a());
    }
    
    final void a(Runnable paramRunnable)
    {
      this.d.add(paramRunnable);
    }
    
    final void b()
    {
      if (h()) {
        return;
      }
      this.f = true;
      if (this.e.isEmpty())
      {
        c();
      }
      else
      {
        Iterator localIterator = new ArrayList(this.e).iterator();
        while (localIterator.hasNext()) {
          ((e)localIterator.next()).a();
        }
      }
    }
    
    public void c()
    {
      if (this.g) {
        return;
      }
      if (FragmentManager.H0(2))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("SpecialEffectsController: ");
        ((StringBuilder)localObject).append(this);
        ((StringBuilder)localObject).append(" has called complete.");
        Log.v("FragmentManager", ((StringBuilder)localObject).toString());
      }
      this.g = true;
      Object localObject = this.d.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Runnable)((Iterator)localObject).next()).run();
      }
    }
    
    public final void d(e parame)
    {
      if ((this.e.remove(parame)) && (this.e.isEmpty())) {
        c();
      }
    }
    
    public State e()
    {
      return this.a;
    }
    
    public final Fragment f()
    {
      return this.c;
    }
    
    LifecycleImpact g()
    {
      return this.b;
    }
    
    final boolean h()
    {
      return this.f;
    }
    
    final boolean i()
    {
      return this.g;
    }
    
    public final void j(e parame)
    {
      l();
      this.e.add(parame);
    }
    
    final void k(State paramState, LifecycleImpact paramLifecycleImpact)
    {
      int i = SpecialEffectsController.c.b[paramLifecycleImpact.ordinal()];
      if (i != 1)
      {
        if (i != 2)
        {
          if ((i == 3) && (this.a != State.REMOVED))
          {
            if (FragmentManager.H0(2))
            {
              paramLifecycleImpact = new StringBuilder();
              paramLifecycleImpact.append("SpecialEffectsController: For fragment ");
              paramLifecycleImpact.append(this.c);
              paramLifecycleImpact.append(" mFinalState = ");
              paramLifecycleImpact.append(this.a);
              paramLifecycleImpact.append(" -> ");
              paramLifecycleImpact.append(paramState);
              paramLifecycleImpact.append(". ");
              Log.v("FragmentManager", paramLifecycleImpact.toString());
            }
            this.a = paramState;
          }
        }
        else
        {
          if (FragmentManager.H0(2))
          {
            paramState = new StringBuilder();
            paramState.append("SpecialEffectsController: For fragment ");
            paramState.append(this.c);
            paramState.append(" mFinalState = ");
            paramState.append(this.a);
            paramState.append(" -> REMOVED. mLifecycleImpact  = ");
            paramState.append(this.b);
            paramState.append(" to REMOVING.");
            Log.v("FragmentManager", paramState.toString());
          }
          this.a = State.REMOVED;
          this.b = LifecycleImpact.REMOVING;
        }
      }
      else if (this.a == State.REMOVED)
      {
        if (FragmentManager.H0(2))
        {
          paramState = new StringBuilder();
          paramState.append("SpecialEffectsController: For fragment ");
          paramState.append(this.c);
          paramState.append(" mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = ");
          paramState.append(this.b);
          paramState.append(" to ADDING.");
          Log.v("FragmentManager", paramState.toString());
        }
        this.a = State.VISIBLE;
        this.b = LifecycleImpact.ADDING;
      }
    }
    
    void l() {}
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Operation ");
      localStringBuilder.append("{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append("} ");
      localStringBuilder.append("{");
      localStringBuilder.append("mFinalState = ");
      localStringBuilder.append(this.a);
      localStringBuilder.append("} ");
      localStringBuilder.append("{");
      localStringBuilder.append("mLifecycleImpact = ");
      localStringBuilder.append(this.b);
      localStringBuilder.append("} ");
      localStringBuilder.append("{");
      localStringBuilder.append("mFragment = ");
      localStringBuilder.append(this.c);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    static enum LifecycleImpact
    {
      static
      {
        LifecycleImpact localLifecycleImpact1 = new LifecycleImpact("NONE", 0);
        NONE = localLifecycleImpact1;
        LifecycleImpact localLifecycleImpact2 = new LifecycleImpact("ADDING", 1);
        ADDING = localLifecycleImpact2;
        LifecycleImpact localLifecycleImpact3 = new LifecycleImpact("REMOVING", 2);
        REMOVING = localLifecycleImpact3;
        $VALUES = new LifecycleImpact[] { localLifecycleImpact1, localLifecycleImpact2, localLifecycleImpact3 };
      }
      
      private LifecycleImpact() {}
    }
    
    static enum State
    {
      static
      {
        State localState1 = new State("REMOVED", 0);
        REMOVED = localState1;
        State localState2 = new State("VISIBLE", 1);
        VISIBLE = localState2;
        State localState3 = new State("GONE", 2);
        GONE = localState3;
        State localState4 = new State("INVISIBLE", 3);
        INVISIBLE = localState4;
        $VALUES = new State[] { localState1, localState2, localState3, localState4 };
      }
      
      private State() {}
      
      static State from(int paramInt)
      {
        if (paramInt != 0)
        {
          if (paramInt != 4)
          {
            if (paramInt == 8) {
              return GONE;
            }
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Unknown visibility ");
            localStringBuilder.append(paramInt);
            throw new IllegalArgumentException(localStringBuilder.toString());
          }
          return INVISIBLE;
        }
        return VISIBLE;
      }
      
      static State from(View paramView)
      {
        if ((paramView.getAlpha() == 0.0F) && (paramView.getVisibility() == 0)) {
          return INVISIBLE;
        }
        return from(paramView.getVisibility());
      }
      
      void applyState(View paramView)
      {
        int i = SpecialEffectsController.c.a[ordinal()];
        StringBuilder localStringBuilder;
        if (i != 1)
        {
          if (i != 2)
          {
            if (i != 3)
            {
              if (i == 4)
              {
                if (FragmentManager.H0(2))
                {
                  localStringBuilder = new StringBuilder();
                  localStringBuilder.append("SpecialEffectsController: Setting view ");
                  localStringBuilder.append(paramView);
                  localStringBuilder.append(" to INVISIBLE");
                  Log.v("FragmentManager", localStringBuilder.toString());
                }
                paramView.setVisibility(4);
              }
            }
            else
            {
              if (FragmentManager.H0(2))
              {
                localStringBuilder = new StringBuilder();
                localStringBuilder.append("SpecialEffectsController: Setting view ");
                localStringBuilder.append(paramView);
                localStringBuilder.append(" to GONE");
                Log.v("FragmentManager", localStringBuilder.toString());
              }
              paramView.setVisibility(8);
            }
          }
          else
          {
            if (FragmentManager.H0(2))
            {
              localStringBuilder = new StringBuilder();
              localStringBuilder.append("SpecialEffectsController: Setting view ");
              localStringBuilder.append(paramView);
              localStringBuilder.append(" to VISIBLE");
              Log.v("FragmentManager", localStringBuilder.toString());
            }
            paramView.setVisibility(0);
          }
        }
        else
        {
          ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
          if (localViewGroup != null)
          {
            if (FragmentManager.H0(2))
            {
              localStringBuilder = new StringBuilder();
              localStringBuilder.append("SpecialEffectsController: Removing view ");
              localStringBuilder.append(paramView);
              localStringBuilder.append(" from container ");
              localStringBuilder.append(localViewGroup);
              Log.v("FragmentManager", localStringBuilder.toString());
            }
            localViewGroup.removeView(paramView);
          }
        }
      }
    }
    
    class a
      implements e.b
    {
      a() {}
      
      public void onCancel()
      {
        SpecialEffectsController.Operation.this.b();
      }
    }
  }
  
  class a
    implements Runnable
  {
    a(SpecialEffectsController.d paramd) {}
    
    public void run()
    {
      if (SpecialEffectsController.this.b.contains(this.a)) {
        this.a.e().applyState(this.a.f().mView);
      }
    }
  }
  
  class b
    implements Runnable
  {
    b(SpecialEffectsController.d paramd) {}
    
    public void run()
    {
      SpecialEffectsController.this.b.remove(this.a);
      SpecialEffectsController.this.c.remove(this.a);
    }
  }
  
  private static class d
    extends SpecialEffectsController.Operation
  {
    private final q h;
    
    d(SpecialEffectsController.Operation.State paramState, SpecialEffectsController.Operation.LifecycleImpact paramLifecycleImpact, q paramq, e parame)
    {
      super(paramLifecycleImpact, paramq.k(), parame);
      this.h = paramq;
    }
    
    public void c()
    {
      super.c();
      this.h.m();
    }
    
    void l()
    {
      if (g() == SpecialEffectsController.Operation.LifecycleImpact.ADDING)
      {
        Fragment localFragment = this.h.k();
        View localView = localFragment.mView.findFocus();
        if (localView != null)
        {
          localFragment.setFocusedView(localView);
          if (FragmentManager.H0(2))
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("requestFocus: Saved focused view ");
            ((StringBuilder)localObject).append(localView);
            ((StringBuilder)localObject).append(" for Fragment ");
            ((StringBuilder)localObject).append(localFragment);
            Log.v("FragmentManager", ((StringBuilder)localObject).toString());
          }
        }
        Object localObject = f().requireView();
        if (((View)localObject).getParent() == null)
        {
          this.h.b();
          ((View)localObject).setAlpha(0.0F);
        }
        if ((((View)localObject).getAlpha() == 0.0F) && (((View)localObject).getVisibility() == 0)) {
          ((View)localObject).setVisibility(4);
        }
        ((View)localObject).setAlpha(localFragment.getPostOnViewCreatedAlpha());
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.SpecialEffectsController
 * JD-Core Version:    0.7.0.1
 */