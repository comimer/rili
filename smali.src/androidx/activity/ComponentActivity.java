package androidx.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.IntentSenderRequest;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.a0;
import androidx.lifecycle.f0;
import androidx.lifecycle.k0.b;
import androidx.lifecycle.l;
import androidx.lifecycle.m0;
import androidx.lifecycle.n;
import androidx.lifecycle.n0;
import androidx.lifecycle.o;
import androidx.lifecycle.o0;
import androidx.lifecycle.p0;
import androidx.savedstate.c.c;
import androidx.savedstate.d;
import androidx.savedstate.e;
import androidx.savedstate.f;
import c.a.a;
import java.util.concurrent.atomic.AtomicInteger;

public class ComponentActivity
  extends androidx.core.app.i
  implements n0, androidx.lifecycle.i, e, c, androidx.activity.result.c
{
  private static final String ACTIVITY_RESULT_TAG = "android:support:activity-result";
  private final ActivityResultRegistry mActivityResultRegistry = new b();
  private int mContentLayoutId;
  final b.a mContextAwareHelper = new b.a();
  private k0.b mDefaultFactory;
  private final o mLifecycleRegistry = new o(this);
  private final AtomicInteger mNextLocalRequestCode = new AtomicInteger();
  private final OnBackPressedDispatcher mOnBackPressedDispatcher = new OnBackPressedDispatcher(new a());
  final d mSavedStateRegistryController = d.a(this);
  private m0 mViewModelStore;
  
  public ComponentActivity()
  {
    if (getLifecycle() != null)
    {
      getLifecycle().a(new l()
      {
        public void g(n paramAnonymousn, Lifecycle.Event paramAnonymousEvent)
        {
          if (paramAnonymousEvent == Lifecycle.Event.ON_STOP)
          {
            paramAnonymousn = ComponentActivity.this.getWindow();
            if (paramAnonymousn != null) {
              paramAnonymousn = paramAnonymousn.peekDecorView();
            } else {
              paramAnonymousn = null;
            }
            if (paramAnonymousn != null) {
              paramAnonymousn.cancelPendingInputEvents();
            }
          }
        }
      });
      getLifecycle().a(new l()
      {
        public void g(n paramAnonymousn, Lifecycle.Event paramAnonymousEvent)
        {
          if (paramAnonymousEvent == Lifecycle.Event.ON_DESTROY)
          {
            ComponentActivity.this.mContextAwareHelper.b();
            if (!ComponentActivity.this.isChangingConfigurations()) {
              ComponentActivity.this.getViewModelStore().a();
            }
          }
        }
      });
      getLifecycle().a(new l()
      {
        public void g(n paramAnonymousn, Lifecycle.Event paramAnonymousEvent)
        {
          ComponentActivity.this.ensureViewModelStore();
          ComponentActivity.this.getLifecycle().c(this);
        }
      });
      getSavedStateRegistry().h("android:support:activity-result", new c());
      addOnContextAvailableListener(new d());
      return;
    }
    throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
  }
  
  public ComponentActivity(int paramInt)
  {
    this();
    this.mContentLayoutId = paramInt;
  }
  
  private void initViewTreeOwners()
  {
    o0.a(getWindow().getDecorView(), this);
    p0.a(getWindow().getDecorView(), this);
    f.a(getWindow().getDecorView(), this);
  }
  
  public void addContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View paramView, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams paramLayoutParams)
  {
    initViewTreeOwners();
    super.addContentView(paramView, paramLayoutParams);
  }
  
  public final void addOnContextAvailableListener(b.b paramb)
  {
    this.mContextAwareHelper.a(paramb);
  }
  
  void ensureViewModelStore()
  {
    if (this.mViewModelStore == null)
    {
      e locale = (e)getLastNonConfigurationInstance();
      if (locale != null) {
        this.mViewModelStore = locale.b;
      }
      if (this.mViewModelStore == null) {
        this.mViewModelStore = new m0();
      }
    }
  }
  
  public final ActivityResultRegistry getActivityResultRegistry()
  {
    return this.mActivityResultRegistry;
  }
  
  public k0.b getDefaultViewModelProviderFactory()
  {
    if (getApplication() != null)
    {
      if (this.mDefaultFactory == null)
      {
        Application localApplication = getApplication();
        Bundle localBundle;
        if (getIntent() != null) {
          localBundle = getIntent().getExtras();
        } else {
          localBundle = null;
        }
        this.mDefaultFactory = new f0(localApplication, this, localBundle);
      }
      return this.mDefaultFactory;
    }
    throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
  }
  
  @Deprecated
  public Object getLastCustomNonConfigurationInstance()
  {
    Object localObject = (e)getLastNonConfigurationInstance();
    if (localObject != null) {
      localObject = ((e)localObject).a;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public Lifecycle getLifecycle()
  {
    return this.mLifecycleRegistry;
  }
  
  public final OnBackPressedDispatcher getOnBackPressedDispatcher()
  {
    return this.mOnBackPressedDispatcher;
  }
  
  public final androidx.savedstate.c getSavedStateRegistry()
  {
    return this.mSavedStateRegistryController.b();
  }
  
  public m0 getViewModelStore()
  {
    if (getApplication() != null)
    {
      ensureViewModelStore();
      return this.mViewModelStore;
    }
    throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
  }
  
  @Deprecated
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (!this.mActivityResultRegistry.b(paramInt1, paramInt2, paramIntent)) {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void onBackPressed()
  {
    this.mOnBackPressedDispatcher.c();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    this.mSavedStateRegistryController.d(paramBundle);
    this.mContextAwareHelper.c(this);
    super.onCreate(paramBundle);
    a0.g(this);
    int i = this.mContentLayoutId;
    if (i != 0) {
      setContentView(i);
    }
  }
  
  @Deprecated
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (!this.mActivityResultRegistry.b(paramInt, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", paramArrayOfString).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", paramArrayOfInt))) {
      super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
    }
  }
  
  @Deprecated
  public Object onRetainCustomNonConfigurationInstance()
  {
    return null;
  }
  
  public final Object onRetainNonConfigurationInstance()
  {
    Object localObject1 = onRetainCustomNonConfigurationInstance();
    Object localObject2 = this.mViewModelStore;
    Object localObject3 = localObject2;
    if (localObject2 == null)
    {
      e locale = (e)getLastNonConfigurationInstance();
      localObject3 = localObject2;
      if (locale != null) {
        localObject3 = locale.b;
      }
    }
    if ((localObject3 == null) && (localObject1 == null)) {
      return null;
    }
    localObject2 = new e();
    ((e)localObject2).a = localObject1;
    ((e)localObject2).b = ((m0)localObject3);
    return localObject2;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    Lifecycle localLifecycle = getLifecycle();
    if ((localLifecycle instanceof o)) {
      ((o)localLifecycle).o(Lifecycle.State.CREATED);
    }
    super.onSaveInstanceState(paramBundle);
    this.mSavedStateRegistryController.e(paramBundle);
  }
  
  public Context peekAvailableContext()
  {
    return this.mContextAwareHelper.d();
  }
  
  public final <I, O> androidx.activity.result.b<I> registerForActivityResult(c.a<I, O> parama, ActivityResultRegistry paramActivityResultRegistry, androidx.activity.result.a<O> parama1)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("activity_rq#");
    localStringBuilder.append(this.mNextLocalRequestCode.getAndIncrement());
    return paramActivityResultRegistry.i(localStringBuilder.toString(), this, parama, parama1);
  }
  
  public final <I, O> androidx.activity.result.b<I> registerForActivityResult(c.a<I, O> parama, androidx.activity.result.a<O> parama1)
  {
    return registerForActivityResult(parama, this.mActivityResultRegistry, parama1);
  }
  
  public final void removeOnContextAvailableListener(b.b paramb)
  {
    this.mContextAwareHelper.e(paramb);
  }
  
  public void reportFullyDrawn()
  {
    try
    {
      if (o0.b.d())
      {
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append("reportFullyDrawn() for ");
        localStringBuilder.append(getComponentName());
        o0.b.a(localStringBuilder.toString());
      }
      super.reportFullyDrawn();
      return;
    }
    finally
    {
      o0.b.b();
    }
  }
  
  public void setContentView(int paramInt)
  {
    initViewTreeOwners();
    super.setContentView(paramInt);
  }
  
  public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View paramView)
  {
    initViewTreeOwners();
    super.setContentView(paramView);
  }
  
  public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View paramView, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams paramLayoutParams)
  {
    initViewTreeOwners();
    super.setContentView(paramView, paramLayoutParams);
  }
  
  @Deprecated
  public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent paramIntent, int paramInt)
  {
    super.startActivityForResult(paramIntent, paramInt);
  }
  
  @Deprecated
  public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    super.startActivityForResult(paramIntent, paramInt, paramBundle);
  }
  
  @Deprecated
  public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4)
    throws IntentSender.SendIntentException
  {
    super.startIntentSenderForResult(paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4);
  }
  
  @Deprecated
  public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    super.startIntentSenderForResult(paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      try
      {
        ComponentActivity.this.onBackPressed();
      }
      catch (IllegalStateException localIllegalStateException)
      {
        if (!TextUtils.equals(localIllegalStateException.getMessage(), "Can not perform this action after onSaveInstanceState")) {
          break label24;
        }
      }
      return;
      label24:
      throw localIllegalStateException;
    }
  }
  
  class b
    extends ActivityResultRegistry
  {
    b() {}
    
    public <I, O> void f(final int paramInt, final c.a<I, O> parama, I paramI, androidx.core.app.c paramc)
    {
      paramc = ComponentActivity.this;
      final a.a locala = parama.b(paramc, paramI);
      if (locala != null)
      {
        new Handler(Looper.getMainLooper()).post(new a(paramInt, locala));
        return;
      }
      paramI = parama.a(paramc, paramI);
      parama = null;
      if ((paramI.getExtras() != null) && (paramI.getExtras().getClassLoader() == null)) {
        paramI.setExtrasClassLoader(paramc.getClassLoader());
      }
      if (paramI.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"))
      {
        parama = paramI.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        paramI.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
      }
      if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(paramI.getAction()))
      {
        paramI = paramI.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        parama = paramI;
        if (paramI == null) {
          parama = new String[0];
        }
        androidx.core.app.b.r(paramc, parama, paramInt);
      }
      else if ("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(paramI.getAction()))
      {
        paramI = (IntentSenderRequest)paramI.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
        try
        {
          androidx.core.app.b.w(paramc, paramI.getIntentSender(), paramInt, paramI.getFillInIntent(), paramI.getFlagsMask(), paramI.getFlagsValues(), 0, parama);
        }
        catch (IntentSender.SendIntentException parama)
        {
          new Handler(Looper.getMainLooper()).post(new b(paramInt, parama));
        }
      }
      else
      {
        androidx.core.app.b.v(paramc, paramI, paramInt, parama);
      }
    }
    
    class a
      implements Runnable
    {
      a(int paramInt, a.a parama) {}
      
      public void run()
      {
        ComponentActivity.b.this.c(paramInt, locala.a());
      }
    }
    
    class b
      implements Runnable
    {
      b(int paramInt, IntentSender.SendIntentException paramSendIntentException) {}
      
      public void run()
      {
        ComponentActivity.b.this.b(paramInt, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", parama));
      }
    }
  }
  
  class c
    implements c.c
  {
    c() {}
    
    @SuppressLint({"SyntheticAccessor"})
    public Bundle a()
    {
      Bundle localBundle = new Bundle();
      ComponentActivity.this.mActivityResultRegistry.h(localBundle);
      return localBundle;
    }
  }
  
  class d
    implements b.b
  {
    d() {}
    
    @SuppressLint({"SyntheticAccessor"})
    public void a(Context paramContext)
    {
      paramContext = ComponentActivity.this.getSavedStateRegistry().b("android:support:activity-result");
      if (paramContext != null) {
        ComponentActivity.this.mActivityResultRegistry.g(paramContext);
      }
    }
  }
  
  static final class e
  {
    Object a;
    m0 b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.activity.ComponentActivity
 * JD-Core Version:    0.7.0.1
 */