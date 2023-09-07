package com.xiaomi.accounts;

import android.accounts.AuthenticatorDescription;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;

public class b
{
  private Context a;
  private final String b;
  private a<AuthenticatorDescription> c;
  
  public b(Context paramContext)
  {
    this.a = paramContext;
    this.b = "com.xiaomi.accounts.AccountAuthenticator";
    a();
  }
  
  private a<AuthenticatorDescription> c(ResolveInfo paramResolveInfo)
  {
    String str;
    if (paramResolveInfo != null)
    {
      paramResolveInfo = paramResolveInfo.serviceInfo;
      str = paramResolveInfo.packageName;
      localObject = paramResolveInfo.name;
      paramResolveInfo = paramResolveInfo.applicationInfo;
    }
    else
    {
      str = this.a.getPackageName();
      paramResolveInfo = this.a.getApplicationInfo();
      localObject = "com.xiaomi.passport.accountmanager.MiAuthenticatorService";
    }
    Object localObject = new ComponentName(str, (String)localObject);
    int i = paramResolveInfo.uid;
    int j = paramResolveInfo.labelRes;
    int k = paramResolveInfo.icon;
    return new a(new AuthenticatorDescription("com.xiaomi", str, j, k, k, -1), (ComponentName)localObject, i);
  }
  
  void a()
  {
    Intent localIntent = new Intent(this.b);
    localIntent.setPackage(this.a.getPackageName());
    this.c = c(this.a.getPackageManager().resolveService(localIntent, 0));
  }
  
  public a<AuthenticatorDescription> b(AuthenticatorDescription paramAuthenticatorDescription)
  {
    if ((paramAuthenticatorDescription != null) && (TextUtils.equals("com.xiaomi", paramAuthenticatorDescription.type))) {
      return this.c;
    }
    com.xiaomi.accountsdk.utils.b.g("Account", "no xiaomi account type");
    return null;
  }
  
  public static class a<V>
  {
    public final V a;
    public final ComponentName b;
    public final int c;
    
    public a(V paramV, ComponentName paramComponentName, int paramInt)
    {
      this.a = paramV;
      this.b = paramComponentName;
      this.c = paramInt;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ServiceInfo: ");
      localStringBuilder.append(this.a);
      localStringBuilder.append(", ");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", uid ");
      localStringBuilder.append(this.c);
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accounts.b
 * JD-Core Version:    0.7.0.1
 */