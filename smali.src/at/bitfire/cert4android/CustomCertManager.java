package at.bitfire.cert4android;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import java.io.Closeable;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref.ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.u;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/cert4android/CustomCertManager;", "Ljavax/net/ssl/X509TrustManager;", "Ljava/io/Closeable;", "Lkotlin/u;", "close", "", "Ljava/security/cert/X509Certificate;", "chain", "", "authType", "checkClientTrusted", "([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V", "checkServerTrusted", "cert", "checkCustomTrusted$cert4android_release", "(Ljava/security/cert/X509Certificate;)V", "checkCustomTrusted", "getAcceptedIssuers", "()[Ljava/security/cert/X509Certificate;", "Ljavax/net/ssl/HostnameVerifier;", "defaultVerifier", "Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;", "hostnameVerifier", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "", "interactive", "Z", "getInteractive", "()Z", "appInForeground", "getAppInForeground", "setAppInForeground", "(Z)V", "Lat/bitfire/cert4android/ICustomCertService;", "service", "Lat/bitfire/cert4android/ICustomCertService;", "getService", "()Lat/bitfire/cert4android/ICustomCertService;", "setService", "(Lat/bitfire/cert4android/ICustomCertService;)V", "Landroid/content/ServiceConnection;", "serviceConn", "Landroid/content/ServiceConnection;", "Ljava/lang/Object;", "serviceLock", "Ljava/lang/Object;", "systemTrustManager", "Ljavax/net/ssl/X509TrustManager;", "trustSystemCerts", "<init>", "(Landroid/content/Context;ZZZ)V", "Companion", "CustomHostnameVerifier", "cert4android_release"}, k=1, mv={1, 7, 1})
public final class CustomCertManager
  implements X509TrustManager, Closeable
{
  public static final Companion Companion = new Companion(null);
  private static long SERVICE_TIMEOUT = 180000L;
  private volatile boolean appInForeground;
  private final Context context;
  private final boolean interactive;
  private ICustomCertService service;
  private ServiceConnection serviceConn;
  private Object serviceLock;
  private final X509TrustManager systemTrustManager;
  
  public CustomCertManager(Context paramContext)
  {
    this(paramContext, false, false, false, 14, null);
  }
  
  public CustomCertManager(Context paramContext, boolean paramBoolean)
  {
    this(paramContext, paramBoolean, false, false, 12, null);
  }
  
  public CustomCertManager(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramContext, paramBoolean1, paramBoolean2, false, 8, null);
  }
  
  public CustomCertManager(Context arg1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.context = ???;
    this.interactive = paramBoolean1;
    this.appInForeground = paramBoolean3;
    this.serviceLock = new Object();
    Object localObject1 = null;
    if (paramBoolean2) {
      localObject1 = CertUtils.INSTANCE.getTrustManager(null);
    }
    this.systemTrustManager = ((X509TrustManager)localObject1);
    localObject1 = new ServiceConnection()
    {
      public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
      {
        r.f(paramAnonymousComponentName, "className");
        r.f(paramAnonymousIBinder, "binder");
        Constants.INSTANCE.getLog().fine("Connected to service");
        paramAnonymousComponentName = CustomCertManager.access$getServiceLock$p(this.this$0);
        CustomCertManager localCustomCertManager = this.this$0;
        try
        {
          localCustomCertManager.setService(ICustomCertService.Stub.asInterface(paramAnonymousIBinder));
          CustomCertManager.access$getServiceLock$p(localCustomCertManager).notify();
          paramAnonymousIBinder = u.a;
          return;
        }
        finally
        {
          paramAnonymousIBinder = finally;
          throw paramAnonymousIBinder;
        }
      }
      
      public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
      {
        r.f(paramAnonymousComponentName, "className");
        paramAnonymousComponentName = CustomCertManager.access$getServiceLock$p(this.this$0);
        Object localObject1 = this.this$0;
        try
        {
          ((CustomCertManager)localObject1).setService(null);
          localObject1 = u.a;
          return;
        }
        finally
        {
          localObject2 = finally;
          throw localObject2;
        }
      }
    };
    Constants localConstants;
    if ((r.a(Looper.myLooper(), Looper.getMainLooper()) ^ true))
    {
      localConstants = Constants.INSTANCE;
      localConstants.getLog().fine("Binding to service");
      if (???.bindService(new Intent(???, CustomCertService.class), (ServiceConnection)localObject1, 1))
      {
        this.serviceConn = ((ServiceConnection)localObject1);
        localConstants.getLog().fine("Waiting for service to be bound");
      }
    }
    for (;;)
    {
      synchronized (this.serviceLock)
      {
        localObject1 = this.service;
        if (localObject1 == null) {}
        try
        {
          this.serviceLock.wait();
        }
        catch (InterruptedException localInterruptedException) {}
        localObject1 = u.a;
      }
      localConstants.getLog().severe("Couldn't bind CustomCertService to context");
      return;
      throw new IllegalStateException("must not be run on main thread".toString());
    }
  }
  
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    throw new CertificateException("cert4android doesn't validate client certificates");
  }
  
  /* Error */
  public final void checkCustomTrusted$cert4android_release(X509Certificate paramX509Certificate)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 219
    //   3: invokestatic 99	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   6: aload_0
    //   7: getfield 180	at/bitfire/cert4android/CustomCertManager:service	Lat/bitfire/cert4android/ICustomCertService;
    //   10: astore_2
    //   11: aload_2
    //   12: ifnull +170 -> 182
    //   15: new 4	java/lang/Object
    //   18: dup
    //   19: invokespecial 108	java/lang/Object:<init>	()V
    //   22: astore_3
    //   23: new 221	kotlin/jvm/internal/Ref$ObjectRef
    //   26: dup
    //   27: invokespecial 222	kotlin/jvm/internal/Ref$ObjectRef:<init>	()V
    //   30: astore 4
    //   32: new 16	at/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1
    //   35: dup
    //   36: aload_3
    //   37: aload 4
    //   39: invokespecial 225	at/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1:<init>	(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    //   42: astore 5
    //   44: aload_2
    //   45: aload_1
    //   46: invokevirtual 231	java/security/cert/Certificate:getEncoded	()[B
    //   49: aload_0
    //   50: getfield 112	at/bitfire/cert4android/CustomCertManager:interactive	Z
    //   53: aload_0
    //   54: getfield 114	at/bitfire/cert4android/CustomCertManager:appInForeground	Z
    //   57: aload 5
    //   59: invokeinterface 237 5 0
    //   64: aload_3
    //   65: monitorenter
    //   66: aload 4
    //   68: getfield 240	kotlin/jvm/internal/Ref$ObjectRef:element	Ljava/lang/Object;
    //   71: ifnonnull +21 -> 92
    //   74: getstatic 149	at/bitfire/cert4android/Constants:INSTANCE	Lat/bitfire/cert4android/Constants;
    //   77: invokevirtual 153	at/bitfire/cert4android/Constants:getLog	()Ljava/util/logging/Logger;
    //   80: ldc 242
    //   82: invokevirtual 161	java/util/logging/Logger:fine	(Ljava/lang/String;)V
    //   85: aload_3
    //   86: getstatic 90	at/bitfire/cert4android/CustomCertManager:SERVICE_TIMEOUT	J
    //   89: invokevirtual 244	java/lang/Object:wait	(J)V
    //   92: getstatic 187	kotlin/u:a	Lkotlin/u;
    //   95: astore_1
    //   96: aload_3
    //   97: monitorexit
    //   98: aload 4
    //   100: getfield 240	kotlin/jvm/internal/Ref$ObjectRef:element	Ljava/lang/Object;
    //   103: checkcast 246	java/lang/Boolean
    //   106: astore_1
    //   107: aload_1
    //   108: ifnull +37 -> 145
    //   111: aload_1
    //   112: getstatic 250	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   115: invokestatic 144	kotlin/jvm/internal/r:a	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   118: ifne +26 -> 144
    //   121: aload_1
    //   122: getstatic 253	java/lang/Boolean:FALSE	Ljava/lang/Boolean;
    //   125: invokestatic 144	kotlin/jvm/internal/r:a	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   128: ifne +6 -> 134
    //   131: goto +13 -> 144
    //   134: new 212	java/security/cert/CertificateException
    //   137: dup
    //   138: ldc 255
    //   140: invokespecial 215	java/security/cert/CertificateException:<init>	(Ljava/lang/String;)V
    //   143: athrow
    //   144: return
    //   145: aload_2
    //   146: aload 5
    //   148: invokeinterface 259 2 0
    //   153: new 212	java/security/cert/CertificateException
    //   156: dup
    //   157: ldc_w 261
    //   160: invokespecial 215	java/security/cert/CertificateException:<init>	(Ljava/lang/String;)V
    //   163: athrow
    //   164: astore_1
    //   165: aload_3
    //   166: monitorexit
    //   167: aload_1
    //   168: athrow
    //   169: astore_1
    //   170: new 212	java/security/cert/CertificateException
    //   173: dup
    //   174: ldc_w 263
    //   177: aload_1
    //   178: invokespecial 266	java/security/cert/CertificateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   181: athrow
    //   182: new 212	java/security/cert/CertificateException
    //   185: dup
    //   186: ldc_w 268
    //   189: invokespecial 215	java/security/cert/CertificateException:<init>	(Ljava/lang/String;)V
    //   192: athrow
    //   193: astore_1
    //   194: goto -102 -> 92
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	197	0	this	CustomCertManager
    //   0	197	1	paramX509Certificate	X509Certificate
    //   10	136	2	localICustomCertService	ICustomCertService
    //   22	144	3	localObject	Object
    //   30	69	4	localObjectRef	Ref.ObjectRef
    //   42	105	5	local1	checkCustomTrusted.callback.1
    // Exception table:
    //   from	to	target	type
    //   66	85	164	finally
    //   85	92	164	finally
    //   92	96	164	finally
    //   44	66	169	java/lang/Exception
    //   96	98	169	java/lang/Exception
    //   165	169	169	java/lang/Exception
    //   85	92	193	java/lang/InterruptedException
  }
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    r.f(paramArrayOfX509Certificate, "chain");
    r.f(paramString, "authType");
    X509TrustManager localX509TrustManager = this.systemTrustManager;
    int i;
    if (localX509TrustManager != null) {
      try
      {
        localX509TrustManager.checkServerTrusted(paramArrayOfX509Certificate, paramString);
        i = 1;
      }
      catch (CertificateException paramString)
      {
        Constants.INSTANCE.getLog().fine("Certificate not trusted by system");
      }
    } else {
      i = 0;
    }
    if (i == 0) {
      checkCustomTrusted$cert4android_release(paramArrayOfX509Certificate[0]);
    }
  }
  
  public void close()
  {
    ServiceConnection localServiceConnection = this.serviceConn;
    if (localServiceConnection != null) {
      try
      {
        this.context.unbindService(localServiceConnection);
        this.serviceConn = null;
      }
      catch (Exception localException)
      {
        Constants.INSTANCE.getLog().log(Level.WARNING, "Couldn't unbind CustomCertService", localException);
      }
    }
  }
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return new X509Certificate[0];
  }
  
  public final boolean getAppInForeground()
  {
    return this.appInForeground;
  }
  
  public final Context getContext()
  {
    return this.context;
  }
  
  public final boolean getInteractive()
  {
    return this.interactive;
  }
  
  public final ICustomCertService getService()
  {
    return this.service;
  }
  
  public final CustomHostnameVerifier hostnameVerifier(HostnameVerifier paramHostnameVerifier)
  {
    return new CustomHostnameVerifier(paramHostnameVerifier);
  }
  
  public final void setAppInForeground(boolean paramBoolean)
  {
    this.appInForeground = paramBoolean;
  }
  
  public final void setService(ICustomCertService paramICustomCertService)
  {
    this.service = paramICustomCertService;
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/cert4android/CustomCertManager$Companion;", "", "()V", "SERVICE_TIMEOUT", "", "getSERVICE_TIMEOUT", "()J", "setSERVICE_TIMEOUT", "(J)V", "resetCertificates", "", "context", "Landroid/content/Context;", "cert4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion
  {
    public final long getSERVICE_TIMEOUT()
    {
      return CustomCertManager.access$getSERVICE_TIMEOUT$cp();
    }
    
    public final boolean resetCertificates(Context paramContext)
    {
      r.f(paramContext, "context");
      Intent localIntent = new Intent(paramContext, CustomCertService.class);
      localIntent.setAction("resetCertificates");
      boolean bool;
      if (paramContext.startService(localIntent) != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public final void setSERVICE_TIMEOUT(long paramLong)
    {
      CustomCertManager.access$setSERVICE_TIMEOUT$cp(paramLong);
    }
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;", "Ljavax/net/ssl/HostnameVerifier;", "defaultVerifier", "(Lat/bitfire/cert4android/CustomCertManager;Ljavax/net/ssl/HostnameVerifier;)V", "verify", "", "host", "", "sslSession", "Ljavax/net/ssl/SSLSession;", "cert4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public final class CustomHostnameVerifier
    implements HostnameVerifier
  {
    private final HostnameVerifier defaultVerifier;
    
    public CustomHostnameVerifier()
    {
      Object localObject;
      this.defaultVerifier = localObject;
    }
    
    public boolean verify(String paramString, SSLSession paramSSLSession)
    {
      r.f(paramString, "host");
      r.f(paramSSLSession, "sslSession");
      Constants localConstants = Constants.INSTANCE;
      Object localObject = localConstants.getLog();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Verifying certificate for ");
      localStringBuilder.append(paramString);
      ((Logger)localObject).fine(localStringBuilder.toString());
      localObject = this.defaultVerifier;
      int i;
      if ((localObject != null) && (((HostnameVerifier)localObject).verify(paramString, paramSSLSession) == true)) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0) {
        return true;
      }
      try
      {
        paramString = paramSSLSession.getPeerCertificates();
        r.e(paramString, "cert");
        if (paramString.length == 0) {
          i = 1;
        } else {
          i = 0;
        }
        if ((i ^ 0x1) != 0)
        {
          paramString = paramString[0];
          if ((paramString instanceof X509Certificate))
          {
            paramSSLSession = CustomCertManager.this;
            r.d(paramString, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            paramSSLSession.checkCustomTrusted$cert4android_release((X509Certificate)paramString);
            localConstants.getLog().fine("Certificate is in custom trust store, accepting");
            return true;
          }
        }
      }
      catch (SSLPeerUnverifiedException paramString)
      {
        Constants.INSTANCE.getLog().log(Level.WARNING, "Couldn't get certificate for host name verification", paramString);
        return false;
      }
      catch (CertificateException paramString)
      {
        label187:
        break label187;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.cert4android.CustomCertManager
 * JD-Core Version:    0.7.0.1
 */