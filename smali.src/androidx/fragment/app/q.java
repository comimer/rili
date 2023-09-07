package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.os.BaseBundle;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.a0;
import androidx.lifecycle.n0;
import androidx.lifecycle.u;
import d0.b;
import java.util.Iterator;
import java.util.List;

class q
{
  private final l a;
  private final r b;
  private final Fragment c;
  private boolean d = false;
  private int e = -1;
  
  q(l paraml, r paramr, Fragment paramFragment)
  {
    this.a = paraml;
    this.b = paramr;
    this.c = paramFragment;
  }
  
  q(l paraml, r paramr, Fragment paramFragment, FragmentState paramFragmentState)
  {
    this.a = paraml;
    this.b = paramr;
    this.c = paramFragment;
    paramFragment.mSavedViewState = null;
    paramFragment.mSavedViewRegistryState = null;
    paramFragment.mBackStackNesting = 0;
    paramFragment.mInLayout = false;
    paramFragment.mAdded = false;
    paraml = paramFragment.mTarget;
    if (paraml != null) {
      paraml = paraml.mWho;
    } else {
      paraml = null;
    }
    paramFragment.mTargetWho = paraml;
    paramFragment.mTarget = null;
    paraml = paramFragmentState.mSavedFragmentState;
    if (paraml != null) {
      paramFragment.mSavedFragmentState = paraml;
    } else {
      paramFragment.mSavedFragmentState = new Bundle();
    }
  }
  
  q(l paraml, r paramr, ClassLoader paramClassLoader, i parami, FragmentState paramFragmentState)
  {
    this.a = paraml;
    this.b = paramr;
    paraml = parami.a(paramClassLoader, paramFragmentState.mClassName);
    this.c = paraml;
    paramr = paramFragmentState.mArguments;
    if (paramr != null) {
      paramr.setClassLoader(paramClassLoader);
    }
    paraml.setArguments(paramFragmentState.mArguments);
    paraml.mWho = paramFragmentState.mWho;
    paraml.mFromLayout = paramFragmentState.mFromLayout;
    paraml.mRestored = true;
    paraml.mFragmentId = paramFragmentState.mFragmentId;
    paraml.mContainerId = paramFragmentState.mContainerId;
    paraml.mTag = paramFragmentState.mTag;
    paraml.mRetainInstance = paramFragmentState.mRetainInstance;
    paraml.mRemoving = paramFragmentState.mRemoving;
    paraml.mDetached = paramFragmentState.mDetached;
    paraml.mHidden = paramFragmentState.mHidden;
    paraml.mMaxState = androidx.lifecycle.Lifecycle.State.values()[paramFragmentState.mMaxLifecycleState];
    paramr = paramFragmentState.mSavedFragmentState;
    if (paramr != null) {
      paraml.mSavedFragmentState = paramr;
    } else {
      paraml.mSavedFragmentState = new Bundle();
    }
    if (FragmentManager.H0(2))
    {
      paramr = new StringBuilder();
      paramr.append("Instantiated fragment ");
      paramr.append(paraml);
      Log.v("FragmentManager", paramr.toString());
    }
  }
  
  private boolean l(View paramView)
  {
    if (paramView == this.c.mView) {
      return true;
    }
    for (paramView = paramView.getParent(); paramView != null; paramView = paramView.getParent()) {
      if (paramView == this.c.mView) {
        return true;
      }
    }
    return false;
  }
  
  private Bundle q()
  {
    Object localObject1 = new Bundle();
    this.c.performSaveInstanceState((Bundle)localObject1);
    this.a.j(this.c, (Bundle)localObject1, false);
    Object localObject2 = localObject1;
    if (((BaseBundle)localObject1).isEmpty()) {
      localObject2 = null;
    }
    if (this.c.mView != null) {
      t();
    }
    localObject1 = localObject2;
    if (this.c.mSavedViewState != null)
    {
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new Bundle();
      }
      ((Bundle)localObject1).putSparseParcelableArray("android:view_state", this.c.mSavedViewState);
    }
    localObject2 = localObject1;
    if (this.c.mSavedViewRegistryState != null)
    {
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new Bundle();
      }
      ((Bundle)localObject2).putBundle("android:view_registry_state", this.c.mSavedViewRegistryState);
    }
    localObject1 = localObject2;
    if (!this.c.mUserVisibleHint)
    {
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new Bundle();
      }
      ((BaseBundle)localObject1).putBoolean("android:user_visible_hint", this.c.mUserVisibleHint);
    }
    return localObject1;
  }
  
  void a()
  {
    if (FragmentManager.H0(3))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("moveto ACTIVITY_CREATED: ");
      ((StringBuilder)localObject).append(this.c);
      Log.d("FragmentManager", ((StringBuilder)localObject).toString());
    }
    Object localObject = this.c;
    ((Fragment)localObject).performActivityCreated(((Fragment)localObject).mSavedFragmentState);
    l locall = this.a;
    localObject = this.c;
    locall.a((Fragment)localObject, ((Fragment)localObject).mSavedFragmentState, false);
  }
  
  void b()
  {
    int i = this.b.j(this.c);
    Fragment localFragment = this.c;
    localFragment.mContainer.addView(localFragment.mView, i);
  }
  
  void c()
  {
    if (FragmentManager.H0(3))
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("moveto ATTACHED: ");
      ((StringBuilder)localObject1).append(this.c);
      Log.d("FragmentManager", ((StringBuilder)localObject1).toString());
    }
    Fragment localFragment = this.c;
    Object localObject2 = localFragment.mTarget;
    Object localObject1 = null;
    if (localObject2 != null)
    {
      localObject1 = this.b.m(((Fragment)localObject2).mWho);
      if (localObject1 != null)
      {
        localObject2 = this.c;
        ((Fragment)localObject2).mTargetWho = ((Fragment)localObject2).mTarget.mWho;
        ((Fragment)localObject2).mTarget = null;
      }
      else
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("Fragment ");
        ((StringBuilder)localObject1).append(this.c);
        ((StringBuilder)localObject1).append(" declared target fragment ");
        ((StringBuilder)localObject1).append(this.c.mTarget);
        ((StringBuilder)localObject1).append(" that does not belong to this FragmentManager!");
        throw new IllegalStateException(((StringBuilder)localObject1).toString());
      }
    }
    else
    {
      localObject2 = localFragment.mTargetWho;
      if (localObject2 != null)
      {
        localObject1 = this.b.m((String)localObject2);
        if (localObject1 == null)
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("Fragment ");
          ((StringBuilder)localObject1).append(this.c);
          ((StringBuilder)localObject1).append(" declared target fragment ");
          ((StringBuilder)localObject1).append(this.c.mTargetWho);
          ((StringBuilder)localObject1).append(" that does not belong to this FragmentManager!");
          throw new IllegalStateException(((StringBuilder)localObject1).toString());
        }
      }
    }
    if ((localObject1 != null) && ((FragmentManager.P) || (((q)localObject1).k().mState < 1))) {
      ((q)localObject1).m();
    }
    localObject1 = this.c;
    ((Fragment)localObject1).mHost = ((Fragment)localObject1).mFragmentManager.v0();
    localObject1 = this.c;
    ((Fragment)localObject1).mParentFragment = ((Fragment)localObject1).mFragmentManager.y0();
    this.a.g(this.c, false);
    this.c.performAttach();
    this.a.b(this.c, false);
  }
  
  int d()
  {
    Object localObject1 = this.c;
    if (((Fragment)localObject1).mFragmentManager == null) {
      return ((Fragment)localObject1).mState;
    }
    int i = this.e;
    int j = b.a[localObject1.mMaxState.ordinal()];
    int k = i;
    if (j != 1) {
      if (j != 2)
      {
        if (j != 3)
        {
          if (j != 4) {
            k = Math.min(i, -1);
          } else {
            k = Math.min(i, 0);
          }
        }
        else {
          k = Math.min(i, 1);
        }
      }
      else {
        k = Math.min(i, 5);
      }
    }
    localObject1 = this.c;
    i = k;
    if (((Fragment)localObject1).mFromLayout) {
      if (((Fragment)localObject1).mInLayout)
      {
        k = Math.max(this.e, 2);
        localObject1 = this.c.mView;
        i = k;
        if (localObject1 != null)
        {
          i = k;
          if (((View)localObject1).getParent() == null) {
            i = Math.min(k, 2);
          }
        }
      }
      else if (this.e < 4)
      {
        i = Math.min(k, ((Fragment)localObject1).mState);
      }
      else
      {
        i = Math.min(k, 1);
      }
    }
    k = i;
    if (!this.c.mAdded) {
      k = Math.min(i, 1);
    }
    Object localObject2 = null;
    localObject1 = localObject2;
    if (FragmentManager.P)
    {
      Fragment localFragment = this.c;
      ViewGroup localViewGroup = localFragment.mContainer;
      localObject1 = localObject2;
      if (localViewGroup != null) {
        localObject1 = SpecialEffectsController.n(localViewGroup, localFragment.getParentFragmentManager()).l(this);
      }
    }
    if (localObject1 == SpecialEffectsController.Operation.LifecycleImpact.ADDING)
    {
      i = Math.min(k, 6);
    }
    else if (localObject1 == SpecialEffectsController.Operation.LifecycleImpact.REMOVING)
    {
      i = Math.max(k, 3);
    }
    else
    {
      localObject1 = this.c;
      i = k;
      if (((Fragment)localObject1).mRemoving) {
        if (((Fragment)localObject1).isInBackStack()) {
          i = Math.min(k, 1);
        } else {
          i = Math.min(k, -1);
        }
      }
    }
    localObject1 = this.c;
    k = i;
    if (((Fragment)localObject1).mDeferStart)
    {
      k = i;
      if (((Fragment)localObject1).mState < 5) {
        k = Math.min(i, 4);
      }
    }
    if (FragmentManager.H0(2))
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("computeExpectedState() of ");
      ((StringBuilder)localObject1).append(k);
      ((StringBuilder)localObject1).append(" for ");
      ((StringBuilder)localObject1).append(this.c);
      Log.v("FragmentManager", ((StringBuilder)localObject1).toString());
    }
    return k;
  }
  
  void e()
  {
    if (FragmentManager.H0(3))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("moveto CREATED: ");
      ((StringBuilder)localObject).append(this.c);
      Log.d("FragmentManager", ((StringBuilder)localObject).toString());
    }
    Object localObject = this.c;
    if (!((Fragment)localObject).mIsCreated)
    {
      this.a.h((Fragment)localObject, ((Fragment)localObject).mSavedFragmentState, false);
      localObject = this.c;
      ((Fragment)localObject).performCreate(((Fragment)localObject).mSavedFragmentState);
      localObject = this.a;
      Fragment localFragment = this.c;
      ((l)localObject).c(localFragment, localFragment.mSavedFragmentState, false);
    }
    else
    {
      ((Fragment)localObject).restoreChildFragmentState(((Fragment)localObject).mSavedFragmentState);
      this.c.mState = 1;
    }
  }
  
  void f()
  {
    if (this.c.mFromLayout) {
      return;
    }
    if (FragmentManager.H0(3))
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("moveto CREATE_VIEW: ");
      ((StringBuilder)localObject1).append(this.c);
      Log.d("FragmentManager", ((StringBuilder)localObject1).toString());
    }
    Object localObject1 = this.c;
    LayoutInflater localLayoutInflater = ((Fragment)localObject1).performGetLayoutInflater(((Fragment)localObject1).mSavedFragmentState);
    Object localObject3 = null;
    Fragment localFragment = this.c;
    localObject1 = localFragment.mContainer;
    int i;
    Object localObject2;
    if (localObject1 == null)
    {
      i = localFragment.mContainerId;
      localObject1 = localObject3;
      if (i != 0) {
        if (i != -1)
        {
          localObject3 = (ViewGroup)localFragment.mFragmentManager.p0().c(this.c.mContainerId);
          localObject1 = localObject3;
          if (localObject3 == null)
          {
            localObject1 = this.c;
            if (((Fragment)localObject1).mRestored)
            {
              localObject1 = localObject3;
            }
            else
            {
              try
              {
                localObject1 = ((Fragment)localObject1).getResources().getResourceName(this.c.mContainerId);
              }
              catch (Resources.NotFoundException localNotFoundException)
              {
                localObject2 = "unknown";
              }
              localObject3 = new StringBuilder();
              ((StringBuilder)localObject3).append("No view found for id 0x");
              ((StringBuilder)localObject3).append(Integer.toHexString(this.c.mContainerId));
              ((StringBuilder)localObject3).append(" (");
              ((StringBuilder)localObject3).append((String)localObject2);
              ((StringBuilder)localObject3).append(") for fragment ");
              ((StringBuilder)localObject3).append(this.c);
              throw new IllegalArgumentException(((StringBuilder)localObject3).toString());
            }
          }
        }
        else
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("Cannot create fragment ");
          ((StringBuilder)localObject2).append(this.c);
          ((StringBuilder)localObject2).append(" for a container view with no id");
          throw new IllegalArgumentException(((StringBuilder)localObject2).toString());
        }
      }
    }
    localObject3 = this.c;
    ((Fragment)localObject3).mContainer = ((ViewGroup)localObject2);
    ((Fragment)localObject3).performCreateView(localLayoutInflater, (ViewGroup)localObject2, ((Fragment)localObject3).mSavedFragmentState);
    localObject3 = this.c.mView;
    if (localObject3 != null)
    {
      boolean bool1 = false;
      ((View)localObject3).setSaveFromParentEnabled(false);
      localObject3 = this.c;
      ((Fragment)localObject3).mView.setTag(b.a, localObject3);
      if (localObject2 != null) {
        b();
      }
      localObject2 = this.c;
      if (((Fragment)localObject2).mHidden) {
        ((Fragment)localObject2).mView.setVisibility(8);
      }
      if (a0.O(this.c.mView))
      {
        a0.i0(this.c.mView);
      }
      else
      {
        localObject2 = this.c.mView;
        ((View)localObject2).addOnAttachStateChangeListener(new a((View)localObject2));
      }
      this.c.performViewCreated();
      localObject2 = this.a;
      localObject3 = this.c;
      ((l)localObject2).m((Fragment)localObject3, ((Fragment)localObject3).mView, ((Fragment)localObject3).mSavedFragmentState, false);
      i = this.c.mView.getVisibility();
      float f = this.c.mView.getAlpha();
      if (FragmentManager.P)
      {
        this.c.setPostOnViewCreatedAlpha(f);
        localObject2 = this.c;
        if ((((Fragment)localObject2).mContainer != null) && (i == 0))
        {
          localObject3 = ((Fragment)localObject2).mView.findFocus();
          if (localObject3 != null)
          {
            this.c.setFocusedView((View)localObject3);
            if (FragmentManager.H0(2))
            {
              localObject2 = new StringBuilder();
              ((StringBuilder)localObject2).append("requestFocus: Saved focused view ");
              ((StringBuilder)localObject2).append(localObject3);
              ((StringBuilder)localObject2).append(" for Fragment ");
              ((StringBuilder)localObject2).append(this.c);
              Log.v("FragmentManager", ((StringBuilder)localObject2).toString());
            }
          }
          this.c.mView.setAlpha(0.0F);
        }
      }
      else
      {
        localObject2 = this.c;
        boolean bool2 = bool1;
        if (i == 0)
        {
          bool2 = bool1;
          if (((Fragment)localObject2).mContainer != null) {
            bool2 = true;
          }
        }
        ((Fragment)localObject2).mIsNewlyAdded = bool2;
      }
    }
    this.c.mState = 2;
  }
  
  void g()
  {
    if (FragmentManager.H0(3))
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("movefrom CREATED: ");
      ((StringBuilder)localObject1).append(this.c);
      Log.d("FragmentManager", ((StringBuilder)localObject1).toString());
    }
    Object localObject1 = this.c;
    boolean bool1 = ((Fragment)localObject1).mRemoving;
    boolean bool2 = true;
    int i;
    if ((bool1) && (!((Fragment)localObject1).isInBackStack())) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if ((i == 0) && (!this.b.o().k(this.c))) {
      j = 0;
    } else {
      j = 1;
    }
    if (j != 0)
    {
      localObject1 = this.c.mHost;
      if ((localObject1 instanceof n0)) {
        bool2 = this.b.o().h();
      } else if ((((j)localObject1).f() instanceof Activity)) {
        bool2 = true ^ ((Activity)((j)localObject1).f()).isChangingConfigurations();
      }
      if ((i != 0) || (bool2)) {
        this.b.o().b(this.c);
      }
      this.c.performDestroy();
      this.a.d(this.c, false);
      localObject1 = this.b.k().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (q)((Iterator)localObject1).next();
        if (localObject2 != null)
        {
          localObject2 = ((q)localObject2).k();
          if (this.c.mWho.equals(((Fragment)localObject2).mTargetWho))
          {
            ((Fragment)localObject2).mTarget = this.c;
            ((Fragment)localObject2).mTargetWho = null;
          }
        }
      }
      localObject1 = this.c;
      Object localObject2 = ((Fragment)localObject1).mTargetWho;
      if (localObject2 != null) {
        ((Fragment)localObject1).mTarget = this.b.f((String)localObject2);
      }
      this.b.q(this);
    }
    else
    {
      localObject1 = this.c.mTargetWho;
      if (localObject1 != null)
      {
        localObject1 = this.b.f((String)localObject1);
        if ((localObject1 != null) && (((Fragment)localObject1).mRetainInstance)) {
          this.c.mTarget = ((Fragment)localObject1);
        }
      }
      this.c.mState = 0;
    }
  }
  
  void h()
  {
    if (FragmentManager.H0(3))
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("movefrom CREATE_VIEW: ");
      ((StringBuilder)localObject1).append(this.c);
      Log.d("FragmentManager", ((StringBuilder)localObject1).toString());
    }
    Object localObject2 = this.c;
    Object localObject1 = ((Fragment)localObject2).mContainer;
    if (localObject1 != null)
    {
      localObject2 = ((Fragment)localObject2).mView;
      if (localObject2 != null) {
        ((ViewGroup)localObject1).removeView((View)localObject2);
      }
    }
    this.c.performDestroyView();
    this.a.n(this.c, false);
    localObject1 = this.c;
    ((Fragment)localObject1).mContainer = null;
    ((Fragment)localObject1).mView = null;
    ((Fragment)localObject1).mViewLifecycleOwner = null;
    ((Fragment)localObject1).mViewLifecycleOwnerLiveData.n(null);
    this.c.mInLayout = false;
  }
  
  void i()
  {
    if (FragmentManager.H0(3))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("movefrom ATTACHED: ");
      ((StringBuilder)localObject).append(this.c);
      Log.d("FragmentManager", ((StringBuilder)localObject).toString());
    }
    this.c.performDetach();
    Object localObject = this.a;
    Fragment localFragment = this.c;
    int i = 0;
    ((l)localObject).e(localFragment, false);
    localObject = this.c;
    ((Fragment)localObject).mState = -1;
    ((Fragment)localObject).mHost = null;
    ((Fragment)localObject).mParentFragment = null;
    ((Fragment)localObject).mFragmentManager = null;
    int j = i;
    if (((Fragment)localObject).mRemoving)
    {
      j = i;
      if (!((Fragment)localObject).isInBackStack()) {
        j = 1;
      }
    }
    if ((j != 0) || (this.b.o().k(this.c)))
    {
      if (FragmentManager.H0(3))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("initState called for fragment: ");
        ((StringBuilder)localObject).append(this.c);
        Log.d("FragmentManager", ((StringBuilder)localObject).toString());
      }
      this.c.initState();
    }
  }
  
  void j()
  {
    Object localObject = this.c;
    if ((((Fragment)localObject).mFromLayout) && (((Fragment)localObject).mInLayout) && (!((Fragment)localObject).mPerformedCreateView))
    {
      if (FragmentManager.H0(3))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("moveto CREATE_VIEW: ");
        ((StringBuilder)localObject).append(this.c);
        Log.d("FragmentManager", ((StringBuilder)localObject).toString());
      }
      localObject = this.c;
      ((Fragment)localObject).performCreateView(((Fragment)localObject).performGetLayoutInflater(((Fragment)localObject).mSavedFragmentState), null, this.c.mSavedFragmentState);
      localObject = this.c.mView;
      if (localObject != null)
      {
        ((View)localObject).setSaveFromParentEnabled(false);
        localObject = this.c;
        ((Fragment)localObject).mView.setTag(b.a, localObject);
        localObject = this.c;
        if (((Fragment)localObject).mHidden) {
          ((Fragment)localObject).mView.setVisibility(8);
        }
        this.c.performViewCreated();
        l locall = this.a;
        localObject = this.c;
        locall.m((Fragment)localObject, ((Fragment)localObject).mView, ((Fragment)localObject).mSavedFragmentState, false);
        this.c.mState = 2;
      }
    }
  }
  
  Fragment k()
  {
    return this.c;
  }
  
  void m()
  {
    Object localObject1;
    if (this.d)
    {
      if (FragmentManager.H0(2))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("Ignoring re-entrant call to moveToExpectedState() for ");
        ((StringBuilder)localObject1).append(k());
        Log.v("FragmentManager", ((StringBuilder)localObject1).toString());
      }
      return;
    }
    try
    {
      this.d = true;
      Object localObject3;
      for (;;)
      {
        int i = d();
        localObject1 = this.c;
        int j = ((Fragment)localObject1).mState;
        if (i == j) {
          break;
        }
        if (i > j) {
          switch (j + 1)
          {
          default: 
            break;
          case 7: 
            p();
            break;
          case 6: 
            ((Fragment)localObject1).mState = 6;
            break;
          case 5: 
            v();
            break;
          case 4: 
            if (((Fragment)localObject1).mView != null)
            {
              localObject3 = ((Fragment)localObject1).mContainer;
              if (localObject3 != null) {
                SpecialEffectsController.n((ViewGroup)localObject3, ((Fragment)localObject1).getParentFragmentManager()).b(SpecialEffectsController.Operation.State.from(this.c.mView.getVisibility()), this);
              }
            }
            this.c.mState = 4;
            break;
          case 3: 
            a();
            break;
          case 2: 
            j();
            f();
            break;
          case 1: 
            e();
            break;
          case 0: 
            c();
            break;
          }
        } else {
          switch (j - 1)
          {
          default: 
            break;
          case 6: 
            n();
            break;
          case 5: 
            ((Fragment)localObject1).mState = 5;
            break;
          case 4: 
            w();
            break;
          case 3: 
            if (FragmentManager.H0(3))
            {
              localObject1 = new java/lang/StringBuilder;
              ((StringBuilder)localObject1).<init>();
              ((StringBuilder)localObject1).append("movefrom ACTIVITY_CREATED: ");
              ((StringBuilder)localObject1).append(this.c);
              Log.d("FragmentManager", ((StringBuilder)localObject1).toString());
            }
            localObject1 = this.c;
            if ((((Fragment)localObject1).mView != null) && (((Fragment)localObject1).mSavedViewState == null)) {
              t();
            }
            localObject1 = this.c;
            if (((Fragment)localObject1).mView != null)
            {
              localObject3 = ((Fragment)localObject1).mContainer;
              if (localObject3 != null) {
                SpecialEffectsController.n((ViewGroup)localObject3, ((Fragment)localObject1).getParentFragmentManager()).d(this);
              }
            }
            this.c.mState = 3;
            break;
          case 2: 
            ((Fragment)localObject1).mInLayout = false;
            ((Fragment)localObject1).mState = 2;
            break;
          case 1: 
            h();
            this.c.mState = 1;
            break;
          case 0: 
            g();
            break;
          case -1: 
            i();
          }
        }
      }
      if ((FragmentManager.P) && (((Fragment)localObject1).mHiddenChanged))
      {
        if (((Fragment)localObject1).mView != null)
        {
          localObject3 = ((Fragment)localObject1).mContainer;
          if (localObject3 != null)
          {
            localObject1 = SpecialEffectsController.n((ViewGroup)localObject3, ((Fragment)localObject1).getParentFragmentManager());
            if (this.c.mHidden) {
              ((SpecialEffectsController)localObject1).c(this);
            } else {
              ((SpecialEffectsController)localObject1).e(this);
            }
          }
        }
        localObject1 = this.c;
        localObject3 = ((Fragment)localObject1).mFragmentManager;
        if (localObject3 != null) {
          ((FragmentManager)localObject3).F0((Fragment)localObject1);
        }
        localObject1 = this.c;
        ((Fragment)localObject1).mHiddenChanged = false;
        ((Fragment)localObject1).onHiddenChanged(((Fragment)localObject1).mHidden);
      }
      return;
    }
    finally
    {
      this.d = false;
    }
  }
  
  void n()
  {
    if (FragmentManager.H0(3))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("movefrom RESUMED: ");
      localStringBuilder.append(this.c);
      Log.d("FragmentManager", localStringBuilder.toString());
    }
    this.c.performPause();
    this.a.f(this.c, false);
  }
  
  void o(ClassLoader paramClassLoader)
  {
    Object localObject = this.c.mSavedFragmentState;
    if (localObject == null) {
      return;
    }
    ((Bundle)localObject).setClassLoader(paramClassLoader);
    paramClassLoader = this.c;
    paramClassLoader.mSavedViewState = paramClassLoader.mSavedFragmentState.getSparseParcelableArray("android:view_state");
    paramClassLoader = this.c;
    paramClassLoader.mSavedViewRegistryState = paramClassLoader.mSavedFragmentState.getBundle("android:view_registry_state");
    paramClassLoader = this.c;
    paramClassLoader.mTargetWho = paramClassLoader.mSavedFragmentState.getString("android:target_state");
    paramClassLoader = this.c;
    if (paramClassLoader.mTargetWho != null) {
      paramClassLoader.mTargetRequestCode = paramClassLoader.mSavedFragmentState.getInt("android:target_req_state", 0);
    }
    paramClassLoader = this.c;
    localObject = paramClassLoader.mSavedUserVisibleHint;
    if (localObject != null)
    {
      paramClassLoader.mUserVisibleHint = ((Boolean)localObject).booleanValue();
      this.c.mSavedUserVisibleHint = null;
    }
    else
    {
      paramClassLoader.mUserVisibleHint = paramClassLoader.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
    }
    paramClassLoader = this.c;
    if (!paramClassLoader.mUserVisibleHint) {
      paramClassLoader.mDeferStart = true;
    }
  }
  
  void p()
  {
    if (FragmentManager.H0(3))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("moveto RESUMED: ");
      ((StringBuilder)localObject).append(this.c);
      Log.d("FragmentManager", ((StringBuilder)localObject).toString());
    }
    Object localObject = this.c.getFocusedView();
    if ((localObject != null) && (l((View)localObject)))
    {
      boolean bool = ((View)localObject).requestFocus();
      if (FragmentManager.H0(2))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("requestFocus: Restoring focused view ");
        localStringBuilder.append(localObject);
        localStringBuilder.append(" ");
        if (bool) {
          localObject = "succeeded";
        } else {
          localObject = "failed";
        }
        localStringBuilder.append((String)localObject);
        localStringBuilder.append(" on Fragment ");
        localStringBuilder.append(this.c);
        localStringBuilder.append(" resulting in focused view ");
        localStringBuilder.append(this.c.mView.findFocus());
        Log.v("FragmentManager", localStringBuilder.toString());
      }
    }
    this.c.setFocusedView(null);
    this.c.performResume();
    this.a.i(this.c, false);
    localObject = this.c;
    ((Fragment)localObject).mSavedFragmentState = null;
    ((Fragment)localObject).mSavedViewState = null;
    ((Fragment)localObject).mSavedViewRegistryState = null;
  }
  
  Fragment.SavedState r()
  {
    int i = this.c.mState;
    Object localObject1 = null;
    Object localObject2 = localObject1;
    if (i > -1)
    {
      Bundle localBundle = q();
      localObject2 = localObject1;
      if (localBundle != null) {
        localObject2 = new Fragment.SavedState(localBundle);
      }
    }
    return localObject2;
  }
  
  FragmentState s()
  {
    FragmentState localFragmentState = new FragmentState(this.c);
    Object localObject = this.c;
    if ((((Fragment)localObject).mState > -1) && (localFragmentState.mSavedFragmentState == null))
    {
      localObject = q();
      localFragmentState.mSavedFragmentState = ((Bundle)localObject);
      if (this.c.mTargetWho != null)
      {
        if (localObject == null) {
          localFragmentState.mSavedFragmentState = new Bundle();
        }
        localFragmentState.mSavedFragmentState.putString("android:target_state", this.c.mTargetWho);
        int i = this.c.mTargetRequestCode;
        if (i != 0) {
          localFragmentState.mSavedFragmentState.putInt("android:target_req_state", i);
        }
      }
    }
    else
    {
      localFragmentState.mSavedFragmentState = ((Fragment)localObject).mSavedFragmentState;
    }
    return localFragmentState;
  }
  
  void t()
  {
    if (this.c.mView == null) {
      return;
    }
    Object localObject = new SparseArray();
    this.c.mView.saveHierarchyState((SparseArray)localObject);
    if (((SparseArray)localObject).size() > 0) {
      this.c.mSavedViewState = ((SparseArray)localObject);
    }
    localObject = new Bundle();
    this.c.mViewLifecycleOwner.e((Bundle)localObject);
    if (!((BaseBundle)localObject).isEmpty()) {
      this.c.mSavedViewRegistryState = ((Bundle)localObject);
    }
  }
  
  void u(int paramInt)
  {
    this.e = paramInt;
  }
  
  void v()
  {
    if (FragmentManager.H0(3))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("moveto STARTED: ");
      localStringBuilder.append(this.c);
      Log.d("FragmentManager", localStringBuilder.toString());
    }
    this.c.performStart();
    this.a.k(this.c, false);
  }
  
  void w()
  {
    if (FragmentManager.H0(3))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("movefrom STARTED: ");
      localStringBuilder.append(this.c);
      Log.d("FragmentManager", localStringBuilder.toString());
    }
    this.c.performStop();
    this.a.l(this.c, false);
  }
  
  class a
    implements View.OnAttachStateChangeListener
  {
    a(View paramView) {}
    
    public void onViewAttachedToWindow(View paramView)
    {
      this.a.removeOnAttachStateChangeListener(this);
      a0.i0(this.a);
    }
    
    public void onViewDetachedFromWindow(View paramView) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.q
 * JD-Core Version:    0.7.0.1
 */