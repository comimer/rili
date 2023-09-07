package com.xiaomi.accounts;

import android.accounts.Account;
import android.accounts.NetworkErrorException;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.BaseBundle;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.xiaomi.accountsdk.utils.b;
import java.util.Arrays;

public abstract class a
{
  private final Context a;
  private b b = new b(null);
  
  public a(Context paramContext)
  {
    this.a = paramContext;
  }
  
  private void d()
  {
    int i = Binder.getCallingUid();
    if (this.a.getApplicationInfo().uid == i) {
      return;
    }
    if (this.a.checkCallingOrSelfPermission("android.permission.ACCOUNT_MANAGER") == 0) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("caller uid ");
    localStringBuilder.append(i);
    localStringBuilder.append(" lacks ");
    localStringBuilder.append("android.permission.ACCOUNT_MANAGER");
    throw new SecurityException(localStringBuilder.toString());
  }
  
  private void k(g paramg, String paramString1, String paramString2, Exception paramException)
    throws RemoteException
  {
    StringBuilder localStringBuilder;
    if ((paramException instanceof NetworkErrorException))
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString1);
      localStringBuilder.append("(");
      localStringBuilder.append(paramString2);
      localStringBuilder.append(")");
      b.h("AccountAuthenticator", localStringBuilder.toString(), paramException);
      paramg.b(3, paramException.getMessage());
    }
    else if ((paramException instanceof UnsupportedOperationException))
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString1);
      localStringBuilder.append("(");
      localStringBuilder.append(paramString2);
      localStringBuilder.append(")");
      b.h("AccountAuthenticator", localStringBuilder.toString(), paramException);
      paramString2 = new StringBuilder();
      paramString2.append(paramString1);
      paramString2.append(" not supported");
      paramg.b(6, paramString2.toString());
    }
    else if ((paramException instanceof IllegalArgumentException))
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString1);
      localStringBuilder.append("(");
      localStringBuilder.append(paramString2);
      localStringBuilder.append(")");
      b.h("AccountAuthenticator", localStringBuilder.toString(), paramException);
      paramString2 = new StringBuilder();
      paramString2.append(paramString1);
      paramString2.append(" not supported");
      paramg.b(7, paramString2.toString());
    }
    else
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString1);
      localStringBuilder.append("(");
      localStringBuilder.append(paramString2);
      localStringBuilder.append(")");
      b.h("AccountAuthenticator", localStringBuilder.toString(), paramException);
      paramString2 = new StringBuilder();
      paramString2.append(paramString1);
      paramString2.append(" failed");
      paramg.b(1, paramString2.toString());
    }
  }
  
  public abstract Bundle c(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle)
    throws NetworkErrorException;
  
  public abstract Bundle e(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, Bundle paramBundle)
    throws NetworkErrorException;
  
  public abstract Bundle f(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, String paramString);
  
  public abstract Bundle g(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount)
    throws NetworkErrorException;
  
  public abstract Bundle h(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String paramString, Bundle paramBundle)
    throws NetworkErrorException;
  
  public abstract String i(String paramString);
  
  public final IBinder j()
  {
    return this.b.asBinder();
  }
  
  public abstract Bundle l(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String[] paramArrayOfString)
    throws NetworkErrorException;
  
  public abstract Bundle m(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String paramString, Bundle paramBundle)
    throws NetworkErrorException;
  
  private class b
    extends f.a
  {
    private b() {}
    
    public void D(g paramg, Account paramAccount, Bundle paramBundle)
      throws RemoteException
    {
      Object localObject;
      if (Log.isLoggable("AccountAuthenticator", 2))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("confirmCredentials: ");
        ((StringBuilder)localObject).append(paramAccount);
        b.g("AccountAuthenticator", ((StringBuilder)localObject).toString());
      }
      a.a(a.this);
      try
      {
        localObject = a.this;
        AccountAuthenticatorResponse localAccountAuthenticatorResponse = new com/xiaomi/accounts/AccountAuthenticatorResponse;
        localAccountAuthenticatorResponse.<init>(paramg);
        localObject = ((a)localObject).e(localAccountAuthenticatorResponse, paramAccount, paramBundle);
        if (Log.isLoggable("AccountAuthenticator", 2))
        {
          ((BaseBundle)localObject).keySet();
          paramBundle = new java/lang/StringBuilder;
          paramBundle.<init>();
          paramBundle.append("confirmCredentials: result ");
          paramBundle.append(c.x((Bundle)localObject));
          b.g("AccountAuthenticator", paramBundle.toString());
        }
        if (localObject != null) {
          paramg.a((Bundle)localObject);
        }
      }
      catch (Exception paramBundle)
      {
        a.b(a.this, paramg, "confirmCredentials", paramAccount.toString(), paramBundle);
      }
    }
    
    public void N(g paramg, String paramString)
      throws RemoteException
    {
      a.a(a.this);
      try
      {
        a locala = a.this;
        Object localObject = new com/xiaomi/accounts/AccountAuthenticatorResponse;
        ((AccountAuthenticatorResponse)localObject).<init>(paramg);
        localObject = locala.f((AccountAuthenticatorResponse)localObject, paramString);
        if (localObject != null) {
          paramg.a((Bundle)localObject);
        }
      }
      catch (Exception localException)
      {
        a.b(a.this, paramg, "editProperties", paramString, localException);
      }
    }
    
    public void P(g paramg, Account paramAccount, String[] paramArrayOfString)
      throws RemoteException
    {
      a.a(a.this);
      try
      {
        a locala = a.this;
        AccountAuthenticatorResponse localAccountAuthenticatorResponse = new com/xiaomi/accounts/AccountAuthenticatorResponse;
        localAccountAuthenticatorResponse.<init>(paramg);
        paramArrayOfString = locala.l(localAccountAuthenticatorResponse, paramAccount, paramArrayOfString);
        if (paramArrayOfString != null) {
          paramg.a(paramArrayOfString);
        }
      }
      catch (Exception paramArrayOfString)
      {
        a.b(a.this, paramg, "hasFeatures", paramAccount.toString(), paramArrayOfString);
      }
    }
    
    public void S(g paramg, Account paramAccount, String paramString, Bundle paramBundle)
      throws RemoteException
    {
      Object localObject1;
      if (Log.isLoggable("AccountAuthenticator", 2))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("updateCredentials: ");
        ((StringBuilder)localObject1).append(paramAccount);
        ((StringBuilder)localObject1).append(", authTokenType ");
        ((StringBuilder)localObject1).append(paramString);
        b.g("AccountAuthenticator", ((StringBuilder)localObject1).toString());
      }
      a.a(a.this);
      try
      {
        localObject1 = a.this;
        localObject2 = new com/xiaomi/accounts/AccountAuthenticatorResponse;
        ((AccountAuthenticatorResponse)localObject2).<init>(paramg);
        paramBundle = ((a)localObject1).m((AccountAuthenticatorResponse)localObject2, paramAccount, paramString, paramBundle);
        if (Log.isLoggable("AccountAuthenticator", 2))
        {
          paramBundle.keySet();
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append("updateCredentials: result ");
          ((StringBuilder)localObject1).append(c.x(paramBundle));
          b.g("AccountAuthenticator", ((StringBuilder)localObject1).toString());
        }
        if (paramBundle != null) {
          paramg.a(paramBundle);
        }
      }
      catch (Exception localException)
      {
        paramBundle = a.this;
        Object localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(paramAccount.toString());
        ((StringBuilder)localObject2).append(",");
        ((StringBuilder)localObject2).append(paramString);
        a.b(paramBundle, paramg, "updateCredentials", ((StringBuilder)localObject2).toString(), localException);
      }
    }
    
    public void U(g paramg, Account paramAccount)
      throws RemoteException
    {
      a.a(a.this);
      try
      {
        a locala = a.this;
        Object localObject = new com/xiaomi/accounts/AccountAuthenticatorResponse;
        ((AccountAuthenticatorResponse)localObject).<init>(paramg);
        localObject = locala.g((AccountAuthenticatorResponse)localObject, paramAccount);
        if (localObject != null) {
          paramg.a((Bundle)localObject);
        }
      }
      catch (Exception localException)
      {
        a.b(a.this, paramg, "getAccountRemovalAllowed", paramAccount.toString(), localException);
      }
    }
    
    public void q(g paramg, String paramString)
      throws RemoteException
    {
      StringBuilder localStringBuilder;
      if (Log.isLoggable("AccountAuthenticator", 2))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("getAuthTokenLabel: authTokenType ");
        localStringBuilder.append(paramString);
        b.g("AccountAuthenticator", localStringBuilder.toString());
      }
      a.a(a.this);
      try
      {
        Bundle localBundle = new android/os/Bundle;
        localBundle.<init>();
        localBundle.putString("authTokenLabelKey", a.this.i(paramString));
        if (Log.isLoggable("AccountAuthenticator", 2))
        {
          localBundle.keySet();
          localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("getAuthTokenLabel: result ");
          localStringBuilder.append(c.x(localBundle));
          b.g("AccountAuthenticator", localStringBuilder.toString());
        }
        paramg.a(localBundle);
      }
      catch (Exception localException)
      {
        a.b(a.this, paramg, "getAuthTokenLabel", paramString, localException);
      }
    }
    
    public void w(g paramg, Account paramAccount, String paramString, Bundle paramBundle)
      throws RemoteException
    {
      Object localObject1;
      if (Log.isLoggable("AccountAuthenticator", 2))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("getAuthToken: ");
        ((StringBuilder)localObject1).append(paramAccount);
        ((StringBuilder)localObject1).append(", authTokenType ");
        ((StringBuilder)localObject1).append(paramString);
        b.g("AccountAuthenticator", ((StringBuilder)localObject1).toString());
      }
      a.a(a.this);
      try
      {
        localObject1 = a.this;
        localObject2 = new com/xiaomi/accounts/AccountAuthenticatorResponse;
        ((AccountAuthenticatorResponse)localObject2).<init>(paramg);
        paramBundle = ((a)localObject1).h((AccountAuthenticatorResponse)localObject2, paramAccount, paramString, paramBundle);
        if (Log.isLoggable("AccountAuthenticator", 2))
        {
          paramBundle.keySet();
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append("getAuthToken: result ");
          ((StringBuilder)localObject1).append(c.x(paramBundle));
          b.g("AccountAuthenticator", ((StringBuilder)localObject1).toString());
        }
        if (paramBundle != null) {
          paramg.a(paramBundle);
        }
      }
      catch (Exception localException)
      {
        paramBundle = a.this;
        Object localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(paramAccount.toString());
        ((StringBuilder)localObject2).append(",");
        ((StringBuilder)localObject2).append(paramString);
        a.b(paramBundle, paramg, "getAuthToken", ((StringBuilder)localObject2).toString(), localException);
      }
    }
    
    public void z(g paramg, String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle)
      throws RemoteException
    {
      Object localObject1;
      Object localObject2;
      if (Log.isLoggable("AccountAuthenticator", 2))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("addAccount: accountType ");
        ((StringBuilder)localObject1).append(paramString1);
        ((StringBuilder)localObject1).append(", authTokenType ");
        ((StringBuilder)localObject1).append(paramString2);
        ((StringBuilder)localObject1).append(", features ");
        if (paramArrayOfString == null) {
          localObject2 = "[]";
        } else {
          localObject2 = Arrays.toString(paramArrayOfString);
        }
        ((StringBuilder)localObject1).append((String)localObject2);
        b.g("AccountAuthenticator", ((StringBuilder)localObject1).toString());
      }
      a.a(a.this);
      try
      {
        localObject2 = a.this;
        localObject1 = new com/xiaomi/accounts/AccountAuthenticatorResponse;
        ((AccountAuthenticatorResponse)localObject1).<init>(paramg);
        paramString2 = ((a)localObject2).c((AccountAuthenticatorResponse)localObject1, paramString1, paramString2, paramArrayOfString, paramBundle);
        if (Log.isLoggable("AccountAuthenticator", 2))
        {
          paramString2.keySet();
          paramArrayOfString = new java/lang/StringBuilder;
          paramArrayOfString.<init>();
          paramArrayOfString.append("addAccount: result ");
          paramArrayOfString.append(c.x(paramString2));
          b.g("AccountAuthenticator", paramArrayOfString.toString());
        }
        if (paramString2 != null) {
          paramg.a(paramString2);
        }
      }
      catch (Exception paramString2)
      {
        a.b(a.this, paramg, "addAccount", paramString1, paramString2);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accounts.a
 * JD-Core Version:    0.7.0.1
 */