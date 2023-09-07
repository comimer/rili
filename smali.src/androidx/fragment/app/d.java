package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.core.app.a0;
import androidx.core.app.b.e;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.loader.app.a;
import androidx.savedstate.c.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Iterator;

public class d
  extends ComponentActivity
  implements b.e
{
  static final String FRAGMENTS_TAG = "android:support:fragments";
  boolean mCreated;
  final androidx.lifecycle.o mFragmentLifecycleRegistry = new androidx.lifecycle.o(this);
  final h mFragments = h.b(new c());
  boolean mResumed;
  boolean mStopped = true;
  
  public d()
  {
    init();
  }
  
  public d(int paramInt)
  {
    super(paramInt);
    init();
  }
  
  private void init()
  {
    getSavedStateRegistry().h("android:support:fragments", new a());
    addOnContextAvailableListener(new b());
  }
  
  private static boolean markState(FragmentManager paramFragmentManager, Lifecycle.State paramState)
  {
    Iterator localIterator = paramFragmentManager.u0().iterator();
    boolean bool1 = false;
    while (localIterator.hasNext())
    {
      Fragment localFragment = (Fragment)localIterator.next();
      if (localFragment != null)
      {
        boolean bool2 = bool1;
        if (localFragment.getHost() != null) {
          bool2 = bool1 | markState(localFragment.getChildFragmentManager(), paramState);
        }
        paramFragmentManager = localFragment.mViewLifecycleOwner;
        bool1 = bool2;
        if (paramFragmentManager != null)
        {
          bool1 = bool2;
          if (paramFragmentManager.getLifecycle().b().isAtLeast(Lifecycle.State.STARTED))
          {
            localFragment.mViewLifecycleOwner.f(paramState);
            bool1 = true;
          }
        }
        if (localFragment.mLifecycleRegistry.b().isAtLeast(Lifecycle.State.STARTED))
        {
          localFragment.mLifecycleRegistry.o(paramState);
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  final View dispatchFragmentsOnCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return this.mFragments.v(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("  ");
    localObject = ((StringBuilder)localObject).toString();
    paramPrintWriter.print((String)localObject);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(this.mCreated);
    paramPrintWriter.print(" mResumed=");
    paramPrintWriter.print(this.mResumed);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(this.mStopped);
    if (getApplication() != null) {
      a.b(this).a((String)localObject, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    this.mFragments.t().X(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public FragmentManager getSupportFragmentManager()
  {
    return this.mFragments.t();
  }
  
  @Deprecated
  public a getSupportLoaderManager()
  {
    return a.b(this);
  }
  
  void markFragmentsCreated()
  {
    while (markState(getSupportFragmentManager(), Lifecycle.State.CREATED)) {}
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.mFragments.u();
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  @Deprecated
  public void onAttachFragment(Fragment paramFragment) {}
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.mFragments.u();
    super.onConfigurationChanged(paramConfiguration);
    this.mFragments.d(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mFragmentLifecycleRegistry.h(Lifecycle.Event.ON_CREATE);
    this.mFragments.f();
  }
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0) {
      return super.onCreatePanelMenu(paramInt, paramMenu) | this.mFragments.g(paramMenu, getMenuInflater());
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  public View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    View localView = dispatchFragmentsOnCreateView(paramView, paramString, paramContext, paramAttributeSet);
    if (localView == null) {
      return super.onCreateView(paramView, paramString, paramContext, paramAttributeSet);
    }
    return localView;
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    View localView = dispatchFragmentsOnCreateView(null, paramString, paramContext, paramAttributeSet);
    if (localView == null) {
      return super.onCreateView(paramString, paramContext, paramAttributeSet);
    }
    return localView;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.mFragments.h();
    this.mFragmentLifecycleRegistry.h(Lifecycle.Event.ON_DESTROY);
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    this.mFragments.i();
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    if (paramInt != 0)
    {
      if (paramInt != 6) {
        return false;
      }
      return this.mFragments.e(paramMenuItem);
    }
    return this.mFragments.k(paramMenuItem);
  }
  
  public void onMultiWindowModeChanged(boolean paramBoolean)
  {
    this.mFragments.j(paramBoolean);
  }
  
  protected void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent paramIntent)
  {
    this.mFragments.u();
    super.onNewIntent(paramIntent);
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0) {
      this.mFragments.l(paramMenu);
    }
    super.onPanelClosed(paramInt, paramMenu);
  }
  
  protected void onPause()
  {
    super.onPause();
    this.mResumed = false;
    this.mFragments.m();
    this.mFragmentLifecycleRegistry.h(Lifecycle.Event.ON_PAUSE);
  }
  
  public void onPictureInPictureModeChanged(boolean paramBoolean)
  {
    this.mFragments.n(paramBoolean);
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    onResumeFragments();
  }
  
  @Deprecated
  protected boolean onPrepareOptionsPanel(View paramView, Menu paramMenu)
  {
    return super.onPreparePanel(0, paramView, paramMenu);
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if (paramInt == 0) {
      return onPrepareOptionsPanel(paramView, paramMenu) | this.mFragments.o(paramMenu);
    }
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    this.mFragments.u();
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  protected void onResume()
  {
    this.mFragments.u();
    super.onResume();
    this.mResumed = true;
    this.mFragments.s();
  }
  
  protected void onResumeFragments()
  {
    this.mFragmentLifecycleRegistry.h(Lifecycle.Event.ON_RESUME);
    this.mFragments.p();
  }
  
  protected void onStart()
  {
    this.mFragments.u();
    super.onStart();
    this.mStopped = false;
    if (!this.mCreated)
    {
      this.mCreated = true;
      this.mFragments.c();
    }
    this.mFragments.s();
    this.mFragmentLifecycleRegistry.h(Lifecycle.Event.ON_START);
    this.mFragments.q();
  }
  
  public void onStateNotSaved()
  {
    this.mFragments.u();
  }
  
  protected void onStop()
  {
    super.onStop();
    this.mStopped = true;
    markFragmentsCreated();
    this.mFragments.r();
    this.mFragmentLifecycleRegistry.h(Lifecycle.Event.ON_STOP);
  }
  
  public void setEnterSharedElementCallback(a0 parama0)
  {
    androidx.core.app.b.s(this, parama0);
  }
  
  public void setExitSharedElementCallback(a0 parama0)
  {
    androidx.core.app.b.t(this, parama0);
  }
  
  public void startActivityFromFragment(Fragment paramFragment, @SuppressLint({"UnknownNullness"}) Intent paramIntent, int paramInt)
  {
    startActivityFromFragment(paramFragment, paramIntent, paramInt, null);
  }
  
  public void startActivityFromFragment(Fragment paramFragment, @SuppressLint({"UnknownNullness"}) Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    if (paramInt == -1)
    {
      androidx.core.app.b.v(this, paramIntent, -1, paramBundle);
      return;
    }
    paramFragment.startActivityForResult(paramIntent, paramInt, paramBundle);
  }
  
  @Deprecated
  public void startIntentSenderFromFragment(Fragment paramFragment, @SuppressLint({"UnknownNullness"}) IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    if (paramInt1 == -1)
    {
      androidx.core.app.b.w(this, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
      return;
    }
    paramFragment.startIntentSenderForResult(paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
  }
  
  public void supportFinishAfterTransition()
  {
    androidx.core.app.b.n(this);
  }
  
  @Deprecated
  public void supportInvalidateOptionsMenu()
  {
    invalidateOptionsMenu();
  }
  
  public void supportPostponeEnterTransition()
  {
    androidx.core.app.b.p(this);
  }
  
  public void supportStartPostponedEnterTransition()
  {
    androidx.core.app.b.x(this);
  }
  
  @Deprecated
  public final void validateRequestPermissionsRequestCode(int paramInt) {}
  
  class a
    implements c.c
  {
    a() {}
    
    public Bundle a()
    {
      Bundle localBundle = new Bundle();
      d.this.markFragmentsCreated();
      d.this.mFragmentLifecycleRegistry.h(Lifecycle.Event.ON_STOP);
      Parcelable localParcelable = d.this.mFragments.x();
      if (localParcelable != null) {
        localBundle.putParcelable("android:support:fragments", localParcelable);
      }
      return localBundle;
    }
  }
  
  class b
    implements b.b
  {
    b() {}
    
    public void a(Context paramContext)
    {
      d.this.mFragments.a(null);
      paramContext = d.this.getSavedStateRegistry().b("android:support:fragments");
      if (paramContext != null)
      {
        paramContext = paramContext.getParcelable("android:support:fragments");
        d.this.mFragments.w(paramContext);
      }
    }
  }
  
  class c
    extends j<d>
    implements n0, androidx.activity.c, androidx.activity.result.c, o
  {
    public c()
    {
      super();
    }
    
    public void a(FragmentManager paramFragmentManager, Fragment paramFragment)
    {
      d.this.onAttachFragment(paramFragment);
    }
    
    public View c(int paramInt)
    {
      return d.this.findViewById(paramInt);
    }
    
    public boolean d()
    {
      Window localWindow = d.this.getWindow();
      boolean bool;
      if ((localWindow != null) && (localWindow.peekDecorView() != null)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public ActivityResultRegistry getActivityResultRegistry()
    {
      return d.this.getActivityResultRegistry();
    }
    
    public Lifecycle getLifecycle()
    {
      return d.this.mFragmentLifecycleRegistry;
    }
    
    public OnBackPressedDispatcher getOnBackPressedDispatcher()
    {
      return d.this.getOnBackPressedDispatcher();
    }
    
    public m0 getViewModelStore()
    {
      return d.this.getViewModelStore();
    }
    
    public void h(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
    {
      d.this.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    
    public LayoutInflater j()
    {
      return d.this.getLayoutInflater().cloneInContext(d.this);
    }
    
    public boolean l(Fragment paramFragment)
    {
      return d.this.isFinishing() ^ true;
    }
    
    public boolean m(String paramString)
    {
      return androidx.core.app.b.u(d.this, paramString);
    }
    
    public void p()
    {
      d.this.supportInvalidateOptionsMenu();
    }
    
    public d q()
    {
      return d.this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.d
 * JD-Core Version:    0.7.0.1
 */