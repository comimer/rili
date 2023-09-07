package com.xiaomi.verificationsdk.internal;

import a6.k;
import a6.k.h;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.BaseBundle;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.exception.HttpException;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.passport.h;
import java.io.File;
import java.io.IOException;
import java.net.ConnectException;
import java.net.NetworkInterface;
import java.net.SocketTimeoutException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import m7.a.m;
import n7.c;
import n7.e;
import n7.g;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a
  implements SensorEventListener
{
  private static HandlerThread s;
  private final String a = "SensorHelper";
  private SensorManager b;
  private int c;
  private Handler d;
  private TelephonyManager e;
  private Context f;
  private int g;
  private int h;
  private long i;
  private e j;
  private JSONArray k;
  private JSONArray l;
  private JSONArray m;
  private JSONArray n;
  private JSONArray o;
  private String p;
  private volatile boolean q = false;
  private volatile boolean r = false;
  
  static
  {
    HandlerThread localHandlerThread = new HandlerThread("sensor");
    s = localHandlerThread;
    localHandlerThread.start();
  }
  
  public a(Context paramContext)
  {
    if (paramContext != null)
    {
      this.f = paramContext;
      this.b = ((SensorManager)paramContext.getSystemService("sensor"));
      this.d = new Handler(s.getLooper());
      this.e = ((TelephonyManager)paramContext.getSystemService("phone"));
      return;
    }
    throw new IllegalArgumentException("SensorHelper init : context  should not be null");
  }
  
  private int A()
  {
    PackageManager localPackageManager = this.f.getPackageManager();
    try
    {
      localPackageManager.getPackageInfo("com.saurik.substrate", 0);
      com.xiaomi.accountsdk.utils.b.g("SensorHelper", "Substrate found on the system.");
      return 1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      com.xiaomi.accountsdk.utils.b.g("SensorHelper", "Substrate NOT found on the system.");
    }
    return 0;
  }
  
  private String B()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Android ");
    localStringBuilder.append(Build.VERSION.RELEASE);
    return localStringBuilder.toString();
  }
  
  private int C()
  {
    try
    {
      Object localObject1 = NetworkInterface.getNetworkInterfaces();
      if (localObject1 != null)
      {
        localObject1 = Collections.list((Enumeration)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          NetworkInterface localNetworkInterface = (NetworkInterface)((Iterator)localObject1).next();
          if ((localNetworkInterface.isUp()) && (localNetworkInterface.getInterfaceAddresses().size() != 0)) {
            if (!"tun0".equals(localNetworkInterface.getName()))
            {
              boolean bool = "ppp0".equals(localNetworkInterface.getName());
              if (!bool) {
                break;
              }
            }
            else
            {
              return 1;
            }
          }
        }
      }
    }
    finally
    {
      localObject2.printStackTrace();
    }
    return 0;
  }
  
  private int D()
  {
    PackageManager localPackageManager = this.f.getPackageManager();
    try
    {
      localPackageManager.getPackageInfo("de.robv.android.xposed.installer", 0);
      com.xiaomi.accountsdk.utils.b.g("SensorHelper", "Xposed found on the system.");
      return 1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      com.xiaomi.accountsdk.utils.b.g("SensorHelper", "Xposed NOT found on the system.");
    }
    return 0;
  }
  
  private void E(a.m paramm, IOException paramIOException)
  {
    com.xiaomi.accountsdk.utils.b.h("SensorHelper", "", paramIOException);
    ErrorInfo.ErrorCode localErrorCode;
    int i1;
    StringBuilder localStringBuilder;
    if ((paramIOException instanceof ConnectException))
    {
      localErrorCode = ErrorInfo.ErrorCode.ERROR_CONNECT_UNREACHABLE_EXCEPTION;
      i1 = localErrorCode.getCode();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("uploadData:");
      localStringBuilder.append(paramIOException.toString());
      paramm.b(v(i1, localStringBuilder.toString(), ErrorInfo.getMsgIdGivenErrorCode(localErrorCode)));
    }
    else if ((paramIOException instanceof SocketTimeoutException))
    {
      localErrorCode = ErrorInfo.ErrorCode.ERROR_SOCKET_TIMEOUT_EXCEPTION;
      i1 = localErrorCode.getCode();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("uploadData:");
      localStringBuilder.append(paramIOException.toString());
      paramm.b(v(i1, localStringBuilder.toString(), ErrorInfo.getMsgIdGivenErrorCode(localErrorCode)));
    }
    else if ((paramIOException instanceof ConnectTimeoutException))
    {
      localErrorCode = ErrorInfo.ErrorCode.ERROR_CONNECT_TIMEOUT_EXCEPTION;
      i1 = localErrorCode.getCode();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("uploadData:");
      localStringBuilder.append(paramIOException.toString());
      paramm.b(v(i1, localStringBuilder.toString(), ErrorInfo.getMsgIdGivenErrorCode(localErrorCode)));
    }
    else
    {
      localErrorCode = ErrorInfo.ErrorCode.ERROR_IO_EXCEPTION;
      i1 = localErrorCode.getCode();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("uploadData:");
      localStringBuilder.append(paramIOException.toString());
      paramm.b(v(i1, localStringBuilder.toString(), ErrorInfo.getMsgIdGivenErrorCode(localErrorCode)));
    }
  }
  
  private void F(f paramf)
  {
    if (!this.q) {
      return;
    }
    if (this.k == null) {
      this.k = new JSONArray();
    }
    if (this.l == null) {
      this.l = new JSONArray();
    }
    if (this.m == null) {
      this.m = new JSONArray();
    }
    if (this.n == null) {
      this.n = new JSONArray();
    }
    if (this.o == null) {
      this.o = new JSONArray();
    }
    try
    {
      int i1 = f.a(paramf);
      if (i1 != 1)
      {
        if (i1 != 2)
        {
          if (i1 != 4)
          {
            if (i1 != 5)
            {
              if (i1 == 6) {
                this.o.put(paramf.c());
              }
            }
            else {
              this.n.put(paramf.c());
            }
          }
          else {
            this.k.put(paramf.c());
          }
        }
        else {
          this.m.put(paramf.c());
        }
      }
      else {
        this.l.put(paramf.c());
      }
    }
    catch (JSONException paramf)
    {
      paramf.printStackTrace();
    }
  }
  
  private void G(int paramInt)
  {
    Sensor localSensor = this.b.getDefaultSensor(paramInt);
    if (localSensor == null) {
      return;
    }
    this.b.registerListener(this, localSensor, this.c * 1000);
  }
  
  private void I()
  {
    this.q = true;
    G(1);
    G(4);
    G(2);
    G(5);
    G(6);
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    if (!this.r)
    {
      e locale = new e();
      this.j = locale;
      k6.a.a(this.f, locale, localIntentFilter, true);
      this.r = true;
      this.i = System.currentTimeMillis();
    }
  }
  
  /* Error */
  private void K()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 89	com/xiaomi/verificationsdk/internal/a:b	Landroid/hardware/SensorManager;
    //   6: aload_0
    //   7: invokevirtual 341	android/hardware/SensorManager:unregisterListener	(Landroid/hardware/SensorEventListener;)V
    //   10: aload_0
    //   11: getfield 77	com/xiaomi/verificationsdk/internal/a:r	Z
    //   14: ifeq +36 -> 50
    //   17: aload_0
    //   18: getfield 79	com/xiaomi/verificationsdk/internal/a:f	Landroid/content/Context;
    //   21: aload_0
    //   22: getfield 321	com/xiaomi/verificationsdk/internal/a:j	Lcom/xiaomi/verificationsdk/internal/a$e;
    //   25: invokevirtual 345	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   28: aload_0
    //   29: iconst_0
    //   30: putfield 77	com/xiaomi/verificationsdk/internal/a:r	Z
    //   33: goto +17 -> 50
    //   36: astore_1
    //   37: goto +16 -> 53
    //   40: astore_1
    //   41: ldc 71
    //   43: aload_1
    //   44: invokevirtual 242	java/lang/Object:toString	()Ljava/lang/String;
    //   47: invokestatic 134	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   50: aload_0
    //   51: monitorexit
    //   52: return
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	a
    //   36	1	1	localObject	Object
    //   40	16	1	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   2	33	36	finally
    //   41	50	36	finally
    //   2	33	40	java/lang/Exception
  }
  
  private void j(JSONObject paramJSONObject)
    throws JSONException
  {
    try
    {
      int i1;
      if (n7.b.e()) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      paramJSONObject.put("virtualapp", i1);
    }
    catch (UnknownValueException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  private long k(Context paramContext)
  {
    Object localObject = paramContext.getPackageManager();
    try
    {
      localObject = ((PackageManager)localObject).getApplicationInfo(paramContext.getPackageName(), 0).sourceDir;
      paramContext = new java/io/File;
      paramContext.<init>((String)localObject);
      long l1 = paramContext.lastModified();
      return l1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0L;
  }
  
  private String l(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getApplicationInfo(paramString, 0).loadLabel(paramContext).toString();
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }
  
  private String m()
  {
    String str;
    try
    {
      str = this.f.getPackageManager().getPackageInfo(this.f.getPackageName(), 0).versionName;
      if (str != null) {
        try
        {
          int i1 = str.length();
          if (i1 > 0) {
            return str;
          }
        }
        catch (Exception localException1)
        {
          break label49;
        }
      }
      return "";
    }
    catch (Exception localException2)
    {
      str = "";
      label49:
      com.xiaomi.accountsdk.utils.b.h("VersionInfo", "Exception", localException2);
    }
    return str;
  }
  
  private long n()
  {
    return System.currentTimeMillis() - SystemClock.elapsedRealtime();
  }
  
  private String o()
  {
    return Build.MODEL;
  }
  
  private String q()
  {
    return Build.FINGERPRINT;
  }
  
  private String s()
  {
    return new HashedDeviceIdUtil(this.f).c();
  }
  
  private int t()
  {
    if (((TelephonyManager)this.f.getSystemService("phone")).getNetworkOperatorName().toLowerCase().equals("android") == true) {
      return 1;
    }
    return 0;
  }
  
  private int u()
  {
    ContentResolver localContentResolver = this.f.getContentResolver();
    int i1 = 0;
    if (Settings.Secure.getInt(localContentResolver, "adb_enabled", 0) > 0) {
      i1 = 1;
    }
    return i1;
  }
  
  public static b v(int paramInt1, String paramString, int paramInt2)
  {
    return new b.a().e(paramInt1).g(paramString).f(paramInt2).d();
  }
  
  private int w()
  {
    int i1 = 0;
    int i2;
    try
    {
      i2 = Settings.System.getInt(this.f.getContentResolver(), "screen_off_timeout");
    }
    catch (Exception localException)
    {
      i2 = 0;
    }
    if (i2 == 2147483647) {
      i1 = 1;
    }
    return i1;
  }
  
  private String x()
  {
    return this.f.getPackageName();
  }
  
  private int y()
  {
    return n7.a.g();
  }
  
  private int z()
  {
    int i1;
    try
    {
      i1 = Settings.System.getInt(this.f.getContentResolver(), "screen_brightness");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      i1 = 0;
    }
    return i1;
  }
  
  public void H(String paramString)
  {
    this.p = paramString;
  }
  
  public void J()
  {
    if (!this.q) {
      return;
    }
    this.q = false;
    K();
  }
  
  public void L(final String paramString1, final String paramString2, final String paramString3, final Boolean paramBoolean1, final String paramString4, final String paramString5, final Boolean paramBoolean2, final a.m paramm)
  {
    g.a();
    this.d.post(new b(paramm, paramString1, paramString2, paramString3, paramBoolean1, paramString4, paramString5, paramBoolean2));
  }
  
  public void g()
  {
    if (this.i == 0L)
    {
      com.xiaomi.accountsdk.utils.b.g("SensorHelper", "Collected Data not start");
      return;
    }
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    J();
    final long l1 = System.currentTimeMillis();
    this.d.post(new a(l1, localCountDownLatch));
    try
    {
      localCountDownLatch.await();
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }
  
  public void h()
  {
    this.p = "";
    this.k = new JSONArray();
    this.l = new JSONArray();
    this.m = new JSONArray();
    this.n = new JSONArray();
    this.o = new JSONArray();
  }
  
  public void i(int paramInt1, int paramInt2)
  {
    this.c = paramInt1;
    final long l1 = System.currentTimeMillis();
    I();
    this.d.postDelayed(new c(l1), paramInt2);
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(final SensorEvent paramSensorEvent)
  {
    this.d.post(new d(paramSensorEvent));
  }
  
  public String p()
  {
    return this.p;
  }
  
  public String r(long paramLong1, long paramLong2)
  {
    JSONObject localJSONObject1 = new JSONObject();
    Object localObject = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    try
    {
      localJSONObject1.put("type", 2);
      localJSONObject1.put("startTs", paramLong1);
      localJSONObject1.put("endTs", paramLong2);
      ((JSONObject)localObject).put("battery", this.g);
      ((JSONObject)localObject).put("device_id", s());
      ((JSONObject)localObject).put("app_version", m());
      ((JSONObject)localObject).put("sdk_version", "5.3.0.release.8");
      ((JSONObject)localObject).put("vpn", C());
      ((JSONObject)localObject).put("brand_model", o());
      ((JSONObject)localObject).put("system_version", B());
      ((JSONObject)localObject).put("customed_system", q());
      ((JSONObject)localObject).put("screen_brightness", z());
      ((JSONObject)localObject).put("debug", u());
      ((JSONObject)localObject).put("simulator", t());
      ((JSONObject)localObject).put("charging", this.h);
      ((JSONObject)localObject).put("never_lock_screen", w());
      JSONArray localJSONArray = new org/json/JSONArray;
      localJSONArray.<init>();
      ((JSONObject)localObject).put("aps", localJSONArray);
      ((JSONObject)localObject).put("xposed", D());
      ((JSONObject)localObject).put("substrate", A());
      ((JSONObject)localObject).put("root", y());
      ((JSONObject)localObject).put("boot_time", n());
      ((JSONObject)localObject).put("install_time", k(this.f));
      ((JSONObject)localObject).put("package_name", x());
      ((JSONObject)localObject).put("app_name", l(this.f, x()));
      j((JSONObject)localObject);
      localJSONObject1.put("env", localObject);
      if (this.k == null)
      {
        localObject = new org/json/JSONArray;
        ((JSONArray)localObject).<init>();
        this.k = ((JSONArray)localObject);
      }
      localJSONObject2.put("rotation_speed", this.k);
      if (this.l == null)
      {
        localObject = new org/json/JSONArray;
        ((JSONArray)localObject).<init>();
        this.l = ((JSONArray)localObject);
      }
      localJSONObject2.put("acceleration", this.l);
      if (this.m == null)
      {
        localObject = new org/json/JSONArray;
        ((JSONArray)localObject).<init>();
        this.m = ((JSONArray)localObject);
      }
      localJSONObject2.put("magnetic", this.m);
      if (this.n == null)
      {
        localObject = new org/json/JSONArray;
        ((JSONArray)localObject).<init>();
        this.n = ((JSONArray)localObject);
      }
      localJSONObject2.put("light", this.n);
      if (this.o == null)
      {
        localObject = new org/json/JSONArray;
        ((JSONArray)localObject).<init>();
        this.o = ((JSONArray)localObject);
      }
      localJSONObject2.put("barometer", this.o);
      localJSONObject1.put("action", localJSONObject2);
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return localJSONObject1.toString();
  }
  
  class a
    implements Runnable
  {
    a(long paramLong, CountDownLatch paramCountDownLatch) {}
    
    public void run()
    {
      a locala = a.this;
      locala.H(locala.r(a.a(locala), l1));
      this.b.countDown();
    }
  }
  
  class b
    implements Runnable
  {
    b(a.m paramm, String paramString1, String paramString2, String paramString3, Boolean paramBoolean1, String paramString4, String paramString5, Boolean paramBoolean2) {}
    
    public void run()
    {
      try
      {
        Object localObject3;
        if (paramm != null)
        {
          localObject1 = EnvEncryptUtils.b(paramString1);
          Object localObject2 = new java/lang/StringBuilder;
          ((StringBuilder)localObject2).<init>();
          ((StringBuilder)localObject2).append(paramString2);
          ((StringBuilder)localObject2).append(paramString3);
          ((StringBuilder)localObject2).append(paramString1);
          ((StringBuilder)localObject2).append(((EnvEncryptUtils.a)localObject1).a);
          localObject2 = ((StringBuilder)localObject2).toString();
          localObject2 = h.g(a.b(a.this), (String)localObject2, null);
          try
          {
            localObject2 = (Bundle)((FutureTask)localObject2).get(3000L, TimeUnit.MILLISECONDS);
            if (localObject2 != null)
            {
              if (((BaseBundle)localObject2).getBoolean("booleanResult"))
              {
                localObject2 = ((BaseBundle)localObject2).getString("userData");
                break label225;
              }
              j = ((BaseBundle)localObject2).getInt("errorCode");
              localObject2 = ((BaseBundle)localObject2).getString("errorMessage");
              localObject5 = new java/lang/StringBuilder;
              ((StringBuilder)localObject5).<init>();
              ((StringBuilder)localObject5).append("error code: ");
              ((StringBuilder)localObject5).append(j);
              com.xiaomi.accountsdk.utils.b.g("SensorHelper", ((StringBuilder)localObject5).toString());
              localObject5 = new java/lang/StringBuilder;
              ((StringBuilder)localObject5).<init>();
              ((StringBuilder)localObject5).append("error msg: ");
              ((StringBuilder)localObject5).append((String)localObject2);
              com.xiaomi.accountsdk.utils.b.g("SensorHelper", ((StringBuilder)localObject5).toString());
            }
          }
          catch (TimeoutException localTimeoutException)
          {
            localTimeoutException.printStackTrace();
          }
          catch (ExecutionException localExecutionException)
          {
            localExecutionException.printStackTrace();
          }
          catch (InterruptedException localInterruptedException)
          {
            localInterruptedException.printStackTrace();
          }
          localObject3 = "";
          label225:
          localObject5 = new com/xiaomi/accountsdk/utils/EasyMap;
          ((EasyMap)localObject5).<init>();
          boolean bool = paramBoolean1.booleanValue();
          if (bool)
          {
            ((EasyMap)localObject5).easyPut("s", "");
            ((EasyMap)localObject5).easyPut("d", "");
          }
          else
          {
            ((EasyMap)localObject5).easyPut("s", paramString1);
            ((EasyMap)localObject5).easyPut("d", ((EnvEncryptUtils.a)localObject1).a);
          }
          if (!TextUtils.isEmpty((CharSequence)localObject3)) {
            ((EasyMap)localObject5).easyPut("t", localObject3);
          }
          if (!TextUtils.isEmpty(paramString3)) {
            ((EasyMap)localObject5).easyPut("a", paramString3);
          }
          localObject3 = System.getProperty("http.agent");
          EasyMap localEasyMap = new com/xiaomi/accountsdk/utils/EasyMap;
          localEasyMap.<init>();
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append((String)localObject3);
          ((StringBuilder)localObject1).append(" AndroidVerifySDK/");
          ((StringBuilder)localObject1).append("5.3.0.release.8");
          localEasyMap = localEasyMap.easyPut("User-Agent", ((StringBuilder)localObject1).toString());
          localObject1 = paramString4;
          localObject3 = localObject1;
          if (TextUtils.isEmpty((CharSequence)localObject1)) {
            localObject3 = c.a(Locale.getDefault());
          }
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append(e.a(paramString5, "/captcha/v2/data?"));
          ((StringBuilder)localObject1).append("k=");
          ((StringBuilder)localObject1).append(paramString2);
          ((StringBuilder)localObject1).append("&locale=");
          ((StringBuilder)localObject1).append((String)localObject3);
          ((StringBuilder)localObject1).append("&errorAction=");
          ((StringBuilder)localObject1).append(paramBoolean2);
          localObject3 = k.s(((StringBuilder)localObject1).toString(), (Map)localObject5, null, localEasyMap, true, Integer.valueOf(3000));
          if (localObject3 == null)
          {
            localObject3 = ErrorInfo.ErrorCode.ERROR_NETWORK_EXCEPTION;
            localObject3 = a.v(((ErrorInfo.ErrorCode)localObject3).getCode(), "uploadData:network exception", ErrorInfo.getMsgIdGivenErrorCode((ErrorInfo.ErrorCode)localObject3));
            paramm.b((b)localObject3);
            return;
          }
          localObject1 = new org/json/JSONObject;
          ((JSONObject)localObject1).<init>(((k.h)localObject3).h());
          j = ((JSONObject)localObject1).optInt("code");
          localObject3 = ((JSONObject)localObject1).optString("msg");
          if (j == 0)
          {
            localObject5 = ((JSONObject)localObject1).getJSONObject("data");
            bool = ((JSONObject)localObject5).optBoolean("result");
            localObject3 = ((JSONObject)localObject5).optString("token");
            localObject1 = ((JSONObject)localObject5).optString("url");
            localObject5 = ((JSONObject)localObject5).optJSONObject("extra");
            if (localObject5 != null) {
              g.c(((JSONObject)localObject5).toString());
            }
            if (!TextUtils.isEmpty((CharSequence)localObject1))
            {
              paramm.c((String)localObject1);
            }
            else if (bool)
            {
              localObject1 = new com/xiaomi/verificationsdk/internal/d$b;
              ((d.b)localObject1).<init>();
              localObject3 = ((d.b)localObject1).e((String)localObject3).d(g.b()).c();
              paramm.a((d)localObject3);
            }
            else
            {
              localObject3 = ErrorInfo.ErrorCode.ERROR_HUMANCOMPUTER_VERIFICATION_FAILED;
              localObject3 = a.v(((ErrorInfo.ErrorCode)localObject3).getCode(), "uploadData:human computer verification failed", ErrorInfo.getMsgIdGivenErrorCode((ErrorInfo.ErrorCode)localObject3));
              paramm.b((b)localObject3);
            }
          }
          else if (j == 500)
          {
            localObject3 = new com/xiaomi/verificationsdk/internal/d$b;
            ((d.b)localObject3).<init>();
            localObject3 = ((d.b)localObject3).e(EnvEncryptUtils.g()).c();
            paramm.a((d)localObject3);
          }
          else
          {
            localObject1 = new java/lang/StringBuilder;
            ((StringBuilder)localObject1).<init>();
            ((StringBuilder)localObject1).append("uploadData:");
            ((StringBuilder)localObject1).append((String)localObject3);
            localObject3 = a.v(j, ((StringBuilder)localObject1).toString(), ErrorInfo.getMsgIdGivenErrorCode(ErrorInfo.ErrorCode.ERROR_SERVER));
            paramm.b((b)localObject3);
          }
        }
        else
        {
          localObject3 = new java/lang/IllegalArgumentException;
          ((IllegalArgumentException)localObject3).<init>("uploadData :verifyCallback not be null");
          throw ((Throwable)localObject3);
        }
      }
      catch (AuthenticationFailureException localAuthenticationFailureException)
      {
        com.xiaomi.accountsdk.utils.b.h("SensorHelper", "", localAuthenticationFailureException);
        localObject5 = ErrorInfo.ErrorCode.ERROR_AUTHENTICATIONFAILURE_EXCEPTION;
        j = ((ErrorInfo.ErrorCode)localObject5).getCode();
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("uploadData:");
        ((StringBuilder)localObject1).append(localAuthenticationFailureException.toString());
        b localb1 = a.v(j, ((StringBuilder)localObject1).toString(), ErrorInfo.getMsgIdGivenErrorCode((ErrorInfo.ErrorCode)localObject5));
        paramm.b(localb1);
      }
      catch (AccessDeniedException localAccessDeniedException)
      {
        com.xiaomi.accountsdk.utils.b.h("SensorHelper", "", localAccessDeniedException);
        Object localObject1 = ErrorInfo.ErrorCode.ERROR_ACCESSDENIED_EXCEPTION;
        j = ((ErrorInfo.ErrorCode)localObject1).getCode();
        localObject5 = new StringBuilder();
        ((StringBuilder)localObject5).append("uploadData:");
        ((StringBuilder)localObject5).append(localAccessDeniedException.toString());
        b localb2 = a.v(j, ((StringBuilder)localObject5).toString(), ErrorInfo.getMsgIdGivenErrorCode((ErrorInfo.ErrorCode)localObject1));
        paramm.b(localb2);
      }
      catch (IOException localIOException)
      {
        a.c(a.this, paramm, localIOException);
      }
      catch (EnvEncryptUtils.EncryptException localEncryptException)
      {
        com.xiaomi.accountsdk.utils.b.h("SensorHelper", "", localEncryptException);
        Object localObject5 = ErrorInfo.ErrorCode.ERROR_ENCRYPT_EXCEPTION;
        j = ((ErrorInfo.ErrorCode)localObject5).getCode();
        localObject4 = new StringBuilder();
        ((StringBuilder)localObject4).append("uploadData:");
        ((StringBuilder)localObject4).append(localEncryptException.toString());
        localObject4 = a.v(j, ((StringBuilder)localObject4).toString(), ErrorInfo.getMsgIdGivenErrorCode((ErrorInfo.ErrorCode)localObject5));
        paramm.b((b)localObject4);
      }
      catch (JSONException localJSONException)
      {
        com.xiaomi.accountsdk.utils.b.h("SensorHelper", "fail to parse JSONObject", localJSONException);
        ErrorInfo.ErrorCode localErrorCode = ErrorInfo.ErrorCode.ERROR_JSON_EXCEPTION;
        int j = localErrorCode.getCode();
        Object localObject4 = new StringBuilder();
        ((StringBuilder)localObject4).append("uploadData:");
        ((StringBuilder)localObject4).append(localJSONException.toString());
        localObject4 = a.v(j, ((StringBuilder)localObject4).toString(), ErrorInfo.getMsgIdGivenErrorCode(localErrorCode));
        paramm.b((b)localObject4);
      }
    }
  }
  
  class c
    implements Runnable
  {
    c(long paramLong) {}
    
    public void run()
    {
      long l = System.currentTimeMillis();
      a.this.J();
      String str = a.this.r(l1, l);
      a.this.H(str);
    }
  }
  
  class d
    implements Runnable
  {
    d(SensorEvent paramSensorEvent) {}
    
    public void run()
    {
      a locala = a.this;
      a.d(locala, new a.f(locala, paramSensorEvent));
    }
  }
  
  public class e
    extends BroadcastReceiver
  {
    public e() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent.getExtras() != null) {
        a.e(a.this, paramIntent.getExtras().getInt("level"));
      }
      if ("android.intent.action.BATTERY_CHANGED".equals(paramIntent.getAction()))
      {
        if (paramIntent.getIntExtra("status", 1) == 2) {
          a.f(a.this, 1);
        }
      }
      else {
        a.f(a.this, 0);
      }
    }
  }
  
  private class f
  {
    private final float[] a;
    private final int b;
    
    f(SensorEvent paramSensorEvent)
    {
      this.a = paramSensorEvent.values;
      this.b = paramSensorEvent.sensor.getType();
    }
    
    private int d()
    {
      int i = this.b;
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 4)
          {
            if (i != 5)
            {
              if (i != 6) {
                return 0;
              }
              return 5;
            }
            return 4;
          }
          return 1;
        }
        return 3;
      }
      return 2;
    }
    
    String b()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      float[] arrayOfFloat = this.a;
      int i = arrayOfFloat.length;
      for (int j = 0; j < i; j++)
      {
        localStringBuilder.append(arrayOfFloat[j]);
        localStringBuilder.append(",");
      }
      localStringBuilder.append(d());
      localStringBuilder.append(",");
      localStringBuilder.append(System.currentTimeMillis());
      return localStringBuilder.toString();
    }
    
    JSONArray c()
      throws JSONException
    {
      JSONArray localJSONArray = new JSONArray();
      localJSONArray.put(System.currentTimeMillis() - a.a(a.this));
      Object localObject = new DecimalFormat("##0.0");
      int i = this.b;
      double d1 = 0.0D;
      int j = 0;
      if (i == 5) {}
      try
      {
        double d2 = Double.parseDouble(((NumberFormat)localObject).format(this.a[0]));
        d1 = d2;
      }
      catch (Exception localException1)
      {
        label70:
        break label70;
      }
      localJSONArray.put(d1);
      break label159;
      localObject = this.a;
      i = localObject.length;
      while (j < i)
      {
        float f = localObject[j];
        DecimalFormat localDecimalFormat = new DecimalFormat("##0.0000");
        d1 = f;
        try
        {
          d1 = Double.parseDouble(localDecimalFormat.format(d1));
        }
        catch (Exception localException2)
        {
          com.xiaomi.accountsdk.utils.b.g("SensorHelper", localException2.toString());
          d1 = 0.0D;
        }
        localJSONArray.put(d1);
        j++;
      }
      label159:
      return localJSONArray;
    }
    
    public String toString()
    {
      return b();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.verificationsdk.internal.a
 * JD-Core Version:    0.7.0.1
 */