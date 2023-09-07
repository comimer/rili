package com.xiaomi.passport.ui.page;

import android.content.Context;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.fragment.app.Fragment;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.passport.data.LoginPreference;
import com.xiaomi.passport.ui.internal.PickCountryCodeActivity;
import com.xiaomi.passport.ui.view.AgreementView;
import com.xiaomi.passport.ui.view.EditTextGroupView;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import com.xiaomi.verificationsdk.internal.ErrorInfo.ErrorCode;
import j6.h;
import m7.a.o;
import n5.e;
import s6.s;

public class b
  extends BaseLoginFragment
  implements View.OnClickListener
{
  private final int j = 3001;
  private com.xiaomi.passport.uicontroller.a<LoginPreference> k;
  private com.xiaomi.passport.uicontroller.a<Integer> l;
  private AgreementView m;
  private EditTextGroupView n;
  private Button o;
  private Button p;
  private h q;
  private j6.g r;
  
  private void E()
  {
    String str1 = this.n.getInputText();
    if (TextUtils.isEmpty(str1))
    {
      z6.a.a(getActivity(), n5.g.V);
      return;
    }
    Object localObject = this.k;
    if (localObject != null) {
      ((com.xiaomi.passport.uicontroller.a)localObject).cancel(true);
    }
    androidx.fragment.app.d locald = getActivity();
    String str2 = b7.g.b(this.n.getCountryCode());
    if (com.xiaomi.passport.f.b()) {
      localObject = "login";
    } else {
      localObject = "loginOrRegister";
    }
    this.k = z6.c.j(locald, str1, str2, (String)localObject, this.f, this.r);
  }
  
  private void F(View paramView)
  {
    this.m = ((AgreementView)paramView.findViewById(e.a));
    this.n = ((EditTextGroupView)paramView.findViewById(e.X));
    this.o = ((Button)paramView.findViewById(e.B));
    this.p = ((Button)paramView.findViewById(e.V));
    this.o.setOnClickListener(this);
    this.p.setOnClickListener(this);
  }
  
  private void G(int paramInt)
  {
    this.n.d(paramInt, new b());
  }
  
  private void n()
  {
    this.i.e(true);
    this.m.setLoginAgreementAndPrivacy(this.c);
    this.m.e(null);
    AgreementView localAgreementView = this.m;
    int i;
    if (this.d) {
      i = 0;
    } else {
      i = 8;
    }
    localAgreementView.setVisibility(i);
    G(b7.g.e());
  }
  
  private void o() {}
  
  private void s()
  {
    com.xiaomi.passport.uicontroller.a locala = this.k;
    if (locala != null)
    {
      locala.cancel(true);
      this.k = null;
    }
    locala = this.l;
    if (locala != null)
    {
      locala.cancel(true);
      this.l = null;
    }
  }
  
  public String m()
  {
    return this.m.getAppAgreement();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    o();
    n();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 3001) && (paramInt2 == -1)) {
      G(paramIntent.getIntExtra(PickCountryCodeActivity.h, 86));
    }
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    this.q = new e(paramContext);
    this.r = new d(paramContext);
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.o)
    {
      if (!p())
      {
        u(new a());
        return;
      }
      E();
    }
    else if (paramView == this.p)
    {
      this.i.g(BaseLoginFragment.LoginFragmentType.PASSWORD_LOGIN, null, false);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(n5.f.g, paramViewGroup, false);
    F(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    s();
    super.onDestroyView();
  }
  
  public boolean p()
  {
    return this.m.d();
  }
  
  public void t(boolean paramBoolean)
  {
    this.m.setUserAgreementSelected(paramBoolean);
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      b.y(b.this).setUserAgreementSelected(true);
      b.z(b.this);
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      paramView = new Intent();
      paramView.setClass(b.this.getActivity(), PickCountryCodeActivity.class);
      b.this.startActivityForResult(paramView, 3001);
    }
  }
  
  private class d
    extends j6.g
  {
    public d(Context paramContext)
    {
      super();
    }
    
    public void b(PhoneLoginController.ErrorCode paramErrorCode, String paramString, PassThroughErrorInfo paramPassThroughErrorInfo)
    {
      if (!b.this.k()) {
        return;
      }
      b.this.b.dismiss();
      super.b(paramErrorCode, paramString, paramPassThroughErrorInfo);
    }
    
    public void c(LoginPreference paramLoginPreference)
    {
      if (!b.this.k()) {
        return;
      }
      int i = b.c.a[paramLoginPreference.c.ordinal()];
      if (i != 1)
      {
        if (i == 2)
        {
          paramLoginPreference = new Bundle();
          paramLoginPreference.putString("login_phone_number", b.A(b.this).getInputText());
          paramLoginPreference.putInt("login_country_code", b.A(b.this).getCountryCode());
          b.this.i.g(BaseLoginFragment.LoginFragmentType.PASSWORD_LOGIN, paramLoginPreference, false);
        }
      }
      else
      {
        b.this.b.show();
        if (b.B(b.this) != null) {
          b.B(b.this).cancel(true);
        }
        b localb1 = b.this;
        paramLoginPreference = localb1.getActivity();
        b localb2 = b.this;
        b.C(localb1, z6.c.k(paramLoginPreference, localb2.f, b.A(localb2).getInputText(), b7.g.b(b.A(b.this).getCountryCode()), null, null, null, b.D(b.this)));
      }
    }
    
    public void e(String paramString)
    {
      if (!b.this.k()) {
        return;
      }
      b.this.b.dismiss();
      b.this.l(paramString);
    }
  }
  
  private class e
    extends h
  {
    public e(Context paramContext)
    {
      super();
    }
    
    public void b(PhoneLoginController.ErrorCode paramErrorCode, String paramString, PassThroughErrorInfo paramPassThroughErrorInfo)
    {
      if (!b.this.k()) {
        return;
      }
      b.this.b.dismiss();
      super.b(paramErrorCode, paramString, paramPassThroughErrorInfo);
    }
    
    public void e(final String paramString1, String paramString2)
    {
      if (!b.this.k()) {
        return;
      }
      b.this.x("ticket-login", new a(paramString1));
    }
    
    public void h(String paramString)
    {
      if (!b.this.k()) {
        return;
      }
      b.this.b.dismiss();
      z6.a.c(b.this.getActivity(), paramString);
    }
    
    public void i(int paramInt)
    {
      if (!b.this.k()) {
        return;
      }
      b.this.b.dismiss();
      Bundle localBundle = new Bundle();
      localBundle.putString("extra_phone", b.A(b.this).getInputText());
      localBundle.putInt("extra_build_country_info", b.A(b.this).getCountryCode());
      localBundle.putInt("verify_code_length", paramInt);
      b.this.i.g(BaseLoginFragment.LoginFragmentType.VERIFY_CODE_LOGIN, localBundle, false);
    }
    
    class a
      implements a.o
    {
      a(String paramString) {}
      
      public void a(com.xiaomi.verificationsdk.internal.d paramd)
      {
        if (!b.this.k()) {
          return;
        }
        if (b.B(b.this) != null) {
          b.B(b.this).cancel(true);
        }
        b localb1 = b.this;
        androidx.fragment.app.d locald = localb1.getActivity();
        b localb2 = b.this;
        b.C(localb1, z6.c.k(locald, localb2.f, b.A(localb2).getInputText(), b7.g.b(b.A(b.this).getCountryCode()), null, null, new s(paramd.a(), "ticket-login"), b.D(b.this)));
      }
      
      public void b(com.xiaomi.verificationsdk.internal.b paramb)
      {
        if (!b.this.k()) {
          return;
        }
        if (paramb.a() == ErrorInfo.ErrorCode.ERROR_VERIFY_SERVER.getCode()) {
          b.this.v(paramString1, new a());
        }
      }
      
      public void c()
      {
        if (!b.this.k()) {
          return;
        }
        b.this.b.dismiss();
      }
      
      class a
        implements BaseLoginFragment.h
      {
        a() {}
        
        public void a(String paramString1, String paramString2)
        {
          if (!b.this.k()) {
            return;
          }
          if (b.B(b.this) != null) {
            b.B(b.this).cancel(true);
          }
          b localb1 = b.this;
          androidx.fragment.app.d locald = localb1.getActivity();
          b localb2 = b.this;
          b.C(localb1, z6.c.k(locald, localb2.f, b.A(localb2).getInputText(), b7.g.b(b.A(b.this).getCountryCode()), null, new s6.g(paramString1, paramString2), null, b.D(b.this)));
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.page.b
 * JD-Core Version:    0.7.0.1
 */