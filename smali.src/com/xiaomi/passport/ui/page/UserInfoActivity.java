package com.xiaomi.passport.ui.page;

import android.accounts.Account;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity;
import androidx.fragment.app.d;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.accountmanager.h;
import com.xiaomi.passport.accountmanager.i;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import n5.f;
import s6.j;
import z6.a;

public class UserInfoActivity
  extends j
{
  private AccountManagerFuture d;
  private com.xiaomi.passport.accountmanager.g e;
  private Account f;
  
  public void A(ViewGroup paramViewGroup)
  {
    LayoutInflater.from(this).inflate(f.f, paramViewGroup);
  }
  
  public void B(ViewGroup paramViewGroup)
  {
    View.inflate(this, f.D, paramViewGroup);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 != 1000)
    {
      if ((paramInt1 == 1001) && (paramInt2 == -1)) {
        finish();
      }
    }
    else if (paramInt2 != -1) {
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    D(getString(n5.g.r));
    paramBundle = com.xiaomi.passport.accountmanager.g.z(this);
    this.e = paramBundle;
    paramBundle = paramBundle.l();
    this.f = paramBundle;
    if (paramBundle == null)
    {
      finish();
      a.a(this, n5.g.n0);
      return;
    }
    if (TextUtils.isEmpty(this.e.b(paramBundle))) {
      this.d = this.e.g(this.f, null, new a(), null);
    }
  }
  
  public void onLogoutClicked(View paramView)
  {
    this.e.y(new b(this), null);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
  }
  
  protected void onPause()
  {
    super.onPause();
    AccountManagerFuture localAccountManagerFuture = this.d;
    if (localAccountManagerFuture != null)
    {
      localAccountManagerFuture.cancel(true);
      this.d = null;
    }
  }
  
  class a
    implements AccountManagerCallback<Bundle>
  {
    a() {}
    
    public void run(AccountManagerFuture<Bundle> paramAccountManagerFuture)
    {
      try
      {
        paramAccountManagerFuture = (Intent)((Bundle)paramAccountManagerFuture.getResult()).getParcelable("intent");
        if (paramAccountManagerFuture != null) {
          UserInfoActivity.this.startActivityForResult(paramAccountManagerFuture, 1000);
        }
      }
      catch (AuthenticatorException paramAccountManagerFuture)
      {
        b.h("UserInfoActivity", "auth", paramAccountManagerFuture);
      }
      catch (IOException paramAccountManagerFuture)
      {
        b.h("UserInfoActivity", "io", paramAccountManagerFuture);
      }
      catch (OperationCanceledException paramAccountManagerFuture)
      {
        b.h("UserInfoActivity", "cancel", paramAccountManagerFuture);
      }
    }
  }
  
  public static class b
    implements h<Bundle>
  {
    public final WeakReference<Activity> a;
    
    public b(Activity paramActivity)
    {
      this.a = new WeakReference(paramActivity);
    }
    
    public void a(i<Bundle> parami)
    {
      Activity localActivity = (Activity)this.a.get();
      if ((localActivity != null) && (!localActivity.isFinishing()))
      {
        try
        {
          parami = (Bundle)parami.getResult();
          if (parami.getBoolean("booleanResult"))
          {
            localActivity.finish();
          }
          else
          {
            parami = (Intent)parami.getParcelable("intent");
            if (parami == null)
            {
              b.g("UserInfoActivity", "get null intent when logout");
              a.a(localActivity, n5.g.x0);
              return;
            }
            localActivity.startActivityForResult(parami, 1001);
          }
          return;
        }
        catch (AuthenticatorException parami) {}catch (IOException parami) {}catch (OperationCanceledException parami) {}
        b.h("UserInfoActivity", "logout failed", parami);
        a.a(localActivity, n5.g.x0);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.page.UserInfoActivity
 * JD-Core Version:    0.7.0.1
 */