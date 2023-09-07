package com.xiaomi.passport.ui.page;

import a7.c.c;
import android.content.Context;
import android.os.BaseBundle;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.fragment.app.Fragment;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.passport.ui.data.PhoneAccount;
import com.xiaomi.passport.ui.view.AgreementView;
import com.xiaomi.passport.ui.view.PhoneCard;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import java.util.List;
import n5.f;
import r6.a.a;
import r6.a.d;

public class e
  extends BaseLoginFragment
{
  private int j;
  private List<PhoneAccount> k;
  private r6.a<List<PhoneAccount>> l;
  private com.xiaomi.passport.uicontroller.a<AccountInfo> m;
  private com.xiaomi.passport.uicontroller.a<AccountInfo> n;
  private View o;
  private a7.c p;
  private PhoneCard q;
  private PhoneCard r;
  private AgreementView v;
  private Button w;
  
  private void F()
  {
    r6.a locala = this.l;
    if (locala != null)
    {
      locala.a();
      this.l = null;
    }
  }
  
  private void H(View paramView, final PhoneAccount paramPhoneAccount)
  {
    if (!this.v.d())
    {
      u(new h(paramPhoneAccount));
      return;
    }
    if (paramPhoneAccount.canLogin())
    {
      this.b.n(n5.g.D);
      paramView = this.m;
      if (paramView != null) {
        paramView.cancel(true);
      }
      this.m = z6.c.d(getContext(), this.f, paramPhoneAccount, new j(getContext()));
    }
    else
    {
      this.b.n(n5.g.E);
      paramView = this.n;
      if (paramView != null) {
        paramView.cancel(true);
      }
      this.n = z6.c.g(getContext(), this.f, paramPhoneAccount, new k(getContext()));
    }
  }
  
  private void I()
  {
    F();
    r6.a locala = new r6.a(new i(getContext().getApplicationContext(), this.f, this.j, null), new g(), null);
    this.l = locala;
    locala.c();
  }
  
  private void J()
  {
    F();
    this.p.b();
    com.xiaomi.passport.uicontroller.a locala = this.m;
    if (locala != null)
    {
      locala.cancel(true);
      this.m = null;
    }
    locala = this.n;
    if (locala != null)
    {
      locala.cancel(true);
      this.n = null;
    }
  }
  
  private void K()
  {
    if (this.k == null)
    {
      this.p.d(true);
      return;
    }
    this.i.e(E());
    if (this.k.size() != 0)
    {
      Object localObject1 = this.p;
      int i = 0;
      ((a7.c)localObject1).d(false);
      localObject1 = this.o.findViewById(n5.e.v0);
      Object localObject2 = this.o.findViewById(n5.e.s);
      if (this.k.size() == 1)
      {
        ((View)localObject1).setVisibility(0);
        ((View)localObject2).setVisibility(8);
        this.v = ((AgreementView)((View)localObject1).findViewById(n5.e.c));
        localObject2 = (PhoneCard)((View)localObject1).findViewById(n5.e.Y);
        this.q = ((PhoneCard)localObject2);
        ((PhoneCard)localObject2).c((PhoneAccount)this.k.get(0));
        ((View)localObject1).findViewById(n5.e.L).setOnClickListener(new d());
      }
      else
      {
        ((View)localObject1).setVisibility(8);
        ((View)localObject2).setVisibility(0);
        this.v = ((AgreementView)((View)localObject2).findViewById(n5.e.b));
        this.q = ((PhoneCard)((View)localObject2).findViewById(n5.e.Z));
        this.r = ((PhoneCard)((View)localObject2).findViewById(n5.e.a0));
        this.q.c((PhoneAccount)this.k.get(0));
        this.q.setOnClickListener(new e());
        this.r.c((PhoneAccount)this.k.get(1));
        this.r.setOnClickListener(new f());
      }
      this.v.setLoginAgreementAndPrivacy(this.c);
      this.v.e((PhoneAccount[])this.k.toArray(new PhoneAccount[0]));
      localObject1 = this.v;
      if (!this.d) {
        i = 8;
      }
      ((View)localObject1).setVisibility(i);
    }
    else
    {
      this.i.g(BaseLoginFragment.LoginFragmentType.INPUT_PHONE_NUMBER, null, true);
    }
  }
  
  private void n()
  {
    List localList = this.k;
    if ((localList == null) || (localList.isEmpty())) {
      I();
    }
    this.i.e(false);
  }
  
  private void o()
  {
    Bundle localBundle = i();
    this.j = localBundle.getInt("account_phone_number_source_flag", 0);
    List localList = this.k;
    Object localObject = localList;
    if (localList == null) {
      localObject = localBundle.getParcelableArrayList("phone_accounts");
    }
    this.k = ((List)localObject);
  }
  
  protected boolean E()
  {
    return true;
  }
  
  protected void G(View paramView)
  {
    this.o = paramView;
    a7.c localc = new a7.c(paramView.findViewById(n5.e.k0));
    this.p = localc;
    localc.c(new b());
    paramView = (Button)paramView.findViewById(n5.e.M);
    this.w = paramView;
    paramView.setOnClickListener(new c());
  }
  
  public String m()
  {
    return this.v.getAppAgreement();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    o();
    n();
    K();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(f.i, paramViewGroup, false);
    G(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    J();
    super.onDestroyView();
  }
  
  public boolean p()
  {
    AgreementView localAgreementView = this.v;
    boolean bool;
    if ((localAgreementView != null) && (!localAgreementView.d())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void r(final View.OnClickListener paramOnClickListener)
  {
    u(new a(paramOnClickListener));
  }
  
  public void t(boolean paramBoolean)
  {
    AgreementView localAgreementView = this.v;
    if (localAgreementView != null) {
      localAgreementView.setUserAgreementSelected(paramBoolean);
    }
  }
  
  class a
    implements View.OnClickListener
  {
    a(View.OnClickListener paramOnClickListener) {}
    
    public void onClick(View paramView)
    {
      paramOnClickListener.onClick(paramView);
    }
  }
  
  class b
    implements c.c
  {
    b() {}
    
    public void a(View paramView)
    {
      e.y(e.this);
      e.this.i.g(BaseLoginFragment.LoginFragmentType.INPUT_PHONE_NUMBER, null, true);
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c() {}
    
    public void onClick(View paramView)
    {
      e.this.i.g(BaseLoginFragment.LoginFragmentType.INPUT_PHONE_NUMBER, null, false);
    }
  }
  
  class d
    implements View.OnClickListener
  {
    d() {}
    
    public void onClick(View paramView)
    {
      e locale = e.this;
      e.B(locale, paramView, (PhoneAccount)e.z(locale).get(0));
    }
  }
  
  class e
    implements View.OnClickListener
  {
    e() {}
    
    public void onClick(View paramView)
    {
      e locale = e.this;
      e.B(locale, paramView, (PhoneAccount)e.z(locale).get(0));
    }
  }
  
  class f
    implements View.OnClickListener
  {
    f() {}
    
    public void onClick(View paramView)
    {
      e locale = e.this;
      e.B(locale, paramView, (PhoneAccount)e.z(locale).get(1));
    }
  }
  
  class g
    implements a.d<List<PhoneAccount>>
  {
    g() {}
    
    public void b(List<PhoneAccount> paramList)
    {
      if (!e.this.k()) {
        return;
      }
      if (paramList == null) {
        e.this.i.g(BaseLoginFragment.LoginFragmentType.INPUT_PHONE_NUMBER, null, true);
      }
      e.A(e.this, paramList);
      e.C(e.this);
    }
  }
  
  class h
    implements View.OnClickListener
  {
    h(PhoneAccount paramPhoneAccount) {}
    
    public void onClick(View paramView)
    {
      e.D(e.this).setUserAgreementSelected(true);
      e.B(e.this, paramView, paramPhoneAccount);
    }
  }
  
  private static class i
    implements a.a<List<PhoneAccount>>
  {
    public final Context a;
    public final String b;
    public final int c;
    
    private i(Context paramContext, String paramString, int paramInt)
    {
      this.a = paramContext;
      this.b = paramString;
      this.c = paramInt;
    }
    
    public List<PhoneAccount> a()
    {
      return w6.b.a(this.a, this.b, new i7.b(this.c));
    }
  }
  
  private class j
    extends j6.b
  {
    protected j(Context paramContext)
    {
      super();
    }
    
    public void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo)
    {
      if (!e.this.k()) {
        return;
      }
      e.this.b.dismiss();
      super.b(paramErrorCode, paramPassThroughErrorInfo);
    }
    
    public void c(String paramString1, String paramString2)
    {
      if (!e.this.k()) {
        return;
      }
      e.this.b.dismiss();
      paramString1 = com.xiaomi.passport.accountmanager.g.z(this.a).v("passportapi", paramString2, null, null);
      this.a.startActivity(paramString1);
    }
    
    public void d(AccountInfo paramAccountInfo)
    {
      if (!e.this.k()) {
        return;
      }
      e.this.b.dismiss();
      z6.c.m(e.this.getContext(), paramAccountInfo);
      z6.c.b(e.this.getActivity(), paramAccountInfo, e.this.c);
    }
    
    public void e()
    {
      super.e();
      if (!e.this.k()) {
        return;
      }
      e.this.i.g(BaseLoginFragment.LoginFragmentType.INPUT_PHONE_NUMBER, null, true);
    }
    
    public void g()
    {
      super.g();
      if (!e.this.k()) {
        return;
      }
      e.this.i.g(BaseLoginFragment.LoginFragmentType.INPUT_PHONE_NUMBER, null, true);
    }
    
    public void h(String paramString)
    {
      if (!e.this.k()) {
        return;
      }
      e.this.b.dismiss();
      e.this.l(paramString);
    }
  }
  
  private class k
    extends j6.e
  {
    public k(Context paramContext)
    {
      super();
    }
    
    public void a()
    {
      super.a();
      if (!e.this.k()) {
        return;
      }
      e.this.i.g(BaseLoginFragment.LoginFragmentType.INPUT_PHONE_NUMBER, null, true);
    }
    
    public void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo)
    {
      if (!e.this.k()) {
        return;
      }
      e.this.b.dismiss();
      super.b(paramErrorCode, paramPassThroughErrorInfo);
    }
    
    public void e(AccountInfo paramAccountInfo)
    {
      if (!e.this.k()) {
        return;
      }
      e.this.b.dismiss();
      z6.c.m(this.a, paramAccountInfo);
      z6.c.b(e.this.getActivity(), paramAccountInfo, e.this.c);
    }
    
    public void f(String paramString)
    {
      if (!e.this.k()) {
        return;
      }
      e.this.b.dismiss();
      e.this.l(paramString);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.page.e
 * JD-Core Version:    0.7.0.1
 */