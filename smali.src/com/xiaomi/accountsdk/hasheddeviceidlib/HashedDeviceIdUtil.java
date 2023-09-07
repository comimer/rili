package com.xiaomi.accountsdk.hasheddeviceidlib;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Looper;
import android.text.TextUtils;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.accountmanager.g;
import java.util.UUID;
import z5.c;
import z5.f;

public class HashedDeviceIdUtil
{
  private final Context a;
  private final a.b b;
  
  public HashedDeviceIdUtil(Context paramContext)
  {
    this(paramContext, a.a());
  }
  
  public HashedDeviceIdUtil(Context paramContext, a.b paramb)
  {
    if (paramb != null)
    {
      if (paramContext == null) {
        paramContext = null;
      } else {
        paramContext = paramContext.getApplicationContext();
      }
      this.a = paramContext;
      this.b = paramb;
      return;
    }
    throw new IllegalArgumentException("plainDeviceIdFetcher == null");
  }
  
  private static boolean g()
  {
    boolean bool;
    if (Looper.myLooper() == Looper.getMainLooper()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  String a()
  {
    return String.format("%s%s", new Object[] { "android_", UUID.randomUUID().toString() });
  }
  
  public String b(boolean paramBoolean)
  {
    try
    {
      DeviceIdPolicy localDeviceIdPolicy = j();
      if (localDeviceIdPolicy == DeviceIdPolicy.RUNTIME_DEVICE_ID_ONLY)
      {
        localObject1 = d();
        return localObject1;
      }
      if (localDeviceIdPolicy == DeviceIdPolicy.CACHED_THEN_RUNTIME_THEN_PSEUDO)
      {
        localObject1 = i();
        boolean bool = TextUtils.isEmpty((CharSequence)localObject1);
        if (!bool) {
          return localObject1;
        }
        localObject1 = d();
        if (localObject1 != null)
        {
          k((String)localObject1);
          return localObject1;
        }
        if ((paramBoolean) && (!g()))
        {
          localObject1 = a.b().c();
          if (localObject1 != null)
          {
            localObject1 = ((f)localObject1).a(this.a);
            if (!TextUtils.isEmpty((CharSequence)localObject1))
            {
              k((String)localObject1);
              return localObject1;
            }
          }
        }
        localObject3 = p5.a.c(this.a, PrivacyDataType.OAID, new String[0]);
        if (!TextUtils.isEmpty((CharSequence)localObject3))
        {
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append("oa_");
          ((StringBuilder)localObject1).append(z5.a.a(((String)localObject3).getBytes()));
          localObject1 = ((StringBuilder)localObject1).toString();
          k((String)localObject1);
          return localObject1;
        }
        localObject1 = p5.a.c(this.a, PrivacyDataType.ANDROID_ID, new String[0]);
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          localObject3 = new java/lang/StringBuilder;
          ((StringBuilder)localObject3).<init>();
          ((StringBuilder)localObject3).append("an_");
          ((StringBuilder)localObject3).append(z5.a.a(((String)localObject1).getBytes()));
          localObject1 = ((StringBuilder)localObject3).toString();
          k((String)localObject1);
          return localObject1;
        }
        localObject1 = a();
        k((String)localObject1);
        return localObject1;
      }
      Object localObject1 = new java/lang/IllegalStateException;
      Object localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      ((StringBuilder)localObject3).append("unknown policy ");
      ((StringBuilder)localObject3).append(localDeviceIdPolicy);
      ((IllegalStateException)localObject1).<init>(((StringBuilder)localObject3).toString());
      throw ((Throwable)localObject1);
    }
    finally {}
  }
  
  @Deprecated
  public String c()
  {
    try
    {
      String str = b(true);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  String d()
  {
    try
    {
      String str = f();
      if (h(str))
      {
        str = c.a(str);
        return str;
      }
    }
    catch (SecurityException localSecurityException)
    {
      b.h("HashedDeviceIdUtil", "can't get deviceid.", localSecurityException);
    }
    return null;
  }
  
  SharedPreferences e()
  {
    Object localObject = this.a;
    if (localObject == null) {
      localObject = null;
    } else {
      localObject = ((Context)localObject).getSharedPreferences("deviceId", 0);
    }
    return localObject;
  }
  
  String f()
  {
    return this.b.a(this.a);
  }
  
  boolean h(String paramString)
  {
    return TextUtils.isEmpty(paramString) ^ true;
  }
  
  public String i()
  {
    SharedPreferences localSharedPreferences = e();
    String str = null;
    if (localSharedPreferences != null) {
      str = localSharedPreferences.getString("hashedDeviceId", null);
    }
    return str;
  }
  
  DeviceIdPolicy j()
  {
    return a.a(a.b());
  }
  
  public void k(String paramString)
  {
    SharedPreferences localSharedPreferences = e();
    if (localSharedPreferences != null) {
      localSharedPreferences.edit().putString("hashedDeviceId", paramString).commit();
    }
  }
  
  public static enum DeviceIdPolicy
  {
    static
    {
      DeviceIdPolicy localDeviceIdPolicy1 = new DeviceIdPolicy("RUNTIME_DEVICE_ID_ONLY", 0);
      RUNTIME_DEVICE_ID_ONLY = localDeviceIdPolicy1;
      DeviceIdPolicy localDeviceIdPolicy2 = new DeviceIdPolicy("CACHED_THEN_RUNTIME_THEN_PSEUDO", 1);
      CACHED_THEN_RUNTIME_THEN_PSEUDO = localDeviceIdPolicy2;
      $VALUES = new DeviceIdPolicy[] { localDeviceIdPolicy1, localDeviceIdPolicy2 };
    }
    
    private DeviceIdPolicy() {}
  }
  
  public static class a
  {
    public static HashedDeviceIdUtil.DeviceIdPolicy c = HashedDeviceIdUtil.DeviceIdPolicy.RUNTIME_DEVICE_ID_ONLY;
    private static final a d = new a();
    private HashedDeviceIdUtil.DeviceIdPolicy a = c;
    private f b;
    
    public static a b()
    {
      return d;
    }
    
    public f c()
    {
      return this.b;
    }
    
    public void d(f paramf)
    {
      this.b = paramf;
    }
    
    public void e(Context paramContext)
    {
      if (g.B(paramContext)) {
        paramContext = HashedDeviceIdUtil.DeviceIdPolicy.RUNTIME_DEVICE_ID_ONLY;
      } else {
        paramContext = HashedDeviceIdUtil.DeviceIdPolicy.CACHED_THEN_RUNTIME_THEN_PSEUDO;
      }
      this.a = paramContext;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil
 * JD-Core Version:    0.7.0.1
 */