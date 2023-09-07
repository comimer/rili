package com.xiaomi.passport.ui.page;

import android.content.Context;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import b7.m;
import b7.p;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo.RegisterStatus;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.passport.ui.data.PhoneAccount;
import com.xiaomi.passport.ui.view.VerifyCodeEditText;
import com.xiaomi.passport.ui.view.VerifyCodeEditText.c;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import com.xiaomi.phonenum.data.AccountCertification;
import com.xiaomi.verificationsdk.internal.ErrorInfo.ErrorCode;
import j6.h;
import java.util.Objects;
import m7.a.o;
import s6.s;

public class g
  extends BaseLoginFragment
  implements View.OnClickListener
{
  private h D;
  private j6.d E;
  private j6.c F;
  private j6.f G;
  private final String j = "restore_time";
  private long k = 0L;
  private String l;
  private int m;
  private String n;
  private CountDownTimer o;
  private VerifyCodeEditText p;
  private TextView q;
  private TextView r;
  private TextView v;
  private com.xiaomi.passport.uicontroller.a<Integer> w;
  private com.xiaomi.passport.uicontroller.a<RegisterUserInfo> x;
  private com.xiaomi.passport.uicontroller.a<AccountInfo> y;
  private com.xiaomi.passport.uicontroller.a<AccountInfo> z;
  
  private void O(Bundle paramBundle)
  {
    Bundle localBundle = i();
    PhoneAccount localPhoneAccount = (PhoneAccount)localBundle.getParcelable("phone_account");
    this.n = localBundle.getString("extra_ticket_type", "sms");
    this.l = localBundle.getString("extra_phone");
    this.m = localBundle.getInt("extra_build_country_info", 86);
    boolean bool = localBundle.getBoolean("spte_is_from_pass_through_error_jump", false);
    String str;
    if (bool) {
      str = m.a(p.f(this.l));
    } else {
      str = m.a(b7.g.d(this.m, p.f(this.l)));
    }
    if ("whatsapp".equals(this.n))
    {
      this.q.setText(Html.fromHtml(String.format(getString(n5.g.Z0), new Object[] { str })));
    }
    else if (localPhoneAccount != null)
    {
      this.q.setText(m.a(localPhoneAccount.registerUserInfo.phone));
      this.l = localPhoneAccount.accountCertification.hashedPhoneNumber;
      this.m = 0;
    }
    else
    {
      this.q.setText(getString(n5.g.C0, new Object[] { str }));
    }
    int i = localBundle.getInt("verify_code_length", 6);
    if (i > 0)
    {
      this.p.setVerifyCodeLength(i);
      this.k = 60000L;
      if (paramBundle != null) {
        this.k = paramBundle.getLong("restore_time");
      }
      this.o = new b(this.k, 1000L);
      if (bool) {
        T();
      }
      return;
    }
    throw new IllegalStateException("verify code length need > 0");
  }
  
  private void P(View paramView)
  {
    TextView localTextView = (TextView)paramView.findViewById(n5.e.l0);
    this.v = localTextView;
    localTextView.setOnClickListener(this);
    this.v.setEnabled(false);
    this.q = ((TextView)paramView.findViewById(n5.e.u0));
    localTextView = (TextView)paramView.findViewById(n5.e.h);
    this.r = localTextView;
    localTextView.setOnClickListener(this);
    paramView = (VerifyCodeEditText)paramView.findViewById(n5.e.I0);
    this.p = paramView;
    paramView.setInputCompleteListener(new a());
  }
  
  private void Q(RegisterUserInfo paramRegisterUserInfo)
  {
    this.b.n(n5.g.D);
    com.xiaomi.passport.uicontroller.a locala = this.y;
    if (locala != null) {
      locala.cancel(true);
    }
    this.y = z6.c.e(getActivity(), this.f, this.l, b7.g.b(this.m), paramRegisterUserInfo, this.F);
  }
  
  private void R(RegisterUserInfo paramRegisterUserInfo)
  {
    this.b.n(n5.g.E);
    com.xiaomi.passport.uicontroller.a locala = this.z;
    if (locala != null) {
      locala.cancel(true);
    }
    this.z = z6.c.h(this.f, this.l, b7.g.b(this.m), paramRegisterUserInfo, this.G);
  }
  
  private void S()
  {
    this.o.cancel();
    com.xiaomi.passport.uicontroller.a locala = this.w;
    if (locala != null)
    {
      locala.cancel(true);
      this.w = null;
    }
    locala = this.x;
    if (locala != null)
    {
      locala.cancel(true);
      this.x = null;
    }
    locala = this.y;
    if (locala != null)
    {
      locala.cancel(true);
      this.y = null;
    }
    locala = this.z;
    if (locala != null)
    {
      locala.cancel(true);
      this.z = null;
    }
  }
  
  private void T()
  {
    this.b.n(n5.g.H);
    com.xiaomi.passport.uicontroller.a locala = this.w;
    if (locala != null) {
      locala.cancel(true);
    }
    this.w = z6.c.k(getActivity(), this.f, this.l, b7.g.b(this.m), this.n, null, null, this.D);
  }
  
  private void n()
  {
    this.o.start();
    this.i.e(false);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    O(paramBundle);
    n();
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    this.D = new g(paramContext);
    this.E = new e(paramContext);
    this.F = new d(paramContext);
    this.G = new f(paramContext, this.f);
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.r) {
      startActivity(z6.e.c(getContext()));
    } else if (paramView == this.v) {
      T();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(n5.f.m, paramViewGroup, false);
    P(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    S();
    super.onDestroyView();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putLong("restore_time", this.k);
  }
  
  class a
    implements VerifyCodeEditText.c
  {
    a() {}
    
    public void a(String paramString)
    {
      g.this.b.n(n5.g.H);
      if (g.y(g.this) != null) {
        g.y(g.this).cancel(true);
      }
      g localg1 = g.this;
      androidx.fragment.app.d locald = localg1.getActivity();
      g localg2 = g.this;
      g.z(localg1, z6.c.l(locald, localg2.f, g.A(localg2), b7.g.b(g.E(g.this)), g.F(g.this), paramString, g.G(g.this)));
    }
  }
  
  class b
    extends CountDownTimer
  {
    b(long paramLong1, long paramLong2)
    {
      super(paramLong2);
    }
    
    public void onFinish()
    {
      g.J(g.this).setText(n5.g.A0);
      g.J(g.this).setEnabled(true);
    }
    
    public void onTick(long paramLong)
    {
      g.I(g.this, paramLong);
      TextView localTextView = g.J(g.this);
      g localg = g.this;
      localTextView.setText(localg.getString(n5.g.L0, new Object[] { Long.valueOf(g.H(localg) / 1000L) }));
    }
  }
  
  private class d
    extends j6.c
  {
    protected d(Context paramContext)
    {
      super();
    }
    
    public void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo)
    {
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
      super.b(paramErrorCode, paramPassThroughErrorInfo);
    }
    
    public void c(String paramString1, String paramString2)
    {
      super.c(paramString1, paramString2);
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
    }
    
    public void d(AccountInfo paramAccountInfo)
    {
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
      z6.c.m(g.this.getActivity(), paramAccountInfo);
      z6.c.b(g.this.getActivity(), paramAccountInfo, g.this.c);
    }
    
    public void h(String paramString)
    {
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
      g.this.l(paramString);
    }
  }
  
  private class e
    extends j6.d
  {
    public e(Context paramContext)
    {
      super();
    }
    
    public void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo)
    {
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
      super.b(paramErrorCode, paramPassThroughErrorInfo);
    }
    
    public void c(String paramString)
    {
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
      g.D(g.this).d();
      g.this.l(paramString);
    }
    
    public void d(final RegisterUserInfo paramRegisterUserInfo)
    {
      if (!g.this.k()) {
        return;
      }
      Object localObject = g.c.a;
      RegisterUserInfo.RegisterStatus localRegisterStatus = paramRegisterUserInfo.status;
      Objects.requireNonNull(localRegisterStatus);
      int i = localObject[localRegisterStatus.ordinal()];
      if (i != 1)
      {
        if (i != 2)
        {
          if (i == 3)
          {
            g.this.b.dismiss();
            localObject = g.this;
            ((BaseLoginFragment)localObject).w(((Fragment)localObject).getActivity(), g.this.getLayoutInflater(), paramRegisterUserInfo, new a(paramRegisterUserInfo));
          }
        }
        else {
          g.C(g.this, paramRegisterUserInfo);
        }
      }
      else {
        g.B(g.this, paramRegisterUserInfo);
      }
    }
    
    class a
      implements BaseLoginFragment.i
    {
      a(RegisterUserInfo paramRegisterUserInfo) {}
      
      public void a()
      {
        g.B(g.this, paramRegisterUserInfo);
      }
      
      public void b()
      {
        g.C(g.this, paramRegisterUserInfo);
      }
    }
  }
  
  private class f
    extends j6.f
  {
    public f(Context paramContext, String paramString)
    {
      super(paramString);
    }
    
    public void b(PhoneLoginController.ErrorCode paramErrorCode, PassThroughErrorInfo paramPassThroughErrorInfo)
    {
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
      super.b(paramErrorCode, paramPassThroughErrorInfo);
    }
    
    public void e(AccountInfo paramAccountInfo)
    {
      if (!g.this.k()) {
        return;
      }
      z6.c.m(g.this.getActivity(), paramAccountInfo);
      z6.c.b(g.this.getActivity(), paramAccountInfo, g.this.c);
    }
    
    public void f(String paramString)
    {
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
      g.this.l(paramString);
    }
  }
  
  private class g
    extends h
  {
    public g(Context paramContext)
    {
      super();
    }
    
    public void b(PhoneLoginController.ErrorCode paramErrorCode, String paramString, PassThroughErrorInfo paramPassThroughErrorInfo)
    {
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
      super.b(paramErrorCode, paramString, paramPassThroughErrorInfo);
    }
    
    public void e(final String paramString1, String paramString2)
    {
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
      g.this.x("ticket-login", new a(paramString1));
    }
    
    public void h(String paramString)
    {
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
      g.this.l(paramString);
    }
    
    public void i(int paramInt)
    {
      if (!g.this.k()) {
        return;
      }
      g.this.b.dismiss();
      g.J(g.this).setEnabled(false);
      g.K(g.this).start();
    }
    
    class a
      implements a.o
    {
      a(String paramString) {}
      
      public void a(com.xiaomi.verificationsdk.internal.d paramd)
      {
        if (!g.this.k()) {
          return;
        }
        g.this.b.n(n5.g.H);
        if (g.L(g.this) != null) {
          g.L(g.this).cancel(true);
        }
        g localg1 = g.this;
        androidx.fragment.app.d locald = localg1.getActivity();
        g localg2 = g.this;
        g.M(localg1, z6.c.k(locald, localg2.f, g.A(localg2), b7.g.b(g.E(g.this)), g.F(g.this), null, new s(paramd.a(), "ticket-login"), g.N(g.this)));
      }
      
      public void b(com.xiaomi.verificationsdk.internal.b paramb)
      {
        if (!g.this.k()) {
          return;
        }
        if (paramb.a() == ErrorInfo.ErrorCode.ERROR_VERIFY_SERVER.getCode()) {
          g.this.v(paramString1, new a());
        }
      }
      
      public void c() {}
      
      class a
        implements BaseLoginFragment.h
      {
        a() {}
        
        public void a(String paramString1, String paramString2)
        {
          if (!g.this.k()) {
            return;
          }
          if (g.L(g.this) != null) {
            g.L(g.this).cancel(true);
          }
          g localg1 = g.this;
          androidx.fragment.app.d locald = localg1.getActivity();
          g localg2 = g.this;
          g.M(localg1, z6.c.k(locald, localg2.f, g.A(localg2), b7.g.b(g.E(g.this)), g.F(g.this), new s6.g(paramString1, paramString2), null, g.N(g.this)));
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.page.g
 * JD-Core Version:    0.7.0.1
 */