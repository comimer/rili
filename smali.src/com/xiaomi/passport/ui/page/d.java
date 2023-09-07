package com.xiaomi.passport.ui.page;

import a7.b;
import android.content.Context;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.passport.ui.view.AgreementView;
import com.xiaomi.passport.ui.view.EditTextGroupView;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import n5.f;

public class d
  extends BaseLoginFragment
  implements View.OnClickListener
{
  private com.xiaomi.passport.uicontroller.a<AccountInfo> j;
  private AgreementView k;
  private TextView l;
  private EditTextGroupView m;
  private EditTextGroupView n;
  private Button o;
  private TextView p;
  private TextView q;
  private int r;
  
  private String F()
  {
    Object localObject;
    if (this.r != 0)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(b7.g.b(this.r));
      ((StringBuilder)localObject).append(this.m.getInputText());
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = this.m.getInputText();
    }
    return localObject;
  }
  
  private void G(View paramView)
  {
    this.m = ((EditTextGroupView)paramView.findViewById(n5.e.K));
    this.n = ((EditTextGroupView)paramView.findViewById(n5.e.U));
    this.l = ((TextView)paramView.findViewById(n5.e.y));
    this.o = ((Button)paramView.findViewById(n5.e.I));
    this.k = ((AgreementView)paramView.findViewById(n5.e.a));
    this.p = ((TextView)paramView.findViewById(n5.e.J0));
    this.q = ((TextView)paramView.findViewById(n5.e.C));
    this.l.setOnClickListener(this);
    this.o.setOnClickListener(this);
    this.p.setOnClickListener(this);
    this.q.setOnClickListener(this);
  }
  
  private void H()
  {
    this.b.n(n5.g.D);
    Object localObject = this.j;
    if (localObject != null) {
      ((com.xiaomi.passport.uicontroller.a)localObject).cancel(true);
    }
    androidx.fragment.app.d locald = getActivity();
    String str1 = F();
    String str2 = this.n.getInputText();
    int i = this.r;
    if (i == 0) {
      localObject = "";
    } else {
      localObject = b7.g.b(i);
    }
    this.j = z6.c.c(locald, str1, str2, (String)localObject, this.f, null, null, new b(getContext(), null));
  }
  
  private void n()
  {
    this.i.e(true);
    this.k.setLoginAgreementAndPrivacy(this.c);
    this.k.e(null);
    AgreementView localAgreementView = this.k;
    int i;
    if (this.d) {
      i = 0;
    } else {
      i = 8;
    }
    localAgreementView.setVisibility(i);
  }
  
  private void o()
  {
    Bundle localBundle = i();
    if (localBundle.getString("login_phone_number", null) != null)
    {
      this.r = localBundle.getInt("login_country_code");
      this.m.setInputText(localBundle.getString("login_phone_number"));
      this.m.setCountryCode(this.r);
      this.m.setEnabled(false);
    }
  }
  
  private void s()
  {
    com.xiaomi.passport.uicontroller.a locala = this.j;
    if (locala != null)
    {
      locala.cancel(true);
      this.j = null;
    }
  }
  
  public String m()
  {
    return this.k.getAppAgreement();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    n();
    o();
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.p)
    {
      this.i.g(BaseLoginFragment.LoginFragmentType.INPUT_PHONE_NUMBER, null, false);
    }
    else if (paramView == this.l)
    {
      startActivity(z6.e.d(getContext(), this.g));
    }
    else if (paramView == this.q)
    {
      startActivity(z6.e.j(getContext(), this.f, null, this.g));
    }
    else if (paramView == this.o)
    {
      if (TextUtils.isEmpty(this.m.getInputText()))
      {
        z6.a.a(getActivity(), n5.g.Q);
        return;
      }
      if (TextUtils.isEmpty(this.n.getInputText()))
      {
        z6.a.a(getActivity(), n5.g.O);
        return;
      }
      if (!this.k.d())
      {
        r(new a());
        return;
      }
      H();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(f.h, paramViewGroup, false);
    G(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    s();
    super.onDestroyView();
  }
  
  public boolean p()
  {
    return this.k.d();
  }
  
  public void t(boolean paramBoolean)
  {
    this.k.setUserAgreementSelected(paramBoolean);
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      d.y(d.this).setUserAgreementSelected(true);
      d.z(d.this);
    }
  }
  
  private class b
    extends j6.a
  {
    private b(Context paramContext)
    {
      super();
    }
    
    public void a(String paramString)
    {
      if (!d.this.k()) {
        return;
      }
      d.this.b.dismiss();
      d.this.l(paramString);
    }
    
    public void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo)
    {
      if (!d.this.k()) {
        return;
      }
      d.this.b.dismiss();
      super.b(paramErrorCode, paramPassThroughErrorInfo);
    }
    
    public void c(String paramString1, String paramString2)
    {
      if (!d.this.k()) {
        return;
      }
      d.this.b.dismiss();
      paramString1 = com.xiaomi.passport.accountmanager.g.z(this.a).v("passportapi", paramString2, null, null);
      d.this.startActivity(paramString1);
    }
    
    public void d(AccountInfo paramAccountInfo)
    {
      if (!d.this.k()) {
        return;
      }
      d.this.b.dismiss();
      z6.c.m(d.this.getActivity(), paramAccountInfo);
      z6.c.b(d.this.getActivity(), paramAccountInfo, d.this.c);
    }
    
    public void e(boolean paramBoolean, String paramString)
    {
      if (!d.this.k()) {
        return;
      }
      d.this.b.dismiss();
      d.this.v(paramString, new a());
    }
    
    class a
      implements BaseLoginFragment.h
    {
      a() {}
      
      public void a(String paramString1, String paramString2)
      {
        if (!d.this.k()) {
          return;
        }
        d.this.b.n(n5.g.D);
        if (d.A(d.this) != null) {
          d.A(d.this).cancel(true);
        }
        d locald1 = d.this;
        androidx.fragment.app.d locald = locald1.getActivity();
        String str1 = d.C(d.this);
        String str2 = d.D(d.this).getInputText();
        String str3;
        if (d.E(d.this) == 0) {
          str3 = "";
        } else {
          str3 = b7.g.b(d.E(d.this));
        }
        d locald2 = d.this;
        d.B(locald1, z6.c.c(locald, str1, str2, str3, locald2.f, paramString1, paramString2, new d.b(locald2, locald2.getContext(), null)));
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.page.d
 * JD-Core Version:    0.7.0.1
 */