package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory2;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.n0;

public class h
{
  private final j<?> a;
  
  private h(j<?> paramj)
  {
    this.a = paramj;
  }
  
  public static h b(j<?> paramj)
  {
    return new h((j)androidx.core.util.h.h(paramj, "callbacks == null"));
  }
  
  public void a(Fragment paramFragment)
  {
    j localj = this.a;
    localj.e.k(localj, localj, paramFragment);
  }
  
  public void c()
  {
    this.a.e.z();
  }
  
  public void d(Configuration paramConfiguration)
  {
    this.a.e.B(paramConfiguration);
  }
  
  public boolean e(MenuItem paramMenuItem)
  {
    return this.a.e.C(paramMenuItem);
  }
  
  public void f()
  {
    this.a.e.D();
  }
  
  public boolean g(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    return this.a.e.E(paramMenu, paramMenuInflater);
  }
  
  public void h()
  {
    this.a.e.F();
  }
  
  public void i()
  {
    this.a.e.H();
  }
  
  public void j(boolean paramBoolean)
  {
    this.a.e.I(paramBoolean);
  }
  
  public boolean k(MenuItem paramMenuItem)
  {
    return this.a.e.K(paramMenuItem);
  }
  
  public void l(Menu paramMenu)
  {
    this.a.e.L(paramMenu);
  }
  
  public void m()
  {
    this.a.e.N();
  }
  
  public void n(boolean paramBoolean)
  {
    this.a.e.O(paramBoolean);
  }
  
  public boolean o(Menu paramMenu)
  {
    return this.a.e.P(paramMenu);
  }
  
  public void p()
  {
    this.a.e.R();
  }
  
  public void q()
  {
    this.a.e.S();
  }
  
  public void r()
  {
    this.a.e.U();
  }
  
  public boolean s()
  {
    return this.a.e.b0(true);
  }
  
  public FragmentManager t()
  {
    return this.a.e;
  }
  
  public void u()
  {
    this.a.e.V0();
  }
  
  public View v(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return this.a.e.w0().onCreateView(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public void w(Parcelable paramParcelable)
  {
    j localj = this.a;
    if ((localj instanceof n0))
    {
      localj.e.k1(paramParcelable);
      return;
    }
    throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
  }
  
  public Parcelable x()
  {
    return this.a.e.m1();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.h
 * JD-Core Version:    0.7.0.1
 */