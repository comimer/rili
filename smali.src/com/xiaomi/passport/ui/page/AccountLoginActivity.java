package com.xiaomi.passport.ui.page;

import a7.a.a;
import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManager.k;
import androidx.fragment.app.s;
import com.xiaomi.accountsdk.account.data.AccountInfo.b;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy;
import com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy.Type;
import com.xiaomi.passport.ui.license.LoginAgreementAndPrivacy.b;
import com.xiaomi.passport.ui.view.AnimateScrollLinerLayout;
import java.util.Iterator;
import java.util.List;
import s6.j;

public class AccountLoginActivity
  extends j
  implements c
{
  private String d;
  private Intent e;
  private AnimateScrollLinerLayout f;
  private View g;
  private a7.a h;
  private final a.a i = new b();
  private final ViewTreeObserver.OnGlobalLayoutListener j = new c();
  
  private void J()
  {
    com.xiaomi.passport.accountmanager.g localg = com.xiaomi.passport.accountmanager.g.z(this);
    Account localAccount = localg.l();
    if (localAccount != null)
    {
      LoginAgreementAndPrivacy localLoginAgreementAndPrivacy1 = (LoginAgreementAndPrivacy)getIntent().getParcelableExtra("login_agreement_and_privacy");
      LoginAgreementAndPrivacy localLoginAgreementAndPrivacy2 = localLoginAgreementAndPrivacy1;
      if (localLoginAgreementAndPrivacy1 == null) {
        localLoginAgreementAndPrivacy2 = new LoginAgreementAndPrivacy.b(LoginAgreementAndPrivacy.Type.DEF).a();
      }
      z6.c.b(this, new AccountInfo.b().F(localAccount.name).w(localg.p(localAccount)).s(localg.o(localAccount, "encrypted_user_id")).r(), localLoginAgreementAndPrivacy2);
    }
  }
  
  private void K()
  {
    setResult(0);
    finish();
  }
  
  private void L()
  {
    FragmentManager localFragmentManager = getSupportFragmentManager();
    int k = n5.e.J;
    if (localFragmentManager.h0(k) == null)
    {
      boolean bool = getIntent().getBooleanExtra("spte_is_from_pass_through_error_jump", false);
      int m = 3;
      if (bool)
      {
        localObject1 = getIntent().getStringExtra("spte_type");
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          ((String)localObject1).hashCode();
          switch (((String)localObject1).hashCode())
          {
          }
          do
          {
            do
            {
              do
              {
                do
                {
                  n = -1;
                  break;
                } while (!((String)localObject1).equals("login_password"));
                n = 3;
                break;
              } while (!((String)localObject1).equals("input_phone"));
              n = 2;
              break;
            } while (!((String)localObject1).equals("login_sim"));
            n = 1;
            break;
          } while (!((String)localObject1).equals("input_ticket_verification_code"));
          n = 0;
          switch (n)
          {
          default: 
            b.g("AccountLoginActivity", "initFragments can't find page to jump!!!");
            break;
          case 3: 
            localObject2 = BaseLoginFragment.q(null, BaseLoginFragment.LoginFragmentType.PASSWORD_LOGIN);
            break;
          case 2: 
            localObject2 = BaseLoginFragment.q(null, BaseLoginFragment.LoginFragmentType.INPUT_PHONE_NUMBER);
            break;
          case 1: 
            localObject2 = BaseLoginFragment.q(null, BaseLoginFragment.LoginFragmentType.PHONE_ACCOUNT_LOGIN);
            break;
          case 0: 
            localObject2 = BaseLoginFragment.q(null, BaseLoginFragment.LoginFragmentType.VERIFY_CODE_LOGIN);
            break;
          }
        }
      }
      Object localObject2 = null;
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = getIntent().getStringExtra("init_page");
        if (TextUtils.isEmpty((CharSequence)localObject1))
        {
          if (com.xiaomi.passport.f.b()) {
            localObject1 = BaseLoginFragment.q(null, BaseLoginFragment.LoginFragmentType.PASSWORD_LOGIN);
          } else {
            localObject1 = BaseLoginFragment.q(null, BaseLoginFragment.LoginFragmentType.PHONE_ACCOUNT_LOGIN);
          }
        }
        else
        {
          ((String)localObject1).hashCode();
          switch (((String)localObject1).hashCode())
          {
          }
          do
          {
            do
            {
              do
              {
                n = -1;
                break;
                n = m;
                if (((String)localObject1).equals("phone_account_quick_login")) {
                  break;
                }
              } while ((goto 392) || (!((String)localObject1).equals("phone_number_login")));
              n = 2;
              break;
            } while (!((String)localObject1).equals("user_id_login"));
            n = 1;
            break;
          } while (!((String)localObject1).equals("phone_account_login"));
          n = 0;
          switch (n)
          {
          default: 
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("unknown page type -> ");
            ((StringBuilder)localObject2).append((String)localObject1);
            throw new IllegalStateException(((StringBuilder)localObject2).toString());
          case 3: 
            localObject1 = BaseLoginFragment.q(null, BaseLoginFragment.LoginFragmentType.PHONE_ACCOUNT_QUICK_LOGIN);
            break;
          case 2: 
            localObject1 = BaseLoginFragment.q(null, BaseLoginFragment.LoginFragmentType.INPUT_PHONE_NUMBER);
            break;
          case 1: 
            localObject1 = BaseLoginFragment.q(null, BaseLoginFragment.LoginFragmentType.PASSWORD_LOGIN);
            break;
          case 0: 
            localObject1 = BaseLoginFragment.q(null, BaseLoginFragment.LoginFragmentType.PHONE_ACCOUNT_LOGIN);
          }
        }
      }
      Q((a)localObject1, k, true, false);
    }
    int n = n5.e.T;
    if (localFragmentManager.h0(n) == null) {
      Q(BaseLoginFragment.q(getIntent().getExtras(), BaseLoginFragment.LoginFragmentType.SNS_LOGIN), n, false, false);
    }
  }
  
  private void M()
  {
    getWindow().addFlags(8192);
  }
  
  private void N()
  {
    this.d = getIntent().getStringExtra("choose_country_init_text");
    this.e = ((Intent)getIntent().getParcelableExtra("choose_country_intent"));
  }
  
  private void O()
  {
    this.f = ((AnimateScrollLinerLayout)findViewById(n5.e.J));
    a7.a locala = a7.a.a(this);
    this.h = locala;
    locala.c(this.i);
    this.h.b(this.d);
    setHeaderEndView(this.h.a);
    y().setOnClickListener(new a());
    getWindow().getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(this.j);
  }
  
  private void P()
  {
    getWindow().getDecorView().getViewTreeObserver().removeOnGlobalLayoutListener(this.j);
  }
  
  private void Q(a parama, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    FragmentManager localFragmentManager = getSupportFragmentManager();
    String str = parama.j();
    if (paramBoolean1)
    {
      if (paramBoolean2) {
        try
        {
          localFragmentManager.Z0();
        }
        catch (Exception parama)
        {
          b.h("AccountLoginActivity", "remove top fragment failed, finish and return", parama);
          K();
          return;
        }
      }
      int k = localFragmentManager.n0();
      int m = 0;
      int n = 0;
      while (m < k)
      {
        FragmentManager.k localk = localFragmentManager.m0(m);
        if (n != 0) {
          try
          {
            localFragmentManager.Z0();
          }
          catch (Exception parama)
          {
            b.h("AccountLoginActivity", "remove top fragment failed, finish and return", parama);
            K();
            return;
          }
        } else if (localk.getName().equals(str)) {
          n = 1;
        }
        m++;
      }
      if (n == 0) {
        localFragmentManager.m().r(paramInt, parama, str).g(str).i();
      }
    }
    else
    {
      localFragmentManager.m().r(paramInt, parama, str).i();
    }
  }
  
  public void A(ViewGroup paramViewGroup)
  {
    LayoutInflater.from(this).inflate(n5.f.a, paramViewGroup);
  }
  
  public void B(ViewGroup paramViewGroup)
  {
    this.g = LayoutInflater.from(this).inflate(n5.f.n, paramViewGroup);
  }
  
  public void e(boolean paramBoolean)
  {
    if (isDestroyed()) {
      return;
    }
    View localView = this.g;
    int k;
    if (paramBoolean) {
      k = 0;
    } else {
      k = 8;
    }
    localView.setVisibility(k);
  }
  
  public void g(BaseLoginFragment.LoginFragmentType paramLoginFragmentType, Bundle paramBundle, boolean paramBoolean)
  {
    if (isDestroyed()) {
      return;
    }
    Q(BaseLoginFragment.q(paramBundle, paramLoginFragmentType), n5.e.J, true, paramBoolean);
  }
  
  public boolean j()
  {
    if (isDestroyed()) {
      return false;
    }
    a locala = (a)getSupportFragmentManager().h0(n5.e.J);
    if (!(locala instanceof BaseLoginFragment)) {
      return false;
    }
    return ((BaseLoginFragment)locala).p();
  }
  
  public void k(View.OnClickListener paramOnClickListener)
  {
    if (isDestroyed()) {
      return;
    }
    a locala = (a)getSupportFragmentManager().h0(n5.e.J);
    if (!(locala instanceof BaseLoginFragment)) {
      return;
    }
    ((BaseLoginFragment)locala).r(paramOnClickListener);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    Object localObject = getSupportFragmentManager().u0();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Fragment)((Iterator)localObject).next()).onActivityResult(paramInt1, paramInt2, paramIntent);
      }
    }
    if ((paramInt1 == 8880) && (paramInt2 == -1))
    {
      paramIntent = paramIntent.getStringExtra("countryName");
      this.h.b(paramIntent);
    }
  }
  
  public void onBackPressed()
  {
    if (getSupportFragmentManager().n0() > 1) {
      super.onBackPressed();
    } else {
      z6.c.b(this, null, null);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = new StringBuilder();
    paramBundle.append("page intent extras: ");
    paramBundle.append(getIntent().getExtras());
    b.g("AccountLoginActivity", paramBundle.toString());
    M();
    N();
    O();
    L();
  }
  
  protected void onDestroy()
  {
    P();
    super.onDestroy();
  }
  
  protected void onResume()
  {
    super.onResume();
    J();
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      AccountLoginActivity.this.onBackPressed();
    }
  }
  
  class b
    implements a.a
  {
    b() {}
    
    public void a(View paramView)
    {
      if (AccountLoginActivity.H(AccountLoginActivity.this) == null) {
        return;
      }
      paramView = AccountLoginActivity.this;
      paramView.startActivityForResult(AccountLoginActivity.H(paramView), 8880);
    }
    
    public void b(View paramView)
    {
      paramView = AccountLoginActivity.this;
      paramView.startActivity(z6.e.e(paramView));
    }
  }
  
  class c
    implements ViewTreeObserver.OnGlobalLayoutListener
  {
    c() {}
    
    public void onGlobalLayout()
    {
      if (AccountLoginActivity.this.isFinishing()) {
        return;
      }
      if (((a)AccountLoginActivity.this.getSupportFragmentManager().h0(n5.e.J) instanceof g)) {
        return;
      }
      View localView = AccountLoginActivity.this.getWindow().getDecorView();
      int i = localView.getRootView().getHeight();
      Rect localRect = new Rect();
      localView.getWindowVisibleDisplayFrame(localRect);
      if (localView.getRootView().getHeight() - localRect.height() >= i / 4) {
        AccountLoginActivity.I(AccountLoginActivity.this).c(0, (int)Math.ceil(AccountLoginActivity.this.getResources().getDimension(n5.c.g)));
      } else {
        AccountLoginActivity.I(AccountLoginActivity.this).c(0, 0);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.page.AccountLoginActivity
 * JD-Core Version:    0.7.0.1
 */