package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.BaseBundle;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory2;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewManager;
import android.view.ViewParent;
import android.view.Window;
import android.view.Window.Callback;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.g.a;
import androidx.appcompat.view.menu.m.a;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.ContentFrameLayout.a;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.b0;
import androidx.appcompat.widget.z0;
import androidx.core.content.res.h.f;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.c1;
import androidx.core.view.u;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.State;
import d.c;
import h.b.a;
import java.util.List;

class AppCompatDelegateImpl
  extends f
  implements g.a, LayoutInflater.Factory2
{
  private static final n.g<String, Integer> h0 = new n.g();
  private static final boolean i0 = false;
  private static final int[] j0 = { 16842836 };
  private static final boolean k0 = "robolectric".equals(Build.FINGERPRINT) ^ true;
  private static final boolean l0 = true;
  private View D;
  private boolean E;
  private boolean F;
  boolean G;
  boolean H;
  boolean I;
  boolean J;
  boolean K;
  private boolean L;
  private PanelFeatureState[] M;
  private PanelFeatureState N;
  private boolean O;
  private boolean P;
  private boolean Q;
  boolean R;
  private Configuration S;
  private int T = -100;
  private int U;
  private boolean V;
  private boolean W;
  private p X;
  private p Y;
  boolean Z;
  int a0;
  private final Runnable b0 = new a();
  private boolean c0;
  final Object d;
  private Rect d0;
  final Context e;
  private Rect e0;
  Window f;
  private i f0;
  private n g;
  private j g0;
  final e h;
  a i;
  MenuInflater j;
  private CharSequence k;
  private b0 l;
  private h m;
  private t n;
  h.b o;
  ActionBarContextView p;
  PopupWindow q;
  Runnable r;
  a1 v = null;
  private boolean w = true;
  private boolean x;
  ViewGroup y;
  private TextView z;
  
  AppCompatDelegateImpl(Activity paramActivity, e parame)
  {
    this(paramActivity, null, parame, paramActivity);
  }
  
  AppCompatDelegateImpl(Dialog paramDialog, e parame)
  {
    this(paramDialog.getContext(), paramDialog.getWindow(), parame, paramDialog);
  }
  
  private AppCompatDelegateImpl(Context paramContext, Window paramWindow, e parame, Object paramObject)
  {
    this.e = paramContext;
    this.h = parame;
    this.d = paramObject;
    if ((this.T == -100) && ((paramObject instanceof Dialog)))
    {
      paramContext = I0();
      if (paramContext != null) {
        this.T = paramContext.getDelegate().j();
      }
    }
    if (this.T == -100)
    {
      paramContext = h0;
      parame = (Integer)paramContext.get(paramObject.getClass().getName());
      if (parame != null)
      {
        this.T = parame.intValue();
        paramContext.remove(paramObject.getClass().getName());
      }
    }
    if (paramWindow != null) {
      J(paramWindow);
    }
    androidx.appcompat.widget.g.h();
  }
  
  private boolean A0(PanelFeatureState paramPanelFeatureState, int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    boolean bool1 = paramKeyEvent.isSystem();
    boolean bool2 = false;
    if (bool1) {
      return false;
    }
    if (!paramPanelFeatureState.m)
    {
      bool1 = bool2;
      if (!B0(paramPanelFeatureState, paramKeyEvent)) {}
    }
    else
    {
      androidx.appcompat.view.menu.g localg = paramPanelFeatureState.j;
      bool1 = bool2;
      if (localg != null) {
        bool1 = localg.performShortcut(paramInt1, paramKeyEvent, paramInt2);
      }
    }
    if ((bool1) && ((paramInt2 & 0x1) == 0) && (this.l == null)) {
      P(paramPanelFeatureState, true);
    }
    return bool1;
  }
  
  private boolean B0(PanelFeatureState paramPanelFeatureState, KeyEvent paramKeyEvent)
  {
    if (this.R) {
      return false;
    }
    if (paramPanelFeatureState.m) {
      return true;
    }
    Object localObject1 = this.N;
    if ((localObject1 != null) && (localObject1 != paramPanelFeatureState)) {
      P((PanelFeatureState)localObject1, false);
    }
    localObject1 = g0();
    if (localObject1 != null) {
      paramPanelFeatureState.i = ((Window.Callback)localObject1).onCreatePanelView(paramPanelFeatureState.a);
    }
    int i1 = paramPanelFeatureState.a;
    if ((i1 != 0) && (i1 != 108)) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    Object localObject2;
    if (i1 != 0)
    {
      localObject2 = this.l;
      if (localObject2 != null) {
        ((b0)localObject2).c();
      }
    }
    if ((paramPanelFeatureState.i == null) && ((i1 == 0) || (!(z0() instanceof k))))
    {
      localObject2 = paramPanelFeatureState.j;
      if ((localObject2 == null) || (paramPanelFeatureState.r))
      {
        if ((localObject2 == null) && ((!k0(paramPanelFeatureState)) || (paramPanelFeatureState.j == null))) {
          return false;
        }
        if ((i1 != 0) && (this.l != null))
        {
          if (this.m == null) {
            this.m = new h();
          }
          this.l.a(paramPanelFeatureState.j, this.m);
        }
        paramPanelFeatureState.j.stopDispatchingItemsChanged();
        if (!((Window.Callback)localObject1).onCreatePanelMenu(paramPanelFeatureState.a, paramPanelFeatureState.j))
        {
          paramPanelFeatureState.c(null);
          if (i1 != 0)
          {
            paramPanelFeatureState = this.l;
            if (paramPanelFeatureState != null) {
              paramPanelFeatureState.a(null, this.m);
            }
          }
          return false;
        }
        paramPanelFeatureState.r = false;
      }
      paramPanelFeatureState.j.stopDispatchingItemsChanged();
      localObject2 = paramPanelFeatureState.s;
      if (localObject2 != null)
      {
        paramPanelFeatureState.j.restoreActionViewStates((Bundle)localObject2);
        paramPanelFeatureState.s = null;
      }
      if (!((Window.Callback)localObject1).onPreparePanel(0, paramPanelFeatureState.i, paramPanelFeatureState.j))
      {
        if (i1 != 0)
        {
          paramKeyEvent = this.l;
          if (paramKeyEvent != null) {
            paramKeyEvent.a(null, this.m);
          }
        }
        paramPanelFeatureState.j.startDispatchingItemsChanged();
        return false;
      }
      if (paramKeyEvent != null) {
        i1 = paramKeyEvent.getDeviceId();
      } else {
        i1 = -1;
      }
      boolean bool;
      if (KeyCharacterMap.load(i1).getKeyboardType() != 1) {
        bool = true;
      } else {
        bool = false;
      }
      paramPanelFeatureState.p = bool;
      paramPanelFeatureState.j.setQwertyMode(bool);
      paramPanelFeatureState.j.startDispatchingItemsChanged();
    }
    paramPanelFeatureState.m = true;
    paramPanelFeatureState.n = false;
    this.N = paramPanelFeatureState;
    return true;
  }
  
  private void C0(boolean paramBoolean)
  {
    Object localObject = this.l;
    if ((localObject != null) && (((b0)localObject).d()) && ((!ViewConfiguration.get(this.e).hasPermanentMenuKey()) || (this.l.e())))
    {
      Window.Callback localCallback = g0();
      if ((this.l.b()) && (paramBoolean))
      {
        this.l.f();
        if (!this.R) {
          localCallback.onPanelClosed(108, e0(0, true).j);
        }
      }
      else if ((localCallback != null) && (!this.R))
      {
        if ((this.Z) && ((this.a0 & 0x1) != 0))
        {
          this.f.getDecorView().removeCallbacks(this.b0);
          this.b0.run();
        }
        PanelFeatureState localPanelFeatureState = e0(0, true);
        localObject = localPanelFeatureState.j;
        if ((localObject != null) && (!localPanelFeatureState.r) && (localCallback.onPreparePanel(0, localPanelFeatureState.i, (Menu)localObject)))
        {
          localCallback.onMenuOpened(108, localPanelFeatureState.j);
          this.l.g();
        }
      }
      return;
    }
    localObject = e0(0, true);
    ((PanelFeatureState)localObject).q = true;
    P((PanelFeatureState)localObject, false);
    y0((PanelFeatureState)localObject, null);
  }
  
  private int D0(int paramInt)
  {
    if (paramInt == 8)
    {
      Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
      return 108;
    }
    int i1 = paramInt;
    if (paramInt == 9)
    {
      Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
      i1 = 109;
    }
    return i1;
  }
  
  private boolean F0(ViewParent paramViewParent)
  {
    if (paramViewParent == null) {
      return false;
    }
    View localView = this.f.getDecorView();
    for (;;)
    {
      if (paramViewParent == null) {
        return true;
      }
      if ((paramViewParent == localView) || (!(paramViewParent instanceof View)) || (a0.O((View)paramViewParent))) {
        break;
      }
      paramViewParent = paramViewParent.getParent();
    }
    return false;
  }
  
  private boolean H(boolean paramBoolean)
  {
    if (this.R) {
      return false;
    }
    int i1 = K();
    paramBoolean = J0(o0(this.e, i1), paramBoolean);
    p localp;
    if (i1 == 0)
    {
      d0(this.e).e();
    }
    else
    {
      localp = this.X;
      if (localp != null) {
        localp.a();
      }
    }
    if (i1 == 3)
    {
      c0(this.e).e();
    }
    else
    {
      localp = this.Y;
      if (localp != null) {
        localp.a();
      }
    }
    return paramBoolean;
  }
  
  private void H0()
  {
    if (!this.x) {
      return;
    }
    throw new AndroidRuntimeException("Window feature must be requested before adding content");
  }
  
  private void I()
  {
    ContentFrameLayout localContentFrameLayout = (ContentFrameLayout)this.y.findViewById(16908290);
    Object localObject = this.f.getDecorView();
    localContentFrameLayout.a(((View)localObject).getPaddingLeft(), ((View)localObject).getPaddingTop(), ((View)localObject).getPaddingRight(), ((View)localObject).getPaddingBottom());
    localObject = this.e.obtainStyledAttributes(d.j.y0);
    ((TypedArray)localObject).getValue(d.j.K0, localContentFrameLayout.getMinWidthMajor());
    ((TypedArray)localObject).getValue(d.j.L0, localContentFrameLayout.getMinWidthMinor());
    int i1 = d.j.I0;
    if (((TypedArray)localObject).hasValue(i1)) {
      ((TypedArray)localObject).getValue(i1, localContentFrameLayout.getFixedWidthMajor());
    }
    i1 = d.j.J0;
    if (((TypedArray)localObject).hasValue(i1)) {
      ((TypedArray)localObject).getValue(i1, localContentFrameLayout.getFixedWidthMinor());
    }
    i1 = d.j.G0;
    if (((TypedArray)localObject).hasValue(i1)) {
      ((TypedArray)localObject).getValue(i1, localContentFrameLayout.getFixedHeightMajor());
    }
    i1 = d.j.H0;
    if (((TypedArray)localObject).hasValue(i1)) {
      ((TypedArray)localObject).getValue(i1, localContentFrameLayout.getFixedHeightMinor());
    }
    ((TypedArray)localObject).recycle();
    localContentFrameLayout.requestLayout();
  }
  
  private d I0()
  {
    for (Context localContext = this.e; localContext != null; localContext = ((ContextWrapper)localContext).getBaseContext())
    {
      if ((localContext instanceof d)) {
        return (d)localContext;
      }
      if (!(localContext instanceof ContextWrapper)) {
        break;
      }
    }
    return null;
  }
  
  private void J(Window paramWindow)
  {
    if (this.f == null)
    {
      Object localObject = paramWindow.getCallback();
      if (!(localObject instanceof n))
      {
        localObject = new n((Window.Callback)localObject);
        this.g = ((n)localObject);
        paramWindow.setCallback((Window.Callback)localObject);
        localObject = z0.u(this.e, null, j0);
        Drawable localDrawable = ((z0)localObject).h(0);
        if (localDrawable != null) {
          paramWindow.setBackgroundDrawable(localDrawable);
        }
        ((z0)localObject).w();
        this.f = paramWindow;
        return;
      }
      throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }
    throw new IllegalStateException("AppCompat has already installed itself into the Window");
  }
  
  private boolean J0(int paramInt, boolean paramBoolean)
  {
    Configuration localConfiguration1 = Q(this.e, paramInt, null);
    boolean bool1 = m0();
    Configuration localConfiguration2 = this.S;
    Object localObject = localConfiguration2;
    if (localConfiguration2 == null) {
      localObject = this.e.getResources().getConfiguration();
    }
    int i1 = ((Configuration)localObject).uiMode & 0x30;
    int i2 = localConfiguration1.uiMode & 0x30;
    boolean bool2 = true;
    if ((i1 != i2) && (paramBoolean) && (!bool1) && (this.P) && ((k0) || (this.Q)))
    {
      localObject = this.d;
      if (((localObject instanceof Activity)) && (!((Activity)localObject).isChild()))
      {
        androidx.core.app.b.q((Activity)this.d);
        paramBoolean = true;
        break label144;
      }
    }
    paramBoolean = false;
    label144:
    if ((!paramBoolean) && (i1 != i2))
    {
      K0(i2, bool1, null);
      paramBoolean = bool2;
    }
    if (paramBoolean)
    {
      localObject = this.d;
      if ((localObject instanceof d)) {
        ((d)localObject).onNightModeChanged(paramInt);
      }
    }
    return paramBoolean;
  }
  
  private int K()
  {
    int i1 = this.T;
    if (i1 == -100) {
      i1 = f.h();
    }
    return i1;
  }
  
  private void K0(int paramInt, boolean paramBoolean, Configuration paramConfiguration)
  {
    Resources localResources = this.e.getResources();
    Configuration localConfiguration = new Configuration(localResources.getConfiguration());
    if (paramConfiguration != null) {
      localConfiguration.updateFrom(paramConfiguration);
    }
    localConfiguration.uiMode = (paramInt | localResources.getConfiguration().uiMode & 0xFFFFFFCF);
    localResources.updateConfiguration(localConfiguration, null);
    paramInt = this.U;
    if (paramInt != 0)
    {
      this.e.setTheme(paramInt);
      this.e.getTheme().applyStyle(this.U, true);
    }
    if (paramBoolean)
    {
      paramConfiguration = this.d;
      if ((paramConfiguration instanceof Activity))
      {
        paramConfiguration = (Activity)paramConfiguration;
        if ((paramConfiguration instanceof androidx.lifecycle.n))
        {
          if (((androidx.lifecycle.n)paramConfiguration).getLifecycle().b().isAtLeast(Lifecycle.State.CREATED)) {
            paramConfiguration.onConfigurationChanged(localConfiguration);
          }
        }
        else if ((this.Q) && (!this.R)) {
          paramConfiguration.onConfigurationChanged(localConfiguration);
        }
      }
    }
  }
  
  private void M0(View paramView)
  {
    int i1;
    if ((a0.I(paramView) & 0x2000) != 0) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0) {
      i1 = androidx.core.content.a.c(this.e, c.b);
    } else {
      i1 = androidx.core.content.a.c(this.e, c.a);
    }
    paramView.setBackgroundColor(i1);
  }
  
  private void N()
  {
    p localp = this.X;
    if (localp != null) {
      localp.a();
    }
    localp = this.Y;
    if (localp != null) {
      localp.a();
    }
  }
  
  private Configuration Q(Context paramContext, int paramInt, Configuration paramConfiguration)
  {
    if (paramInt != 1)
    {
      if (paramInt != 2) {
        paramInt = paramContext.getApplicationContext().getResources().getConfiguration().uiMode & 0x30;
      } else {
        paramInt = 32;
      }
    }
    else {
      paramInt = 16;
    }
    paramContext = new Configuration();
    paramContext.fontScale = 0.0F;
    if (paramConfiguration != null) {
      paramContext.setTo(paramConfiguration);
    }
    paramContext.uiMode = (paramInt | paramContext.uiMode & 0xFFFFFFCF);
    return paramContext;
  }
  
  private ViewGroup R()
  {
    Object localObject1 = this.e.obtainStyledAttributes(d.j.y0);
    int i1 = d.j.D0;
    if (((TypedArray)localObject1).hasValue(i1))
    {
      if (((TypedArray)localObject1).getBoolean(d.j.M0, false)) {
        y(1);
      } else if (((TypedArray)localObject1).getBoolean(i1, false)) {
        y(108);
      }
      if (((TypedArray)localObject1).getBoolean(d.j.E0, false)) {
        y(109);
      }
      if (((TypedArray)localObject1).getBoolean(d.j.F0, false)) {
        y(10);
      }
      this.J = ((TypedArray)localObject1).getBoolean(d.j.z0, false);
      ((TypedArray)localObject1).recycle();
      Y();
      this.f.getDecorView();
      localObject1 = LayoutInflater.from(this.e);
      Object localObject2;
      if (!this.K)
      {
        if (this.J)
        {
          localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(d.g.f, null);
          this.H = false;
          this.G = false;
        }
        else if (this.G)
        {
          localObject1 = new TypedValue();
          this.e.getTheme().resolveAttribute(d.a.f, (TypedValue)localObject1, true);
          if (((TypedValue)localObject1).resourceId != 0) {
            localObject1 = new h.d(this.e, ((TypedValue)localObject1).resourceId);
          } else {
            localObject1 = this.e;
          }
          localObject2 = (ViewGroup)LayoutInflater.from((Context)localObject1).inflate(d.g.p, null);
          localObject1 = (b0)((View)localObject2).findViewById(d.f.p);
          this.l = ((b0)localObject1);
          ((b0)localObject1).setWindowCallback(g0());
          if (this.H) {
            this.l.h(109);
          }
          if (this.E) {
            this.l.h(2);
          }
          localObject1 = localObject2;
          if (this.F)
          {
            this.l.h(5);
            localObject1 = localObject2;
          }
        }
        else
        {
          localObject1 = null;
        }
      }
      else if (this.I) {
        localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(d.g.o, null);
      } else {
        localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(d.g.n, null);
      }
      if (localObject1 != null)
      {
        a0.z0((View)localObject1, new b());
        if (this.l == null) {
          this.z = ((TextView)((View)localObject1).findViewById(d.f.L));
        }
        androidx.appcompat.widget.e1.c((View)localObject1);
        ContentFrameLayout localContentFrameLayout = (ContentFrameLayout)((View)localObject1).findViewById(d.f.b);
        ViewGroup localViewGroup = (ViewGroup)this.f.findViewById(16908290);
        if (localViewGroup != null)
        {
          while (localViewGroup.getChildCount() > 0)
          {
            localObject2 = localViewGroup.getChildAt(0);
            localViewGroup.removeViewAt(0);
            localContentFrameLayout.addView((View)localObject2);
          }
          localViewGroup.setId(-1);
          localContentFrameLayout.setId(16908290);
          if ((localViewGroup instanceof FrameLayout)) {
            ((FrameLayout)localViewGroup).setForeground(null);
          }
        }
        this.f.setContentView((View)localObject1);
        localContentFrameLayout.setAttachListener(new c());
        return localObject1;
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("AppCompat does not support the current theme features: { windowActionBar: ");
      ((StringBuilder)localObject1).append(this.G);
      ((StringBuilder)localObject1).append(", windowActionBarOverlay: ");
      ((StringBuilder)localObject1).append(this.H);
      ((StringBuilder)localObject1).append(", android:windowIsFloating: ");
      ((StringBuilder)localObject1).append(this.J);
      ((StringBuilder)localObject1).append(", windowActionModeOverlay: ");
      ((StringBuilder)localObject1).append(this.I);
      ((StringBuilder)localObject1).append(", windowNoTitle: ");
      ((StringBuilder)localObject1).append(this.K);
      ((StringBuilder)localObject1).append(" }");
      throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
    }
    ((TypedArray)localObject1).recycle();
    throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
  }
  
  private void X()
  {
    if (!this.x)
    {
      this.y = R();
      Object localObject1 = f0();
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        Object localObject2 = this.l;
        if (localObject2 != null)
        {
          ((b0)localObject2).setWindowTitle((CharSequence)localObject1);
        }
        else if (z0() != null)
        {
          z0().C((CharSequence)localObject1);
        }
        else
        {
          localObject2 = this.z;
          if (localObject2 != null) {
            ((TextView)localObject2).setText((CharSequence)localObject1);
          }
        }
      }
      I();
      x0(this.y);
      this.x = true;
      localObject1 = e0(0, false);
      if ((!this.R) && ((localObject1 == null) || (((PanelFeatureState)localObject1).j == null))) {
        l0(108);
      }
    }
  }
  
  private void Y()
  {
    if (this.f == null)
    {
      Object localObject = this.d;
      if ((localObject instanceof Activity)) {
        J(((Activity)localObject).getWindow());
      }
    }
    if (this.f != null) {
      return;
    }
    throw new IllegalStateException("We have not been given a Window");
  }
  
  private static Configuration a0(Configuration paramConfiguration1, Configuration paramConfiguration2)
  {
    Configuration localConfiguration = new Configuration();
    localConfiguration.fontScale = 0.0F;
    if ((paramConfiguration2 != null) && (paramConfiguration1.diff(paramConfiguration2) != 0))
    {
      float f1 = paramConfiguration1.fontScale;
      float f2 = paramConfiguration2.fontScale;
      if (f1 != f2) {
        localConfiguration.fontScale = f2;
      }
      int i1 = paramConfiguration1.mcc;
      int i2 = paramConfiguration2.mcc;
      if (i1 != i2) {
        localConfiguration.mcc = i2;
      }
      i1 = paramConfiguration1.mnc;
      i2 = paramConfiguration2.mnc;
      if (i1 != i2) {
        localConfiguration.mnc = i2;
      }
      l.a(paramConfiguration1, paramConfiguration2, localConfiguration);
      i1 = paramConfiguration1.touchscreen;
      i2 = paramConfiguration2.touchscreen;
      if (i1 != i2) {
        localConfiguration.touchscreen = i2;
      }
      i2 = paramConfiguration1.keyboard;
      i1 = paramConfiguration2.keyboard;
      if (i2 != i1) {
        localConfiguration.keyboard = i1;
      }
      i1 = paramConfiguration1.keyboardHidden;
      i2 = paramConfiguration2.keyboardHidden;
      if (i1 != i2) {
        localConfiguration.keyboardHidden = i2;
      }
      i2 = paramConfiguration1.navigation;
      i1 = paramConfiguration2.navigation;
      if (i2 != i1) {
        localConfiguration.navigation = i1;
      }
      i2 = paramConfiguration1.navigationHidden;
      i1 = paramConfiguration2.navigationHidden;
      if (i2 != i1) {
        localConfiguration.navigationHidden = i1;
      }
      i1 = paramConfiguration1.orientation;
      i2 = paramConfiguration2.orientation;
      if (i1 != i2) {
        localConfiguration.orientation = i2;
      }
      i2 = paramConfiguration1.screenLayout;
      i1 = paramConfiguration2.screenLayout;
      if ((i2 & 0xF) != (i1 & 0xF)) {
        localConfiguration.screenLayout |= i1 & 0xF;
      }
      i2 = paramConfiguration1.screenLayout;
      i1 = paramConfiguration2.screenLayout;
      if ((i2 & 0xC0) != (i1 & 0xC0)) {
        localConfiguration.screenLayout |= i1 & 0xC0;
      }
      i2 = paramConfiguration1.screenLayout;
      i1 = paramConfiguration2.screenLayout;
      if ((i2 & 0x30) != (i1 & 0x30)) {
        localConfiguration.screenLayout |= i1 & 0x30;
      }
      i1 = paramConfiguration1.screenLayout;
      i2 = paramConfiguration2.screenLayout;
      if ((i1 & 0x300) != (i2 & 0x300)) {
        localConfiguration.screenLayout |= i2 & 0x300;
      }
      m.a(paramConfiguration1, paramConfiguration2, localConfiguration);
      i2 = paramConfiguration1.uiMode;
      i1 = paramConfiguration2.uiMode;
      if ((i2 & 0xF) != (i1 & 0xF)) {
        localConfiguration.uiMode |= i1 & 0xF;
      }
      i2 = paramConfiguration1.uiMode;
      i1 = paramConfiguration2.uiMode;
      if ((i2 & 0x30) != (i1 & 0x30)) {
        localConfiguration.uiMode |= i1 & 0x30;
      }
      i1 = paramConfiguration1.screenWidthDp;
      i2 = paramConfiguration2.screenWidthDp;
      if (i1 != i2) {
        localConfiguration.screenWidthDp = i2;
      }
      i1 = paramConfiguration1.screenHeightDp;
      i2 = paramConfiguration2.screenHeightDp;
      if (i1 != i2) {
        localConfiguration.screenHeightDp = i2;
      }
      i2 = paramConfiguration1.smallestScreenWidthDp;
      i1 = paramConfiguration2.smallestScreenWidthDp;
      if (i2 != i1) {
        localConfiguration.smallestScreenWidthDp = i1;
      }
      j.b(paramConfiguration1, paramConfiguration2, localConfiguration);
    }
    return localConfiguration;
  }
  
  private p c0(Context paramContext)
  {
    if (this.Y == null) {
      this.Y = new o(paramContext);
    }
    return this.Y;
  }
  
  private p d0(Context paramContext)
  {
    if (this.X == null) {
      this.X = new q(m.a(paramContext));
    }
    return this.X;
  }
  
  private void h0()
  {
    X();
    if ((this.G) && (this.i == null))
    {
      Object localObject = this.d;
      if ((localObject instanceof Activity)) {
        this.i = new n((Activity)this.d, this.H);
      } else if ((localObject instanceof Dialog)) {
        this.i = new n((Dialog)this.d);
      }
      localObject = this.i;
      if (localObject != null) {
        ((a)localObject).w(this.c0);
      }
    }
  }
  
  private boolean i0(PanelFeatureState paramPanelFeatureState)
  {
    View localView = paramPanelFeatureState.i;
    boolean bool = true;
    if (localView != null)
    {
      paramPanelFeatureState.h = localView;
      return true;
    }
    if (paramPanelFeatureState.j == null) {
      return false;
    }
    if (this.n == null) {
      this.n = new t();
    }
    localView = (View)paramPanelFeatureState.a(this.n);
    paramPanelFeatureState.h = localView;
    if (localView == null) {
      bool = false;
    }
    return bool;
  }
  
  private boolean j0(PanelFeatureState paramPanelFeatureState)
  {
    paramPanelFeatureState.d(b0());
    paramPanelFeatureState.g = new s(paramPanelFeatureState.l);
    paramPanelFeatureState.c = 81;
    return true;
  }
  
  private boolean k0(PanelFeatureState paramPanelFeatureState)
  {
    Context localContext = this.e;
    int i1 = paramPanelFeatureState.a;
    if (i1 != 0)
    {
      localObject1 = localContext;
      if (i1 != 108) {}
    }
    else
    {
      localObject1 = localContext;
      if (this.l != null)
      {
        TypedValue localTypedValue = new TypedValue();
        Resources.Theme localTheme = localContext.getTheme();
        localTheme.resolveAttribute(d.a.f, localTypedValue, true);
        localObject1 = null;
        if (localTypedValue.resourceId != 0)
        {
          localObject1 = localContext.getResources().newTheme();
          ((Resources.Theme)localObject1).setTo(localTheme);
          ((Resources.Theme)localObject1).applyStyle(localTypedValue.resourceId, true);
          ((Resources.Theme)localObject1).resolveAttribute(d.a.g, localTypedValue, true);
        }
        else
        {
          localTheme.resolveAttribute(d.a.g, localTypedValue, true);
        }
        Object localObject2 = localObject1;
        if (localTypedValue.resourceId != 0)
        {
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject2 = localContext.getResources().newTheme();
            ((Resources.Theme)localObject2).setTo(localTheme);
          }
          ((Resources.Theme)localObject2).applyStyle(localTypedValue.resourceId, true);
        }
        localObject1 = localContext;
        if (localObject2 != null)
        {
          localObject1 = new h.d(localContext, 0);
          ((Context)localObject1).getTheme().setTo((Resources.Theme)localObject2);
        }
      }
    }
    Object localObject1 = new androidx.appcompat.view.menu.g((Context)localObject1);
    ((androidx.appcompat.view.menu.g)localObject1).setCallback(this);
    paramPanelFeatureState.c((androidx.appcompat.view.menu.g)localObject1);
    return true;
  }
  
  private void l0(int paramInt)
  {
    this.a0 = (1 << paramInt | this.a0);
    if (!this.Z)
    {
      a0.d0(this.f.getDecorView(), this.b0);
      this.Z = true;
    }
  }
  
  private boolean m0()
  {
    if ((!this.W) && ((this.d instanceof Activity)))
    {
      Object localObject = this.e.getPackageManager();
      if (localObject == null) {
        return false;
      }
      try
      {
        int i1;
        if (Build.VERSION.SDK_INT >= 29) {
          i1 = 269221888;
        } else {
          i1 = 786432;
        }
        ComponentName localComponentName = new android/content/ComponentName;
        localComponentName.<init>(this.e, this.d.getClass());
        localObject = ((PackageManager)localObject).getActivityInfo(localComponentName, i1);
        boolean bool;
        if ((localObject != null) && ((((ActivityInfo)localObject).configChanges & 0x200) != 0)) {
          bool = true;
        } else {
          bool = false;
        }
        this.V = bool;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", localNameNotFoundException);
        this.V = false;
      }
    }
    this.W = true;
    return this.V;
  }
  
  private boolean r0(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getRepeatCount() == 0)
    {
      PanelFeatureState localPanelFeatureState = e0(paramInt, true);
      if (!localPanelFeatureState.o) {
        return B0(localPanelFeatureState, paramKeyEvent);
      }
    }
    return false;
  }
  
  private boolean u0(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.o != null) {
      return false;
    }
    boolean bool1 = true;
    PanelFeatureState localPanelFeatureState = e0(paramInt, true);
    if (paramInt == 0)
    {
      b0 localb0 = this.l;
      if ((localb0 != null) && (localb0.d()) && (!ViewConfiguration.get(this.e).hasPermanentMenuKey()))
      {
        if (!this.l.b())
        {
          if ((this.R) || (!B0(localPanelFeatureState, paramKeyEvent))) {
            break label192;
          }
          bool2 = this.l.g();
          break label205;
        }
        bool2 = this.l.f();
        break label205;
      }
    }
    boolean bool2 = localPanelFeatureState.o;
    if ((!bool2) && (!localPanelFeatureState.n))
    {
      if (localPanelFeatureState.m)
      {
        if (localPanelFeatureState.r)
        {
          localPanelFeatureState.m = false;
          bool2 = B0(localPanelFeatureState, paramKeyEvent);
        }
        else
        {
          bool2 = true;
        }
        if (bool2)
        {
          y0(localPanelFeatureState, paramKeyEvent);
          bool2 = bool1;
          break label205;
        }
      }
      label192:
      bool2 = false;
    }
    else
    {
      P(localPanelFeatureState, true);
    }
    label205:
    if (bool2)
    {
      paramKeyEvent = (AudioManager)this.e.getApplicationContext().getSystemService("audio");
      if (paramKeyEvent != null) {
        paramKeyEvent.playSoundEffect(0);
      } else {
        Log.w("AppCompatDelegate", "Couldn't get audio manager");
      }
    }
    return bool2;
  }
  
  private void y0(PanelFeatureState paramPanelFeatureState, KeyEvent paramKeyEvent)
  {
    if ((!paramPanelFeatureState.o) && (!this.R))
    {
      if (paramPanelFeatureState.a == 0)
      {
        if ((this.e.getResources().getConfiguration().screenLayout & 0xF) == 4) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        if (i1 != 0) {
          return;
        }
      }
      Object localObject = g0();
      if ((localObject != null) && (!((Window.Callback)localObject).onMenuOpened(paramPanelFeatureState.a, paramPanelFeatureState.j)))
      {
        P(paramPanelFeatureState, true);
        return;
      }
      WindowManager localWindowManager = (WindowManager)this.e.getSystemService("window");
      if (localWindowManager == null) {
        return;
      }
      if (!B0(paramPanelFeatureState, paramKeyEvent)) {
        return;
      }
      paramKeyEvent = paramPanelFeatureState.g;
      if ((paramKeyEvent != null) && (!paramPanelFeatureState.q))
      {
        paramKeyEvent = paramPanelFeatureState.i;
        if (paramKeyEvent != null)
        {
          paramKeyEvent = paramKeyEvent.getLayoutParams();
          if ((paramKeyEvent != null) && (paramKeyEvent.width == -1))
          {
            i1 = -1;
            break label336;
          }
        }
      }
      else
      {
        if (paramKeyEvent == null)
        {
          if ((j0(paramPanelFeatureState)) && (paramPanelFeatureState.g != null)) {}
        }
        else if ((paramPanelFeatureState.q) && (paramKeyEvent.getChildCount() > 0)) {
          paramPanelFeatureState.g.removeAllViews();
        }
        if ((!i0(paramPanelFeatureState)) || (!paramPanelFeatureState.b())) {
          break label402;
        }
        localObject = paramPanelFeatureState.h.getLayoutParams();
        paramKeyEvent = (KeyEvent)localObject;
        if (localObject == null) {
          paramKeyEvent = new ViewGroup.LayoutParams(-2, -2);
        }
        i1 = paramPanelFeatureState.b;
        paramPanelFeatureState.g.setBackgroundResource(i1);
        localObject = paramPanelFeatureState.h.getParent();
        if ((localObject instanceof ViewGroup)) {
          ((ViewGroup)localObject).removeView(paramPanelFeatureState.h);
        }
        paramPanelFeatureState.g.addView(paramPanelFeatureState.h, paramKeyEvent);
        if (!paramPanelFeatureState.h.hasFocus()) {
          paramPanelFeatureState.h.requestFocus();
        }
      }
      int i1 = -2;
      label336:
      paramPanelFeatureState.n = false;
      paramKeyEvent = new WindowManager.LayoutParams(i1, -2, paramPanelFeatureState.d, paramPanelFeatureState.e, 1002, 8519680, -3);
      paramKeyEvent.gravity = paramPanelFeatureState.c;
      paramKeyEvent.windowAnimations = paramPanelFeatureState.f;
      localWindowManager.addView(paramPanelFeatureState.g, paramKeyEvent);
      paramPanelFeatureState.o = true;
      return;
      label402:
      paramPanelFeatureState.q = true;
    }
  }
  
  public void A(View paramView)
  {
    X();
    ViewGroup localViewGroup = (ViewGroup)this.y.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView);
    this.g.a().onContentChanged();
  }
  
  public void B(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    X();
    ViewGroup localViewGroup = (ViewGroup)this.y.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView, paramLayoutParams);
    this.g.a().onContentChanged();
  }
  
  public void C(Toolbar paramToolbar)
  {
    if (!(this.d instanceof Activity)) {
      return;
    }
    a locala = l();
    if (!(locala instanceof n))
    {
      this.j = null;
      if (locala != null) {
        locala.q();
      }
      this.i = null;
      if (paramToolbar != null)
      {
        paramToolbar = new k(paramToolbar, f0(), this.g);
        this.i = paramToolbar;
        this.g.b(paramToolbar.c);
      }
      else
      {
        this.g.b(null);
      }
      n();
      return;
    }
    throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
  }
  
  public void D(int paramInt)
  {
    this.U = paramInt;
  }
  
  public final void E(CharSequence paramCharSequence)
  {
    this.k = paramCharSequence;
    Object localObject = this.l;
    if (localObject != null)
    {
      ((b0)localObject).setWindowTitle(paramCharSequence);
    }
    else if (z0() != null)
    {
      z0().C(paramCharSequence);
    }
    else
    {
      localObject = this.z;
      if (localObject != null) {
        ((TextView)localObject).setText(paramCharSequence);
      }
    }
  }
  
  final boolean E0()
  {
    if (this.x)
    {
      ViewGroup localViewGroup = this.y;
      if ((localViewGroup != null) && (a0.P(localViewGroup))) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public h.b F(b.a parama)
  {
    if (parama != null)
    {
      Object localObject = this.o;
      if (localObject != null) {
        ((h.b)localObject).a();
      }
      parama = new i(parama);
      localObject = l();
      if (localObject != null)
      {
        localObject = ((a)localObject).D(parama);
        this.o = ((h.b)localObject);
        if (localObject != null)
        {
          e locale = this.h;
          if (locale != null) {
            locale.onSupportActionModeStarted((h.b)localObject);
          }
        }
      }
      if (this.o == null) {
        this.o = G0(parama);
      }
      return this.o;
    }
    throw new IllegalArgumentException("ActionMode callback can not be null.");
  }
  
  public boolean G()
  {
    return H(true);
  }
  
  h.b G0(b.a parama)
  {
    W();
    Object localObject1 = this.o;
    if (localObject1 != null) {
      ((h.b)localObject1).a();
    }
    localObject1 = parama;
    if (!(parama instanceof i)) {
      localObject1 = new i(parama);
    }
    parama = this.h;
    if ((parama != null) && (!this.R)) {}
    try
    {
      parama = parama.onWindowStartingSupportActionMode((b.a)localObject1);
    }
    catch (AbstractMethodError parama)
    {
      label63:
      boolean bool;
      Object localObject2;
      Object localObject3;
      int i1;
      break label63;
    }
    parama = null;
    if (parama != null)
    {
      this.o = parama;
    }
    else
    {
      parama = this.p;
      bool = true;
      if (parama == null) {
        if (this.J)
        {
          localObject2 = new TypedValue();
          parama = this.e.getTheme();
          parama.resolveAttribute(d.a.f, (TypedValue)localObject2, true);
          if (((TypedValue)localObject2).resourceId != 0)
          {
            localObject3 = this.e.getResources().newTheme();
            ((Resources.Theme)localObject3).setTo(parama);
            ((Resources.Theme)localObject3).applyStyle(((TypedValue)localObject2).resourceId, true);
            parama = new h.d(this.e, 0);
            parama.getTheme().setTo((Resources.Theme)localObject3);
          }
          else
          {
            parama = this.e;
          }
          this.p = new ActionBarContextView(parama);
          localObject3 = new PopupWindow(parama, null, d.a.i);
          this.q = ((PopupWindow)localObject3);
          androidx.core.widget.k.b((PopupWindow)localObject3, 2);
          this.q.setContentView(this.p);
          this.q.setWidth(-1);
          parama.getTheme().resolveAttribute(d.a.b, (TypedValue)localObject2, true);
          i1 = TypedValue.complexToDimensionPixelSize(((TypedValue)localObject2).data, parama.getResources().getDisplayMetrics());
          this.p.setContentHeight(i1);
          this.q.setHeight(-2);
          this.r = new d();
        }
        else
        {
          parama = (ViewStubCompat)this.y.findViewById(d.f.h);
          if (parama != null)
          {
            parama.setLayoutInflater(LayoutInflater.from(b0()));
            this.p = ((ActionBarContextView)parama.a());
          }
        }
      }
      if (this.p != null)
      {
        W();
        this.p.k();
        localObject2 = this.p.getContext();
        parama = this.p;
        if (this.q != null) {
          bool = false;
        }
        parama = new h.e((Context)localObject2, parama, (b.a)localObject1, bool);
        if (((b.a)localObject1).a(parama, parama.c()))
        {
          parama.i();
          this.p.h(parama);
          this.o = parama;
          if (E0())
          {
            this.p.setAlpha(0.0F);
            parama = a0.d(this.p).b(1.0F);
            this.v = parama;
            parama.h(new e());
          }
          else
          {
            this.p.setAlpha(1.0F);
            this.p.setVisibility(0);
            if ((this.p.getParent() instanceof View)) {
              a0.i0((View)this.p.getParent());
            }
          }
          if (this.q != null) {
            this.f.getDecorView().post(this.r);
          }
        }
        else
        {
          this.o = null;
        }
      }
    }
    localObject1 = this.o;
    if (localObject1 != null)
    {
      parama = this.h;
      if (parama != null) {
        parama.onSupportActionModeStarted((h.b)localObject1);
      }
    }
    return this.o;
  }
  
  void L(int paramInt, PanelFeatureState paramPanelFeatureState, Menu paramMenu)
  {
    Object localObject1 = paramPanelFeatureState;
    Object localObject2 = paramMenu;
    if (paramMenu == null)
    {
      PanelFeatureState localPanelFeatureState = paramPanelFeatureState;
      if (paramPanelFeatureState == null)
      {
        localPanelFeatureState = paramPanelFeatureState;
        if (paramInt >= 0)
        {
          localObject2 = this.M;
          localPanelFeatureState = paramPanelFeatureState;
          if (paramInt < localObject2.length) {
            localPanelFeatureState = localObject2[paramInt];
          }
        }
      }
      localObject1 = localPanelFeatureState;
      localObject2 = paramMenu;
      if (localPanelFeatureState != null)
      {
        localObject2 = localPanelFeatureState.j;
        localObject1 = localPanelFeatureState;
      }
    }
    if ((localObject1 != null) && (!((PanelFeatureState)localObject1).o)) {
      return;
    }
    if (!this.R) {
      this.g.a().onPanelClosed(paramInt, (Menu)localObject2);
    }
  }
  
  final int L0(androidx.core.view.e1 parame1, Rect paramRect)
  {
    int i1 = 0;
    int i2;
    if (parame1 != null) {
      i2 = parame1.k();
    } else if (paramRect != null) {
      i2 = paramRect.top;
    } else {
      i2 = 0;
    }
    Object localObject = this.p;
    int i4;
    int i8;
    if ((localObject != null) && ((((View)localObject).getLayoutParams() instanceof ViewGroup.MarginLayoutParams)))
    {
      localObject = (ViewGroup.MarginLayoutParams)this.p.getLayoutParams();
      boolean bool = this.p.isShown();
      int i3 = 1;
      i4 = 1;
      int i6;
      if (bool)
      {
        if (this.d0 == null)
        {
          this.d0 = new Rect();
          this.e0 = new Rect();
        }
        Rect localRect1 = this.d0;
        Rect localRect2 = this.e0;
        if (parame1 == null) {
          localRect1.set(paramRect);
        } else {
          localRect1.set(parame1.i(), parame1.k(), parame1.j(), parame1.h());
        }
        androidx.appcompat.widget.e1.a(this.y, localRect1, localRect2);
        int i5 = localRect1.top;
        i6 = localRect1.left;
        int i7 = localRect1.right;
        parame1 = a0.F(this.y);
        if (parame1 == null) {
          i3 = 0;
        } else {
          i3 = parame1.i();
        }
        if (parame1 == null) {
          i8 = 0;
        } else {
          i8 = parame1.j();
        }
        if ((((ViewGroup.MarginLayoutParams)localObject).topMargin == i5) && (((ViewGroup.MarginLayoutParams)localObject).leftMargin == i6) && (((ViewGroup.MarginLayoutParams)localObject).rightMargin == i7))
        {
          i6 = 0;
        }
        else
        {
          ((ViewGroup.MarginLayoutParams)localObject).topMargin = i5;
          ((ViewGroup.MarginLayoutParams)localObject).leftMargin = i6;
          ((ViewGroup.MarginLayoutParams)localObject).rightMargin = i7;
          i6 = 1;
        }
        if ((i5 > 0) && (this.D == null))
        {
          parame1 = new View(this.e);
          this.D = parame1;
          parame1.setVisibility(8);
          parame1 = new FrameLayout.LayoutParams(-1, ((ViewGroup.MarginLayoutParams)localObject).topMargin, 51);
          parame1.leftMargin = i3;
          parame1.rightMargin = i8;
          this.y.addView(this.D, -1, parame1);
        }
        else
        {
          parame1 = this.D;
          if (parame1 != null)
          {
            parame1 = (ViewGroup.MarginLayoutParams)parame1.getLayoutParams();
            i7 = parame1.height;
            i5 = ((ViewGroup.MarginLayoutParams)localObject).topMargin;
            if ((i7 != i5) || (parame1.leftMargin != i3) || (parame1.rightMargin != i8))
            {
              parame1.height = i5;
              parame1.leftMargin = i3;
              parame1.rightMargin = i8;
              this.D.setLayoutParams(parame1);
            }
          }
        }
        parame1 = this.D;
        if (parame1 != null) {
          i8 = i4;
        } else {
          i8 = 0;
        }
        if ((i8 != 0) && (parame1.getVisibility() != 0)) {
          M0(this.D);
        }
        i3 = i2;
        if (!this.I)
        {
          i3 = i2;
          if (i8 != 0) {
            i3 = 0;
          }
        }
        i2 = i3;
        i3 = i6;
        i6 = i8;
      }
      else if (((ViewGroup.MarginLayoutParams)localObject).topMargin != 0)
      {
        ((ViewGroup.MarginLayoutParams)localObject).topMargin = 0;
        i6 = 0;
      }
      else
      {
        i6 = 0;
        i3 = i6;
      }
      i8 = i2;
      i4 = i6;
      if (i3 != 0)
      {
        this.p.setLayoutParams((ViewGroup.LayoutParams)localObject);
        i8 = i2;
        i4 = i6;
      }
    }
    else
    {
      i4 = 0;
      i8 = i2;
    }
    parame1 = this.D;
    if (parame1 != null)
    {
      if (i4 != 0) {
        i2 = i1;
      } else {
        i2 = 8;
      }
      parame1.setVisibility(i2);
    }
    return i8;
  }
  
  void M(androidx.appcompat.view.menu.g paramg)
  {
    if (this.L) {
      return;
    }
    this.L = true;
    this.l.i();
    Window.Callback localCallback = g0();
    if ((localCallback != null) && (!this.R)) {
      localCallback.onPanelClosed(108, paramg);
    }
    this.L = false;
  }
  
  void O(int paramInt)
  {
    P(e0(paramInt, true), true);
  }
  
  void P(PanelFeatureState paramPanelFeatureState, boolean paramBoolean)
  {
    Object localObject;
    if ((paramBoolean) && (paramPanelFeatureState.a == 0))
    {
      localObject = this.l;
      if ((localObject != null) && (((b0)localObject).b()))
      {
        M(paramPanelFeatureState.j);
        return;
      }
    }
    WindowManager localWindowManager = (WindowManager)this.e.getSystemService("window");
    if ((localWindowManager != null) && (paramPanelFeatureState.o))
    {
      localObject = paramPanelFeatureState.g;
      if (localObject != null)
      {
        localWindowManager.removeView((View)localObject);
        if (paramBoolean) {
          L(paramPanelFeatureState.a, paramPanelFeatureState, null);
        }
      }
    }
    paramPanelFeatureState.m = false;
    paramPanelFeatureState.n = false;
    paramPanelFeatureState.o = false;
    paramPanelFeatureState.h = null;
    paramPanelFeatureState.q = true;
    if (this.N == paramPanelFeatureState) {
      this.N = null;
    }
  }
  
  /* Error */
  public View S(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 1406	androidx/appcompat/app/AppCompatDelegateImpl:f0	Landroidx/appcompat/app/i;
    //   4: astore 5
    //   6: iconst_0
    //   7: istore 6
    //   9: aload 5
    //   11: ifnonnull +138 -> 149
    //   14: aload_0
    //   15: getfield 210	androidx/appcompat/app/AppCompatDelegateImpl:e	Landroid/content/Context;
    //   18: getstatic 516	d/j:y0	[I
    //   21: invokevirtual 522	android/content/Context:obtainStyledAttributes	([I)Landroid/content/res/TypedArray;
    //   24: getstatic 1408	d/j:C0	I
    //   27: invokevirtual 1412	android/content/res/TypedArray:getString	(I)Ljava/lang/String;
    //   30: astore 5
    //   32: aload 5
    //   34: ifnonnull +17 -> 51
    //   37: aload_0
    //   38: new 1414	androidx/appcompat/app/i
    //   41: dup
    //   42: invokespecial 1415	androidx/appcompat/app/i:<init>	()V
    //   45: putfield 1406	androidx/appcompat/app/AppCompatDelegateImpl:f0	Landroidx/appcompat/app/i;
    //   48: goto +101 -> 149
    //   51: aload_0
    //   52: aload_0
    //   53: getfield 210	androidx/appcompat/app/AppCompatDelegateImpl:e	Landroid/content/Context;
    //   56: invokevirtual 1419	android/content/Context:getClassLoader	()Ljava/lang/ClassLoader;
    //   59: aload 5
    //   61: invokevirtual 1425	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   64: iconst_0
    //   65: anewarray 235	java/lang/Class
    //   68: invokevirtual 1429	java/lang/Class:getDeclaredConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   71: iconst_0
    //   72: anewarray 229	java/lang/Object
    //   75: invokevirtual 1435	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   78: checkcast 1414	androidx/appcompat/app/i
    //   81: putfield 1406	androidx/appcompat/app/AppCompatDelegateImpl:f0	Landroidx/appcompat/app/i;
    //   84: goto +65 -> 149
    //   87: astore 7
    //   89: new 859	java/lang/StringBuilder
    //   92: dup
    //   93: invokespecial 860	java/lang/StringBuilder:<init>	()V
    //   96: astore 8
    //   98: aload 8
    //   100: ldc_w 1437
    //   103: invokevirtual 866	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: pop
    //   107: aload 8
    //   109: aload 5
    //   111: invokevirtual 866	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: pop
    //   115: aload 8
    //   117: ldc_w 1439
    //   120: invokevirtual 866	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: pop
    //   124: ldc_w 433
    //   127: aload 8
    //   129: invokevirtual 884	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: aload 7
    //   134: invokestatic 1441	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   137: pop
    //   138: aload_0
    //   139: new 1414	androidx/appcompat/app/i
    //   142: dup
    //   143: invokespecial 1415	androidx/appcompat/app/i:<init>	()V
    //   146: putfield 1406	androidx/appcompat/app/AppCompatDelegateImpl:f0	Landroidx/appcompat/app/i;
    //   149: getstatic 159	androidx/appcompat/app/AppCompatDelegateImpl:i0	Z
    //   152: istore 9
    //   154: iconst_1
    //   155: istore 10
    //   157: iload 6
    //   159: istore 11
    //   161: iload 9
    //   163: ifeq +82 -> 245
    //   166: aload_0
    //   167: getfield 1443	androidx/appcompat/app/AppCompatDelegateImpl:g0	Landroidx/appcompat/app/j;
    //   170: ifnonnull +14 -> 184
    //   173: aload_0
    //   174: new 1445	androidx/appcompat/app/j
    //   177: dup
    //   178: invokespecial 1446	androidx/appcompat/app/j:<init>	()V
    //   181: putfield 1443	androidx/appcompat/app/AppCompatDelegateImpl:g0	Landroidx/appcompat/app/j;
    //   184: aload_0
    //   185: getfield 1443	androidx/appcompat/app/AppCompatDelegateImpl:g0	Landroidx/appcompat/app/j;
    //   188: aload 4
    //   190: invokevirtual 1449	androidx/appcompat/app/j:a	(Landroid/util/AttributeSet;)Z
    //   193: ifeq +9 -> 202
    //   196: iconst_1
    //   197: istore 11
    //   199: goto +46 -> 245
    //   202: aload 4
    //   204: instanceof 1451
    //   207: ifeq +28 -> 235
    //   210: iload 6
    //   212: istore 11
    //   214: aload 4
    //   216: checkcast 1451	org/xmlpull/v1/XmlPullParser
    //   219: invokeinterface 1454 1 0
    //   224: iconst_1
    //   225: if_icmple +20 -> 245
    //   228: iload 10
    //   230: istore 11
    //   232: goto +13 -> 245
    //   235: aload_0
    //   236: aload_1
    //   237: checkcast 451	android/view/ViewParent
    //   240: invokespecial 1456	androidx/appcompat/app/AppCompatDelegateImpl:F0	(Landroid/view/ViewParent;)Z
    //   243: istore 11
    //   245: aload_0
    //   246: getfield 1406	androidx/appcompat/app/AppCompatDelegateImpl:f0	Landroidx/appcompat/app/i;
    //   249: aload_1
    //   250: aload_2
    //   251: aload_3
    //   252: aload 4
    //   254: iload 11
    //   256: iload 9
    //   258: iconst_1
    //   259: invokestatic 1460	androidx/appcompat/widget/d1:c	()Z
    //   262: invokevirtual 1464	androidx/appcompat/app/i:createView	(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    //   265: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	266	0	this	AppCompatDelegateImpl
    //   0	266	1	paramView	View
    //   0	266	2	paramString	String
    //   0	266	3	paramContext	Context
    //   0	266	4	paramAttributeSet	AttributeSet
    //   4	106	5	localObject	Object
    //   7	204	6	bool1	boolean
    //   87	46	7	localThrowable	java.lang.Throwable
    //   96	32	8	localStringBuilder	StringBuilder
    //   152	105	9	bool2	boolean
    //   155	74	10	bool3	boolean
    //   159	96	11	bool4	boolean
    // Exception table:
    //   from	to	target	type
    //   51	84	87	finally
  }
  
  void T()
  {
    Object localObject = this.l;
    if (localObject != null) {
      ((b0)localObject).i();
    }
    if (this.q != null)
    {
      this.f.getDecorView().removeCallbacks(this.r);
      if (!this.q.isShowing()) {}
    }
    try
    {
      this.q.dismiss();
      label54:
      this.q = null;
      W();
      localObject = e0(0, false);
      if (localObject != null)
      {
        localObject = ((PanelFeatureState)localObject).j;
        if (localObject != null) {
          ((androidx.appcompat.view.menu.g)localObject).close();
        }
      }
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label54;
    }
  }
  
  boolean U(KeyEvent paramKeyEvent)
  {
    Object localObject = this.d;
    boolean bool = localObject instanceof androidx.core.view.f.a;
    int i1 = 1;
    if ((bool) || ((localObject instanceof g)))
    {
      localObject = this.f.getDecorView();
      if ((localObject != null) && (androidx.core.view.f.d((View)localObject, paramKeyEvent))) {
        return true;
      }
    }
    if ((paramKeyEvent.getKeyCode() == 82) && (this.g.a().dispatchKeyEvent(paramKeyEvent))) {
      return true;
    }
    int i2 = paramKeyEvent.getKeyCode();
    if (paramKeyEvent.getAction() != 0) {
      i1 = 0;
    }
    if (i1 != 0) {
      bool = q0(i2, paramKeyEvent);
    } else {
      bool = t0(i2, paramKeyEvent);
    }
    return bool;
  }
  
  void V(int paramInt)
  {
    PanelFeatureState localPanelFeatureState = e0(paramInt, true);
    if (localPanelFeatureState.j != null)
    {
      Bundle localBundle = new Bundle();
      localPanelFeatureState.j.saveActionViewStates(localBundle);
      if (localBundle.size() > 0) {
        localPanelFeatureState.s = localBundle;
      }
      localPanelFeatureState.j.stopDispatchingItemsChanged();
      localPanelFeatureState.j.clear();
    }
    localPanelFeatureState.r = true;
    localPanelFeatureState.q = true;
    if (((paramInt == 108) || (paramInt == 0)) && (this.l != null))
    {
      localPanelFeatureState = e0(0, false);
      if (localPanelFeatureState != null)
      {
        localPanelFeatureState.m = false;
        B0(localPanelFeatureState, null);
      }
    }
  }
  
  void W()
  {
    a1 locala1 = this.v;
    if (locala1 != null) {
      locala1.c();
    }
  }
  
  PanelFeatureState Z(Menu paramMenu)
  {
    PanelFeatureState[] arrayOfPanelFeatureState = this.M;
    int i1 = 0;
    int i2;
    if (arrayOfPanelFeatureState != null) {
      i2 = arrayOfPanelFeatureState.length;
    } else {
      i2 = 0;
    }
    while (i1 < i2)
    {
      PanelFeatureState localPanelFeatureState = arrayOfPanelFeatureState[i1];
      if ((localPanelFeatureState != null) && (localPanelFeatureState.j == paramMenu)) {
        return localPanelFeatureState;
      }
      i1++;
    }
    return null;
  }
  
  public void b(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    X();
    ((ViewGroup)this.y.findViewById(16908290)).addView(paramView, paramLayoutParams);
    this.g.a().onContentChanged();
  }
  
  final Context b0()
  {
    Object localObject1 = l();
    if (localObject1 != null) {
      localObject1 = ((a)localObject1).l();
    } else {
      localObject1 = null;
    }
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = this.e;
    }
    return localObject2;
  }
  
  public Context d(Context paramContext)
  {
    i1 = 1;
    this.P = true;
    i2 = o0(paramContext, K());
    boolean bool = l0;
    Object localObject = null;
    if ((bool) && ((paramContext instanceof ContextThemeWrapper))) {
      localConfiguration1 = Q(paramContext, i2, null);
    }
    try
    {
      r.a((ContextThemeWrapper)paramContext, localConfiguration1);
      return paramContext;
    }
    catch (IllegalStateException localIllegalStateException1)
    {
      label57:
      break label57;
    }
    if ((paramContext instanceof h.d)) {
      localConfiguration1 = Q(paramContext, i2, null);
    }
    try
    {
      ((h.d)paramContext).a(localConfiguration1);
      return paramContext;
    }
    catch (IllegalStateException localIllegalStateException2)
    {
      label84:
      Configuration localConfiguration2;
      break label84;
    }
    if (!k0) {
      return super.d(paramContext);
    }
    Configuration localConfiguration1 = new Configuration();
    localConfiguration1.uiMode = -1;
    localConfiguration1.fontScale = 0.0F;
    localConfiguration1 = j.a(paramContext, localConfiguration1).getResources().getConfiguration();
    localConfiguration2 = paramContext.getResources().getConfiguration();
    localConfiguration1.uiMode = localConfiguration2.uiMode;
    if (!localConfiguration1.equals(localConfiguration2)) {
      localObject = a0(localConfiguration1, localConfiguration2);
    }
    localConfiguration1 = Q(paramContext, i2, (Configuration)localObject);
    localObject = new h.d(paramContext, d.i.c);
    ((h.d)localObject).a(localConfiguration1);
    i2 = 0;
    try
    {
      paramContext = paramContext.getTheme();
      if (paramContext == null) {
        i1 = 0;
      }
    }
    catch (NullPointerException paramContext)
    {
      for (;;)
      {
        i1 = i2;
      }
    }
    if (i1 != 0) {
      h.f.a(((h.d)localObject).getTheme());
    }
    return super.d((Context)localObject);
  }
  
  protected PanelFeatureState e0(int paramInt, boolean paramBoolean)
  {
    Object localObject1 = this.M;
    Object localObject2;
    if (localObject1 != null)
    {
      localObject2 = localObject1;
      if (localObject1.length > paramInt) {}
    }
    else
    {
      localObject2 = new PanelFeatureState[paramInt + 1];
      if (localObject1 != null) {
        System.arraycopy(localObject1, 0, localObject2, 0, localObject1.length);
      }
      this.M = ((PanelFeatureState[])localObject2);
    }
    Object localObject3 = localObject2[paramInt];
    localObject1 = localObject3;
    if (localObject3 == null)
    {
      localObject1 = new PanelFeatureState(paramInt);
      localObject2[paramInt] = localObject1;
    }
    return localObject1;
  }
  
  final CharSequence f0()
  {
    Object localObject = this.d;
    if ((localObject instanceof Activity)) {
      return ((Activity)localObject).getTitle();
    }
    return this.k;
  }
  
  public <T extends View> T g(int paramInt)
  {
    X();
    return this.f.findViewById(paramInt);
  }
  
  final Window.Callback g0()
  {
    return this.f.getCallback();
  }
  
  public final b i()
  {
    return new f();
  }
  
  public int j()
  {
    return this.T;
  }
  
  public MenuInflater k()
  {
    if (this.j == null)
    {
      h0();
      Object localObject = this.i;
      if (localObject != null) {
        localObject = ((a)localObject).l();
      } else {
        localObject = this.e;
      }
      this.j = new h.g((Context)localObject);
    }
    return this.j;
  }
  
  public a l()
  {
    h0();
    return this.i;
  }
  
  public void m()
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.e);
    if (localLayoutInflater.getFactory() == null) {
      androidx.core.view.g.a(localLayoutInflater, this);
    } else if (!(localLayoutInflater.getFactory2() instanceof AppCompatDelegateImpl)) {
      Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
    }
  }
  
  public void n()
  {
    if ((z0() != null) && (!l().n())) {
      l0(0);
    }
  }
  
  public boolean n0()
  {
    return this.w;
  }
  
  public void o(Configuration paramConfiguration)
  {
    if ((this.G) && (this.x))
    {
      a locala = l();
      if (locala != null) {
        locala.p(paramConfiguration);
      }
    }
    androidx.appcompat.widget.g.b().g(this.e);
    this.S = new Configuration(this.e.getResources().getConfiguration());
    H(false);
  }
  
  int o0(Context paramContext, int paramInt)
  {
    if (paramInt != -100)
    {
      if (paramInt != -1) {
        if (paramInt != 0)
        {
          if ((paramInt != 1) && (paramInt != 2))
          {
            if (paramInt == 3) {
              return c0(paramContext).c();
            }
            throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
          }
        }
        else
        {
          if (((UiModeManager)paramContext.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
            return -1;
          }
          return d0(paramContext).c();
        }
      }
      return paramInt;
    }
    return -1;
  }
  
  public final View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return S(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return onCreateView(null, paramString, paramContext, paramAttributeSet);
  }
  
  public boolean onMenuItemSelected(androidx.appcompat.view.menu.g paramg, MenuItem paramMenuItem)
  {
    Window.Callback localCallback = g0();
    if ((localCallback != null) && (!this.R))
    {
      paramg = Z(paramg.getRootMenu());
      if (paramg != null) {
        return localCallback.onMenuItemSelected(paramg.a, paramMenuItem);
      }
    }
    return false;
  }
  
  public void onMenuModeChange(androidx.appcompat.view.menu.g paramg)
  {
    C0(true);
  }
  
  public void p(Bundle paramBundle)
  {
    this.P = true;
    H(false);
    Y();
    Object localObject = this.d;
    if ((localObject instanceof Activity)) {
      paramBundle = null;
    }
    try
    {
      localObject = androidx.core.app.k.c((Activity)localObject);
      paramBundle = (Bundle)localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      label39:
      break label39;
    }
    if (paramBundle != null)
    {
      paramBundle = z0();
      if (paramBundle == null) {
        this.c0 = true;
      } else {
        paramBundle.w(true);
      }
    }
    f.a(this);
    this.S = new Configuration(this.e.getResources().getConfiguration());
    this.Q = true;
  }
  
  boolean p0()
  {
    Object localObject = this.o;
    if (localObject != null)
    {
      ((h.b)localObject).a();
      return true;
    }
    localObject = l();
    return (localObject != null) && (((a)localObject).h());
  }
  
  public void q()
  {
    if ((this.d instanceof Activity)) {
      f.w(this);
    }
    if (this.Z) {
      this.f.getDecorView().removeCallbacks(this.b0);
    }
    this.R = true;
    if (this.T != -100)
    {
      localObject = this.d;
      if (((localObject instanceof Activity)) && (((Activity)localObject).isChangingConfigurations()))
      {
        h0.put(this.d.getClass().getName(), Integer.valueOf(this.T));
        break label116;
      }
    }
    h0.remove(this.d.getClass().getName());
    label116:
    Object localObject = this.i;
    if (localObject != null) {
      ((a)localObject).q();
    }
    N();
  }
  
  boolean q0(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    if (paramInt != 4)
    {
      if (paramInt == 82)
      {
        r0(0, paramKeyEvent);
        return true;
      }
    }
    else
    {
      if ((paramKeyEvent.getFlags() & 0x80) == 0) {
        bool = false;
      }
      this.O = bool;
    }
    return false;
  }
  
  public void r(Bundle paramBundle)
  {
    X();
  }
  
  public void s()
  {
    a locala = l();
    if (locala != null) {
      locala.y(true);
    }
  }
  
  boolean s0(int paramInt, KeyEvent paramKeyEvent)
  {
    Object localObject = l();
    if ((localObject != null) && (((a)localObject).r(paramInt, paramKeyEvent))) {
      return true;
    }
    localObject = this.N;
    if ((localObject != null) && (A0((PanelFeatureState)localObject, paramKeyEvent.getKeyCode(), paramKeyEvent, 1)))
    {
      paramKeyEvent = this.N;
      if (paramKeyEvent != null) {
        paramKeyEvent.n = true;
      }
      return true;
    }
    if (this.N == null)
    {
      localObject = e0(0, true);
      B0((PanelFeatureState)localObject, paramKeyEvent);
      boolean bool = A0((PanelFeatureState)localObject, paramKeyEvent.getKeyCode(), paramKeyEvent, 1);
      ((PanelFeatureState)localObject).m = false;
      if (bool) {
        return true;
      }
    }
    return false;
  }
  
  public void t(Bundle paramBundle) {}
  
  boolean t0(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt != 4)
    {
      if (paramInt == 82)
      {
        u0(0, paramKeyEvent);
        return true;
      }
    }
    else
    {
      boolean bool = this.O;
      this.O = false;
      paramKeyEvent = e0(0, false);
      if ((paramKeyEvent != null) && (paramKeyEvent.o))
      {
        if (!bool) {
          P(paramKeyEvent, true);
        }
        return true;
      }
      if (p0()) {
        return true;
      }
    }
    return false;
  }
  
  public void u()
  {
    G();
  }
  
  public void v()
  {
    a locala = l();
    if (locala != null) {
      locala.y(false);
    }
  }
  
  void v0(int paramInt)
  {
    if (paramInt == 108)
    {
      a locala = l();
      if (locala != null) {
        locala.i(true);
      }
    }
  }
  
  void w0(int paramInt)
  {
    Object localObject;
    if (paramInt == 108)
    {
      localObject = l();
      if (localObject != null) {
        ((a)localObject).i(false);
      }
    }
    else if (paramInt == 0)
    {
      localObject = e0(paramInt, true);
      if (((PanelFeatureState)localObject).o) {
        P((PanelFeatureState)localObject, false);
      }
    }
  }
  
  void x0(ViewGroup paramViewGroup) {}
  
  public boolean y(int paramInt)
  {
    paramInt = D0(paramInt);
    if ((this.K) && (paramInt == 108)) {
      return false;
    }
    if ((this.G) && (paramInt == 1)) {
      this.G = false;
    }
    if (paramInt != 1)
    {
      if (paramInt != 2)
      {
        if (paramInt != 5)
        {
          if (paramInt != 10)
          {
            if (paramInt != 108)
            {
              if (paramInt != 109) {
                return this.f.requestFeature(paramInt);
              }
              H0();
              this.H = true;
              return true;
            }
            H0();
            this.G = true;
            return true;
          }
          H0();
          this.I = true;
          return true;
        }
        H0();
        this.F = true;
        return true;
      }
      H0();
      this.E = true;
      return true;
    }
    H0();
    this.K = true;
    return true;
  }
  
  public void z(int paramInt)
  {
    X();
    ViewGroup localViewGroup = (ViewGroup)this.y.findViewById(16908290);
    localViewGroup.removeAllViews();
    LayoutInflater.from(this.e).inflate(paramInt, localViewGroup);
    this.g.a().onContentChanged();
  }
  
  final a z0()
  {
    return this.i;
  }
  
  protected static final class PanelFeatureState
  {
    int a;
    int b;
    int c;
    int d;
    int e;
    int f;
    ViewGroup g;
    View h;
    View i;
    androidx.appcompat.view.menu.g j;
    androidx.appcompat.view.menu.e k;
    Context l;
    boolean m;
    boolean n;
    boolean o;
    public boolean p;
    boolean q;
    boolean r;
    Bundle s;
    
    PanelFeatureState(int paramInt)
    {
      this.a = paramInt;
      this.q = false;
    }
    
    androidx.appcompat.view.menu.n a(m.a parama)
    {
      if (this.j == null) {
        return null;
      }
      if (this.k == null)
      {
        androidx.appcompat.view.menu.e locale = new androidx.appcompat.view.menu.e(this.l, d.g.j);
        this.k = locale;
        locale.setCallback(parama);
        this.j.addMenuPresenter(this.k);
      }
      return this.k.b(this.g);
    }
    
    public boolean b()
    {
      View localView = this.h;
      boolean bool = false;
      if (localView == null) {
        return false;
      }
      if (this.i != null) {
        return true;
      }
      if (this.k.a().getCount() > 0) {
        bool = true;
      }
      return bool;
    }
    
    void c(androidx.appcompat.view.menu.g paramg)
    {
      Object localObject = this.j;
      if (paramg == localObject) {
        return;
      }
      if (localObject != null) {
        ((androidx.appcompat.view.menu.g)localObject).removeMenuPresenter(this.k);
      }
      this.j = paramg;
      if (paramg != null)
      {
        localObject = this.k;
        if (localObject != null) {
          paramg.addMenuPresenter((androidx.appcompat.view.menu.m)localObject);
        }
      }
    }
    
    void d(Context paramContext)
    {
      TypedValue localTypedValue = new TypedValue();
      Resources.Theme localTheme = paramContext.getResources().newTheme();
      localTheme.setTo(paramContext.getTheme());
      localTheme.resolveAttribute(d.a.a, localTypedValue, true);
      int i1 = localTypedValue.resourceId;
      if (i1 != 0) {
        localTheme.applyStyle(i1, true);
      }
      localTheme.resolveAttribute(d.a.G, localTypedValue, true);
      i1 = localTypedValue.resourceId;
      if (i1 != 0) {
        localTheme.applyStyle(i1, true);
      } else {
        localTheme.applyStyle(d.i.b, true);
      }
      paramContext = new h.d(paramContext, 0);
      paramContext.getTheme().setTo(localTheme);
      this.l = paramContext;
      paramContext = paramContext.obtainStyledAttributes(d.j.y0);
      this.b = paramContext.getResourceId(d.j.B0, 0);
      this.f = paramContext.getResourceId(d.j.A0, 0);
      paramContext.recycle();
    }
    
    @SuppressLint({"BanParcelableUsage"})
    private static class SavedState
      implements Parcelable
    {
      public static final Parcelable.Creator<SavedState> CREATOR = new a();
      int featureId;
      boolean isOpen;
      Bundle menuState;
      
      static SavedState readFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
      {
        SavedState localSavedState = new SavedState();
        localSavedState.featureId = paramParcel.readInt();
        int i = paramParcel.readInt();
        boolean bool = true;
        if (i != 1) {
          bool = false;
        }
        localSavedState.isOpen = bool;
        if (bool) {
          localSavedState.menuState = paramParcel.readBundle(paramClassLoader);
        }
        return localSavedState;
      }
      
      public int describeContents()
      {
        return 0;
      }
      
      public void writeToParcel(Parcel paramParcel, int paramInt)
      {
        paramParcel.writeInt(this.featureId);
        paramParcel.writeInt(this.isOpen);
        if (this.isOpen) {
          paramParcel.writeBundle(this.menuState);
        }
      }
      
      class a
        implements Parcelable.ClassLoaderCreator<AppCompatDelegateImpl.PanelFeatureState.SavedState>
      {
        public AppCompatDelegateImpl.PanelFeatureState.SavedState a(Parcel paramParcel)
        {
          return AppCompatDelegateImpl.PanelFeatureState.SavedState.readFromParcel(paramParcel, null);
        }
        
        public AppCompatDelegateImpl.PanelFeatureState.SavedState b(Parcel paramParcel, ClassLoader paramClassLoader)
        {
          return AppCompatDelegateImpl.PanelFeatureState.SavedState.readFromParcel(paramParcel, paramClassLoader);
        }
        
        public AppCompatDelegateImpl.PanelFeatureState.SavedState[] c(int paramInt)
        {
          return new AppCompatDelegateImpl.PanelFeatureState.SavedState[paramInt];
        }
      }
    }
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      AppCompatDelegateImpl localAppCompatDelegateImpl = AppCompatDelegateImpl.this;
      if ((localAppCompatDelegateImpl.a0 & 0x1) != 0) {
        localAppCompatDelegateImpl.V(0);
      }
      localAppCompatDelegateImpl = AppCompatDelegateImpl.this;
      if ((localAppCompatDelegateImpl.a0 & 0x1000) != 0) {
        localAppCompatDelegateImpl.V(108);
      }
      localAppCompatDelegateImpl = AppCompatDelegateImpl.this;
      localAppCompatDelegateImpl.Z = false;
      localAppCompatDelegateImpl.a0 = 0;
    }
  }
  
  class b
    implements u
  {
    b() {}
    
    public androidx.core.view.e1 onApplyWindowInsets(View paramView, androidx.core.view.e1 parame1)
    {
      int i = parame1.k();
      int j = AppCompatDelegateImpl.this.L0(parame1, null);
      androidx.core.view.e1 locale1 = parame1;
      if (i != j) {
        locale1 = parame1.p(parame1.i(), j, parame1.j(), parame1.h());
      }
      return a0.X(paramView, locale1);
    }
  }
  
  class c
    implements ContentFrameLayout.a
  {
    c() {}
    
    public void a() {}
    
    public void onDetachedFromWindow()
    {
      AppCompatDelegateImpl.this.T();
    }
  }
  
  class d
    implements Runnable
  {
    d() {}
    
    public void run()
    {
      AppCompatDelegateImpl localAppCompatDelegateImpl = AppCompatDelegateImpl.this;
      localAppCompatDelegateImpl.q.showAtLocation(localAppCompatDelegateImpl.p, 55, 0, 0);
      AppCompatDelegateImpl.this.W();
      if (AppCompatDelegateImpl.this.E0())
      {
        AppCompatDelegateImpl.this.p.setAlpha(0.0F);
        localAppCompatDelegateImpl = AppCompatDelegateImpl.this;
        localAppCompatDelegateImpl.v = a0.d(localAppCompatDelegateImpl.p).b(1.0F);
        AppCompatDelegateImpl.this.v.h(new a());
      }
      else
      {
        AppCompatDelegateImpl.this.p.setAlpha(1.0F);
        AppCompatDelegateImpl.this.p.setVisibility(0);
      }
    }
    
    class a
      extends c1
    {
      a() {}
      
      public void b(View paramView)
      {
        AppCompatDelegateImpl.this.p.setAlpha(1.0F);
        AppCompatDelegateImpl.this.v.h(null);
        AppCompatDelegateImpl.this.v = null;
      }
      
      public void c(View paramView)
      {
        AppCompatDelegateImpl.this.p.setVisibility(0);
      }
    }
  }
  
  class e
    extends c1
  {
    e() {}
    
    public void b(View paramView)
    {
      AppCompatDelegateImpl.this.p.setAlpha(1.0F);
      AppCompatDelegateImpl.this.v.h(null);
      AppCompatDelegateImpl.this.v = null;
    }
    
    public void c(View paramView)
    {
      AppCompatDelegateImpl.this.p.setVisibility(0);
      if ((AppCompatDelegateImpl.this.p.getParent() instanceof View)) {
        a0.i0((View)AppCompatDelegateImpl.this.p.getParent());
      }
    }
  }
  
  private class f
    implements b
  {
    f() {}
  }
  
  static abstract interface g
  {
    public abstract boolean a(int paramInt);
    
    public abstract View onCreatePanelView(int paramInt);
  }
  
  private final class h
    implements m.a
  {
    h() {}
    
    public boolean a(androidx.appcompat.view.menu.g paramg)
    {
      Window.Callback localCallback = AppCompatDelegateImpl.this.g0();
      if (localCallback != null) {
        localCallback.onMenuOpened(108, paramg);
      }
      return true;
    }
    
    public void onCloseMenu(androidx.appcompat.view.menu.g paramg, boolean paramBoolean)
    {
      AppCompatDelegateImpl.this.M(paramg);
    }
  }
  
  class i
    implements b.a
  {
    private b.a a;
    
    public i(b.a parama)
    {
      this.a = parama;
    }
    
    public boolean a(h.b paramb, Menu paramMenu)
    {
      return this.a.a(paramb, paramMenu);
    }
    
    public boolean b(h.b paramb, Menu paramMenu)
    {
      a0.i0(AppCompatDelegateImpl.this.y);
      return this.a.b(paramb, paramMenu);
    }
    
    public boolean c(h.b paramb, MenuItem paramMenuItem)
    {
      return this.a.c(paramb, paramMenuItem);
    }
    
    public void d(h.b paramb)
    {
      this.a.d(paramb);
      paramb = AppCompatDelegateImpl.this;
      if (paramb.q != null) {
        paramb.f.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.r);
      }
      paramb = AppCompatDelegateImpl.this;
      if (paramb.p != null)
      {
        paramb.W();
        paramb = AppCompatDelegateImpl.this;
        paramb.v = a0.d(paramb.p).b(0.0F);
        AppCompatDelegateImpl.this.v.h(new a());
      }
      AppCompatDelegateImpl localAppCompatDelegateImpl = AppCompatDelegateImpl.this;
      paramb = localAppCompatDelegateImpl.h;
      if (paramb != null) {
        paramb.onSupportActionModeFinished(localAppCompatDelegateImpl.o);
      }
      paramb = AppCompatDelegateImpl.this;
      paramb.o = null;
      a0.i0(paramb.y);
    }
    
    class a
      extends c1
    {
      a() {}
      
      public void b(View paramView)
      {
        AppCompatDelegateImpl.this.p.setVisibility(8);
        AppCompatDelegateImpl localAppCompatDelegateImpl = AppCompatDelegateImpl.this;
        paramView = localAppCompatDelegateImpl.q;
        if (paramView != null) {
          paramView.dismiss();
        } else if ((localAppCompatDelegateImpl.p.getParent() instanceof View)) {
          a0.i0((View)AppCompatDelegateImpl.this.p.getParent());
        }
        AppCompatDelegateImpl.this.p.k();
        AppCompatDelegateImpl.this.v.h(null);
        paramView = AppCompatDelegateImpl.this;
        paramView.v = null;
        a0.i0(paramView.y);
      }
    }
  }
  
  static class j
  {
    static Context a(Context paramContext, Configuration paramConfiguration)
    {
      return paramContext.createConfigurationContext(paramConfiguration);
    }
    
    static void b(Configuration paramConfiguration1, Configuration paramConfiguration2, Configuration paramConfiguration3)
    {
      int i = paramConfiguration1.densityDpi;
      int j = paramConfiguration2.densityDpi;
      if (i != j) {
        paramConfiguration3.densityDpi = j;
      }
    }
  }
  
  static class k
  {
    static boolean a(PowerManager paramPowerManager)
    {
      return paramPowerManager.isPowerSaveMode();
    }
  }
  
  static class l
  {
    static void a(Configuration paramConfiguration1, Configuration paramConfiguration2, Configuration paramConfiguration3)
    {
      LocaleList localLocaleList = paramConfiguration1.getLocales();
      paramConfiguration1 = paramConfiguration2.getLocales();
      if (!localLocaleList.equals(paramConfiguration1))
      {
        paramConfiguration3.setLocales(paramConfiguration1);
        paramConfiguration3.locale = paramConfiguration2.locale;
      }
    }
  }
  
  static class m
  {
    static void a(Configuration paramConfiguration1, Configuration paramConfiguration2, Configuration paramConfiguration3)
    {
      int i = paramConfiguration1.colorMode;
      int j = paramConfiguration2.colorMode;
      if ((i & 0x3) != (j & 0x3)) {
        paramConfiguration3.colorMode |= j & 0x3;
      }
      j = paramConfiguration1.colorMode;
      i = paramConfiguration2.colorMode;
      if ((j & 0xC) != (i & 0xC)) {
        paramConfiguration3.colorMode |= i & 0xC;
      }
    }
  }
  
  class n
    extends h.i
  {
    private AppCompatDelegateImpl.g b;
    
    n(Window.Callback paramCallback)
    {
      super();
    }
    
    void b(AppCompatDelegateImpl.g paramg)
    {
      this.b = paramg;
    }
    
    final ActionMode c(ActionMode.Callback paramCallback)
    {
      paramCallback = new h.f.a(AppCompatDelegateImpl.this.e, paramCallback);
      h.b localb = AppCompatDelegateImpl.this.F(paramCallback);
      if (localb != null) {
        return paramCallback.e(localb);
      }
      return null;
    }
    
    public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
    {
      boolean bool;
      if ((!AppCompatDelegateImpl.this.U(paramKeyEvent)) && (!super.dispatchKeyEvent(paramKeyEvent))) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent)
    {
      boolean bool;
      if ((!super.dispatchKeyShortcutEvent(paramKeyEvent)) && (!AppCompatDelegateImpl.this.s0(paramKeyEvent.getKeyCode(), paramKeyEvent))) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public void onContentChanged() {}
    
    public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
    {
      if ((paramInt == 0) && (!(paramMenu instanceof androidx.appcompat.view.menu.g))) {
        return false;
      }
      return super.onCreatePanelMenu(paramInt, paramMenu);
    }
    
    public View onCreatePanelView(int paramInt)
    {
      Object localObject = this.b;
      if (localObject != null)
      {
        localObject = ((AppCompatDelegateImpl.g)localObject).onCreatePanelView(paramInt);
        if (localObject != null) {
          return localObject;
        }
      }
      return super.onCreatePanelView(paramInt);
    }
    
    public boolean onMenuOpened(int paramInt, Menu paramMenu)
    {
      super.onMenuOpened(paramInt, paramMenu);
      AppCompatDelegateImpl.this.v0(paramInt);
      return true;
    }
    
    public void onPanelClosed(int paramInt, Menu paramMenu)
    {
      super.onPanelClosed(paramInt, paramMenu);
      AppCompatDelegateImpl.this.w0(paramInt);
    }
    
    public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
    {
      androidx.appcompat.view.menu.g localg;
      if ((paramMenu instanceof androidx.appcompat.view.menu.g)) {
        localg = (androidx.appcompat.view.menu.g)paramMenu;
      } else {
        localg = null;
      }
      if ((paramInt == 0) && (localg == null)) {
        return false;
      }
      boolean bool1 = true;
      if (localg != null) {
        localg.setOverrideVisibleItems(true);
      }
      AppCompatDelegateImpl.g localg1 = this.b;
      if ((localg1 == null) || (!localg1.a(paramInt))) {
        bool1 = false;
      }
      boolean bool2 = bool1;
      if (!bool1) {
        bool2 = super.onPreparePanel(paramInt, paramView, paramMenu);
      }
      if (localg != null) {
        localg.setOverrideVisibleItems(false);
      }
      return bool2;
    }
    
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> paramList, Menu paramMenu, int paramInt)
    {
      Object localObject = AppCompatDelegateImpl.this.e0(0, true);
      if (localObject != null)
      {
        localObject = ((AppCompatDelegateImpl.PanelFeatureState)localObject).j;
        if (localObject != null)
        {
          super.onProvideKeyboardShortcuts(paramList, (Menu)localObject, paramInt);
          return;
        }
      }
      super.onProvideKeyboardShortcuts(paramList, paramMenu, paramInt);
    }
    
    public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
    {
      return null;
    }
    
    public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback, int paramInt)
    {
      if ((AppCompatDelegateImpl.this.n0()) && (paramInt == 0)) {
        return c(paramCallback);
      }
      return super.onWindowStartingActionMode(paramCallback, paramInt);
    }
  }
  
  private class o
    extends AppCompatDelegateImpl.p
  {
    private final PowerManager c;
    
    o(Context paramContext)
    {
      super();
      this.c = ((PowerManager)paramContext.getApplicationContext().getSystemService("power"));
    }
    
    IntentFilter b()
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
      return localIntentFilter;
    }
    
    public int c()
    {
      int i;
      if (AppCompatDelegateImpl.k.a(this.c)) {
        i = 2;
      } else {
        i = 1;
      }
      return i;
    }
    
    public void d()
    {
      AppCompatDelegateImpl.this.G();
    }
  }
  
  abstract class p
  {
    private BroadcastReceiver a;
    
    p() {}
    
    void a()
    {
      BroadcastReceiver localBroadcastReceiver = this.a;
      if (localBroadcastReceiver != null) {}
      try
      {
        AppCompatDelegateImpl.this.e.unregisterReceiver(localBroadcastReceiver);
        label20:
        this.a = null;
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        break label20;
      }
    }
    
    abstract IntentFilter b();
    
    abstract int c();
    
    abstract void d();
    
    void e()
    {
      a();
      IntentFilter localIntentFilter = b();
      if ((localIntentFilter != null) && (localIntentFilter.countActions() != 0))
      {
        if (this.a == null) {
          this.a = new a();
        }
        AppCompatDelegateImpl.this.e.registerReceiver(this.a, localIntentFilter);
      }
    }
    
    class a
      extends BroadcastReceiver
    {
      a() {}
      
      public void onReceive(Context paramContext, Intent paramIntent)
      {
        AppCompatDelegateImpl.p.this.d();
      }
    }
  }
  
  private class q
    extends AppCompatDelegateImpl.p
  {
    private final m c;
    
    q(m paramm)
    {
      super();
      this.c = paramm;
    }
    
    IntentFilter b()
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.TIME_SET");
      localIntentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
      localIntentFilter.addAction("android.intent.action.TIME_TICK");
      return localIntentFilter;
    }
    
    public int c()
    {
      int i;
      if (this.c.d()) {
        i = 2;
      } else {
        i = 1;
      }
      return i;
    }
    
    public void d()
    {
      AppCompatDelegateImpl.this.G();
    }
  }
  
  private static class r
  {
    static void a(ContextThemeWrapper paramContextThemeWrapper, Configuration paramConfiguration)
    {
      paramContextThemeWrapper.applyOverrideConfiguration(paramConfiguration);
    }
  }
  
  private class s
    extends ContentFrameLayout
  {
    public s(Context paramContext)
    {
      super();
    }
    
    private boolean b(int paramInt1, int paramInt2)
    {
      boolean bool;
      if ((paramInt1 >= -5) && (paramInt2 >= -5) && (paramInt1 <= getWidth() + 5) && (paramInt2 <= getHeight() + 5)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
    {
      boolean bool;
      if ((!AppCompatDelegateImpl.this.U(paramKeyEvent)) && (!super.dispatchKeyEvent(paramKeyEvent))) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
    {
      if ((paramMotionEvent.getAction() == 0) && (b((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())))
      {
        AppCompatDelegateImpl.this.O(0);
        return true;
      }
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
    
    public void setBackgroundResource(int paramInt)
    {
      setBackgroundDrawable(e.a.b(getContext(), paramInt));
    }
  }
  
  private final class t
    implements m.a
  {
    t() {}
    
    public boolean a(androidx.appcompat.view.menu.g paramg)
    {
      if (paramg == paramg.getRootMenu())
      {
        Object localObject = AppCompatDelegateImpl.this;
        if (((AppCompatDelegateImpl)localObject).G)
        {
          localObject = ((AppCompatDelegateImpl)localObject).g0();
          if ((localObject != null) && (!AppCompatDelegateImpl.this.R)) {
            ((Window.Callback)localObject).onMenuOpened(108, paramg);
          }
        }
      }
      return true;
    }
    
    public void onCloseMenu(androidx.appcompat.view.menu.g paramg, boolean paramBoolean)
    {
      androidx.appcompat.view.menu.g localg = paramg.getRootMenu();
      int i;
      if (localg != paramg) {
        i = 1;
      } else {
        i = 0;
      }
      AppCompatDelegateImpl localAppCompatDelegateImpl = AppCompatDelegateImpl.this;
      if (i != 0) {
        paramg = localg;
      }
      paramg = localAppCompatDelegateImpl.Z(paramg);
      if (paramg != null) {
        if (i != 0)
        {
          AppCompatDelegateImpl.this.L(paramg.a, paramg, localg);
          AppCompatDelegateImpl.this.P(paramg, true);
        }
        else
        {
          AppCompatDelegateImpl.this.P(paramg, paramBoolean);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.AppCompatDelegateImpl
 * JD-Core Version:    0.7.0.1
 */