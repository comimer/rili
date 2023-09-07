package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.res.Resources.Theme;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import androidx.core.view.f.a;
import h.b;
import h.b.a;

public class g
  extends Dialog
  implements e
{
  private f mDelegate;
  private final f.a mKeyDispatcher = new a();
  
  public g(Context paramContext)
  {
    this(paramContext, 0);
  }
  
  public g(Context paramContext, int paramInt)
  {
    super(paramContext, getThemeResId(paramContext, paramInt));
    f localf = getDelegate();
    localf.D(getThemeResId(paramContext, paramInt));
    localf.p(null);
  }
  
  protected g(Context paramContext, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    super(paramContext, paramBoolean, paramOnCancelListener);
  }
  
  private static int getThemeResId(Context paramContext, int paramInt)
  {
    int i = paramInt;
    if (paramInt == 0)
    {
      TypedValue localTypedValue = new TypedValue();
      paramContext.getTheme().resolveAttribute(d.a.A, localTypedValue, true);
      i = localTypedValue.resourceId;
    }
    return i;
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    getDelegate().b(paramView, paramLayoutParams);
  }
  
  public void dismiss()
  {
    super.dismiss();
    getDelegate().q();
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    View localView = getWindow().getDecorView();
    return androidx.core.view.f.e(this.mKeyDispatcher, localView, this, paramKeyEvent);
  }
  
  public <T extends View> T findViewById(int paramInt)
  {
    return getDelegate().g(paramInt);
  }
  
  public f getDelegate()
  {
    if (this.mDelegate == null) {
      this.mDelegate = f.f(this, this);
    }
    return this.mDelegate;
  }
  
  public a getSupportActionBar()
  {
    return getDelegate().l();
  }
  
  public void invalidateOptionsMenu()
  {
    getDelegate().n();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    getDelegate().m();
    super.onCreate(paramBundle);
    getDelegate().p(paramBundle);
  }
  
  protected void onStop()
  {
    super.onStop();
    getDelegate().v();
  }
  
  public void onSupportActionModeFinished(b paramb) {}
  
  public void onSupportActionModeStarted(b paramb) {}
  
  public b onWindowStartingSupportActionMode(b.a parama)
  {
    return null;
  }
  
  public void setContentView(int paramInt)
  {
    getDelegate().z(paramInt);
  }
  
  public void setContentView(View paramView)
  {
    getDelegate().A(paramView);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    getDelegate().B(paramView, paramLayoutParams);
  }
  
  public void setTitle(int paramInt)
  {
    super.setTitle(paramInt);
    getDelegate().E(getContext().getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    getDelegate().E(paramCharSequence);
  }
  
  boolean superDispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public boolean supportRequestWindowFeature(int paramInt)
  {
    return getDelegate().y(paramInt);
  }
  
  class a
    implements f.a
  {
    a() {}
    
    public boolean superDispatchKeyEvent(KeyEvent paramKeyEvent)
    {
      return g.this.superDispatchKeyEvent(paramKeyEvent);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.g
 * JD-Core Version:    0.7.0.1
 */