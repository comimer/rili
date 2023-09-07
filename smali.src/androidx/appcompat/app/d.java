package androidx.appcompat.app;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.d1;
import androidx.core.app.b0;
import androidx.core.app.b0.a;
import androidx.core.app.i;
import androidx.core.app.k;
import androidx.lifecycle.o0;
import androidx.lifecycle.p0;
import androidx.savedstate.c;
import androidx.savedstate.c.c;
import h.b.a;

public class d
  extends androidx.fragment.app.d
  implements e, b0.a
{
  private static final String DELEGATE_TAG = "androidx:appcompat";
  private f mDelegate;
  private Resources mResources;
  
  public d()
  {
    initDelegate();
  }
  
  public d(int paramInt)
  {
    super(paramInt);
    initDelegate();
  }
  
  private void initDelegate()
  {
    getSavedStateRegistry().h("androidx:appcompat", new a());
    addOnContextAvailableListener(new b());
  }
  
  private void initViewTreeOwners()
  {
    o0.a(getWindow().getDecorView(), this);
    p0.a(getWindow().getDecorView(), this);
    androidx.savedstate.f.a(getWindow().getDecorView(), this);
  }
  
  private boolean performMenuItemShortcut(KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    initViewTreeOwners();
    getDelegate().b(paramView, paramLayoutParams);
  }
  
  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(getDelegate().d(paramContext));
  }
  
  public void closeOptionsMenu()
  {
    a locala = getSupportActionBar();
    if ((getWindow().hasFeature(0)) && ((locala == null) || (!locala.g()))) {
      super.closeOptionsMenu();
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    int i = paramKeyEvent.getKeyCode();
    a locala = getSupportActionBar();
    if ((i == 82) && (locala != null) && (locala.s(paramKeyEvent))) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public <T extends View> T findViewById(int paramInt)
  {
    return getDelegate().g(paramInt);
  }
  
  public f getDelegate()
  {
    if (this.mDelegate == null) {
      this.mDelegate = f.e(this, this);
    }
    return this.mDelegate;
  }
  
  public b getDrawerToggleDelegate()
  {
    return getDelegate().i();
  }
  
  public MenuInflater getMenuInflater()
  {
    return getDelegate().k();
  }
  
  public Resources getResources()
  {
    if ((this.mResources == null) && (d1.c())) {
      this.mResources = new d1(this, super.getResources());
    }
    Resources localResources1 = this.mResources;
    Resources localResources2 = localResources1;
    if (localResources1 == null) {
      localResources2 = super.getResources();
    }
    return localResources2;
  }
  
  public a getSupportActionBar()
  {
    return getDelegate().l();
  }
  
  public Intent getSupportParentActivityIntent()
  {
    return k.a(this);
  }
  
  public void invalidateOptionsMenu()
  {
    getDelegate().n();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (this.mResources != null)
    {
      DisplayMetrics localDisplayMetrics = super.getResources().getDisplayMetrics();
      this.mResources.updateConfiguration(paramConfiguration, localDisplayMetrics);
    }
    getDelegate().o(paramConfiguration);
  }
  
  public void onContentChanged()
  {
    onSupportContentChanged();
  }
  
  public void onCreateSupportNavigateUpTaskStack(b0 paramb0)
  {
    paramb0.d(this);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    getDelegate().q();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (performMenuItemShortcut(paramKeyEvent)) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    a locala = getSupportActionBar();
    if ((paramMenuItem.getItemId() == 16908332) && (locala != null) && ((locala.k() & 0x4) != 0)) {
      return onSupportNavigateUp();
    }
    return false;
  }
  
  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return super.onMenuOpened(paramInt, paramMenu);
  }
  
  protected void onNightModeChanged(int paramInt) {}
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    super.onPanelClosed(paramInt, paramMenu);
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    getDelegate().r(paramBundle);
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    getDelegate().s();
  }
  
  public void onPrepareSupportNavigateUpTaskStack(b0 paramb0) {}
  
  protected void onStart()
  {
    super.onStart();
    getDelegate().u();
  }
  
  protected void onStop()
  {
    super.onStop();
    getDelegate().v();
  }
  
  public void onSupportActionModeFinished(h.b paramb) {}
  
  public void onSupportActionModeStarted(h.b paramb) {}
  
  @Deprecated
  public void onSupportContentChanged() {}
  
  public boolean onSupportNavigateUp()
  {
    Object localObject = getSupportParentActivityIntent();
    if (localObject != null)
    {
      if (supportShouldUpRecreateTask((Intent)localObject))
      {
        localObject = b0.j(this);
        onCreateSupportNavigateUpTaskStack((b0)localObject);
        onPrepareSupportNavigateUpTaskStack((b0)localObject);
        ((b0)localObject).k();
        try
        {
          androidx.core.app.b.m(this);
        }
        catch (IllegalStateException localIllegalStateException)
        {
          finish();
        }
      }
      else
      {
        supportNavigateUpTo(localIllegalStateException);
      }
      return true;
    }
    return false;
  }
  
  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
    getDelegate().E(paramCharSequence);
  }
  
  public h.b onWindowStartingSupportActionMode(b.a parama)
  {
    return null;
  }
  
  public void openOptionsMenu()
  {
    a locala = getSupportActionBar();
    if ((getWindow().hasFeature(0)) && ((locala == null) || (!locala.t()))) {
      super.openOptionsMenu();
    }
  }
  
  public void setContentView(int paramInt)
  {
    initViewTreeOwners();
    getDelegate().z(paramInt);
  }
  
  public void setContentView(View paramView)
  {
    initViewTreeOwners();
    getDelegate().A(paramView);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    initViewTreeOwners();
    getDelegate().B(paramView, paramLayoutParams);
  }
  
  public void setSupportActionBar(Toolbar paramToolbar)
  {
    getDelegate().C(paramToolbar);
  }
  
  @Deprecated
  public void setSupportProgress(int paramInt) {}
  
  @Deprecated
  public void setSupportProgressBarIndeterminate(boolean paramBoolean) {}
  
  @Deprecated
  public void setSupportProgressBarIndeterminateVisibility(boolean paramBoolean) {}
  
  @Deprecated
  public void setSupportProgressBarVisibility(boolean paramBoolean) {}
  
  public void setTheme(int paramInt)
  {
    super.setTheme(paramInt);
    getDelegate().D(paramInt);
  }
  
  public h.b startSupportActionMode(b.a parama)
  {
    return getDelegate().F(parama);
  }
  
  public void supportInvalidateOptionsMenu()
  {
    getDelegate().n();
  }
  
  public void supportNavigateUpTo(Intent paramIntent)
  {
    k.e(this, paramIntent);
  }
  
  public boolean supportRequestWindowFeature(int paramInt)
  {
    return getDelegate().y(paramInt);
  }
  
  public boolean supportShouldUpRecreateTask(Intent paramIntent)
  {
    return k.f(this, paramIntent);
  }
  
  class a
    implements c.c
  {
    a() {}
    
    public Bundle a()
    {
      Bundle localBundle = new Bundle();
      d.this.getDelegate().t(localBundle);
      return localBundle;
    }
  }
  
  class b
    implements b.b
  {
    b() {}
    
    public void a(Context paramContext)
    {
      paramContext = d.this.getDelegate();
      paramContext.m();
      paramContext.p(d.this.getSavedStateRegistry().b("androidx:appcompat"));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.d
 * JD-Core Version:    0.7.0.1
 */