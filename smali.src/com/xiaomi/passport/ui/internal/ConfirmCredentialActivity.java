package com.xiaomi.passport.ui.internal;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.xiaomi.accountsdk.account.d;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.PasswordLoginParams.b;
import com.xiaomi.accountsdk.account.data.Step2LoginParams;
import com.xiaomi.accountsdk.utils.l;
import com.xiaomi.passport.ui.internal.util.LoginUIController;
import com.xiaomi.passport.ui.internal.util.LoginUIController.d;
import com.xiaomi.passport.ui.view.EditTextGroupView;
import java.util.concurrent.atomic.AtomicBoolean;
import n5.f;

public class ConfirmCredentialActivity
  extends s6.e
{
  private EditTextGroupView b;
  private EditTextGroupView c;
  private Account d;
  private String e;
  protected String f;
  private final AtomicBoolean g = new AtomicBoolean(false);
  private boolean h;
  private LoginUIController i;
  
  private void h(AccountInfo paramAccountInfo)
  {
    com.xiaomi.passport.accountmanager.g.z(this).d(this.d, paramAccountInfo);
    f(b7.a.b(paramAccountInfo, getIntent().getBooleanExtra("need_retry_on_authenticator_response_result", false)));
    setResult(-1);
    finish();
  }
  
  protected boolean b()
  {
    return false;
  }
  
  protected void e(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      this.c.setVisibility(8);
      return;
    }
    this.c.setVisibility(0);
    EditTextGroupView localEditTextGroupView = this.c;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(d.b);
    localStringBuilder.append(paramString);
    localEditTextGroupView.setupCaptcha(localStringBuilder.toString());
  }
  
  protected void f(Bundle paramBundle)
  {
    if (!this.g.compareAndSet(false, true)) {
      return;
    }
    Bundle localBundle = getIntent().getExtras();
    if (localBundle == null) {
      return;
    }
    com.xiaomi.passport.accountmanager.g.z(this).i(localBundle.getParcelable("accountAuthenticatorResponse"), paramBundle);
  }
  
  public void finish()
  {
    com.xiaomi.passport.accountmanager.g.z(this).i(getIntent().getParcelableExtra("accountAuthenticatorResponse"), null);
    super.finish();
  }
  
  protected void g(String paramString1, String paramString2, String paramString3, String paramString4, final String paramString5)
  {
    paramString1 = new PasswordLoginParams.b().B(paramString1).q(paramString3).r(paramString4).y(paramString2).z(paramString5).v(this.h).o();
    this.i.e(paramString1, new a(paramString5));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 != 1)
    {
      if (paramInt1 == 2) {
        if (paramInt2 == -1)
        {
          setResult(-1);
          finish();
        }
        else
        {
          z6.a.a(this, n5.g.r0);
        }
      }
    }
    else
    {
      setResult(paramInt2);
      finish();
    }
  }
  
  public void onCancelClicked(View paramView)
  {
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!new l().a(this))
    {
      finish();
      return;
    }
    if (!getIntent().getBooleanExtra("has_password", true))
    {
      paramBundle = z6.e.h(this);
      paramBundle.putExtras(getIntent());
      paramBundle.setPackage(getPackageName());
      startActivityForResult(paramBundle, 1);
      return;
    }
    setContentView(f.b);
    paramBundle = getIntent().getStringExtra("userId");
    this.e = paramBundle;
    if (TextUtils.isEmpty(paramBundle))
    {
      finish();
      return;
    }
    ((TextView)findViewById(n5.e.G0)).setText(getString(n5.g.l, new Object[] { this.e }));
    this.d = new Account(this.e, "com.xiaomi");
    paramBundle = getIntent().getStringExtra("service_id");
    this.f = paramBundle;
    if (TextUtils.isEmpty(paramBundle)) {
      this.f = "passportapi";
    }
    this.h = getIntent().getBooleanExtra("return_sts_url", false);
    this.i = new LoginUIController(this);
    this.b = ((EditTextGroupView)findViewById(n5.e.U));
    this.c = ((EditTextGroupView)findViewById(n5.e.i));
    getWindow().addFlags(8192);
  }
  
  public void onForgetPasswordClicked(View paramView)
  {
    startActivity(z6.e.d(this, null));
  }
  
  public void onOkClicked(View paramView)
  {
    String str1 = this.b.getInputText();
    if (TextUtils.isEmpty(str1))
    {
      z6.a.c(this, getString(n5.g.P));
      return;
    }
    if (this.c.getVisibility() == 0)
    {
      String str2 = this.c.getInputText();
      paramView = str2;
      if (!TextUtils.isEmpty(str2)) {}
    }
    else
    {
      paramView = null;
    }
    g(this.e, str1, paramView, this.c.getCaptchaIck(), this.f);
  }
  
  class a
    implements LoginUIController.d
  {
    a(String paramString) {}
    
    public void c(String paramString1, String paramString2)
    {
      paramString1 = com.xiaomi.passport.accountmanager.g.z(ConfirmCredentialActivity.this).v(paramString5, paramString2, ConfirmCredentialActivity.this.getIntent().getExtras(), ConfirmCredentialActivity.this.getIntent().getParcelableExtra("accountAuthenticatorResponse"));
      ConfirmCredentialActivity.this.startActivityForResult(paramString1, 2);
    }
    
    public void d(AccountInfo paramAccountInfo)
    {
      com.xiaomi.passport.accountmanager.g.z(ConfirmCredentialActivity.this).q(paramAccountInfo);
      ConfirmCredentialActivity.c(ConfirmCredentialActivity.this, paramAccountInfo);
    }
    
    public void e(boolean paramBoolean, String paramString)
    {
      if (ConfirmCredentialActivity.d(ConfirmCredentialActivity.this).getVisibility() != 0)
      {
        ConfirmCredentialActivity.this.e(paramString);
        return;
      }
      ConfirmCredentialActivity.this.e(paramString);
    }
    
    public void g(Step2LoginParams paramStep2LoginParams) {}
    
    public void h(int paramInt)
    {
      z6.a.a(ConfirmCredentialActivity.this, paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.ConfirmCredentialActivity
 * JD-Core Version:    0.7.0.1
 */