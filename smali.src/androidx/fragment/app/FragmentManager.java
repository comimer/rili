package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.content.res.Configuration;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import android.view.LayoutInflater.Factory2;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.IntentSenderRequest.b;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.u;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.ArrayList<Ljava.lang.Boolean;>;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class FragmentManager
{
  private static boolean O = false;
  static boolean P = true;
  private androidx.activity.result.b<IntentSenderRequest> A;
  private androidx.activity.result.b<String[]> B;
  ArrayDeque<LaunchedFragmentInfo> C = new ArrayDeque();
  private boolean D;
  private boolean E;
  private boolean F;
  private boolean G;
  private boolean H;
  private ArrayList<a> I;
  private ArrayList<Boolean> J;
  private ArrayList<Fragment> K;
  private ArrayList<q> L;
  private n M;
  private Runnable N = new g();
  private final ArrayList<o> a = new ArrayList();
  private boolean b;
  private final r c = new r();
  ArrayList<a> d;
  private ArrayList<Fragment> e;
  private final k f = new k(this);
  private OnBackPressedDispatcher g;
  private final androidx.activity.b h = new c(false);
  private final AtomicInteger i = new AtomicInteger();
  private final Map<String, Bundle> j = Collections.synchronizedMap(new HashMap());
  private final Map<String, Object> k = Collections.synchronizedMap(new HashMap());
  private ArrayList<n> l;
  private Map<Fragment, HashSet<androidx.core.os.e>> m = Collections.synchronizedMap(new HashMap());
  private final t.g n = new d();
  private final l o = new l(this);
  private final CopyOnWriteArrayList<o> p = new CopyOnWriteArrayList();
  int q = -1;
  private j<?> r;
  private f s;
  private Fragment t;
  Fragment u;
  private i v = null;
  private i w = new e();
  private y x = null;
  private y y = new f();
  private androidx.activity.result.b<Intent> z;
  
  static Fragment B0(View paramView)
  {
    paramView = paramView.getTag(d0.b.a);
    if ((paramView instanceof Fragment)) {
      return (Fragment)paramView;
    }
    return null;
  }
  
  static boolean H0(int paramInt)
  {
    boolean bool;
    if ((!O) && (!Log.isLoggable("FragmentManager", paramInt))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean I0(Fragment paramFragment)
  {
    boolean bool;
    if (((paramFragment.mHasMenu) && (paramFragment.mMenuVisible)) || (paramFragment.mChildFragmentManager.o())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void M(Fragment paramFragment)
  {
    if ((paramFragment != null) && (paramFragment.equals(g0(paramFragment.mWho)))) {
      paramFragment.performPrimaryNavigationFragmentChanged();
    }
  }
  
  private void Q0(n.b<Fragment> paramb)
  {
    int i1 = paramb.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      Fragment localFragment = (Fragment)paramb.n(i2);
      if (!localFragment.mAdded)
      {
        View localView = localFragment.requireView();
        localFragment.mPostponedAlpha = localView.getAlpha();
        localView.setAlpha(0.0F);
      }
    }
  }
  
  private void T(int paramInt)
  {
    try
    {
      this.b = true;
      this.c.d(paramInt);
      S0(paramInt, false);
      if (P)
      {
        Iterator localIterator = s().iterator();
        while (localIterator.hasNext()) {
          ((SpecialEffectsController)localIterator.next()).j();
        }
      }
      this.b = false;
      b0(true);
      return;
    }
    finally
    {
      this.b = false;
    }
  }
  
  private void W()
  {
    if (this.H)
    {
      this.H = false;
      u1();
    }
  }
  
  private void Y()
  {
    Object localObject;
    if (P)
    {
      localObject = s().iterator();
      while (((Iterator)localObject).hasNext()) {
        ((SpecialEffectsController)((Iterator)localObject).next()).j();
      }
    }
    if (!this.m.isEmpty())
    {
      Iterator localIterator = this.m.keySet().iterator();
      while (localIterator.hasNext())
      {
        localObject = (Fragment)localIterator.next();
        n((Fragment)localObject);
        T0((Fragment)localObject);
      }
    }
  }
  
  private void a0(boolean paramBoolean)
  {
    if (!this.b)
    {
      if (this.r == null)
      {
        if (this.G) {
          throw new IllegalStateException("FragmentManager has been destroyed");
        }
        throw new IllegalStateException("FragmentManager has not been attached to a host.");
      }
      if (Looper.myLooper() == this.r.g().getLooper())
      {
        if (!paramBoolean) {
          p();
        }
        if (this.I == null)
        {
          this.I = new ArrayList();
          this.J = new ArrayList();
        }
        this.b = true;
        try
        {
          f0(null, null);
          return;
        }
        finally
        {
          this.b = false;
        }
      }
      throw new IllegalStateException("Must be called from main thread of fragment host");
    }
    throw new IllegalStateException("FragmentManager is already executing transactions");
  }
  
  private boolean a1(String paramString, int paramInt1, int paramInt2)
  {
    b0(false);
    a0(true);
    Fragment localFragment = this.u;
    if ((localFragment != null) && (paramInt1 < 0) && (paramString == null) && (localFragment.getChildFragmentManager().Z0())) {
      return true;
    }
    boolean bool = b1(this.I, this.J, paramString, paramInt1, paramInt2);
    if (bool) {
      this.b = true;
    }
    try
    {
      h1(this.I, this.J);
      q();
    }
    finally
    {
      q();
    }
    W();
    this.c.b();
    return bool;
  }
  
  private int c1(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2, n.b<Fragment> paramb)
  {
    int i1 = paramInt2 - 1;
    int i4;
    for (int i2 = paramInt2; i1 >= paramInt1; i2 = i4)
    {
      a locala = (a)paramArrayList.get(i1);
      boolean bool = ((Boolean)paramArrayList1.get(i1)).booleanValue();
      int i3;
      if ((locala.F()) && (!locala.D(paramArrayList, i1 + 1, paramInt2))) {
        i3 = 1;
      } else {
        i3 = 0;
      }
      i4 = i2;
      if (i3 != 0)
      {
        if (this.L == null) {
          this.L = new ArrayList();
        }
        q localq = new q(locala, bool);
        this.L.add(localq);
        locala.H(localq);
        if (bool) {
          locala.z();
        } else {
          locala.A(false);
        }
        i4 = i2 - 1;
        if (i1 != i4)
        {
          paramArrayList.remove(i1);
          paramArrayList.add(i4, locala);
        }
        d(paramb);
      }
      i1--;
    }
    return i2;
  }
  
  private void d(n.b<Fragment> paramb)
  {
    int i1 = this.q;
    if (i1 < 1) {
      return;
    }
    i1 = Math.min(i1, 5);
    Iterator localIterator = this.c.n().iterator();
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if (localFragment.mState < i1)
      {
        U0(localFragment, i1);
        if ((localFragment.mView != null) && (!localFragment.mHidden) && (localFragment.mIsNewlyAdded)) {
          paramb.add(localFragment);
        }
      }
    }
  }
  
  private static void d0(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2)
  {
    while (paramInt1 < paramInt2)
    {
      a locala = (a)paramArrayList.get(paramInt1);
      boolean bool1 = ((Boolean)paramArrayList1.get(paramInt1)).booleanValue();
      boolean bool2 = true;
      if (bool1)
      {
        locala.v(-1);
        if (paramInt1 != paramInt2 - 1) {
          bool2 = false;
        }
        locala.A(bool2);
      }
      else
      {
        locala.v(1);
        locala.z();
      }
      paramInt1++;
    }
  }
  
  private void e0(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2)
  {
    boolean bool = ((a)paramArrayList.get(paramInt1)).r;
    Object localObject1 = this.K;
    if (localObject1 == null) {
      this.K = new ArrayList();
    } else {
      ((ArrayList)localObject1).clear();
    }
    this.K.addAll(this.c.n());
    localObject1 = z0();
    int i1 = 0;
    Object localObject2;
    for (int i2 = paramInt1; i2 < paramInt2; i2++)
    {
      localObject2 = (a)paramArrayList.get(i2);
      if (!((Boolean)paramArrayList1.get(i2)).booleanValue()) {
        localObject1 = ((a)localObject2).B(this.K, (Fragment)localObject1);
      } else {
        localObject1 = ((a)localObject2).I(this.K, (Fragment)localObject1);
      }
      if ((i1 == 0) && (!((s)localObject2).i)) {
        i1 = 0;
      } else {
        i1 = 1;
      }
    }
    this.K.clear();
    if ((!bool) && (this.q >= 1))
    {
      if (P) {
        for (i2 = paramInt1; i2 < paramInt2; i2++)
        {
          localObject1 = ((a)paramArrayList.get(i2)).c.iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = ((s.a)((Iterator)localObject1).next()).b;
            if ((localObject2 != null) && (((Fragment)localObject2).mFragmentManager != null))
            {
              localObject2 = w((Fragment)localObject2);
              this.c.p((q)localObject2);
            }
          }
        }
      }
      t.B(this.r.f(), this.s, paramArrayList, paramArrayList1, paramInt1, paramInt2, false, this.n);
    }
    d0(paramArrayList, paramArrayList1, paramInt1, paramInt2);
    int i3;
    if (P)
    {
      bool = ((Boolean)paramArrayList1.get(paramInt2 - 1)).booleanValue();
      for (i2 = paramInt1; i2 < paramInt2; i2++)
      {
        localObject2 = (a)paramArrayList.get(i2);
        if (bool) {
          for (i3 = ((s)localObject2).c.size() - 1; i3 >= 0; i3--)
          {
            localObject1 = ((s.a)((s)localObject2).c.get(i3)).b;
            if (localObject1 != null) {
              w((Fragment)localObject1).m();
            }
          }
        }
        localObject1 = ((s)localObject2).c.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = ((s.a)((Iterator)localObject1).next()).b;
          if (localObject2 != null) {
            w((Fragment)localObject2).m();
          }
        }
      }
      S0(this.q, true);
      localObject1 = t(paramArrayList, paramInt1, paramInt2).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (SpecialEffectsController)((Iterator)localObject1).next();
        ((SpecialEffectsController)localObject2).r(bool);
        ((SpecialEffectsController)localObject2).p();
        ((SpecialEffectsController)localObject2).g();
      }
    }
    else
    {
      if (bool)
      {
        localObject1 = new n.b();
        d((n.b)localObject1);
        i2 = c1(paramArrayList, paramArrayList1, paramInt1, paramInt2, (n.b)localObject1);
        Q0((n.b)localObject1);
      }
      else
      {
        i2 = paramInt2;
      }
      i3 = 1;
      localObject1 = paramArrayList1;
      if ((i2 != paramInt1) && (bool))
      {
        if (this.q >= i3) {
          t.B(this.r.f(), this.s, paramArrayList, paramArrayList1, paramInt1, i2, true, this.n);
        }
        paramArrayList1 = (ArrayList<Boolean>)localObject1;
        S0(this.q, i3);
      }
      else
      {
        paramArrayList1 = (ArrayList<Boolean>)localObject1;
      }
    }
    while (paramInt1 < paramInt2)
    {
      localObject1 = (a)paramArrayList.get(paramInt1);
      if ((((Boolean)paramArrayList1.get(paramInt1)).booleanValue()) && (((a)localObject1).v >= 0)) {
        ((a)localObject1).v = -1;
      }
      ((a)localObject1).G();
      paramInt1++;
    }
    if (i1 != 0) {
      j1();
    }
  }
  
  private void f0(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    Object localObject = this.L;
    int i1;
    if (localObject == null) {
      i1 = 0;
    } else {
      i1 = ((ArrayList)localObject).size();
    }
    int i2 = 0;
    for (int i3 = i1; i2 < i3; i3 = i1)
    {
      localObject = (q)this.L.get(i2);
      int i4;
      if ((paramArrayList != null) && (!((q)localObject).a))
      {
        i1 = paramArrayList.indexOf(((q)localObject).b);
        if ((i1 != -1) && (paramArrayList1 != null) && (((Boolean)paramArrayList1.get(i1)).booleanValue()))
        {
          this.L.remove(i2);
          i4 = i2 - 1;
          i1 = i3 - 1;
          ((q)localObject).c();
          break label245;
        }
      }
      if (!((q)localObject).e())
      {
        i1 = i3;
        i4 = i2;
        if (paramArrayList != null)
        {
          i1 = i3;
          i4 = i2;
          if (!((q)localObject).b.D(paramArrayList, 0, paramArrayList.size())) {}
        }
      }
      else
      {
        this.L.remove(i2);
        i4 = i2 - 1;
        i1 = i3 - 1;
        if ((paramArrayList != null) && (!((q)localObject).a))
        {
          i2 = paramArrayList.indexOf(((q)localObject).b);
          if ((i2 != -1) && (paramArrayList1 != null) && (((Boolean)paramArrayList1.get(i2)).booleanValue()))
          {
            ((q)localObject).c();
            break label245;
          }
        }
        ((q)localObject).d();
      }
      label245:
      i2 = i4 + 1;
    }
  }
  
  private void h1(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    if (paramArrayList.isEmpty()) {
      return;
    }
    if (paramArrayList.size() == paramArrayList1.size())
    {
      f0(paramArrayList, paramArrayList1);
      int i1 = paramArrayList.size();
      int i2 = 0;
      int i5;
      for (int i3 = 0; i2 < i1; i3 = i5)
      {
        int i4 = i2;
        i5 = i3;
        if (!((a)paramArrayList.get(i2)).r)
        {
          if (i3 != i2) {
            e0(paramArrayList, paramArrayList1, i3, i2);
          }
          i3 = i2 + 1;
          i5 = i3;
          if (((Boolean)paramArrayList1.get(i2)).booleanValue()) {
            for (;;)
            {
              i5 = i3;
              if (i3 >= i1) {
                break;
              }
              i5 = i3;
              if (!((Boolean)paramArrayList1.get(i3)).booleanValue()) {
                break;
              }
              i5 = i3;
              if (((a)paramArrayList.get(i3)).r) {
                break;
              }
              i3++;
            }
          }
          e0(paramArrayList, paramArrayList1, i2, i5);
          i4 = i5 - 1;
        }
        i2 = i4 + 1;
      }
      if (i3 != i1) {
        e0(paramArrayList, paramArrayList1, i3, i1);
      }
      return;
    }
    throw new IllegalStateException("Internal error with the back stack records");
  }
  
  private void j1()
  {
    if (this.l != null) {
      for (int i1 = 0; i1 < this.l.size(); i1++) {
        ((n)this.l.get(i1)).onBackStackChanged();
      }
    }
  }
  
  private void k0()
  {
    if (P)
    {
      Iterator localIterator = s().iterator();
      while (localIterator.hasNext()) {
        ((SpecialEffectsController)localIterator.next()).k();
      }
    }
    if (this.L != null) {
      while (!this.L.isEmpty()) {
        ((q)this.L.remove(0)).d();
      }
    }
  }
  
  private boolean l0(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    synchronized (this.a)
    {
      boolean bool = this.a.isEmpty();
      int i1 = 0;
      if (bool) {
        return false;
      }
      int i2 = this.a.size();
      bool = false;
      while (i1 < i2)
      {
        bool |= ((o)this.a.get(i1)).a(paramArrayList, paramArrayList1);
        i1++;
      }
      this.a.clear();
      this.r.g().removeCallbacks(this.N);
      return bool;
    }
  }
  
  static int l1(int paramInt)
  {
    int i1 = 8194;
    if (paramInt != 4097) {
      if (paramInt != 4099)
      {
        if (paramInt != 8194) {
          i1 = 0;
        } else {
          i1 = 4097;
        }
      }
      else {
        i1 = 4099;
      }
    }
    return i1;
  }
  
  private void n(Fragment paramFragment)
  {
    HashSet localHashSet = (HashSet)this.m.get(paramFragment);
    if (localHashSet != null)
    {
      Iterator localIterator = localHashSet.iterator();
      while (localIterator.hasNext()) {
        ((androidx.core.os.e)localIterator.next()).a();
      }
      localHashSet.clear();
      x(paramFragment);
      this.m.remove(paramFragment);
    }
  }
  
  private n o0(Fragment paramFragment)
  {
    return this.M.d(paramFragment);
  }
  
  private void p()
  {
    if (!M0()) {
      return;
    }
    throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
  }
  
  private void q()
  {
    this.b = false;
    this.J.clear();
    this.I.clear();
  }
  
  private ViewGroup r0(Fragment paramFragment)
  {
    ViewGroup localViewGroup = paramFragment.mContainer;
    if (localViewGroup != null) {
      return localViewGroup;
    }
    if (paramFragment.mContainerId <= 0) {
      return null;
    }
    if (this.s.d())
    {
      paramFragment = this.s.c(paramFragment.mContainerId);
      if ((paramFragment instanceof ViewGroup)) {
        return (ViewGroup)paramFragment;
      }
    }
    return null;
  }
  
  private Set<SpecialEffectsController> s()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = this.c.k().iterator();
    while (localIterator.hasNext())
    {
      ViewGroup localViewGroup = ((q)localIterator.next()).k().mContainer;
      if (localViewGroup != null) {
        localHashSet.add(SpecialEffectsController.o(localViewGroup, A0()));
      }
    }
    return localHashSet;
  }
  
  private void s1(Fragment paramFragment)
  {
    ViewGroup localViewGroup = r0(paramFragment);
    if ((localViewGroup != null) && (paramFragment.getEnterAnim() + paramFragment.getExitAnim() + paramFragment.getPopEnterAnim() + paramFragment.getPopExitAnim() > 0))
    {
      int i1 = d0.b.c;
      if (localViewGroup.getTag(i1) == null) {
        localViewGroup.setTag(i1, paramFragment);
      }
      ((Fragment)localViewGroup.getTag(i1)).setPopDirection(paramFragment.getPopDirection());
    }
  }
  
  private Set<SpecialEffectsController> t(ArrayList<a> paramArrayList, int paramInt1, int paramInt2)
  {
    HashSet localHashSet = new HashSet();
    while (paramInt1 < paramInt2)
    {
      Iterator localIterator = ((a)paramArrayList.get(paramInt1)).c.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = ((s.a)localIterator.next()).b;
        if (localObject != null)
        {
          localObject = ((Fragment)localObject).mContainer;
          if (localObject != null) {
            localHashSet.add(SpecialEffectsController.n((ViewGroup)localObject, this));
          }
        }
      }
      paramInt1++;
    }
    return localHashSet;
  }
  
  private void u1()
  {
    Iterator localIterator = this.c.k().iterator();
    while (localIterator.hasNext()) {
      X0((q)localIterator.next());
    }
  }
  
  private void v(final Fragment paramFragment)
  {
    if (paramFragment.mView != null)
    {
      e.d locald = e.c(this.r.f(), paramFragment, paramFragment.mHidden ^ true, paramFragment.getPopDirection());
      if (locald != null)
      {
        Object localObject = locald.b;
        if (localObject != null)
        {
          ((Animator)localObject).setTarget(paramFragment.mView);
          if (paramFragment.mHidden)
          {
            if (paramFragment.isHideReplaced())
            {
              paramFragment.setHideReplaced(false);
            }
            else
            {
              localObject = paramFragment.mContainer;
              final View localView = paramFragment.mView;
              ((ViewGroup)localObject).startViewTransition(localView);
              locald.b.addListener(new h((ViewGroup)localObject, localView, paramFragment));
            }
          }
          else {
            paramFragment.mView.setVisibility(0);
          }
          locald.b.start();
          break label196;
        }
      }
      if (locald != null)
      {
        paramFragment.mView.startAnimation(locald.a);
        locald.a.start();
      }
      int i1;
      if ((paramFragment.mHidden) && (!paramFragment.isHideReplaced())) {
        i1 = 8;
      } else {
        i1 = 0;
      }
      paramFragment.mView.setVisibility(i1);
      if (paramFragment.isHideReplaced()) {
        paramFragment.setHideReplaced(false);
      }
    }
    label196:
    F0(paramFragment);
    paramFragment.mHiddenChanged = false;
    paramFragment.onHiddenChanged(paramFragment.mHidden);
  }
  
  private void v1(RuntimeException paramRuntimeException)
  {
    Log.e("FragmentManager", paramRuntimeException.getMessage());
    Log.e("FragmentManager", "Activity state:");
    PrintWriter localPrintWriter = new PrintWriter(new x("FragmentManager"));
    j localj = this.r;
    if (localj != null) {
      try
      {
        localj.h("  ", null, localPrintWriter, new String[0]);
      }
      catch (Exception localException1)
      {
        Log.e("FragmentManager", "Failed dumping state", localException1);
      }
    } else {
      try
      {
        X("  ", null, localPrintWriter, new String[0]);
      }
      catch (Exception localException2)
      {
        Log.e("FragmentManager", "Failed dumping state", localException2);
      }
    }
    throw paramRuntimeException;
  }
  
  private void x(Fragment paramFragment)
  {
    paramFragment.performDestroyView();
    this.o.n(paramFragment, false);
    paramFragment.mContainer = null;
    paramFragment.mView = null;
    paramFragment.mViewLifecycleOwner = null;
    paramFragment.mViewLifecycleOwnerLiveData.n(null);
    paramFragment.mInLayout = false;
  }
  
  private void x1()
  {
    synchronized (this.a)
    {
      boolean bool1 = this.a.isEmpty();
      boolean bool2 = true;
      if (!bool1)
      {
        this.h.f(true);
        return;
      }
      androidx.activity.b localb = this.h;
      if ((n0() <= 0) || (!K0(this.t))) {
        bool2 = false;
      }
      localb.f(bool2);
      return;
    }
  }
  
  void A()
  {
    this.E = false;
    this.F = false;
    this.M.j(false);
    T(0);
  }
  
  y A0()
  {
    Object localObject = this.x;
    if (localObject != null) {
      return localObject;
    }
    localObject = this.t;
    if (localObject != null) {
      return ((Fragment)localObject).mFragmentManager.A0();
    }
    return this.y;
  }
  
  void B(Configuration paramConfiguration)
  {
    Iterator localIterator = this.c.n().iterator();
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if (localFragment != null) {
        localFragment.performConfigurationChanged(paramConfiguration);
      }
    }
  }
  
  boolean C(MenuItem paramMenuItem)
  {
    if (this.q < 1) {
      return false;
    }
    Iterator localIterator = this.c.n().iterator();
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if ((localFragment != null) && (localFragment.performContextItemSelected(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  m0 C0(Fragment paramFragment)
  {
    return this.M.g(paramFragment);
  }
  
  void D()
  {
    this.E = false;
    this.F = false;
    this.M.j(false);
    T(1);
  }
  
  void D0()
  {
    b0(true);
    if (this.h.c()) {
      Z0();
    } else {
      this.g.c();
    }
  }
  
  boolean E(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    int i1 = this.q;
    int i2 = 0;
    if (i1 < 1) {
      return false;
    }
    Object localObject1 = null;
    Iterator localIterator = this.c.n().iterator();
    boolean bool = false;
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if ((localFragment != null) && (J0(localFragment)) && (localFragment.performCreateOptionsMenu(paramMenu, paramMenuInflater)))
      {
        Object localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new ArrayList();
        }
        ((ArrayList)localObject2).add(localFragment);
        bool = true;
        localObject1 = localObject2;
      }
    }
    if (this.e != null) {
      while (i2 < this.e.size())
      {
        paramMenu = (Fragment)this.e.get(i2);
        if ((localObject1 == null) || (!localObject1.contains(paramMenu))) {
          paramMenu.onDestroyOptionsMenu();
        }
        i2++;
      }
    }
    this.e = localObject1;
    return bool;
  }
  
  void E0(Fragment paramFragment)
  {
    if (H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("hide: ");
      localStringBuilder.append(paramFragment);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    if (!paramFragment.mHidden)
    {
      paramFragment.mHidden = true;
      paramFragment.mHiddenChanged = (true ^ paramFragment.mHiddenChanged);
      s1(paramFragment);
    }
  }
  
  void F()
  {
    this.G = true;
    b0(true);
    Y();
    T(-1);
    this.r = null;
    this.s = null;
    this.t = null;
    if (this.g != null)
    {
      this.h.d();
      this.g = null;
    }
    androidx.activity.result.b localb = this.z;
    if (localb != null)
    {
      localb.c();
      this.A.c();
      this.B.c();
    }
  }
  
  void F0(Fragment paramFragment)
  {
    if ((paramFragment.mAdded) && (I0(paramFragment))) {
      this.D = true;
    }
  }
  
  void G()
  {
    T(1);
  }
  
  public boolean G0()
  {
    return this.G;
  }
  
  void H()
  {
    Iterator localIterator = this.c.n().iterator();
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if (localFragment != null) {
        localFragment.performLowMemory();
      }
    }
  }
  
  void I(boolean paramBoolean)
  {
    Iterator localIterator = this.c.n().iterator();
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if (localFragment != null) {
        localFragment.performMultiWindowModeChanged(paramBoolean);
      }
    }
  }
  
  void J(Fragment paramFragment)
  {
    Iterator localIterator = this.p.iterator();
    while (localIterator.hasNext()) {
      ((o)localIterator.next()).a(this, paramFragment);
    }
  }
  
  boolean J0(Fragment paramFragment)
  {
    if (paramFragment == null) {
      return true;
    }
    return paramFragment.isMenuVisible();
  }
  
  boolean K(MenuItem paramMenuItem)
  {
    if (this.q < 1) {
      return false;
    }
    Iterator localIterator = this.c.n().iterator();
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if ((localFragment != null) && (localFragment.performOptionsItemSelected(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  boolean K0(Fragment paramFragment)
  {
    boolean bool = true;
    if (paramFragment == null) {
      return true;
    }
    FragmentManager localFragmentManager = paramFragment.mFragmentManager;
    if ((!paramFragment.equals(localFragmentManager.z0())) || (!K0(localFragmentManager.t))) {
      bool = false;
    }
    return bool;
  }
  
  void L(Menu paramMenu)
  {
    if (this.q < 1) {
      return;
    }
    Iterator localIterator = this.c.n().iterator();
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if (localFragment != null) {
        localFragment.performOptionsMenuClosed(paramMenu);
      }
    }
  }
  
  boolean L0(int paramInt)
  {
    boolean bool;
    if (this.q >= paramInt) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean M0()
  {
    boolean bool;
    if ((!this.E) && (!this.F)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  void N()
  {
    T(5);
  }
  
  void N0(Fragment paramFragment, String[] paramArrayOfString, int paramInt)
  {
    if (this.B != null)
    {
      paramFragment = new LaunchedFragmentInfo(paramFragment.mWho, paramInt);
      this.C.addLast(paramFragment);
      this.B.a(paramArrayOfString);
    }
    else
    {
      this.r.k(paramFragment, paramArrayOfString, paramInt);
    }
  }
  
  void O(boolean paramBoolean)
  {
    Iterator localIterator = this.c.n().iterator();
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if (localFragment != null) {
        localFragment.performPictureInPictureModeChanged(paramBoolean);
      }
    }
  }
  
  void O0(Fragment paramFragment, @SuppressLint({"UnknownNullness"}) Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    if (this.z != null)
    {
      paramFragment = new LaunchedFragmentInfo(paramFragment.mWho, paramInt);
      this.C.addLast(paramFragment);
      if ((paramIntent != null) && (paramBundle != null)) {
        paramIntent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", paramBundle);
      }
      this.z.a(paramIntent);
    }
    else
    {
      this.r.n(paramFragment, paramIntent, paramInt, paramBundle);
    }
  }
  
  boolean P(Menu paramMenu)
  {
    int i1 = this.q;
    boolean bool = false;
    if (i1 < 1) {
      return false;
    }
    Iterator localIterator = this.c.n().iterator();
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if ((localFragment != null) && (J0(localFragment)) && (localFragment.performPrepareOptionsMenu(paramMenu))) {
        bool = true;
      }
    }
    return bool;
  }
  
  void P0(Fragment paramFragment, @SuppressLint({"UnknownNullness"}) IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    if (this.A != null)
    {
      if (paramBundle != null)
      {
        if (paramIntent == null)
        {
          paramIntent = new Intent();
          paramIntent.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
        }
        if (H0(2))
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("ActivityOptions ");
          localStringBuilder.append(paramBundle);
          localStringBuilder.append(" were added to fillInIntent ");
          localStringBuilder.append(paramIntent);
          localStringBuilder.append(" for fragment ");
          localStringBuilder.append(paramFragment);
          Log.v("FragmentManager", localStringBuilder.toString());
        }
        paramIntent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", paramBundle);
      }
      paramIntentSender = new IntentSenderRequest.b(paramIntentSender).b(paramIntent).c(paramInt3, paramInt2).a();
      paramIntent = new LaunchedFragmentInfo(paramFragment.mWho, paramInt1);
      this.C.addLast(paramIntent);
      if (H0(2))
      {
        paramIntent = new StringBuilder();
        paramIntent.append("Fragment ");
        paramIntent.append(paramFragment);
        paramIntent.append("is launching an IntentSender for result ");
        Log.v("FragmentManager", paramIntent.toString());
      }
      this.A.a(paramIntentSender);
    }
    else
    {
      this.r.o(paramFragment, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
    }
  }
  
  void Q()
  {
    x1();
    M(this.u);
  }
  
  void R()
  {
    this.E = false;
    this.F = false;
    this.M.j(false);
    T(7);
  }
  
  void R0(Fragment paramFragment)
  {
    if (!this.c.c(paramFragment.mWho))
    {
      if (H0(3))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Ignoring moving ");
        ((StringBuilder)localObject).append(paramFragment);
        ((StringBuilder)localObject).append(" to state ");
        ((StringBuilder)localObject).append(this.q);
        ((StringBuilder)localObject).append("since it is not added to ");
        ((StringBuilder)localObject).append(this);
        Log.d("FragmentManager", ((StringBuilder)localObject).toString());
      }
      return;
    }
    T0(paramFragment);
    Object localObject = paramFragment.mView;
    if ((localObject != null) && (paramFragment.mIsNewlyAdded) && (paramFragment.mContainer != null))
    {
      float f1 = paramFragment.mPostponedAlpha;
      if (f1 > 0.0F) {
        ((View)localObject).setAlpha(f1);
      }
      paramFragment.mPostponedAlpha = 0.0F;
      paramFragment.mIsNewlyAdded = false;
      e.d locald = e.c(this.r.f(), paramFragment, true, paramFragment.getPopDirection());
      if (locald != null)
      {
        localObject = locald.a;
        if (localObject != null)
        {
          paramFragment.mView.startAnimation((Animation)localObject);
        }
        else
        {
          locald.b.setTarget(paramFragment.mView);
          locald.b.start();
        }
      }
    }
    if (paramFragment.mHiddenChanged) {
      v(paramFragment);
    }
  }
  
  void S()
  {
    this.E = false;
    this.F = false;
    this.M.j(false);
    T(5);
  }
  
  void S0(int paramInt, boolean paramBoolean)
  {
    if ((this.r == null) && (paramInt != -1)) {
      throw new IllegalStateException("No activity");
    }
    if ((!paramBoolean) && (paramInt == this.q)) {
      return;
    }
    this.q = paramInt;
    Object localObject;
    if (P)
    {
      this.c.r();
    }
    else
    {
      localObject = this.c.n().iterator();
      while (((Iterator)localObject).hasNext()) {
        R0((Fragment)((Iterator)localObject).next());
      }
      Iterator localIterator = this.c.k().iterator();
      while (localIterator.hasNext())
      {
        q localq = (q)localIterator.next();
        localObject = localq.k();
        if (!((Fragment)localObject).mIsNewlyAdded) {
          R0((Fragment)localObject);
        }
        if ((((Fragment)localObject).mRemoving) && (!((Fragment)localObject).isInBackStack())) {
          paramInt = 1;
        } else {
          paramInt = 0;
        }
        if (paramInt != 0) {
          this.c.q(localq);
        }
      }
    }
    u1();
    if (this.D)
    {
      localObject = this.r;
      if ((localObject != null) && (this.q == 7))
      {
        ((j)localObject).p();
        this.D = false;
      }
    }
  }
  
  void T0(Fragment paramFragment)
  {
    U0(paramFragment, this.q);
  }
  
  void U()
  {
    this.F = true;
    this.M.j(true);
    T(4);
  }
  
  void U0(Fragment paramFragment, int paramInt)
  {
    Object localObject1 = this.c.m(paramFragment.mWho);
    int i1 = 1;
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject2 = new q(this.o, this.c, paramFragment);
      ((q)localObject2).u(1);
    }
    int i2 = paramInt;
    if (paramFragment.mFromLayout)
    {
      i2 = paramInt;
      if (paramFragment.mInLayout)
      {
        i2 = paramInt;
        if (paramFragment.mState == 2) {
          i2 = Math.max(paramInt, 2);
        }
      }
    }
    paramInt = Math.min(i2, ((q)localObject2).d());
    int i3 = paramFragment.mState;
    if (i3 <= paramInt)
    {
      if ((i3 < paramInt) && (!this.m.isEmpty())) {
        n(paramFragment);
      }
      i2 = paramFragment.mState;
      if (i2 != -1)
      {
        if (i2 != 0)
        {
          if (i2 == 1) {
            break label196;
          }
          if (i2 == 2) {
            break label216;
          }
          if (i2 == 4) {
            break label226;
          }
          if (i2 == 5) {
            break label236;
          }
          i2 = paramInt;
          break label687;
        }
      }
      else if (paramInt > -1) {
        ((q)localObject2).c();
      }
      if (paramInt > 0) {
        ((q)localObject2).e();
      }
      label196:
      if (paramInt > -1) {
        ((q)localObject2).j();
      }
      if (paramInt > 1) {
        ((q)localObject2).f();
      }
      label216:
      if (paramInt > 2) {
        ((q)localObject2).a();
      }
      label226:
      if (paramInt > 4) {
        ((q)localObject2).v();
      }
      label236:
      i2 = paramInt;
      if (paramInt > 5)
      {
        ((q)localObject2).p();
        i2 = paramInt;
      }
    }
    else
    {
      i2 = paramInt;
      if (i3 > paramInt)
      {
        if (i3 != 0)
        {
          if (i3 != 1)
          {
            if (i3 != 2)
            {
              if (i3 != 4)
              {
                if (i3 != 5)
                {
                  if (i3 != 7)
                  {
                    i2 = paramInt;
                    break label687;
                  }
                  if (paramInt < 7) {
                    ((q)localObject2).n();
                  }
                }
                if (paramInt < 5) {
                  ((q)localObject2).w();
                }
              }
              if (paramInt < 4)
              {
                if (H0(3))
                {
                  localObject1 = new StringBuilder();
                  ((StringBuilder)localObject1).append("movefrom ACTIVITY_CREATED: ");
                  ((StringBuilder)localObject1).append(paramFragment);
                  Log.d("FragmentManager", ((StringBuilder)localObject1).toString());
                }
                if ((paramFragment.mView != null) && (this.r.l(paramFragment)) && (paramFragment.mSavedViewState == null)) {
                  ((q)localObject2).t();
                }
              }
            }
            if (paramInt < 2)
            {
              View localView = null;
              Object localObject3 = paramFragment.mView;
              if (localObject3 != null)
              {
                localObject1 = paramFragment.mContainer;
                if (localObject1 != null)
                {
                  ((ViewGroup)localObject1).endViewTransition((View)localObject3);
                  paramFragment.mView.clearAnimation();
                  if (!paramFragment.isRemovingParent())
                  {
                    localObject1 = localView;
                    if (this.q > -1)
                    {
                      localObject1 = localView;
                      if (!this.G)
                      {
                        localObject1 = localView;
                        if (paramFragment.mView.getVisibility() == 0)
                        {
                          localObject1 = localView;
                          if (paramFragment.mPostponedAlpha >= 0.0F) {
                            localObject1 = e.c(this.r.f(), paramFragment, false, paramFragment.getPopDirection());
                          }
                        }
                      }
                    }
                    paramFragment.mPostponedAlpha = 0.0F;
                    localObject3 = paramFragment.mContainer;
                    localView = paramFragment.mView;
                    if (localObject1 != null) {
                      e.a(paramFragment, (e.d)localObject1, this.n);
                    }
                    ((ViewGroup)localObject3).removeView(localView);
                    if (H0(2))
                    {
                      localObject1 = new StringBuilder();
                      ((StringBuilder)localObject1).append("Removing view ");
                      ((StringBuilder)localObject1).append(localView);
                      ((StringBuilder)localObject1).append(" for fragment ");
                      ((StringBuilder)localObject1).append(paramFragment);
                      ((StringBuilder)localObject1).append(" from container ");
                      ((StringBuilder)localObject1).append(localObject3);
                      Log.v("FragmentManager", ((StringBuilder)localObject1).toString());
                    }
                    if (localObject3 != paramFragment.mContainer) {
                      return;
                    }
                  }
                }
              }
              if (this.m.get(paramFragment) == null) {
                ((q)localObject2).h();
              }
            }
          }
          if (paramInt < 1) {
            if (this.m.get(paramFragment) != null) {
              paramInt = i1;
            } else {
              ((q)localObject2).g();
            }
          }
        }
        if (paramInt < 0) {
          ((q)localObject2).i();
        }
        i2 = paramInt;
      }
    }
    label687:
    if (paramFragment.mState != i2)
    {
      if (H0(3))
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("moveToState: Fragment state for ");
        ((StringBuilder)localObject2).append(paramFragment);
        ((StringBuilder)localObject2).append(" not updated inline; expected state ");
        ((StringBuilder)localObject2).append(i2);
        ((StringBuilder)localObject2).append(" found ");
        ((StringBuilder)localObject2).append(paramFragment.mState);
        Log.d("FragmentManager", ((StringBuilder)localObject2).toString());
      }
      paramFragment.mState = i2;
    }
  }
  
  void V()
  {
    T(2);
  }
  
  void V0()
  {
    if (this.r == null) {
      return;
    }
    this.E = false;
    this.F = false;
    this.M.j(false);
    Iterator localIterator = this.c.n().iterator();
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if (localFragment != null) {
        localFragment.noteStateNotSaved();
      }
    }
  }
  
  void W0(g paramg)
  {
    Iterator localIterator = this.c.k().iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      Fragment localFragment = localq.k();
      if (localFragment.mContainerId == paramg.getId())
      {
        View localView = localFragment.mView;
        if ((localView != null) && (localView.getParent() == null))
        {
          localFragment.mContainer = paramg;
          localq.b();
        }
      }
    }
  }
  
  public void X(String paramString, FileDescriptor arg2, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("    ");
    localObject = ((StringBuilder)localObject).toString();
    this.c.e(paramString, ???, paramPrintWriter, paramArrayOfString);
    ??? = this.e;
    int i1 = 0;
    int i2;
    int i3;
    if (??? != null)
    {
      i2 = ???.size();
      if (i2 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Fragments Created Menus:");
        for (i3 = 0; i3 < i2; i3++)
        {
          ??? = (Fragment)this.e.get(i3);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i3);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(???.toString());
        }
      }
    }
    ??? = this.d;
    if (??? != null)
    {
      i2 = ???.size();
      if (i2 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Back Stack:");
        for (i3 = 0; i3 < i2; i3++)
        {
          ??? = (a)this.d.get(i3);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i3);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(???.toString());
          ???.x((String)localObject, paramPrintWriter);
        }
      }
    }
    paramPrintWriter.print(paramString);
    ??? = new StringBuilder();
    ???.append("Back Stack Index: ");
    ???.append(this.i.get());
    paramPrintWriter.println(???.toString());
    synchronized (this.a)
    {
      i2 = this.a.size();
      if (i2 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Pending Actions:");
        for (i3 = i1; i3 < i2; i3++)
        {
          paramArrayOfString = (o)this.a.get(i3);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i3);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(paramArrayOfString);
        }
      }
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("FragmentManager misc state:");
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mHost=");
      paramPrintWriter.println(this.r);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mContainer=");
      paramPrintWriter.println(this.s);
      if (this.t != null)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  mParent=");
        paramPrintWriter.println(this.t);
      }
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mCurState=");
      paramPrintWriter.print(this.q);
      paramPrintWriter.print(" mStateSaved=");
      paramPrintWriter.print(this.E);
      paramPrintWriter.print(" mStopped=");
      paramPrintWriter.print(this.F);
      paramPrintWriter.print(" mDestroyed=");
      paramPrintWriter.println(this.G);
      if (this.D)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  mNeedMenuInvalidate=");
        paramPrintWriter.println(this.D);
      }
      return;
    }
  }
  
  void X0(q paramq)
  {
    Fragment localFragment = paramq.k();
    if (localFragment.mDeferStart)
    {
      if (this.b)
      {
        this.H = true;
        return;
      }
      localFragment.mDeferStart = false;
      if (P) {
        paramq.m();
      } else {
        T0(localFragment);
      }
    }
  }
  
  public void Y0(int paramInt1, int paramInt2)
  {
    if (paramInt1 >= 0)
    {
      Z(new p(null, paramInt1, paramInt2), false);
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Bad id: ");
    localStringBuilder.append(paramInt1);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  void Z(o paramo, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      if (this.r == null)
      {
        if (this.G) {
          throw new IllegalStateException("FragmentManager has been destroyed");
        }
        throw new IllegalStateException("FragmentManager has not been attached to a host.");
      }
      p();
    }
    synchronized (this.a)
    {
      if (this.r == null)
      {
        if (paramBoolean) {
          return;
        }
        paramo = new java/lang/IllegalStateException;
        paramo.<init>("Activity has been destroyed");
        throw paramo;
      }
      this.a.add(paramo);
      o1();
      return;
    }
  }
  
  public boolean Z0()
  {
    return a1(null, -1, 0);
  }
  
  boolean b0(boolean paramBoolean)
  {
    a0(paramBoolean);
    paramBoolean = false;
    for (;;)
    {
      if (l0(this.I, this.J)) {
        this.b = true;
      }
      try
      {
        h1(this.I, this.J);
        q();
        paramBoolean = true;
      }
      finally
      {
        q();
      }
    }
    W();
    this.c.b();
    return paramBoolean;
  }
  
  boolean b1(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, String paramString, int paramInt1, int paramInt2)
  {
    Object localObject = this.d;
    if (localObject == null) {
      return false;
    }
    if ((paramString == null) && (paramInt1 < 0) && ((paramInt2 & 0x1) == 0))
    {
      paramInt1 = ((ArrayList)localObject).size() - 1;
      if (paramInt1 < 0) {
        return false;
      }
      paramArrayList.add(this.d.remove(paramInt1));
      paramArrayList1.add(Boolean.TRUE);
    }
    else
    {
      if ((paramString == null) && (paramInt1 < 0))
      {
        paramInt1 = -1;
      }
      else
      {
        for (int i1 = ((ArrayList)localObject).size() - 1; i1 >= 0; i1--)
        {
          localObject = (a)this.d.get(i1);
          if (((paramString != null) && (paramString.equals(((a)localObject).getName()))) || ((paramInt1 >= 0) && (paramInt1 == ((a)localObject).v))) {
            break;
          }
        }
        if (i1 < 0) {
          return false;
        }
        int i2 = i1;
        if ((paramInt2 & 0x1) != 0) {
          for (;;)
          {
            paramInt2 = i1 - 1;
            i2 = paramInt2;
            if (paramInt2 < 0) {
              break;
            }
            localObject = (a)this.d.get(paramInt2);
            if (paramString != null)
            {
              i1 = paramInt2;
              if (paramString.equals(((a)localObject).getName())) {}
            }
            else
            {
              i2 = paramInt2;
              if (paramInt1 < 0) {
                break;
              }
              i2 = paramInt2;
              if (paramInt1 != ((a)localObject).v) {
                break;
              }
              i1 = paramInt2;
            }
          }
        }
        paramInt1 = i2;
      }
      if (paramInt1 == this.d.size() - 1) {
        return false;
      }
      for (paramInt2 = this.d.size() - 1; paramInt2 > paramInt1; paramInt2--)
      {
        paramArrayList.add(this.d.remove(paramInt2));
        paramArrayList1.add(Boolean.TRUE);
      }
    }
    return true;
  }
  
  void c0(o paramo, boolean paramBoolean)
  {
    if ((paramBoolean) && ((this.r == null) || (this.G))) {
      return;
    }
    a0(paramBoolean);
    if (paramo.a(this.I, this.J)) {
      this.b = true;
    }
    try
    {
      h1(this.I, this.J);
      q();
    }
    finally
    {
      q();
    }
    W();
    this.c.b();
  }
  
  public void d1(Bundle paramBundle, String paramString, Fragment paramFragment)
  {
    if (paramFragment.mFragmentManager != this)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Fragment ");
      localStringBuilder.append(paramFragment);
      localStringBuilder.append(" is not currently in the FragmentManager");
      v1(new IllegalStateException(localStringBuilder.toString()));
    }
    paramBundle.putString(paramString, paramFragment.mWho);
  }
  
  void e(a parama)
  {
    if (this.d == null) {
      this.d = new ArrayList();
    }
    this.d.add(parama);
  }
  
  public void e1(m paramm, boolean paramBoolean)
  {
    this.o.o(paramm, paramBoolean);
  }
  
  void f(Fragment paramFragment, androidx.core.os.e parame)
  {
    if (this.m.get(paramFragment) == null) {
      this.m.put(paramFragment, new HashSet());
    }
    ((HashSet)this.m.get(paramFragment)).add(parame);
  }
  
  void f1(Fragment paramFragment, androidx.core.os.e parame)
  {
    HashSet localHashSet = (HashSet)this.m.get(paramFragment);
    if ((localHashSet != null) && (localHashSet.remove(parame)) && (localHashSet.isEmpty()))
    {
      this.m.remove(paramFragment);
      if (paramFragment.mState < 5)
      {
        x(paramFragment);
        T0(paramFragment);
      }
    }
  }
  
  q g(Fragment paramFragment)
  {
    if (H0(2))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("add: ");
      ((StringBuilder)localObject).append(paramFragment);
      Log.v("FragmentManager", ((StringBuilder)localObject).toString());
    }
    Object localObject = w(paramFragment);
    paramFragment.mFragmentManager = this;
    this.c.p((q)localObject);
    if (!paramFragment.mDetached)
    {
      this.c.a(paramFragment);
      paramFragment.mRemoving = false;
      if (paramFragment.mView == null) {
        paramFragment.mHiddenChanged = false;
      }
      if (I0(paramFragment)) {
        this.D = true;
      }
    }
    return localObject;
  }
  
  Fragment g0(String paramString)
  {
    return this.c.f(paramString);
  }
  
  void g1(Fragment paramFragment)
  {
    if (H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("remove: ");
      localStringBuilder.append(paramFragment);
      localStringBuilder.append(" nesting=");
      localStringBuilder.append(paramFragment.mBackStackNesting);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    boolean bool = paramFragment.isInBackStack();
    if ((!paramFragment.mDetached) || ((bool ^ true)))
    {
      this.c.s(paramFragment);
      if (I0(paramFragment)) {
        this.D = true;
      }
      paramFragment.mRemoving = true;
      s1(paramFragment);
    }
  }
  
  public void h(o paramo)
  {
    this.p.add(paramo);
  }
  
  public Fragment h0(int paramInt)
  {
    return this.c.g(paramInt);
  }
  
  void i(Fragment paramFragment)
  {
    this.M.a(paramFragment);
  }
  
  public Fragment i0(String paramString)
  {
    return this.c.h(paramString);
  }
  
  void i1(Fragment paramFragment)
  {
    this.M.i(paramFragment);
  }
  
  int j()
  {
    return this.i.getAndIncrement();
  }
  
  Fragment j0(String paramString)
  {
    return this.c.i(paramString);
  }
  
  @SuppressLint({"SyntheticAccessor"})
  void k(j<?> paramj, f paramf, final Fragment paramFragment)
  {
    if (this.r == null)
    {
      this.r = paramj;
      this.s = paramf;
      this.t = paramFragment;
      if (paramFragment != null) {
        h(new i(paramFragment));
      } else if ((paramj instanceof o)) {
        h((o)paramj);
      }
      if (this.t != null) {
        x1();
      }
      if ((paramj instanceof androidx.activity.c))
      {
        paramf = (androidx.activity.c)paramj;
        OnBackPressedDispatcher localOnBackPressedDispatcher = paramf.getOnBackPressedDispatcher();
        this.g = localOnBackPressedDispatcher;
        if (paramFragment != null) {
          paramf = paramFragment;
        }
        localOnBackPressedDispatcher.a(paramf, this.h);
      }
      if (paramFragment != null) {
        this.M = paramFragment.mFragmentManager.o0(paramFragment);
      } else if ((paramj instanceof n0)) {
        this.M = n.e(((n0)paramj).getViewModelStore());
      } else {
        this.M = new n(false);
      }
      this.M.j(M0());
      this.c.x(this.M);
      paramj = this.r;
      if ((paramj instanceof androidx.activity.result.c))
      {
        paramf = ((androidx.activity.result.c)paramj).getActivityResultRegistry();
        if (paramFragment != null)
        {
          paramj = new StringBuilder();
          paramj.append(paramFragment.mWho);
          paramj.append(":");
          paramj = paramj.toString();
        }
        else
        {
          paramj = "";
        }
        paramFragment = new StringBuilder();
        paramFragment.append("FragmentManager:");
        paramFragment.append(paramj);
        paramj = paramFragment.toString();
        paramFragment = new StringBuilder();
        paramFragment.append(paramj);
        paramFragment.append("StartActivityForResult");
        this.z = paramf.j(paramFragment.toString(), new c.c(), new j());
        paramFragment = new StringBuilder();
        paramFragment.append(paramj);
        paramFragment.append("StartIntentSenderForResult");
        this.A = paramf.j(paramFragment.toString(), new l(), new a());
        paramFragment = new StringBuilder();
        paramFragment.append(paramj);
        paramFragment.append("RequestPermissions");
        this.B = paramf.j(paramFragment.toString(), new c.b(), new b());
      }
      return;
    }
    throw new IllegalStateException("Already attached");
  }
  
  void k1(Parcelable paramParcelable)
  {
    if (paramParcelable == null) {
      return;
    }
    FragmentManagerState localFragmentManagerState = (FragmentManagerState)paramParcelable;
    if (localFragmentManagerState.mActive == null) {
      return;
    }
    this.c.t();
    Object localObject1 = localFragmentManagerState.mActive.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (FragmentState)((Iterator)localObject1).next();
      if (localObject2 != null)
      {
        Fragment localFragment = this.M.c(((FragmentState)localObject2).mWho);
        if (localFragment != null)
        {
          if (H0(2))
          {
            paramParcelable = new StringBuilder();
            paramParcelable.append("restoreSaveState: re-attaching retained ");
            paramParcelable.append(localFragment);
            Log.v("FragmentManager", paramParcelable.toString());
          }
          paramParcelable = new q(this.o, this.c, localFragment, (FragmentState)localObject2);
        }
        else
        {
          paramParcelable = new q(this.o, this.c, this.r.f().getClassLoader(), s0(), (FragmentState)localObject2);
        }
        localFragment = paramParcelable.k();
        localFragment.mFragmentManager = this;
        if (H0(2))
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("restoreSaveState: active (");
          ((StringBuilder)localObject2).append(localFragment.mWho);
          ((StringBuilder)localObject2).append("): ");
          ((StringBuilder)localObject2).append(localFragment);
          Log.v("FragmentManager", ((StringBuilder)localObject2).toString());
        }
        paramParcelable.o(this.r.f().getClassLoader());
        this.c.p(paramParcelable);
        paramParcelable.u(this.q);
      }
    }
    paramParcelable = this.M.f().iterator();
    while (paramParcelable.hasNext())
    {
      localObject1 = (Fragment)paramParcelable.next();
      if (!this.c.c(((Fragment)localObject1).mWho))
      {
        if (H0(2))
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("Discarding retained Fragment ");
          ((StringBuilder)localObject2).append(localObject1);
          ((StringBuilder)localObject2).append(" that was not found in the set of active Fragments ");
          ((StringBuilder)localObject2).append(localFragmentManagerState.mActive);
          Log.v("FragmentManager", ((StringBuilder)localObject2).toString());
        }
        this.M.i((Fragment)localObject1);
        ((Fragment)localObject1).mFragmentManager = this;
        localObject2 = new q(this.o, this.c, (Fragment)localObject1);
        ((q)localObject2).u(1);
        ((q)localObject2).m();
        ((Fragment)localObject1).mRemoving = true;
        ((q)localObject2).m();
      }
    }
    this.c.u(localFragmentManagerState.mAdded);
    paramParcelable = localFragmentManagerState.mBackStack;
    int i1 = 0;
    int i2;
    if (paramParcelable != null)
    {
      this.d = new ArrayList(localFragmentManagerState.mBackStack.length);
      for (i2 = 0;; i2++)
      {
        paramParcelable = localFragmentManagerState.mBackStack;
        if (i2 >= paramParcelable.length) {
          break;
        }
        paramParcelable = paramParcelable[i2].instantiate(this);
        if (H0(2))
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("restoreAllState: back stack #");
          ((StringBuilder)localObject1).append(i2);
          ((StringBuilder)localObject1).append(" (index ");
          ((StringBuilder)localObject1).append(paramParcelable.v);
          ((StringBuilder)localObject1).append("): ");
          ((StringBuilder)localObject1).append(paramParcelable);
          Log.v("FragmentManager", ((StringBuilder)localObject1).toString());
          localObject1 = new PrintWriter(new x("FragmentManager"));
          paramParcelable.y("  ", (PrintWriter)localObject1, false);
          ((PrintWriter)localObject1).close();
        }
        this.d.add(paramParcelable);
      }
    }
    this.d = null;
    this.i.set(localFragmentManagerState.mBackStackIndex);
    paramParcelable = localFragmentManagerState.mPrimaryNavActiveWho;
    if (paramParcelable != null)
    {
      paramParcelable = g0(paramParcelable);
      this.u = paramParcelable;
      M(paramParcelable);
    }
    paramParcelable = localFragmentManagerState.mResultKeys;
    if (paramParcelable != null) {
      for (i2 = i1; i2 < paramParcelable.size(); i2++)
      {
        localObject1 = (Bundle)localFragmentManagerState.mResults.get(i2);
        ((Bundle)localObject1).setClassLoader(this.r.f().getClassLoader());
        this.j.put(paramParcelable.get(i2), localObject1);
      }
    }
    this.C = new ArrayDeque(localFragmentManagerState.mLaunchedFragments);
  }
  
  void l(Fragment paramFragment)
  {
    StringBuilder localStringBuilder;
    if (H0(2))
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("attach: ");
      localStringBuilder.append(paramFragment);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    if (paramFragment.mDetached)
    {
      paramFragment.mDetached = false;
      if (!paramFragment.mAdded)
      {
        this.c.a(paramFragment);
        if (H0(2))
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("add from attach: ");
          localStringBuilder.append(paramFragment);
          Log.v("FragmentManager", localStringBuilder.toString());
        }
        if (I0(paramFragment)) {
          this.D = true;
        }
      }
    }
  }
  
  public s m()
  {
    return new a(this);
  }
  
  public k m0(int paramInt)
  {
    return (k)this.d.get(paramInt);
  }
  
  Parcelable m1()
  {
    k0();
    Y();
    b0(true);
    this.E = true;
    this.M.j(true);
    ArrayList localArrayList1 = this.c.v();
    boolean bool = localArrayList1.isEmpty();
    Object localObject1 = null;
    if (bool)
    {
      if (H0(2)) {
        Log.v("FragmentManager", "saveAllState: no fragments!");
      }
      return null;
    }
    ArrayList localArrayList2 = this.c.w();
    ArrayList localArrayList3 = this.d;
    Object localObject2 = localObject1;
    if (localArrayList3 != null)
    {
      int i1 = localArrayList3.size();
      localObject2 = localObject1;
      if (i1 > 0)
      {
        localObject1 = new BackStackState[i1];
        for (int i2 = 0;; i2++)
        {
          localObject2 = localObject1;
          if (i2 >= i1) {
            break;
          }
          localObject1[i2] = new BackStackState((a)this.d.get(i2));
          if (H0(2))
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("saveAllState: adding back stack #");
            ((StringBuilder)localObject2).append(i2);
            ((StringBuilder)localObject2).append(": ");
            ((StringBuilder)localObject2).append(this.d.get(i2));
            Log.v("FragmentManager", ((StringBuilder)localObject2).toString());
          }
        }
      }
    }
    localObject1 = new FragmentManagerState();
    ((FragmentManagerState)localObject1).mActive = localArrayList1;
    ((FragmentManagerState)localObject1).mAdded = localArrayList2;
    ((FragmentManagerState)localObject1).mBackStack = ((BackStackState[])localObject2);
    ((FragmentManagerState)localObject1).mBackStackIndex = this.i.get();
    localObject2 = this.u;
    if (localObject2 != null) {
      ((FragmentManagerState)localObject1).mPrimaryNavActiveWho = ((Fragment)localObject2).mWho;
    }
    ((FragmentManagerState)localObject1).mResultKeys.addAll(this.j.keySet());
    ((FragmentManagerState)localObject1).mResults.addAll(this.j.values());
    ((FragmentManagerState)localObject1).mLaunchedFragments = new ArrayList(this.C);
    return localObject1;
  }
  
  public int n0()
  {
    ArrayList localArrayList = this.d;
    int i1;
    if (localArrayList != null) {
      i1 = localArrayList.size();
    } else {
      i1 = 0;
    }
    return i1;
  }
  
  public Fragment.SavedState n1(Fragment paramFragment)
  {
    q localq = this.c.m(paramFragment.mWho);
    if ((localq == null) || (!localq.k().equals(paramFragment)))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Fragment ");
      localStringBuilder.append(paramFragment);
      localStringBuilder.append(" is not currently in the FragmentManager");
      v1(new IllegalStateException(localStringBuilder.toString()));
    }
    return localq.r();
  }
  
  boolean o()
  {
    Iterator localIterator = this.c.l().iterator();
    boolean bool1 = false;
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      boolean bool2 = bool1;
      if (localFragment != null) {
        bool2 = I0(localFragment);
      }
      bool1 = bool2;
      if (bool2) {
        return true;
      }
    }
    return false;
  }
  
  void o1()
  {
    synchronized (this.a)
    {
      ArrayList localArrayList2 = this.L;
      int i1 = 0;
      int i2;
      if ((localArrayList2 != null) && (!localArrayList2.isEmpty())) {
        i2 = 1;
      } else {
        i2 = 0;
      }
      if (this.a.size() == 1) {
        i1 = 1;
      }
      if ((i2 != 0) || (i1 != 0))
      {
        this.r.g().removeCallbacks(this.N);
        this.r.g().post(this.N);
        x1();
      }
      return;
    }
  }
  
  f p0()
  {
    return this.s;
  }
  
  void p1(Fragment paramFragment, boolean paramBoolean)
  {
    paramFragment = r0(paramFragment);
    if ((paramFragment != null) && ((paramFragment instanceof g))) {
      ((g)paramFragment).setDrawDisappearingViewsLast(paramBoolean ^ true);
    }
  }
  
  public Fragment q0(Bundle paramBundle, String paramString)
  {
    String str = paramBundle.getString(paramString);
    if (str == null) {
      return null;
    }
    Fragment localFragment = g0(str);
    if (localFragment == null)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("Fragment no longer exists for key ");
      paramBundle.append(paramString);
      paramBundle.append(": unique id ");
      paramBundle.append(str);
      v1(new IllegalStateException(paramBundle.toString()));
    }
    return localFragment;
  }
  
  void q1(Fragment paramFragment, Lifecycle.State paramState)
  {
    if ((paramFragment.equals(g0(paramFragment.mWho))) && ((paramFragment.mHost == null) || (paramFragment.mFragmentManager == this)))
    {
      paramFragment.mMaxState = paramState;
      return;
    }
    paramState = new StringBuilder();
    paramState.append("Fragment ");
    paramState.append(paramFragment);
    paramState.append(" is not an active fragment of FragmentManager ");
    paramState.append(this);
    throw new IllegalArgumentException(paramState.toString());
  }
  
  public final void r(String paramString)
  {
    this.j.remove(paramString);
  }
  
  void r1(Fragment paramFragment)
  {
    if ((paramFragment != null) && ((!paramFragment.equals(g0(paramFragment.mWho))) || ((paramFragment.mHost != null) && (paramFragment.mFragmentManager != this))))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Fragment ");
      ((StringBuilder)localObject).append(paramFragment);
      ((StringBuilder)localObject).append(" is not an active fragment of FragmentManager ");
      ((StringBuilder)localObject).append(this);
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    Object localObject = this.u;
    this.u = paramFragment;
    M((Fragment)localObject);
    M(this.u);
  }
  
  public i s0()
  {
    Object localObject = this.v;
    if (localObject != null) {
      return localObject;
    }
    localObject = this.t;
    if (localObject != null) {
      return ((Fragment)localObject).mFragmentManager.s0();
    }
    return this.w;
  }
  
  r t0()
  {
    return this.c;
  }
  
  void t1(Fragment paramFragment)
  {
    if (H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("show: ");
      localStringBuilder.append(paramFragment);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    if (paramFragment.mHidden)
    {
      paramFragment.mHidden = false;
      paramFragment.mHiddenChanged ^= true;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("FragmentManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    Object localObject = this.t;
    if (localObject != null)
    {
      localStringBuilder.append(localObject.getClass().getSimpleName());
      localStringBuilder.append("{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this.t)));
      localStringBuilder.append("}");
    }
    else
    {
      localObject = this.r;
      if (localObject != null)
      {
        localStringBuilder.append(localObject.getClass().getSimpleName());
        localStringBuilder.append("{");
        localStringBuilder.append(Integer.toHexString(System.identityHashCode(this.r)));
        localStringBuilder.append("}");
      }
      else
      {
        localStringBuilder.append("null");
      }
    }
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
  
  void u(a parama, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean1) {
      parama.A(paramBoolean3);
    } else {
      parama.z();
    }
    Object localObject1 = new ArrayList(1);
    Object localObject2 = new ArrayList(1);
    ((ArrayList)localObject1).add(parama);
    ((ArrayList)localObject2).add(Boolean.valueOf(paramBoolean1));
    if ((paramBoolean2) && (this.q >= 1)) {
      t.B(this.r.f(), this.s, (ArrayList)localObject1, (ArrayList)localObject2, 0, 1, true, this.n);
    }
    if (paramBoolean3) {
      S0(this.q, true);
    }
    localObject2 = this.c.l().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (Fragment)((Iterator)localObject2).next();
      if ((localObject1 != null) && (((Fragment)localObject1).mView != null) && (((Fragment)localObject1).mIsNewlyAdded) && (parama.C(((Fragment)localObject1).mContainerId)))
      {
        float f1 = ((Fragment)localObject1).mPostponedAlpha;
        if (f1 > 0.0F) {
          ((Fragment)localObject1).mView.setAlpha(f1);
        }
        if (paramBoolean3)
        {
          ((Fragment)localObject1).mPostponedAlpha = 0.0F;
        }
        else
        {
          ((Fragment)localObject1).mPostponedAlpha = -1.0F;
          ((Fragment)localObject1).mIsNewlyAdded = false;
        }
      }
    }
  }
  
  public List<Fragment> u0()
  {
    return this.c.n();
  }
  
  j<?> v0()
  {
    return this.r;
  }
  
  q w(Fragment paramFragment)
  {
    q localq = this.c.m(paramFragment.mWho);
    if (localq != null) {
      return localq;
    }
    paramFragment = new q(this.o, this.c, paramFragment);
    paramFragment.o(this.r.f().getClassLoader());
    paramFragment.u(this.q);
    return paramFragment;
  }
  
  LayoutInflater.Factory2 w0()
  {
    return this.f;
  }
  
  public void w1(m paramm)
  {
    this.o.p(paramm);
  }
  
  l x0()
  {
    return this.o;
  }
  
  void y(Fragment paramFragment)
  {
    StringBuilder localStringBuilder;
    if (H0(2))
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("detach: ");
      localStringBuilder.append(paramFragment);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    if (!paramFragment.mDetached)
    {
      paramFragment.mDetached = true;
      if (paramFragment.mAdded)
      {
        if (H0(2))
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("remove from detach: ");
          localStringBuilder.append(paramFragment);
          Log.v("FragmentManager", localStringBuilder.toString());
        }
        this.c.s(paramFragment);
        if (I0(paramFragment)) {
          this.D = true;
        }
        s1(paramFragment);
      }
    }
  }
  
  Fragment y0()
  {
    return this.t;
  }
  
  void z()
  {
    this.E = false;
    this.F = false;
    this.M.j(false);
    T(4);
  }
  
  public Fragment z0()
  {
    return this.u;
  }
  
  @SuppressLint({"BanParcelableUsage"})
  static class LaunchedFragmentInfo
    implements Parcelable
  {
    public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new a();
    int mRequestCode;
    String mWho;
    
    LaunchedFragmentInfo(Parcel paramParcel)
    {
      this.mWho = paramParcel.readString();
      this.mRequestCode = paramParcel.readInt();
    }
    
    LaunchedFragmentInfo(String paramString, int paramInt)
    {
      this.mWho = paramString;
      this.mRequestCode = paramInt;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(this.mWho);
      paramParcel.writeInt(this.mRequestCode);
    }
    
    class a
      implements Parcelable.Creator<FragmentManager.LaunchedFragmentInfo>
    {
      public FragmentManager.LaunchedFragmentInfo a(Parcel paramParcel)
      {
        return new FragmentManager.LaunchedFragmentInfo(paramParcel);
      }
      
      public FragmentManager.LaunchedFragmentInfo[] b(int paramInt)
      {
        return new FragmentManager.LaunchedFragmentInfo[paramInt];
      }
    }
  }
  
  class a
    implements androidx.activity.result.a<ActivityResult>
  {
    a() {}
    
    public void b(ActivityResult paramActivityResult)
    {
      Object localObject = (FragmentManager.LaunchedFragmentInfo)FragmentManager.this.C.pollFirst();
      if (localObject == null)
      {
        paramActivityResult = new StringBuilder();
        paramActivityResult.append("No IntentSenders were started for ");
        paramActivityResult.append(this);
        Log.w("FragmentManager", paramActivityResult.toString());
        return;
      }
      String str = ((FragmentManager.LaunchedFragmentInfo)localObject).mWho;
      int i = ((FragmentManager.LaunchedFragmentInfo)localObject).mRequestCode;
      localObject = FragmentManager.c(FragmentManager.this).i(str);
      if (localObject == null)
      {
        paramActivityResult = new StringBuilder();
        paramActivityResult.append("Intent Sender result delivered for unknown Fragment ");
        paramActivityResult.append(str);
        Log.w("FragmentManager", paramActivityResult.toString());
        return;
      }
      ((Fragment)localObject).onActivityResult(i, paramActivityResult.getResultCode(), paramActivityResult.getData());
    }
  }
  
  class b
    implements androidx.activity.result.a<Map<String, Boolean>>
  {
    b() {}
    
    @SuppressLint({"SyntheticAccessor"})
    public void b(Map<String, Boolean> paramMap)
    {
      String[] arrayOfString = (String[])paramMap.keySet().toArray(new String[0]);
      Object localObject1 = new ArrayList(paramMap.values());
      paramMap = new int[((ArrayList)localObject1).size()];
      for (int i = 0; i < ((ArrayList)localObject1).size(); i++)
      {
        int j;
        if (((Boolean)((ArrayList)localObject1).get(i)).booleanValue()) {
          j = 0;
        } else {
          j = -1;
        }
        paramMap[i] = j;
      }
      Object localObject2 = (FragmentManager.LaunchedFragmentInfo)FragmentManager.this.C.pollFirst();
      if (localObject2 == null)
      {
        paramMap = new StringBuilder();
        paramMap.append("No permissions were requested for ");
        paramMap.append(this);
        Log.w("FragmentManager", paramMap.toString());
        return;
      }
      localObject1 = ((FragmentManager.LaunchedFragmentInfo)localObject2).mWho;
      i = ((FragmentManager.LaunchedFragmentInfo)localObject2).mRequestCode;
      localObject2 = FragmentManager.c(FragmentManager.this).i((String)localObject1);
      if (localObject2 == null)
      {
        paramMap = new StringBuilder();
        paramMap.append("Permission request result delivered for unknown Fragment ");
        paramMap.append((String)localObject1);
        Log.w("FragmentManager", paramMap.toString());
        return;
      }
      ((Fragment)localObject2).onRequestPermissionsResult(i, arrayOfString, paramMap);
    }
  }
  
  class c
    extends androidx.activity.b
  {
    c(boolean paramBoolean)
    {
      super();
    }
    
    public void b()
    {
      FragmentManager.this.D0();
    }
  }
  
  class d
    implements t.g
  {
    d() {}
    
    public void a(Fragment paramFragment, androidx.core.os.e parame)
    {
      if (!parame.b()) {
        FragmentManager.this.f1(paramFragment, parame);
      }
    }
    
    public void b(Fragment paramFragment, androidx.core.os.e parame)
    {
      FragmentManager.this.f(paramFragment, parame);
    }
  }
  
  class e
    extends i
  {
    e() {}
    
    public Fragment a(ClassLoader paramClassLoader, String paramString)
    {
      return FragmentManager.this.v0().b(FragmentManager.this.v0().f(), paramString, null);
    }
  }
  
  class f
    implements y
  {
    f() {}
    
    public SpecialEffectsController a(ViewGroup paramViewGroup)
    {
      return new b(paramViewGroup);
    }
  }
  
  class g
    implements Runnable
  {
    g() {}
    
    public void run()
    {
      FragmentManager.this.b0(true);
    }
  }
  
  class h
    extends AnimatorListenerAdapter
  {
    h(ViewGroup paramViewGroup, View paramView, Fragment paramFragment) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      this.a.endViewTransition(localView);
      paramAnimator.removeListener(this);
      paramAnimator = paramFragment;
      View localView = paramAnimator.mView;
      if ((localView != null) && (paramAnimator.mHidden)) {
        localView.setVisibility(8);
      }
    }
  }
  
  class i
    implements o
  {
    i(Fragment paramFragment) {}
    
    public void a(FragmentManager paramFragmentManager, Fragment paramFragment)
    {
      paramFragment.onAttachFragment(paramFragment);
    }
  }
  
  class j
    implements androidx.activity.result.a<ActivityResult>
  {
    j() {}
    
    public void b(ActivityResult paramActivityResult)
    {
      Object localObject = (FragmentManager.LaunchedFragmentInfo)FragmentManager.this.C.pollFirst();
      if (localObject == null)
      {
        paramActivityResult = new StringBuilder();
        paramActivityResult.append("No Activities were started for result for ");
        paramActivityResult.append(this);
        Log.w("FragmentManager", paramActivityResult.toString());
        return;
      }
      String str = ((FragmentManager.LaunchedFragmentInfo)localObject).mWho;
      int i = ((FragmentManager.LaunchedFragmentInfo)localObject).mRequestCode;
      localObject = FragmentManager.c(FragmentManager.this).i(str);
      if (localObject == null)
      {
        paramActivityResult = new StringBuilder();
        paramActivityResult.append("Activity result delivered for unknown Fragment ");
        paramActivityResult.append(str);
        Log.w("FragmentManager", paramActivityResult.toString());
        return;
      }
      ((Fragment)localObject).onActivityResult(i, paramActivityResult.getResultCode(), paramActivityResult.getData());
    }
  }
  
  public static abstract interface k
  {
    public abstract String getName();
  }
  
  static class l
    extends c.a<IntentSenderRequest, ActivityResult>
  {
    public Intent d(Context paramContext, IntentSenderRequest paramIntentSenderRequest)
    {
      Intent localIntent1 = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
      Intent localIntent2 = paramIntentSenderRequest.getFillInIntent();
      paramContext = paramIntentSenderRequest;
      if (localIntent2 != null)
      {
        Bundle localBundle = localIntent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        paramContext = paramIntentSenderRequest;
        if (localBundle != null)
        {
          localIntent1.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", localBundle);
          localIntent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
          paramContext = paramIntentSenderRequest;
          if (localIntent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
            paramContext = new IntentSenderRequest.b(paramIntentSenderRequest.getIntentSender()).b(null).c(paramIntentSenderRequest.getFlagsValues(), paramIntentSenderRequest.getFlagsMask()).a();
          }
        }
      }
      localIntent1.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", paramContext);
      if (FragmentManager.H0(2))
      {
        paramContext = new StringBuilder();
        paramContext.append("CreateIntent created the following intent: ");
        paramContext.append(localIntent1);
        Log.v("FragmentManager", paramContext.toString());
      }
      return localIntent1;
    }
    
    public ActivityResult e(int paramInt, Intent paramIntent)
    {
      return new ActivityResult(paramInt, paramIntent);
    }
  }
  
  public static abstract class m
  {
    @Deprecated
    public void a(FragmentManager paramFragmentManager, Fragment paramFragment, Bundle paramBundle) {}
    
    public void b(FragmentManager paramFragmentManager, Fragment paramFragment, Context paramContext) {}
    
    public void c(FragmentManager paramFragmentManager, Fragment paramFragment, Bundle paramBundle) {}
    
    public void d(FragmentManager paramFragmentManager, Fragment paramFragment) {}
    
    public void e(FragmentManager paramFragmentManager, Fragment paramFragment) {}
    
    public void f(FragmentManager paramFragmentManager, Fragment paramFragment) {}
    
    public void g(FragmentManager paramFragmentManager, Fragment paramFragment, Context paramContext) {}
    
    public void h(FragmentManager paramFragmentManager, Fragment paramFragment, Bundle paramBundle) {}
    
    public void i(FragmentManager paramFragmentManager, Fragment paramFragment) {}
    
    public void j(FragmentManager paramFragmentManager, Fragment paramFragment, Bundle paramBundle) {}
    
    public void k(FragmentManager paramFragmentManager, Fragment paramFragment) {}
    
    public void l(FragmentManager paramFragmentManager, Fragment paramFragment) {}
    
    public void m(FragmentManager paramFragmentManager, Fragment paramFragment, View paramView, Bundle paramBundle) {}
    
    public void n(FragmentManager paramFragmentManager, Fragment paramFragment) {}
  }
  
  public static abstract interface n
  {
    public abstract void onBackStackChanged();
  }
  
  static abstract interface o
  {
    public abstract boolean a(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1);
  }
  
  private class p
    implements FragmentManager.o
  {
    final String a;
    final int b;
    final int c;
    
    p(String paramString, int paramInt1, int paramInt2)
    {
      this.a = paramString;
      this.b = paramInt1;
      this.c = paramInt2;
    }
    
    public boolean a(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1)
    {
      Fragment localFragment = FragmentManager.this.u;
      if ((localFragment != null) && (this.b < 0) && (this.a == null) && (localFragment.getChildFragmentManager().Z0())) {
        return false;
      }
      return FragmentManager.this.b1(paramArrayList, paramArrayList1, this.a, this.b, this.c);
    }
  }
  
  static class q
    implements Fragment.k
  {
    final boolean a;
    final a b;
    private int c;
    
    q(a parama, boolean paramBoolean)
    {
      this.a = paramBoolean;
      this.b = parama;
    }
    
    public void a()
    {
      this.c += 1;
    }
    
    public void b()
    {
      int i = this.c - 1;
      this.c = i;
      if (i != 0) {
        return;
      }
      this.b.t.o1();
    }
    
    void c()
    {
      a locala = this.b;
      locala.t.u(locala, this.a, false, false);
    }
    
    void d()
    {
      int i;
      if (this.c > 0) {
        i = 1;
      } else {
        i = 0;
      }
      Object localObject = this.b.t.u0().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Fragment localFragment = (Fragment)((Iterator)localObject).next();
        localFragment.setOnStartEnterTransitionListener(null);
        if ((i != 0) && (localFragment.isPostponed())) {
          localFragment.startPostponedEnterTransition();
        }
      }
      localObject = this.b;
      ((a)localObject).t.u((a)localObject, this.a, i ^ 0x1, true);
    }
    
    public boolean e()
    {
      boolean bool;
      if (this.c == 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.FragmentManager
 * JD-Core Version:    0.7.0.1
 */