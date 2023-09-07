package e6;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.analytics.PolicyConfiguration;
import f6.f;
import f6.l;
import f6.m;
import java.io.File;
import java.util.concurrent.Executor;

public class c
{
  private static final int s = m.d * 30;
  private static volatile c t;
  private static Object u;
  private static boolean v = false;
  private Context a;
  private g6.a b;
  private PolicyConfiguration c = null;
  private g6.c d;
  private f e;
  private long f = 0L;
  private volatile boolean g = false;
  private boolean h = false;
  private boolean i;
  private long j;
  private Handler k;
  private HandlerThread l;
  private g6.a m = null;
  private Runnable n = new a();
  private Runnable o = new b();
  private d.c p = new c();
  private BroadcastReceiver q = new d();
  private Runnable r = new e();
  
  private c(Context paramContext)
  {
    this.a = f6.b.a(paramContext);
    u = "connectivity";
    paramContext = new HandlerThread("api-sdkmgr", 10);
    this.l = paramContext;
    paramContext.start();
    this.k = new Handler(this.l.getLooper());
    this.d = new g6.c(this.a);
    d.n(this.a).u(this.p);
    l.c.execute(this.o);
  }
  
  private void B()
  {
    try
    {
      long l1 = m.b;
      if (System.currentTimeMillis() - this.f > l1)
      {
        this.f = System.currentTimeMillis();
        l.c.execute(this.n);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private String D()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(J());
    localStringBuilder.append("/");
    localStringBuilder.append("analytics_asset.apk");
    return localStringBuilder.toString();
  }
  
  private String E()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(J());
    localStringBuilder.append("/asset_lib/");
    return localStringBuilder.toString();
  }
  
  public static c F(Context paramContext)
  {
    try
    {
      if (t == null)
      {
        c localc = new e6/c;
        localc.<init>(paramContext);
        t = localc;
      }
      paramContext = t;
      return paramContext;
    }
    finally {}
  }
  
  private boolean G()
  {
    boolean bool1 = false;
    try
    {
      boolean bool2 = this.a.getSharedPreferences("analytics_api", 0).getBoolean("pld", true);
      bool1 = bool2;
    }
    catch (Exception localException)
    {
      Log.w(f6.a.a("SdkManager"), "getPreviousLoadDex exception", localException);
    }
    return bool1;
  }
  
  private int H()
  {
    int i1;
    if (f6.a.a) {
      i1 = 10000;
    } else {
      i1 = s;
    }
    return i1;
  }
  
  private String I()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(J());
    localStringBuilder.append("/");
    localStringBuilder.append("analytics.apk");
    return localStringBuilder.toString();
  }
  
  private String J()
  {
    return this.a.getDir("analytics", 0).getAbsolutePath();
  }
  
  private String K()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(J());
    localStringBuilder.append("/lib/");
    return localStringBuilder.toString();
  }
  
  private boolean M()
  {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 28) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean N(String paramString)
  {
    try
    {
      Object localObject = this.a.getPackageManager().getPackageArchiveInfo(paramString, 1).versionName;
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("");
      localStringBuilder.append(paramString);
      localStringBuilder.append(" verName: ");
      localStringBuilder.append((String)localObject);
      f6.a.b("SdkManager", localStringBuilder.toString());
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        paramString = new e6/e;
        paramString.<init>((String)localObject);
        localObject = new e6/e;
        ((e)localObject).<init>("2.7.3");
        int i1 = paramString.b((e)localObject);
        if (i1 >= 0) {
          return true;
        }
      }
    }
    catch (Exception paramString)
    {
      Log.e(f6.a.a("SdkManager"), "isApkSuitableForAndroidPOrAbove exception: ", paramString);
    }
    return false;
  }
  
  private boolean O()
  {
    int i1 = H();
    boolean bool;
    if ((this.i) && (m.a(this.j, i1))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private g6.a P()
  {
    try
    {
      Object localObject = this.a.getAssets().list("");
      if (localObject != null) {
        for (int i1 = 0; i1 < localObject.length; i1++) {
          if ((!TextUtils.isEmpty(localObject[i1])) && (localObject[i1].startsWith("analytics_core")))
          {
            f6.d.a(this.a, localObject[i1], D());
            File localFile = new java/io/File;
            localFile.<init>(D());
            if (localFile.exists())
            {
              if ((M()) && (!N(D())))
              {
                f6.a.b("SdkManager", "Not suitable for Android P, so delete it");
                localFile.delete();
                return null;
              }
              f6.c.a(this.a, D(), E());
              localObject = new g6.b(this.a, D(), E());
              return localObject;
            }
          }
        }
      }
      return null;
    }
    catch (Exception localException)
    {
      Log.w(f6.a.a("SdkManager"), "loadAssetAnalytics exception", localException);
    }
  }
  
  private void Q()
  {
    if (!G())
    {
      this.m = null;
      return;
    }
    X();
  }
  
  private g6.a R()
  {
    try
    {
      Object localObject = new java/io/File;
      ((File)localObject).<init>(I());
      if (((File)localObject).exists())
      {
        if ((M()) && (!N(I())))
        {
          f6.a.b("SdkManager", "Not suitable for Android P, so delete it");
          ((File)localObject).delete();
          return null;
        }
        f6.c.a(this.a, ((File)localObject).getAbsolutePath(), K());
        localObject = new g6.b(this.a, ((File)localObject).getAbsolutePath(), K());
        return localObject;
      }
    }
    catch (Exception localException)
    {
      Log.w(f6.a.a("SdkManager"), "loadLocalAnalytics exception", localException);
    }
    return null;
  }
  
  private g6.a S()
  {
    if (this.d.n()) {
      this.d.p();
    }
    return this.d;
  }
  
  private void T(g6.a parama)
  {
    this.b = parama;
    if (parama != null)
    {
      if (this.e != null)
      {
        parama.setDebugOn(f6.a.a);
        parama = new StringBuilder();
        parama.append("Analytics module loaded, version is ");
        parama.append(this.b.getVersion());
        f6.a.b("SdkManager", parama.toString());
        this.e.onSdkCorePrepared(this.b);
      }
      parama = this.c;
      if (parama != null) {
        parama.apply(this.b);
      }
    }
  }
  
  private void V(long paramLong)
  {
    this.k.removeCallbacks(this.r);
    this.k.postDelayed(this.r, paramLong);
    f6.a.b("SdkManager", "post dex init task");
  }
  
  private void W()
  {
    File localFile = new File(K());
    if (!localFile.exists()) {
      localFile.mkdirs();
    } else {
      f.a(localFile);
    }
    localFile = new File(E());
    if (!localFile.exists()) {
      localFile.mkdirs();
    } else {
      f.a(localFile);
    }
  }
  
  private void X()
  {
    f6.a.b("SdkManager", "register screen receiver");
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    this.a.registerReceiver(this.q, localIntentFilter);
  }
  
  private void Y(boolean paramBoolean)
  {
    try
    {
      this.a.getSharedPreferences("analytics_api", 0).edit().putBoolean("pld", paramBoolean).apply();
    }
    catch (Exception localException)
    {
      Log.w(f6.a.a("SdkManager"), "savePreviousLoadDex exception", localException);
    }
  }
  
  public static void c0()
  {
    v = true;
  }
  
  public g6.a C()
  {
    return this.b;
  }
  
  public e L()
  {
    if (C() != null) {
      return C().getVersion();
    }
    return new e("0.0.0");
  }
  
  public void U()
  {
    if (this.g) {
      B();
    }
  }
  
  public void Z(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }
  
  public void a0(f paramf)
  {
    this.e = paramf;
  }
  
  public void b0(PolicyConfiguration paramPolicyConfiguration)
  {
    this.c = paramPolicyConfiguration;
    g6.a locala = this.b;
    if ((locala != null) && (paramPolicyConfiguration != null)) {
      paramPolicyConfiguration.apply(locala);
    }
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      try
      {
        if ((c.a(c.this) == null) || (d.n(c.c(c.this)).q()))
        {
          File localFile = new java/io/File;
          localFile.<init>(c.p(c.this));
          d.n(c.c(c.this)).m(localFile.getAbsolutePath());
        }
      }
      catch (Exception localException)
      {
        Log.w(f6.a.a("SdkManager"), "mUpdateChecker exception", localException);
      }
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: invokestatic 25	e6/c:u	()Ljava/lang/Object;
      //   3: astore_1
      //   4: aload_1
      //   5: monitorenter
      //   6: aload_0
      //   7: getfield 14	e6/c$b:a	Le6/c;
      //   10: invokestatic 28	e6/c:v	(Le6/c;)V
      //   13: aconst_null
      //   14: astore_2
      //   15: aload_0
      //   16: getfield 14	e6/c$b:a	Le6/c;
      //   19: invokestatic 32	e6/c:w	(Le6/c;)Z
      //   22: ifeq +9 -> 31
      //   25: invokestatic 36	e6/c:x	()Z
      //   28: ifeq +33 -> 61
      //   31: aload_0
      //   32: getfield 14	e6/c$b:a	Le6/c;
      //   35: invokestatic 40	e6/c:y	(Le6/c;)Lg6/a;
      //   38: pop
      //   39: aload_0
      //   40: getfield 14	e6/c$b:a	Le6/c;
      //   43: invokestatic 44	e6/c:z	(Le6/c;)Lg6/c;
      //   46: astore_3
      //   47: aload_3
      //   48: astore_2
      //   49: aload_3
      //   50: ifnull +11 -> 61
      //   53: aload_3
      //   54: invokeinterface 49 1 0
      //   59: aload_3
      //   60: astore_2
      //   61: aload_2
      //   62: ifnull +38 -> 100
      //   65: new 51	java/lang/StringBuilder
      //   68: astore_3
      //   69: aload_3
      //   70: invokespecial 52	java/lang/StringBuilder:<init>	()V
      //   73: aload_3
      //   74: ldc 54
      //   76: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   79: pop
      //   80: aload_3
      //   81: aload_2
      //   82: invokeinterface 62 1 0
      //   87: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   90: pop
      //   91: ldc 67
      //   93: aload_3
      //   94: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   97: invokestatic 77	f6/a:b	(Ljava/lang/String;Ljava/lang/String;)V
      //   100: invokestatic 36	e6/c:x	()Z
      //   103: ifeq +44 -> 147
      //   106: ldc 67
      //   108: ldc 79
      //   110: invokestatic 77	f6/a:b	(Ljava/lang/String;Ljava/lang/String;)V
      //   113: aload_0
      //   114: getfield 14	e6/c$b:a	Le6/c;
      //   117: aload_2
      //   118: invokestatic 82	e6/c:b	(Le6/c;Lg6/a;)Lg6/a;
      //   121: pop
      //   122: aload_0
      //   123: getfield 14	e6/c$b:a	Le6/c;
      //   126: astore_2
      //   127: aload_2
      //   128: aload_2
      //   129: invokestatic 84	e6/c:a	(Le6/c;)Lg6/a;
      //   132: invokestatic 88	e6/c:A	(Le6/c;Lg6/a;)V
      //   135: aload_1
      //   136: monitorexit
      //   137: aload_0
      //   138: getfield 14	e6/c$b:a	Le6/c;
      //   141: iconst_1
      //   142: invokestatic 92	e6/c:k	(Le6/c;Z)Z
      //   145: pop
      //   146: return
      //   147: aload_0
      //   148: getfield 14	e6/c$b:a	Le6/c;
      //   151: invokestatic 95	e6/c:d	(Le6/c;)Lg6/a;
      //   154: astore_3
      //   155: new 51	java/lang/StringBuilder
      //   158: astore 4
      //   160: aload 4
      //   162: invokespecial 52	java/lang/StringBuilder:<init>	()V
      //   165: aload 4
      //   167: ldc 97
      //   169: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   172: pop
      //   173: iconst_0
      //   174: istore 5
      //   176: aload_3
      //   177: ifnonnull +9 -> 186
      //   180: iconst_1
      //   181: istore 6
      //   183: goto +6 -> 189
      //   186: iconst_0
      //   187: istore 6
      //   189: aload 4
      //   191: iload 6
      //   193: invokevirtual 100	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
      //   196: pop
      //   197: ldc 67
      //   199: aload 4
      //   201: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   204: invokestatic 77	f6/a:b	(Ljava/lang/String;Ljava/lang/String;)V
      //   207: aload_0
      //   208: getfield 14	e6/c$b:a	Le6/c;
      //   211: invokestatic 103	e6/c:e	(Le6/c;)Lg6/a;
      //   214: astore 4
      //   216: new 51	java/lang/StringBuilder
      //   219: astore 7
      //   221: aload 7
      //   223: invokespecial 52	java/lang/StringBuilder:<init>	()V
      //   226: aload 7
      //   228: ldc 105
      //   230: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   233: pop
      //   234: iload 5
      //   236: istore 6
      //   238: aload 4
      //   240: ifnonnull +6 -> 246
      //   243: iconst_1
      //   244: istore 6
      //   246: aload 7
      //   248: iload 6
      //   250: invokevirtual 100	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
      //   253: pop
      //   254: ldc 67
      //   256: aload 7
      //   258: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   261: invokestatic 77	f6/a:b	(Ljava/lang/String;Ljava/lang/String;)V
      //   264: aload_3
      //   265: ifnull +40 -> 305
      //   268: aload 4
      //   270: ifnull +25 -> 295
      //   273: aload 4
      //   275: invokeinterface 62 1 0
      //   280: aload_3
      //   281: invokeinterface 62 1 0
      //   286: invokevirtual 110	e6/e:b	(Le6/e;)I
      //   289: ifle +6 -> 295
      //   292: goto +13 -> 305
      //   295: ldc 67
      //   297: ldc 112
      //   299: invokestatic 77	f6/a:b	(Ljava/lang/String;Ljava/lang/String;)V
      //   302: goto +13 -> 315
      //   305: ldc 67
      //   307: ldc 114
      //   309: invokestatic 77	f6/a:b	(Ljava/lang/String;Ljava/lang/String;)V
      //   312: aload 4
      //   314: astore_3
      //   315: aload_2
      //   316: ifnull +54 -> 370
      //   319: aload_3
      //   320: ifnull +24 -> 344
      //   323: aload_3
      //   324: invokeinterface 62 1 0
      //   329: aload_2
      //   330: invokeinterface 62 1 0
      //   335: invokevirtual 110	e6/e:b	(Le6/e;)I
      //   338: ifle +6 -> 344
      //   341: goto +29 -> 370
      //   344: ldc 67
      //   346: ldc 116
      //   348: invokestatic 77	f6/a:b	(Ljava/lang/String;Ljava/lang/String;)V
      //   351: aload_0
      //   352: getfield 14	e6/c$b:a	Le6/c;
      //   355: aload_3
      //   356: invokestatic 119	e6/c:h	(Le6/c;Lg6/a;)Lg6/a;
      //   359: pop
      //   360: aload_0
      //   361: getfield 14	e6/c$b:a	Le6/c;
      //   364: invokestatic 122	e6/c:i	(Le6/c;)V
      //   367: goto +30 -> 397
      //   370: ldc 67
      //   372: ldc 124
      //   374: invokestatic 77	f6/a:b	(Ljava/lang/String;Ljava/lang/String;)V
      //   377: aload_3
      //   378: ifnull +9 -> 387
      //   381: aload_3
      //   382: invokeinterface 49 1 0
      //   387: aload_0
      //   388: getfield 14	e6/c$b:a	Le6/c;
      //   391: iconst_1
      //   392: invokestatic 128	e6/c:f	(Le6/c;Z)V
      //   395: aload_3
      //   396: astore_2
      //   397: aload_2
      //   398: ifnull +27 -> 425
      //   401: aload_2
      //   402: invokeinterface 62 1 0
      //   407: getstatic 133	e6/a:b	Le6/e;
      //   410: invokevirtual 110	e6/e:b	(Le6/e;)I
      //   413: iflt +12 -> 425
      //   416: aload_0
      //   417: getfield 14	e6/c$b:a	Le6/c;
      //   420: aload_2
      //   421: invokestatic 82	e6/c:b	(Le6/c;Lg6/a;)Lg6/a;
      //   424: pop
      //   425: aload_0
      //   426: getfield 14	e6/c$b:a	Le6/c;
      //   429: invokestatic 136	e6/c:j	(Le6/c;)V
      //   432: aload_0
      //   433: getfield 14	e6/c$b:a	Le6/c;
      //   436: astore_2
      //   437: aload_2
      //   438: aload_2
      //   439: invokestatic 84	e6/c:a	(Le6/c;)Lg6/a;
      //   442: invokestatic 88	e6/c:A	(Le6/c;Lg6/a;)V
      //   445: aload_1
      //   446: monitorexit
      //   447: goto +25 -> 472
      //   450: astore_2
      //   451: aload_1
      //   452: monitorexit
      //   453: aload_2
      //   454: athrow
      //   455: astore_2
      //   456: goto +26 -> 482
      //   459: astore_2
      //   460: ldc 67
      //   462: invokestatic 139	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
      //   465: ldc 141
      //   467: aload_2
      //   468: invokestatic 146	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   471: pop
      //   472: aload_0
      //   473: getfield 14	e6/c$b:a	Le6/c;
      //   476: iconst_1
      //   477: invokestatic 92	e6/c:k	(Le6/c;Z)Z
      //   480: pop
      //   481: return
      //   482: aload_0
      //   483: getfield 14	e6/c$b:a	Le6/c;
      //   486: iconst_1
      //   487: invokestatic 92	e6/c:k	(Le6/c;Z)Z
      //   490: pop
      //   491: aload_2
      //   492: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	493	0	this	b
      //   14	425	2	localObject2	Object
      //   450	4	2	localObject3	Object
      //   455	1	2	localObject4	Object
      //   459	33	2	localException	Exception
      //   46	350	3	localObject5	Object
      //   158	155	4	localObject6	Object
      //   174	61	5	bool1	boolean
      //   181	68	6	bool2	boolean
      //   219	38	7	localStringBuilder	StringBuilder
      // Exception table:
      //   from	to	target	type
      //   6	13	450	finally
      //   15	25	450	finally
      //   25	31	450	finally
      //   31	47	450	finally
      //   53	59	450	finally
      //   65	100	450	finally
      //   100	137	450	finally
      //   147	173	450	finally
      //   189	234	450	finally
      //   246	264	450	finally
      //   273	292	450	finally
      //   295	302	450	finally
      //   305	312	450	finally
      //   323	341	450	finally
      //   344	367	450	finally
      //   370	377	450	finally
      //   381	387	450	finally
      //   387	395	450	finally
      //   401	425	450	finally
      //   425	447	450	finally
      //   451	453	450	finally
      //   0	6	455	finally
      //   453	455	455	finally
      //   460	472	455	finally
      //   0	6	459	java/lang/Exception
      //   453	455	459	java/lang/Exception
    }
  }
  
  class c
    implements d.c
  {
    c() {}
    
    public void a(String paramString, boolean paramBoolean)
    {
      if (c.a(c.this) == null)
      {
        f6.a.b("SdkManager", "download finished, use new analytics.");
        paramString = c.e(c.this);
        if (paramString != null) {
          paramString.init();
        }
        c.b(c.this, paramString);
        paramString = c.this;
        c.A(paramString, c.a(paramString));
      }
      else if ((paramBoolean) && (!f6.b.d(c.c(c.this))))
      {
        Process.killProcess(Process.myPid());
      }
    }
  }
  
  class d
    extends BroadcastReceiver
  {
    d() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent == null) {
        return;
      }
      try
      {
        paramContext = paramIntent.getAction();
        if ("android.intent.action.SCREEN_OFF".equals(paramContext))
        {
          c.l(c.this, System.currentTimeMillis());
          c.n(c.this, true);
          if (c.g(c.this) != null)
          {
            paramContext = c.this;
            c.q(paramContext, c.o(paramContext));
          }
          else
          {
            c.c(c.this).unregisterReceiver(c.r(c.this));
            f6.a.b("SdkManager", "pending dex is null, unregister");
          }
        }
        else if ("android.intent.action.SCREEN_ON".equals(paramContext))
        {
          c.n(c.this, false);
        }
        paramContext = new java/lang/StringBuilder;
        paramContext.<init>();
        paramContext.append("screen off : ");
        paramContext.append(c.m(c.this));
        f6.a.b("SdkManager", paramContext.toString());
      }
      catch (Exception paramContext)
      {
        f6.a.c("SdkManager", "mScreenReceiver onReceive e", paramContext);
      }
    }
  }
  
  class e
    implements Runnable
  {
    e() {}
    
    public void run()
    {
      try
      {
        synchronized ()
        {
          if ((c.t(c.this)) && (c.g(c.this) != null))
          {
            c.g(c.this).init();
            c.h(c.this, null);
            c.c(c.this).unregisterReceiver(c.r(c.this));
            f6.a.b("SdkManager", "pending dex init executed, unregister and clear pending");
          }
          else
          {
            f6.a.b("SdkManager", "skip init dex");
          }
        }
        return;
      }
      catch (Exception localException)
      {
        f6.a.d("SdkManager", "dexInitTask", localException);
      }
    }
  }
  
  public static abstract interface f
  {
    public abstract void onSdkCorePrepared(g6.a parama);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e6.c
 * JD-Core Version:    0.7.0.1
 */