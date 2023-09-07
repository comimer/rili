package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.b;
import androidx.core.app.a0;
import androidx.core.view.g;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.f0;
import androidx.lifecycle.k0.b;
import androidx.lifecycle.l;
import androidx.lifecycle.m0;
import androidx.lifecycle.n;
import androidx.lifecycle.n0;
import androidx.lifecycle.o;
import androidx.lifecycle.o0;
import androidx.lifecycle.p0;
import androidx.lifecycle.u;
import androidx.savedstate.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class Fragment
  implements ComponentCallbacks, View.OnCreateContextMenuListener, n, n0, androidx.lifecycle.i, e
{
  static final int ACTIVITY_CREATED = 4;
  static final int ATTACHED = 0;
  static final int AWAITING_ENTER_EFFECTS = 6;
  static final int AWAITING_EXIT_EFFECTS = 3;
  static final int CREATED = 1;
  static final int INITIALIZING = -1;
  static final int RESUMED = 7;
  static final int STARTED = 5;
  static final Object USE_DEFAULT_TRANSITION = new Object();
  static final int VIEW_CREATED = 2;
  boolean mAdded;
  i mAnimationInfo;
  Bundle mArguments;
  int mBackStackNesting;
  private boolean mCalled;
  FragmentManager mChildFragmentManager = new m();
  ViewGroup mContainer;
  int mContainerId;
  private int mContentLayoutId;
  k0.b mDefaultFactory;
  boolean mDeferStart;
  boolean mDetached;
  int mFragmentId;
  FragmentManager mFragmentManager;
  boolean mFromLayout;
  boolean mHasMenu;
  boolean mHidden;
  boolean mHiddenChanged;
  j<?> mHost;
  boolean mInLayout;
  boolean mIsCreated;
  boolean mIsNewlyAdded;
  private Boolean mIsPrimaryNavigationFragment = null;
  LayoutInflater mLayoutInflater;
  o mLifecycleRegistry;
  Lifecycle.State mMaxState = Lifecycle.State.RESUMED;
  boolean mMenuVisible = true;
  private final AtomicInteger mNextLocalRequestCode = new AtomicInteger();
  private final ArrayList<j> mOnPreAttachedListeners = new ArrayList();
  Fragment mParentFragment;
  boolean mPerformedCreateView;
  float mPostponedAlpha;
  Runnable mPostponedDurationRunnable = new a();
  boolean mRemoving;
  boolean mRestored;
  boolean mRetainInstance;
  boolean mRetainInstanceChangedWhileDetached;
  Bundle mSavedFragmentState;
  androidx.savedstate.d mSavedStateRegistryController;
  Boolean mSavedUserVisibleHint;
  Bundle mSavedViewRegistryState;
  SparseArray<Parcelable> mSavedViewState;
  int mState = -1;
  String mTag;
  Fragment mTarget;
  int mTargetRequestCode;
  String mTargetWho = null;
  boolean mUserVisibleHint = true;
  View mView;
  w mViewLifecycleOwner;
  u<n> mViewLifecycleOwnerLiveData = new u();
  String mWho = UUID.randomUUID().toString();
  
  public Fragment()
  {
    initLifecycle();
  }
  
  public Fragment(int paramInt)
  {
    this();
    this.mContentLayoutId = paramInt;
  }
  
  private i ensureAnimationInfo()
  {
    if (this.mAnimationInfo == null) {
      this.mAnimationInfo = new i();
    }
    return this.mAnimationInfo;
  }
  
  private int getMinimumMaxLifecycleState()
  {
    Lifecycle.State localState = this.mMaxState;
    if ((localState != Lifecycle.State.INITIALIZED) && (this.mParentFragment != null)) {
      return Math.min(localState.ordinal(), this.mParentFragment.getMinimumMaxLifecycleState());
    }
    return localState.ordinal();
  }
  
  private void initLifecycle()
  {
    this.mLifecycleRegistry = new o(this);
    this.mSavedStateRegistryController = androidx.savedstate.d.a(this);
    this.mDefaultFactory = null;
  }
  
  @Deprecated
  public static Fragment instantiate(Context paramContext, String paramString)
  {
    return instantiate(paramContext, paramString, null);
  }
  
  @Deprecated
  public static Fragment instantiate(Context paramContext, String paramString, Bundle paramBundle)
  {
    try
    {
      paramContext = (Fragment)i.d(paramContext.getClassLoader(), paramString).getConstructor(new Class[0]).newInstance(new Object[0]);
      if (paramBundle != null)
      {
        paramBundle.setClassLoader(paramContext.getClass().getClassLoader());
        paramContext.setArguments(paramBundle);
      }
      return paramContext;
    }
    catch (InvocationTargetException paramContext)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("Unable to instantiate fragment ");
      paramBundle.append(paramString);
      paramBundle.append(": calling Fragment constructor caused an exception");
      throw new InstantiationException(paramBundle.toString(), paramContext);
    }
    catch (NoSuchMethodException paramContext)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("Unable to instantiate fragment ");
      paramBundle.append(paramString);
      paramBundle.append(": could not find Fragment constructor");
      throw new InstantiationException(paramBundle.toString(), paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("Unable to instantiate fragment ");
      paramBundle.append(paramString);
      paramBundle.append(": make sure class name exists, is public, and has an empty constructor that is public");
      throw new InstantiationException(paramBundle.toString(), paramContext);
    }
    catch (InstantiationException paramBundle)
    {
      paramContext = new StringBuilder();
      paramContext.append("Unable to instantiate fragment ");
      paramContext.append(paramString);
      paramContext.append(": make sure class name exists, is public, and has an empty constructor that is public");
      throw new InstantiationException(paramContext.toString(), paramBundle);
    }
  }
  
  private <I, O> b<I> prepareCallInternal(final c.a<I, O> parama, final k.a<Void, ActivityResultRegistry> parama1, final androidx.activity.result.a<O> parama2)
  {
    if (this.mState <= 1)
    {
      final AtomicReference localAtomicReference = new AtomicReference();
      registerOnPreAttachListener(new g(parama1, localAtomicReference, parama, parama2));
      return new h(localAtomicReference, parama);
    }
    parama = new StringBuilder();
    parama.append("Fragment ");
    parama.append(this);
    parama.append(" is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate()).");
    throw new IllegalStateException(parama.toString());
  }
  
  private void registerOnPreAttachListener(j paramj)
  {
    if (this.mState >= 0) {
      paramj.a();
    } else {
      this.mOnPreAttachedListeners.add(paramj);
    }
  }
  
  private void restoreViewState()
  {
    if (FragmentManager.H0(3))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("moveto RESTORE_VIEW_STATE: ");
      localStringBuilder.append(this);
      Log.d("FragmentManager", localStringBuilder.toString());
    }
    if (this.mView != null) {
      restoreViewState(this.mSavedFragmentState);
    }
    this.mSavedFragmentState = null;
  }
  
  void callStartTransitionListener(boolean paramBoolean)
  {
    Object localObject1 = this.mAnimationInfo;
    Object localObject2 = null;
    if (localObject1 != null)
    {
      ((i)localObject1).u = false;
      localObject2 = ((i)localObject1).v;
      ((i)localObject1).v = null;
    }
    if (localObject2 != null)
    {
      ((k)localObject2).b();
    }
    else if ((FragmentManager.P) && (this.mView != null))
    {
      localObject2 = this.mContainer;
      if (localObject2 != null)
      {
        localObject1 = this.mFragmentManager;
        if (localObject1 != null)
        {
          localObject2 = SpecialEffectsController.n((ViewGroup)localObject2, (FragmentManager)localObject1);
          ((SpecialEffectsController)localObject2).p();
          if (paramBoolean) {
            this.mHost.g().post(new c((SpecialEffectsController)localObject2));
          } else {
            ((SpecialEffectsController)localObject2).g();
          }
        }
      }
    }
  }
  
  f createFragmentContainer()
  {
    return new d();
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mFragmentId=#");
    paramPrintWriter.print(Integer.toHexString(this.mFragmentId));
    paramPrintWriter.print(" mContainerId=#");
    paramPrintWriter.print(Integer.toHexString(this.mContainerId));
    paramPrintWriter.print(" mTag=");
    paramPrintWriter.println(this.mTag);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mState=");
    paramPrintWriter.print(this.mState);
    paramPrintWriter.print(" mWho=");
    paramPrintWriter.print(this.mWho);
    paramPrintWriter.print(" mBackStackNesting=");
    paramPrintWriter.println(this.mBackStackNesting);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mAdded=");
    paramPrintWriter.print(this.mAdded);
    paramPrintWriter.print(" mRemoving=");
    paramPrintWriter.print(this.mRemoving);
    paramPrintWriter.print(" mFromLayout=");
    paramPrintWriter.print(this.mFromLayout);
    paramPrintWriter.print(" mInLayout=");
    paramPrintWriter.println(this.mInLayout);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mHidden=");
    paramPrintWriter.print(this.mHidden);
    paramPrintWriter.print(" mDetached=");
    paramPrintWriter.print(this.mDetached);
    paramPrintWriter.print(" mMenuVisible=");
    paramPrintWriter.print(this.mMenuVisible);
    paramPrintWriter.print(" mHasMenu=");
    paramPrintWriter.println(this.mHasMenu);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetainInstance=");
    paramPrintWriter.print(this.mRetainInstance);
    paramPrintWriter.print(" mUserVisibleHint=");
    paramPrintWriter.println(this.mUserVisibleHint);
    if (this.mFragmentManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mFragmentManager=");
      paramPrintWriter.println(this.mFragmentManager);
    }
    if (this.mHost != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHost=");
      paramPrintWriter.println(this.mHost);
    }
    if (this.mParentFragment != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mParentFragment=");
      paramPrintWriter.println(this.mParentFragment);
    }
    if (this.mArguments != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mArguments=");
      paramPrintWriter.println(this.mArguments);
    }
    if (this.mSavedFragmentState != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedFragmentState=");
      paramPrintWriter.println(this.mSavedFragmentState);
    }
    if (this.mSavedViewState != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedViewState=");
      paramPrintWriter.println(this.mSavedViewState);
    }
    if (this.mSavedViewRegistryState != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedViewRegistryState=");
      paramPrintWriter.println(this.mSavedViewRegistryState);
    }
    Object localObject = getTargetFragment();
    if (localObject != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTarget=");
      paramPrintWriter.print(localObject);
      paramPrintWriter.print(" mTargetRequestCode=");
      paramPrintWriter.println(this.mTargetRequestCode);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mPopDirection=");
    paramPrintWriter.println(getPopDirection());
    if (getEnterAnim() != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("getEnterAnim=");
      paramPrintWriter.println(getEnterAnim());
    }
    if (getExitAnim() != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("getExitAnim=");
      paramPrintWriter.println(getExitAnim());
    }
    if (getPopEnterAnim() != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("getPopEnterAnim=");
      paramPrintWriter.println(getPopEnterAnim());
    }
    if (getPopExitAnim() != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("getPopExitAnim=");
      paramPrintWriter.println(getPopExitAnim());
    }
    if (this.mContainer != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mContainer=");
      paramPrintWriter.println(this.mContainer);
    }
    if (this.mView != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mView=");
      paramPrintWriter.println(this.mView);
    }
    if (getAnimatingAway() != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAnimatingAway=");
      paramPrintWriter.println(getAnimatingAway());
    }
    if (getContext() != null) {
      androidx.loader.app.a.b(this).a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    paramPrintWriter.print(paramString);
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Child ");
    ((StringBuilder)localObject).append(this.mChildFragmentManager);
    ((StringBuilder)localObject).append(":");
    paramPrintWriter.println(((StringBuilder)localObject).toString());
    FragmentManager localFragmentManager = this.mChildFragmentManager;
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("  ");
    localFragmentManager.X(((StringBuilder)localObject).toString(), paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
  
  Fragment findFragmentByWho(String paramString)
  {
    if (paramString.equals(this.mWho)) {
      return this;
    }
    return this.mChildFragmentManager.j0(paramString);
  }
  
  String generateActivityResultKey()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("fragment_");
    localStringBuilder.append(this.mWho);
    localStringBuilder.append("_rq#");
    localStringBuilder.append(this.mNextLocalRequestCode.getAndIncrement());
    return localStringBuilder.toString();
  }
  
  public final d getActivity()
  {
    Object localObject = this.mHost;
    if (localObject == null) {
      localObject = null;
    } else {
      localObject = (d)((j)localObject).e();
    }
    return localObject;
  }
  
  public boolean getAllowEnterTransitionOverlap()
  {
    Object localObject = this.mAnimationInfo;
    if (localObject != null)
    {
      localObject = ((i)localObject).r;
      if (localObject != null) {
        return ((Boolean)localObject).booleanValue();
      }
    }
    boolean bool = true;
    return bool;
  }
  
  public boolean getAllowReturnTransitionOverlap()
  {
    Object localObject = this.mAnimationInfo;
    if (localObject != null)
    {
      localObject = ((i)localObject).q;
      if (localObject != null) {
        return ((Boolean)localObject).booleanValue();
      }
    }
    boolean bool = true;
    return bool;
  }
  
  View getAnimatingAway()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return null;
    }
    return locali.a;
  }
  
  Animator getAnimator()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return null;
    }
    return locali.b;
  }
  
  public final Bundle getArguments()
  {
    return this.mArguments;
  }
  
  public final FragmentManager getChildFragmentManager()
  {
    if (this.mHost != null) {
      return this.mChildFragmentManager;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" has not been attached yet.");
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public Context getContext()
  {
    Object localObject = this.mHost;
    if (localObject == null) {
      localObject = null;
    } else {
      localObject = ((j)localObject).f();
    }
    return localObject;
  }
  
  public k0.b getDefaultViewModelProviderFactory()
  {
    if (this.mFragmentManager != null)
    {
      if (this.mDefaultFactory == null)
      {
        Object localObject1 = null;
        Object localObject3;
        for (Object localObject2 = requireContext().getApplicationContext();; localObject2 = ((ContextWrapper)localObject2).getBaseContext())
        {
          localObject3 = localObject1;
          if (!(localObject2 instanceof ContextWrapper)) {
            break;
          }
          if ((localObject2 instanceof Application))
          {
            localObject3 = (Application)localObject2;
            break;
          }
        }
        if ((localObject3 == null) && (FragmentManager.H0(3)))
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("Could not find Application instance from Context ");
          ((StringBuilder)localObject2).append(requireContext().getApplicationContext());
          ((StringBuilder)localObject2).append(", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
          Log.d("FragmentManager", ((StringBuilder)localObject2).toString());
        }
        this.mDefaultFactory = new f0((Application)localObject3, this, getArguments());
      }
      return this.mDefaultFactory;
    }
    throw new IllegalStateException("Can't access ViewModels from detached fragment");
  }
  
  int getEnterAnim()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return 0;
    }
    return locali.d;
  }
  
  public Object getEnterTransition()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return null;
    }
    return locali.k;
  }
  
  a0 getEnterTransitionCallback()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return null;
    }
    locali.getClass();
    return null;
  }
  
  int getExitAnim()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return 0;
    }
    return locali.e;
  }
  
  public Object getExitTransition()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return null;
    }
    return locali.m;
  }
  
  a0 getExitTransitionCallback()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return null;
    }
    locali.getClass();
    return null;
  }
  
  View getFocusedView()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return null;
    }
    return locali.t;
  }
  
  @Deprecated
  public final FragmentManager getFragmentManager()
  {
    return this.mFragmentManager;
  }
  
  public final Object getHost()
  {
    Object localObject = this.mHost;
    if (localObject == null) {
      localObject = null;
    } else {
      localObject = ((j)localObject).i();
    }
    return localObject;
  }
  
  public final int getId()
  {
    return this.mFragmentId;
  }
  
  public final LayoutInflater getLayoutInflater()
  {
    LayoutInflater localLayoutInflater1 = this.mLayoutInflater;
    LayoutInflater localLayoutInflater2 = localLayoutInflater1;
    if (localLayoutInflater1 == null) {
      localLayoutInflater2 = performGetLayoutInflater(null);
    }
    return localLayoutInflater2;
  }
  
  @Deprecated
  public LayoutInflater getLayoutInflater(Bundle paramBundle)
  {
    paramBundle = this.mHost;
    if (paramBundle != null)
    {
      paramBundle = paramBundle.j();
      g.a(paramBundle, this.mChildFragmentManager.w0());
      return paramBundle;
    }
    throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
  }
  
  public Lifecycle getLifecycle()
  {
    return this.mLifecycleRegistry;
  }
  
  @Deprecated
  public androidx.loader.app.a getLoaderManager()
  {
    return androidx.loader.app.a.b(this);
  }
  
  int getNextTransition()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return 0;
    }
    return locali.h;
  }
  
  public final Fragment getParentFragment()
  {
    return this.mParentFragment;
  }
  
  public final FragmentManager getParentFragmentManager()
  {
    Object localObject = this.mFragmentManager;
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" not associated with a fragment manager.");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  boolean getPopDirection()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return false;
    }
    return locali.c;
  }
  
  int getPopEnterAnim()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return 0;
    }
    return locali.f;
  }
  
  int getPopExitAnim()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return 0;
    }
    return locali.g;
  }
  
  float getPostOnViewCreatedAlpha()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return 1.0F;
    }
    return locali.s;
  }
  
  public Object getReenterTransition()
  {
    Object localObject1 = this.mAnimationInfo;
    if (localObject1 == null) {
      return null;
    }
    Object localObject2 = ((i)localObject1).n;
    localObject1 = localObject2;
    if (localObject2 == USE_DEFAULT_TRANSITION) {
      localObject1 = getExitTransition();
    }
    return localObject1;
  }
  
  public final Resources getResources()
  {
    return requireContext().getResources();
  }
  
  @Deprecated
  public final boolean getRetainInstance()
  {
    return this.mRetainInstance;
  }
  
  public Object getReturnTransition()
  {
    Object localObject1 = this.mAnimationInfo;
    if (localObject1 == null) {
      return null;
    }
    Object localObject2 = ((i)localObject1).l;
    localObject1 = localObject2;
    if (localObject2 == USE_DEFAULT_TRANSITION) {
      localObject1 = getEnterTransition();
    }
    return localObject1;
  }
  
  public final androidx.savedstate.c getSavedStateRegistry()
  {
    return this.mSavedStateRegistryController.b();
  }
  
  public Object getSharedElementEnterTransition()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return null;
    }
    return locali.o;
  }
  
  public Object getSharedElementReturnTransition()
  {
    Object localObject1 = this.mAnimationInfo;
    if (localObject1 == null) {
      return null;
    }
    Object localObject2 = ((i)localObject1).p;
    localObject1 = localObject2;
    if (localObject2 == USE_DEFAULT_TRANSITION) {
      localObject1 = getSharedElementEnterTransition();
    }
    return localObject1;
  }
  
  ArrayList<String> getSharedElementSourceNames()
  {
    Object localObject = this.mAnimationInfo;
    if (localObject != null)
    {
      localObject = ((i)localObject).i;
      if (localObject != null) {
        return localObject;
      }
    }
    return new ArrayList();
  }
  
  ArrayList<String> getSharedElementTargetNames()
  {
    Object localObject = this.mAnimationInfo;
    if (localObject != null)
    {
      localObject = ((i)localObject).j;
      if (localObject != null) {
        return localObject;
      }
    }
    return new ArrayList();
  }
  
  public final String getString(int paramInt)
  {
    return getResources().getString(paramInt);
  }
  
  public final String getString(int paramInt, Object... paramVarArgs)
  {
    return getResources().getString(paramInt, paramVarArgs);
  }
  
  public final String getTag()
  {
    return this.mTag;
  }
  
  @Deprecated
  public final Fragment getTargetFragment()
  {
    Object localObject = this.mTarget;
    if (localObject != null) {
      return localObject;
    }
    FragmentManager localFragmentManager = this.mFragmentManager;
    if (localFragmentManager != null)
    {
      localObject = this.mTargetWho;
      if (localObject != null) {
        return localFragmentManager.g0((String)localObject);
      }
    }
    return null;
  }
  
  @Deprecated
  public final int getTargetRequestCode()
  {
    return this.mTargetRequestCode;
  }
  
  public final CharSequence getText(int paramInt)
  {
    return getResources().getText(paramInt);
  }
  
  @Deprecated
  public boolean getUserVisibleHint()
  {
    return this.mUserVisibleHint;
  }
  
  public View getView()
  {
    return this.mView;
  }
  
  public n getViewLifecycleOwner()
  {
    w localw = this.mViewLifecycleOwner;
    if (localw != null) {
      return localw;
    }
    throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
  }
  
  public LiveData<n> getViewLifecycleOwnerLiveData()
  {
    return this.mViewLifecycleOwnerLiveData;
  }
  
  public m0 getViewModelStore()
  {
    if (this.mFragmentManager != null)
    {
      if (getMinimumMaxLifecycleState() != Lifecycle.State.INITIALIZED.ordinal()) {
        return this.mFragmentManager.C0(this);
      }
      throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
    }
    throw new IllegalStateException("Can't access ViewModels from detached fragment");
  }
  
  @SuppressLint({"KotlinPropertyAccess"})
  public final boolean hasOptionsMenu()
  {
    return this.mHasMenu;
  }
  
  public final int hashCode()
  {
    return super.hashCode();
  }
  
  void initState()
  {
    initLifecycle();
    this.mWho = UUID.randomUUID().toString();
    this.mAdded = false;
    this.mRemoving = false;
    this.mFromLayout = false;
    this.mInLayout = false;
    this.mRestored = false;
    this.mBackStackNesting = 0;
    this.mFragmentManager = null;
    this.mChildFragmentManager = new m();
    this.mHost = null;
    this.mFragmentId = 0;
    this.mContainerId = 0;
    this.mTag = null;
    this.mHidden = false;
    this.mDetached = false;
  }
  
  public final boolean isAdded()
  {
    boolean bool;
    if ((this.mHost != null) && (this.mAdded)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final boolean isDetached()
  {
    return this.mDetached;
  }
  
  public final boolean isHidden()
  {
    return this.mHidden;
  }
  
  boolean isHideReplaced()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return false;
    }
    return locali.w;
  }
  
  final boolean isInBackStack()
  {
    boolean bool;
    if (this.mBackStackNesting > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final boolean isInLayout()
  {
    return this.mInLayout;
  }
  
  public final boolean isMenuVisible()
  {
    if (this.mMenuVisible)
    {
      FragmentManager localFragmentManager = this.mFragmentManager;
      if ((localFragmentManager == null) || (localFragmentManager.J0(this.mParentFragment))) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  boolean isPostponed()
  {
    i locali = this.mAnimationInfo;
    if (locali == null) {
      return false;
    }
    return locali.u;
  }
  
  public final boolean isRemoving()
  {
    return this.mRemoving;
  }
  
  final boolean isRemovingParent()
  {
    Fragment localFragment = getParentFragment();
    boolean bool;
    if ((localFragment != null) && ((localFragment.isRemoving()) || (localFragment.isRemovingParent()))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final boolean isResumed()
  {
    boolean bool;
    if (this.mState >= 7) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final boolean isStateSaved()
  {
    FragmentManager localFragmentManager = this.mFragmentManager;
    if (localFragmentManager == null) {
      return false;
    }
    return localFragmentManager.M0();
  }
  
  public final boolean isVisible()
  {
    if ((isAdded()) && (!isHidden()))
    {
      View localView = this.mView;
      if ((localView != null) && (localView.getWindowToken() != null) && (this.mView.getVisibility() == 0)) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  void noteStateNotSaved()
  {
    this.mChildFragmentManager.V0();
  }
  
  @Deprecated
  public void onActivityCreated(Bundle paramBundle)
  {
    this.mCalled = true;
  }
  
  @Deprecated
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (FragmentManager.H0(2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Fragment ");
      localStringBuilder.append(this);
      localStringBuilder.append(" received the following in onActivityResult(): requestCode: ");
      localStringBuilder.append(paramInt1);
      localStringBuilder.append(" resultCode: ");
      localStringBuilder.append(paramInt2);
      localStringBuilder.append(" data: ");
      localStringBuilder.append(paramIntent);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
  }
  
  @Deprecated
  public void onAttach(Activity paramActivity)
  {
    this.mCalled = true;
  }
  
  public void onAttach(Context paramContext)
  {
    this.mCalled = true;
    paramContext = this.mHost;
    if (paramContext == null) {
      paramContext = null;
    } else {
      paramContext = paramContext.e();
    }
    if (paramContext != null)
    {
      this.mCalled = false;
      onAttach(paramContext);
    }
  }
  
  @Deprecated
  public void onAttachFragment(Fragment paramFragment) {}
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.mCalled = true;
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    this.mCalled = true;
    restoreChildFragmentState(paramBundle);
    if (!this.mChildFragmentManager.L0(1)) {
      this.mChildFragmentManager.D();
    }
  }
  
  public Animation onCreateAnimation(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    return null;
  }
  
  public Animator onCreateAnimator(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    return null;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    requireActivity().onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater) {}
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int i = this.mContentLayoutId;
    if (i != 0) {
      return paramLayoutInflater.inflate(i, paramViewGroup, false);
    }
    return null;
  }
  
  public void onDestroy()
  {
    this.mCalled = true;
  }
  
  public void onDestroyOptionsMenu() {}
  
  public void onDestroyView()
  {
    this.mCalled = true;
  }
  
  public void onDetach()
  {
    this.mCalled = true;
  }
  
  public LayoutInflater onGetLayoutInflater(Bundle paramBundle)
  {
    return getLayoutInflater(paramBundle);
  }
  
  public void onHiddenChanged(boolean paramBoolean) {}
  
  @Deprecated
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    this.mCalled = true;
  }
  
  public void onInflate(Context paramContext, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    this.mCalled = true;
    paramContext = this.mHost;
    if (paramContext == null) {
      paramContext = null;
    } else {
      paramContext = paramContext.e();
    }
    if (paramContext != null)
    {
      this.mCalled = false;
      onInflate(paramContext, paramAttributeSet, paramBundle);
    }
  }
  
  public void onLowMemory()
  {
    this.mCalled = true;
  }
  
  public void onMultiWindowModeChanged(boolean paramBoolean) {}
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public void onOptionsMenuClosed(Menu paramMenu) {}
  
  public void onPause()
  {
    this.mCalled = true;
  }
  
  public void onPictureInPictureModeChanged(boolean paramBoolean) {}
  
  public void onPrepareOptionsMenu(Menu paramMenu) {}
  
  public void onPrimaryNavigationFragmentChanged(boolean paramBoolean) {}
  
  @Deprecated
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt) {}
  
  public void onResume()
  {
    this.mCalled = true;
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {}
  
  public void onStart()
  {
    this.mCalled = true;
  }
  
  public void onStop()
  {
    this.mCalled = true;
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle) {}
  
  public void onViewStateRestored(Bundle paramBundle)
  {
    this.mCalled = true;
  }
  
  void performActivityCreated(Bundle paramBundle)
  {
    this.mChildFragmentManager.V0();
    this.mState = 3;
    this.mCalled = false;
    onActivityCreated(paramBundle);
    if (this.mCalled)
    {
      restoreViewState();
      this.mChildFragmentManager.z();
      return;
    }
    paramBundle = new StringBuilder();
    paramBundle.append("Fragment ");
    paramBundle.append(this);
    paramBundle.append(" did not call through to super.onActivityCreated()");
    throw new SuperNotCalledException(paramBundle.toString());
  }
  
  void performAttach()
  {
    Object localObject = this.mOnPreAttachedListeners.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((j)((Iterator)localObject).next()).a();
    }
    this.mOnPreAttachedListeners.clear();
    this.mChildFragmentManager.k(this.mHost, createFragmentContainer(), this);
    this.mState = 0;
    this.mCalled = false;
    onAttach(this.mHost.f());
    if (this.mCalled)
    {
      this.mFragmentManager.J(this);
      this.mChildFragmentManager.A();
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" did not call through to super.onAttach()");
    throw new SuperNotCalledException(((StringBuilder)localObject).toString());
  }
  
  void performConfigurationChanged(Configuration paramConfiguration)
  {
    onConfigurationChanged(paramConfiguration);
    this.mChildFragmentManager.B(paramConfiguration);
  }
  
  boolean performContextItemSelected(MenuItem paramMenuItem)
  {
    if (!this.mHidden)
    {
      if (onContextItemSelected(paramMenuItem)) {
        return true;
      }
      return this.mChildFragmentManager.C(paramMenuItem);
    }
    return false;
  }
  
  void performCreate(Bundle paramBundle)
  {
    this.mChildFragmentManager.V0();
    this.mState = 1;
    this.mCalled = false;
    this.mLifecycleRegistry.a(new l()
    {
      public void g(n paramAnonymousn, Lifecycle.Event paramAnonymousEvent)
      {
        if (paramAnonymousEvent == Lifecycle.Event.ON_STOP)
        {
          paramAnonymousn = Fragment.this.mView;
          if (paramAnonymousn != null) {
            paramAnonymousn.cancelPendingInputEvents();
          }
        }
      }
    });
    this.mSavedStateRegistryController.d(paramBundle);
    onCreate(paramBundle);
    this.mIsCreated = true;
    if (this.mCalled)
    {
      this.mLifecycleRegistry.h(Lifecycle.Event.ON_CREATE);
      return;
    }
    paramBundle = new StringBuilder();
    paramBundle.append("Fragment ");
    paramBundle.append(this);
    paramBundle.append(" did not call through to super.onCreate()");
    throw new SuperNotCalledException(paramBundle.toString());
  }
  
  boolean performCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool1 = this.mHidden;
    boolean bool2 = false;
    int i = 0;
    if (!bool1)
    {
      int j = i;
      if (this.mHasMenu)
      {
        j = i;
        if (this.mMenuVisible)
        {
          j = 1;
          onCreateOptionsMenu(paramMenu, paramMenuInflater);
        }
      }
      bool2 = j | this.mChildFragmentManager.E(paramMenu, paramMenuInflater);
    }
    return bool2;
  }
  
  void performCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.mChildFragmentManager.V0();
    this.mPerformedCreateView = true;
    this.mViewLifecycleOwner = new w(this, getViewModelStore());
    paramLayoutInflater = onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    this.mView = paramLayoutInflater;
    if (paramLayoutInflater != null)
    {
      this.mViewLifecycleOwner.b();
      o0.a(this.mView, this.mViewLifecycleOwner);
      p0.a(this.mView, this.mViewLifecycleOwner);
      androidx.savedstate.f.a(this.mView, this.mViewLifecycleOwner);
      this.mViewLifecycleOwnerLiveData.n(this.mViewLifecycleOwner);
    }
    else
    {
      if (this.mViewLifecycleOwner.c()) {
        break label115;
      }
      this.mViewLifecycleOwner = null;
    }
    return;
    label115:
    throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
  }
  
  void performDestroy()
  {
    this.mChildFragmentManager.F();
    this.mLifecycleRegistry.h(Lifecycle.Event.ON_DESTROY);
    this.mState = 0;
    this.mCalled = false;
    this.mIsCreated = false;
    onDestroy();
    if (this.mCalled) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onDestroy()");
    throw new SuperNotCalledException(localStringBuilder.toString());
  }
  
  void performDestroyView()
  {
    this.mChildFragmentManager.G();
    if ((this.mView != null) && (this.mViewLifecycleOwner.getLifecycle().b().isAtLeast(Lifecycle.State.CREATED))) {
      this.mViewLifecycleOwner.a(Lifecycle.Event.ON_DESTROY);
    }
    this.mState = 1;
    this.mCalled = false;
    onDestroyView();
    if (this.mCalled)
    {
      androidx.loader.app.a.b(this).c();
      this.mPerformedCreateView = false;
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onDestroyView()");
    throw new SuperNotCalledException(localStringBuilder.toString());
  }
  
  void performDetach()
  {
    this.mState = -1;
    this.mCalled = false;
    onDetach();
    this.mLayoutInflater = null;
    if (this.mCalled)
    {
      if (!this.mChildFragmentManager.G0())
      {
        this.mChildFragmentManager.F();
        this.mChildFragmentManager = new m();
      }
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onDetach()");
    throw new SuperNotCalledException(localStringBuilder.toString());
  }
  
  LayoutInflater performGetLayoutInflater(Bundle paramBundle)
  {
    paramBundle = onGetLayoutInflater(paramBundle);
    this.mLayoutInflater = paramBundle;
    return paramBundle;
  }
  
  void performLowMemory()
  {
    onLowMemory();
    this.mChildFragmentManager.H();
  }
  
  void performMultiWindowModeChanged(boolean paramBoolean)
  {
    onMultiWindowModeChanged(paramBoolean);
    this.mChildFragmentManager.I(paramBoolean);
  }
  
  boolean performOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (!this.mHidden)
    {
      if ((this.mHasMenu) && (this.mMenuVisible) && (onOptionsItemSelected(paramMenuItem))) {
        return true;
      }
      return this.mChildFragmentManager.K(paramMenuItem);
    }
    return false;
  }
  
  void performOptionsMenuClosed(Menu paramMenu)
  {
    if (!this.mHidden)
    {
      if ((this.mHasMenu) && (this.mMenuVisible)) {
        onOptionsMenuClosed(paramMenu);
      }
      this.mChildFragmentManager.L(paramMenu);
    }
  }
  
  void performPause()
  {
    this.mChildFragmentManager.N();
    if (this.mView != null) {
      this.mViewLifecycleOwner.a(Lifecycle.Event.ON_PAUSE);
    }
    this.mLifecycleRegistry.h(Lifecycle.Event.ON_PAUSE);
    this.mState = 6;
    this.mCalled = false;
    onPause();
    if (this.mCalled) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onPause()");
    throw new SuperNotCalledException(localStringBuilder.toString());
  }
  
  void performPictureInPictureModeChanged(boolean paramBoolean)
  {
    onPictureInPictureModeChanged(paramBoolean);
    this.mChildFragmentManager.O(paramBoolean);
  }
  
  boolean performPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool1 = this.mHidden;
    boolean bool2 = false;
    int i = 0;
    if (!bool1)
    {
      int j = i;
      if (this.mHasMenu)
      {
        j = i;
        if (this.mMenuVisible)
        {
          j = 1;
          onPrepareOptionsMenu(paramMenu);
        }
      }
      bool2 = j | this.mChildFragmentManager.P(paramMenu);
    }
    return bool2;
  }
  
  void performPrimaryNavigationFragmentChanged()
  {
    boolean bool = this.mFragmentManager.K0(this);
    Boolean localBoolean = this.mIsPrimaryNavigationFragment;
    if ((localBoolean == null) || (localBoolean.booleanValue() != bool))
    {
      this.mIsPrimaryNavigationFragment = Boolean.valueOf(bool);
      onPrimaryNavigationFragmentChanged(bool);
      this.mChildFragmentManager.Q();
    }
  }
  
  void performResume()
  {
    this.mChildFragmentManager.V0();
    this.mChildFragmentManager.b0(true);
    this.mState = 7;
    this.mCalled = false;
    onResume();
    if (this.mCalled)
    {
      localObject = this.mLifecycleRegistry;
      Lifecycle.Event localEvent = Lifecycle.Event.ON_RESUME;
      ((o)localObject).h(localEvent);
      if (this.mView != null) {
        this.mViewLifecycleOwner.a(localEvent);
      }
      this.mChildFragmentManager.R();
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" did not call through to super.onResume()");
    throw new SuperNotCalledException(((StringBuilder)localObject).toString());
  }
  
  void performSaveInstanceState(Bundle paramBundle)
  {
    onSaveInstanceState(paramBundle);
    this.mSavedStateRegistryController.e(paramBundle);
    Parcelable localParcelable = this.mChildFragmentManager.m1();
    if (localParcelable != null) {
      paramBundle.putParcelable("android:support:fragments", localParcelable);
    }
  }
  
  void performStart()
  {
    this.mChildFragmentManager.V0();
    this.mChildFragmentManager.b0(true);
    this.mState = 5;
    this.mCalled = false;
    onStart();
    if (this.mCalled)
    {
      o localo = this.mLifecycleRegistry;
      localObject = Lifecycle.Event.ON_START;
      localo.h((Lifecycle.Event)localObject);
      if (this.mView != null) {
        this.mViewLifecycleOwner.a((Lifecycle.Event)localObject);
      }
      this.mChildFragmentManager.S();
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" did not call through to super.onStart()");
    throw new SuperNotCalledException(((StringBuilder)localObject).toString());
  }
  
  void performStop()
  {
    this.mChildFragmentManager.U();
    if (this.mView != null) {
      this.mViewLifecycleOwner.a(Lifecycle.Event.ON_STOP);
    }
    this.mLifecycleRegistry.h(Lifecycle.Event.ON_STOP);
    this.mState = 4;
    this.mCalled = false;
    onStop();
    if (this.mCalled) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onStop()");
    throw new SuperNotCalledException(localStringBuilder.toString());
  }
  
  void performViewCreated()
  {
    onViewCreated(this.mView, this.mSavedFragmentState);
    this.mChildFragmentManager.V();
  }
  
  public void postponeEnterTransition()
  {
    ensureAnimationInfo().u = true;
  }
  
  public final void postponeEnterTransition(long paramLong, TimeUnit paramTimeUnit)
  {
    ensureAnimationInfo().u = true;
    Object localObject = this.mFragmentManager;
    if (localObject != null) {
      localObject = ((FragmentManager)localObject).v0().g();
    } else {
      localObject = new Handler(Looper.getMainLooper());
    }
    ((Handler)localObject).removeCallbacks(this.mPostponedDurationRunnable);
    ((Handler)localObject).postDelayed(this.mPostponedDurationRunnable, paramTimeUnit.toMillis(paramLong));
  }
  
  public final <I, O> b<I> registerForActivityResult(c.a<I, O> parama, final ActivityResultRegistry paramActivityResultRegistry, androidx.activity.result.a<O> parama1)
  {
    return prepareCallInternal(parama, new f(paramActivityResultRegistry), parama1);
  }
  
  public final <I, O> b<I> registerForActivityResult(c.a<I, O> parama, androidx.activity.result.a<O> parama1)
  {
    return prepareCallInternal(parama, new e(), parama1);
  }
  
  public void registerForContextMenu(View paramView)
  {
    paramView.setOnCreateContextMenuListener(this);
  }
  
  @Deprecated
  public final void requestPermissions(String[] paramArrayOfString, int paramInt)
  {
    if (this.mHost != null)
    {
      getParentFragmentManager().N0(this, paramArrayOfString, paramInt);
      return;
    }
    paramArrayOfString = new StringBuilder();
    paramArrayOfString.append("Fragment ");
    paramArrayOfString.append(this);
    paramArrayOfString.append(" not attached to Activity");
    throw new IllegalStateException(paramArrayOfString.toString());
  }
  
  public final d requireActivity()
  {
    Object localObject = getActivity();
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" not attached to an activity.");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  public final Bundle requireArguments()
  {
    Object localObject = getArguments();
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" does not have any arguments.");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  public final Context requireContext()
  {
    Object localObject = getContext();
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" not attached to a context.");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  @Deprecated
  public final FragmentManager requireFragmentManager()
  {
    return getParentFragmentManager();
  }
  
  public final Object requireHost()
  {
    Object localObject = getHost();
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" not attached to a host.");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  public final Fragment requireParentFragment()
  {
    Object localObject = getParentFragment();
    if (localObject == null)
    {
      if (getContext() == null)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Fragment ");
        ((StringBuilder)localObject).append(this);
        ((StringBuilder)localObject).append(" is not attached to any Fragment or host");
        throw new IllegalStateException(((StringBuilder)localObject).toString());
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Fragment ");
      ((StringBuilder)localObject).append(this);
      ((StringBuilder)localObject).append(" is not a child Fragment, it is directly attached to ");
      ((StringBuilder)localObject).append(getContext());
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    return localObject;
  }
  
  public final View requireView()
  {
    Object localObject = getView();
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" did not return a View from onCreateView() or this was called before onCreateView().");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  void restoreChildFragmentState(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getParcelable("android:support:fragments");
      if (paramBundle != null)
      {
        this.mChildFragmentManager.k1(paramBundle);
        this.mChildFragmentManager.D();
      }
    }
  }
  
  final void restoreViewState(Bundle paramBundle)
  {
    SparseArray localSparseArray = this.mSavedViewState;
    if (localSparseArray != null)
    {
      this.mView.restoreHierarchyState(localSparseArray);
      this.mSavedViewState = null;
    }
    if (this.mView != null)
    {
      this.mViewLifecycleOwner.d(this.mSavedViewRegistryState);
      this.mSavedViewRegistryState = null;
    }
    this.mCalled = false;
    onViewStateRestored(paramBundle);
    if (this.mCalled)
    {
      if (this.mView != null) {
        this.mViewLifecycleOwner.a(Lifecycle.Event.ON_CREATE);
      }
      return;
    }
    paramBundle = new StringBuilder();
    paramBundle.append("Fragment ");
    paramBundle.append(this);
    paramBundle.append(" did not call through to super.onViewStateRestored()");
    throw new SuperNotCalledException(paramBundle.toString());
  }
  
  public void setAllowEnterTransitionOverlap(boolean paramBoolean)
  {
    ensureAnimationInfo().r = Boolean.valueOf(paramBoolean);
  }
  
  public void setAllowReturnTransitionOverlap(boolean paramBoolean)
  {
    ensureAnimationInfo().q = Boolean.valueOf(paramBoolean);
  }
  
  void setAnimatingAway(View paramView)
  {
    ensureAnimationInfo().a = paramView;
  }
  
  void setAnimations(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((this.mAnimationInfo == null) && (paramInt1 == 0) && (paramInt2 == 0) && (paramInt3 == 0) && (paramInt4 == 0)) {
      return;
    }
    ensureAnimationInfo().d = paramInt1;
    ensureAnimationInfo().e = paramInt2;
    ensureAnimationInfo().f = paramInt3;
    ensureAnimationInfo().g = paramInt4;
  }
  
  void setAnimator(Animator paramAnimator)
  {
    ensureAnimationInfo().b = paramAnimator;
  }
  
  public void setArguments(Bundle paramBundle)
  {
    if ((this.mFragmentManager != null) && (isStateSaved())) {
      throw new IllegalStateException("Fragment already added and state has been saved");
    }
    this.mArguments = paramBundle;
  }
  
  public void setEnterSharedElementCallback(a0 parama0)
  {
    ensureAnimationInfo().getClass();
  }
  
  public void setEnterTransition(Object paramObject)
  {
    ensureAnimationInfo().k = paramObject;
  }
  
  public void setExitSharedElementCallback(a0 parama0)
  {
    ensureAnimationInfo().getClass();
  }
  
  public void setExitTransition(Object paramObject)
  {
    ensureAnimationInfo().m = paramObject;
  }
  
  void setFocusedView(View paramView)
  {
    ensureAnimationInfo().t = paramView;
  }
  
  public void setHasOptionsMenu(boolean paramBoolean)
  {
    if (this.mHasMenu != paramBoolean)
    {
      this.mHasMenu = paramBoolean;
      if ((isAdded()) && (!isHidden())) {
        this.mHost.p();
      }
    }
  }
  
  void setHideReplaced(boolean paramBoolean)
  {
    ensureAnimationInfo().w = paramBoolean;
  }
  
  public void setInitialSavedState(SavedState paramSavedState)
  {
    if (this.mFragmentManager == null)
    {
      if (paramSavedState != null)
      {
        paramSavedState = paramSavedState.mState;
        if (paramSavedState != null) {}
      }
      else
      {
        paramSavedState = null;
      }
      this.mSavedFragmentState = paramSavedState;
      return;
    }
    throw new IllegalStateException("Fragment already added");
  }
  
  public void setMenuVisibility(boolean paramBoolean)
  {
    if (this.mMenuVisible != paramBoolean)
    {
      this.mMenuVisible = paramBoolean;
      if ((this.mHasMenu) && (isAdded()) && (!isHidden())) {
        this.mHost.p();
      }
    }
  }
  
  void setNextTransition(int paramInt)
  {
    if ((this.mAnimationInfo == null) && (paramInt == 0)) {
      return;
    }
    ensureAnimationInfo();
    this.mAnimationInfo.h = paramInt;
  }
  
  void setOnStartEnterTransitionListener(k paramk)
  {
    ensureAnimationInfo();
    i locali = this.mAnimationInfo;
    k localk = locali.v;
    if (paramk == localk) {
      return;
    }
    if ((paramk != null) && (localk != null))
    {
      paramk = new StringBuilder();
      paramk.append("Trying to set a replacement startPostponedEnterTransition on ");
      paramk.append(this);
      throw new IllegalStateException(paramk.toString());
    }
    if (locali.u) {
      locali.v = paramk;
    }
    if (paramk != null) {
      paramk.a();
    }
  }
  
  void setPopDirection(boolean paramBoolean)
  {
    if (this.mAnimationInfo == null) {
      return;
    }
    ensureAnimationInfo().c = paramBoolean;
  }
  
  void setPostOnViewCreatedAlpha(float paramFloat)
  {
    ensureAnimationInfo().s = paramFloat;
  }
  
  public void setReenterTransition(Object paramObject)
  {
    ensureAnimationInfo().n = paramObject;
  }
  
  @Deprecated
  public void setRetainInstance(boolean paramBoolean)
  {
    this.mRetainInstance = paramBoolean;
    FragmentManager localFragmentManager = this.mFragmentManager;
    if (localFragmentManager != null)
    {
      if (paramBoolean) {
        localFragmentManager.i(this);
      } else {
        localFragmentManager.i1(this);
      }
    }
    else {
      this.mRetainInstanceChangedWhileDetached = true;
    }
  }
  
  public void setReturnTransition(Object paramObject)
  {
    ensureAnimationInfo().l = paramObject;
  }
  
  public void setSharedElementEnterTransition(Object paramObject)
  {
    ensureAnimationInfo().o = paramObject;
  }
  
  void setSharedElementNames(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2)
  {
    ensureAnimationInfo();
    i locali = this.mAnimationInfo;
    locali.i = paramArrayList1;
    locali.j = paramArrayList2;
  }
  
  public void setSharedElementReturnTransition(Object paramObject)
  {
    ensureAnimationInfo().p = paramObject;
  }
  
  @Deprecated
  public void setTargetFragment(Fragment paramFragment, int paramInt)
  {
    FragmentManager localFragmentManager = this.mFragmentManager;
    if (paramFragment != null) {
      localObject = paramFragment.mFragmentManager;
    } else {
      localObject = null;
    }
    if ((localFragmentManager != null) && (localObject != null) && (localFragmentManager != localObject))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Fragment ");
      ((StringBuilder)localObject).append(paramFragment);
      ((StringBuilder)localObject).append(" must share the same FragmentManager to be set as a target fragment");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    Object localObject = paramFragment;
    while (localObject != null) {
      if (!((Fragment)localObject).equals(this))
      {
        localObject = ((Fragment)localObject).getTargetFragment();
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Setting ");
        ((StringBuilder)localObject).append(paramFragment);
        ((StringBuilder)localObject).append(" as the target of ");
        ((StringBuilder)localObject).append(this);
        ((StringBuilder)localObject).append(" would create a target cycle");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
    }
    if (paramFragment == null)
    {
      this.mTargetWho = null;
      this.mTarget = null;
    }
    else if ((this.mFragmentManager != null) && (paramFragment.mFragmentManager != null))
    {
      this.mTargetWho = paramFragment.mWho;
      this.mTarget = null;
    }
    else
    {
      this.mTargetWho = null;
      this.mTarget = paramFragment;
    }
    this.mTargetRequestCode = paramInt;
  }
  
  @Deprecated
  public void setUserVisibleHint(boolean paramBoolean)
  {
    if ((!this.mUserVisibleHint) && (paramBoolean) && (this.mState < 5) && (this.mFragmentManager != null) && (isAdded()) && (this.mIsCreated))
    {
      FragmentManager localFragmentManager = this.mFragmentManager;
      localFragmentManager.X0(localFragmentManager.w(this));
    }
    this.mUserVisibleHint = paramBoolean;
    boolean bool;
    if ((this.mState < 5) && (!paramBoolean)) {
      bool = true;
    } else {
      bool = false;
    }
    this.mDeferStart = bool;
    if (this.mSavedFragmentState != null) {
      this.mSavedUserVisibleHint = Boolean.valueOf(paramBoolean);
    }
  }
  
  public boolean shouldShowRequestPermissionRationale(String paramString)
  {
    j localj = this.mHost;
    if (localj != null) {
      return localj.m(paramString);
    }
    return false;
  }
  
  public void startActivity(@SuppressLint({"UnknownNullness"}) Intent paramIntent)
  {
    startActivity(paramIntent, null);
  }
  
  public void startActivity(@SuppressLint({"UnknownNullness"}) Intent paramIntent, Bundle paramBundle)
  {
    j localj = this.mHost;
    if (localj != null)
    {
      localj.n(this, paramIntent, -1, paramBundle);
      return;
    }
    paramIntent = new StringBuilder();
    paramIntent.append("Fragment ");
    paramIntent.append(this);
    paramIntent.append(" not attached to Activity");
    throw new IllegalStateException(paramIntent.toString());
  }
  
  @Deprecated
  public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent paramIntent, int paramInt)
  {
    startActivityForResult(paramIntent, paramInt, null);
  }
  
  @Deprecated
  public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    if (this.mHost != null)
    {
      getParentFragmentManager().O0(this, paramIntent, paramInt, paramBundle);
      return;
    }
    paramIntent = new StringBuilder();
    paramIntent.append("Fragment ");
    paramIntent.append(this);
    paramIntent.append(" not attached to Activity");
    throw new IllegalStateException(paramIntent.toString());
  }
  
  @Deprecated
  public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    if (this.mHost != null)
    {
      if (FragmentManager.H0(2))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Fragment ");
        localStringBuilder.append(this);
        localStringBuilder.append(" received the following in startIntentSenderForResult() requestCode: ");
        localStringBuilder.append(paramInt1);
        localStringBuilder.append(" IntentSender: ");
        localStringBuilder.append(paramIntentSender);
        localStringBuilder.append(" fillInIntent: ");
        localStringBuilder.append(paramIntent);
        localStringBuilder.append(" options: ");
        localStringBuilder.append(paramBundle);
        Log.v("FragmentManager", localStringBuilder.toString());
      }
      getParentFragmentManager().P0(this, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
      return;
    }
    paramIntentSender = new StringBuilder();
    paramIntentSender.append("Fragment ");
    paramIntentSender.append(this);
    paramIntentSender.append(" not attached to Activity");
    throw new IllegalStateException(paramIntentSender.toString());
  }
  
  public void startPostponedEnterTransition()
  {
    if ((this.mAnimationInfo != null) && (ensureAnimationInfo().u)) {
      if (this.mHost == null) {
        ensureAnimationInfo().u = false;
      } else if (Looper.myLooper() != this.mHost.g().getLooper()) {
        this.mHost.g().postAtFrontOfQueue(new b());
      } else {
        callStartTransitionListener(true);
      }
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append(getClass().getSimpleName());
    localStringBuilder.append("{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append("}");
    localStringBuilder.append(" (");
    localStringBuilder.append(this.mWho);
    if (this.mFragmentId != 0)
    {
      localStringBuilder.append(" id=0x");
      localStringBuilder.append(Integer.toHexString(this.mFragmentId));
    }
    if (this.mTag != null)
    {
      localStringBuilder.append(" tag=");
      localStringBuilder.append(this.mTag);
    }
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  public void unregisterForContextMenu(View paramView)
  {
    paramView.setOnCreateContextMenuListener(null);
  }
  
  public static class InstantiationException
    extends RuntimeException
  {
    public InstantiationException(String paramString, Exception paramException)
    {
      super(paramException);
    }
  }
  
  @SuppressLint({"BanParcelableUsage, ParcelClassLoader"})
  public static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    final Bundle mState;
    
    SavedState(Bundle paramBundle)
    {
      this.mState = paramBundle;
    }
    
    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      paramParcel = paramParcel.readBundle();
      this.mState = paramParcel;
      if ((paramClassLoader != null) && (paramParcel != null)) {
        paramParcel.setClassLoader(paramClassLoader);
      }
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeBundle(this.mState);
    }
    
    class a
      implements Parcelable.ClassLoaderCreator<Fragment.SavedState>
    {
      public Fragment.SavedState a(Parcel paramParcel)
      {
        return new Fragment.SavedState(paramParcel, null);
      }
      
      public Fragment.SavedState b(Parcel paramParcel, ClassLoader paramClassLoader)
      {
        return new Fragment.SavedState(paramParcel, paramClassLoader);
      }
      
      public Fragment.SavedState[] c(int paramInt)
      {
        return new Fragment.SavedState[paramInt];
      }
    }
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      Fragment.this.startPostponedEnterTransition();
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      Fragment.this.callStartTransitionListener(false);
    }
  }
  
  class c
    implements Runnable
  {
    c(SpecialEffectsController paramSpecialEffectsController) {}
    
    public void run()
    {
      this.a.g();
    }
  }
  
  class d
    extends f
  {
    d() {}
    
    public View c(int paramInt)
    {
      Object localObject = Fragment.this.mView;
      if (localObject != null) {
        return ((View)localObject).findViewById(paramInt);
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Fragment ");
      ((StringBuilder)localObject).append(Fragment.this);
      ((StringBuilder)localObject).append(" does not have a view");
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    
    public boolean d()
    {
      boolean bool;
      if (Fragment.this.mView != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  class e
    implements k.a<Void, ActivityResultRegistry>
  {
    e() {}
    
    public ActivityResultRegistry a(Void paramVoid)
    {
      paramVoid = Fragment.this;
      j localj = paramVoid.mHost;
      if ((localj instanceof androidx.activity.result.c)) {
        return ((androidx.activity.result.c)localj).getActivityResultRegistry();
      }
      return paramVoid.requireActivity().getActivityResultRegistry();
    }
  }
  
  class f
    implements k.a<Void, ActivityResultRegistry>
  {
    f(ActivityResultRegistry paramActivityResultRegistry) {}
    
    public ActivityResultRegistry a(Void paramVoid)
    {
      return paramActivityResultRegistry;
    }
  }
  
  class g
    extends Fragment.j
  {
    g(k.a parama, AtomicReference paramAtomicReference, c.a parama1, androidx.activity.result.a parama2)
    {
      super();
    }
    
    void a()
    {
      String str = Fragment.this.generateActivityResultKey();
      ActivityResultRegistry localActivityResultRegistry = (ActivityResultRegistry)parama1.apply(null);
      localAtomicReference.set(localActivityResultRegistry.i(str, Fragment.this, parama, parama2));
    }
  }
  
  class h
    extends b<I>
  {
    h(AtomicReference paramAtomicReference, c.a parama) {}
    
    public void b(I paramI, androidx.core.app.c paramc)
    {
      b localb = (b)localAtomicReference.get();
      if (localb != null)
      {
        localb.b(paramI, paramc);
        return;
      }
      throw new IllegalStateException("Operation cannot be started before fragment is in created state");
    }
    
    public void c()
    {
      b localb = (b)localAtomicReference.getAndSet(null);
      if (localb != null) {
        localb.c();
      }
    }
  }
  
  static class i
  {
    View a;
    Animator b;
    boolean c;
    int d;
    int e;
    int f;
    int g;
    int h;
    ArrayList<String> i;
    ArrayList<String> j;
    Object k = null;
    Object l;
    Object m;
    Object n;
    Object o;
    Object p;
    Boolean q;
    Boolean r;
    float s;
    View t;
    boolean u;
    Fragment.k v;
    boolean w;
    
    i()
    {
      Object localObject = Fragment.USE_DEFAULT_TRANSITION;
      this.l = localObject;
      this.m = null;
      this.n = localObject;
      this.o = null;
      this.p = localObject;
      this.s = 1.0F;
      this.t = null;
    }
  }
  
  private static abstract class j
  {
    abstract void a();
  }
  
  static abstract interface k
  {
    public abstract void a();
    
    public abstract void b();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.Fragment
 * JD-Core Version:    0.7.0.1
 */