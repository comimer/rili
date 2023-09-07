package at.bitfire.cert4android;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;
import androidx.core.app.l.c;
import androidx.core.app.v;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.Principal;
import java.security.Security;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.collections.t;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import org.conscrypt.Conscrypt;
import org.conscrypt.Conscrypt.Version;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/cert4android/CustomCertService;", "Landroid/app/Service;", "Ljava/security/cert/X509Certificate;", "cert", "", "inTrustStore", "trusted", "Lkotlin/u;", "onReceiveDecision", "saveKeyStore", "onCreate", "onDestroy", "Landroid/content/Intent;", "intent", "", "flags", "id", "onStartCommand", "Lat/bitfire/cert4android/ICustomCertService$Stub;", "onBind", "Ljava/io/File;", "keyStoreFile", "Ljava/io/File;", "Ljava/security/cert/CertificateFactory;", "kotlin.jvm.PlatformType", "certFactory", "Ljava/security/cert/CertificateFactory;", "Ljava/security/KeyStore;", "trustedKeyStore", "Ljava/security/KeyStore;", "Ljavax/net/ssl/X509TrustManager;", "customTrustManager", "Ljavax/net/ssl/X509TrustManager;", "Ljava/util/HashSet;", "untrustedCerts", "Ljava/util/HashSet;", "", "", "Lat/bitfire/cert4android/IOnCertificateDecision;", "pendingDecisions", "Ljava/util/Map;", "at/bitfire/cert4android/CustomCertService$binder$1", "binder", "Lat/bitfire/cert4android/CustomCertService$binder$1;", "<init>", "()V", "Companion", "cert4android_release"}, k=1, mv={1, 7, 1})
public final class CustomCertService
  extends Service
{
  public static final String CMD_CERTIFICATION_DECISION = "certificateDecision";
  public static final String CMD_RESET_CERTIFICATES = "resetCertificates";
  public static final Companion Companion = new Companion(null);
  public static final String EXTRA_CERTIFICATE = "certificate";
  public static final String EXTRA_TRUSTED = "trusted";
  public static final String KEYSTORE_DIR = "KeyStore";
  public static final String KEYSTORE_NAME = "KeyStore.bks";
  private final binder.1 binder;
  private final CertificateFactory certFactory = CertificateFactory.getInstance("X.509");
  private X509TrustManager customTrustManager;
  private File keyStoreFile;
  private final Map<X509Certificate, List<IOnCertificateDecision>> pendingDecisions;
  private final KeyStore trustedKeyStore;
  private HashSet<X509Certificate> untrustedCerts;
  
  static
  {
    Security.insertProviderAt(Conscrypt.newProvider(), 1);
    Object localObject1 = Conscrypt.version();
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("Using Conscrypt/");
    ((StringBuilder)localObject2).append(((Conscrypt.Version)localObject1).major());
    ((StringBuilder)localObject2).append('.');
    ((StringBuilder)localObject2).append(((Conscrypt.Version)localObject1).minor());
    ((StringBuilder)localObject2).append('.');
    ((StringBuilder)localObject2).append(((Conscrypt.Version)localObject1).patch());
    ((StringBuilder)localObject2).append(" for TLS");
    Log.i("cert4android", ((StringBuilder)localObject2).toString());
    localObject2 = SSLContext.getDefault().createSSLEngine();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Enabled protocols: ");
    localObject1 = ((SSLEngine)localObject2).getEnabledProtocols();
    r.e(localObject1, "engine.enabledProtocols");
    localStringBuilder.append(j.J((Object[])localObject1, ", ", null, null, 0, null, null, 62, null));
    Log.i("cert4android", localStringBuilder.toString());
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("Enabled ciphers: ");
    localObject2 = ((SSLEngine)localObject2).getEnabledCipherSuites();
    r.e(localObject2, "engine.enabledCipherSuites");
    ((StringBuilder)localObject1).append(j.J((Object[])localObject2, ", ", null, null, 0, null, null, 62, null));
    Log.i("cert4android", ((StringBuilder)localObject1).toString());
  }
  
  public CustomCertService()
  {
    KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
    r.c(localKeyStore);
    this.trustedKeyStore = localKeyStore;
    this.untrustedCerts = new HashSet();
    this.pendingDecisions = new LinkedHashMap();
    this.binder = new ICustomCertService.Stub()
    {
      public void abortCheck(IOnCertificateDecision paramAnonymousIOnCertificateDecision)
      {
        r.f(paramAnonymousIOnCertificateDecision, "callback");
        Iterator localIterator = CustomCertService.access$getPendingDecisions$p(this.this$0).entrySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject = (Map.Entry)localIterator.next();
          X509Certificate localX509Certificate = (X509Certificate)((Map.Entry)localObject).getKey();
          localObject = (List)((Map.Entry)localObject).getValue();
          t.E((List)localObject, new Lambda(paramAnonymousIOnCertificateDecision)
          {
            public final Boolean invoke(IOnCertificateDecision paramAnonymous2IOnCertificateDecision)
            {
              r.f(paramAnonymous2IOnCertificateDecision, "it");
              return Boolean.valueOf(r.a(paramAnonymous2IOnCertificateDecision, this.$callback));
            }
          });
          if (((List)localObject).isEmpty()) {
            CustomCertService.access$getPendingDecisions$p(this.this$0).remove(localX509Certificate);
          }
        }
      }
      
      public void checkTrusted(byte[] paramAnonymousArrayOfByte, boolean paramAnonymousBoolean1, boolean paramAnonymousBoolean2, IOnCertificateDecision paramAnonymousIOnCertificateDecision)
      {
        r.f(paramAnonymousArrayOfByte, "raw");
        r.f(paramAnonymousIOnCertificateDecision, "callback");
        Object localObject1 = null;
        Object localObject3;
        try
        {
          Object localObject2 = CustomCertService.access$getCertFactory$p(this.this$0);
          Object localObject4 = new java/io/ByteArrayInputStream;
          ((ByteArrayInputStream)localObject4).<init>(paramAnonymousArrayOfByte);
          localObject4 = ((CertificateFactory)localObject2).generateCertificate((InputStream)localObject4);
          localObject2 = localObject1;
          if ((localObject4 instanceof X509Certificate)) {
            localObject2 = (X509Certificate)localObject4;
          }
        }
        catch (Exception localException)
        {
          Constants.INSTANCE.getLog().log(Level.SEVERE, "Couldn't handle certificate", localException);
          localObject3 = localObject1;
        }
        if (localObject3 == null)
        {
          paramAnonymousIOnCertificateDecision.reject();
          return;
        }
        localObject1 = (List)CustomCertService.access$getPendingDecisions$p(this.this$0).get(localObject3);
        if (localObject1 != null)
        {
          ((Collection)localObject1).add(paramAnonymousIOnCertificateDecision);
          return;
        }
        if (CustomCertService.access$getUntrustedCerts$p(this.this$0).contains(localObject3))
        {
          Constants.INSTANCE.getLog().fine("Certificate is cached as untrusted, rejecting");
          paramAnonymousIOnCertificateDecision.reject();
        }
        else if (CustomCertService.access$inTrustStore(this.this$0, localObject3))
        {
          Constants.INSTANCE.getLog().fine("Certificate is cached as trusted, accepting");
          paramAnonymousIOnCertificateDecision.accept();
        }
        else if (paramAnonymousBoolean1)
        {
          Constants.INSTANCE.getLog().fine("Certificate not known and running in interactive mode, asking user");
          CustomCertService.access$getPendingDecisions$p(this.this$0).put(localObject3, t.p(new IOnCertificateDecision[] { paramAnonymousIOnCertificateDecision }));
          paramAnonymousIOnCertificateDecision = new Intent(this.this$0, TrustCertificateActivity.class);
          paramAnonymousIOnCertificateDecision.putExtra("certificate", paramAnonymousArrayOfByte);
          localObject1 = new Intent(this.this$0, CustomCertService.class);
          ((Intent)localObject1).setAction("certificateDecision");
          ((Intent)localObject1).putExtra("certificate", paramAnonymousArrayOfByte);
          ((Intent)localObject1).putExtra("trusted", false);
          int i = Arrays.hashCode(paramAnonymousArrayOfByte);
          paramAnonymousArrayOfByte = new l.c(this.this$0, "cert4android").i(R.drawable.ic_lock_open_white).g(this.this$0.getString(R.string.certificate_notification_connection_security)).f(this.this$0.getString(R.string.certificate_notification_user_interaction)).j(localObject3.getSubjectDN().getName()).d("service").e(PendingIntent.getActivity(this.this$0, i, paramAnonymousIOnCertificateDecision, 134217728)).h(PendingIntent.getService(this.this$0, i, (Intent)localObject1, 134217728)).a();
          NotificationUtils.INSTANCE.createChannels(this.this$0).e(CertUtils.INSTANCE.getTag(localObject3), 88809, paramAnonymousArrayOfByte);
          if (paramAnonymousBoolean2)
          {
            paramAnonymousIOnCertificateDecision.addFlags(268435456);
            this.this$0.startActivity(paramAnonymousIOnCertificateDecision);
          }
        }
        else
        {
          Constants.INSTANCE.getLog().fine("Certificate not known and running in non-interactive mode, rejecting");
          paramAnonymousIOnCertificateDecision.reject();
        }
      }
    };
  }
  
  private final boolean inTrustStore(X509Certificate paramX509Certificate)
  {
    boolean bool = false;
    try
    {
      paramX509Certificate = this.trustedKeyStore.getCertificateAlias(paramX509Certificate);
      if (paramX509Certificate != null) {
        bool = true;
      }
    }
    catch (KeyStoreException paramX509Certificate)
    {
      Constants.INSTANCE.getLog().log(Level.WARNING, "Couldn't query custom key store", paramX509Certificate);
    }
    return bool;
  }
  
  private final void onReceiveDecision(X509Certificate paramX509Certificate, boolean paramBoolean)
  {
    NotificationUtils.INSTANCE.createChannels(this).b(CertUtils.INSTANCE.getTag(paramX509Certificate), 88809);
    if (paramBoolean)
    {
      this.untrustedCerts.remove(paramX509Certificate);
      try
      {
        this.trustedKeyStore.setCertificateEntry(paramX509Certificate.getSubjectDN().getName(), paramX509Certificate);
        saveKeyStore();
      }
      catch (KeyStoreException localKeyStoreException)
      {
        Constants.INSTANCE.getLog().log(Level.SEVERE, "Couldn't add certificate into key store", localKeyStoreException);
      }
    }
    else
    {
      this.untrustedCerts.add(paramX509Certificate);
      Toast.makeText(this, R.string.service_rejected_temporarily, 1).show();
    }
    Object localObject1 = (List)this.pendingDecisions.get(paramX509Certificate);
    if (localObject1 != null)
    {
      Object localObject2 = Constants.INSTANCE.getLog();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Notifying ");
      localStringBuilder.append(((List)localObject1).size());
      localStringBuilder.append(" certificate decision listener(s)");
      ((Logger)localObject2).fine(localStringBuilder.toString());
      localObject2 = ((Iterable)localObject1).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject1 = (IOnCertificateDecision)((Iterator)localObject2).next();
        if (paramBoolean) {
          ((IOnCertificateDecision)localObject1).accept();
        } else {
          ((IOnCertificateDecision)localObject1).reject();
        }
      }
      this.pendingDecisions.remove(paramX509Certificate);
    }
  }
  
  /* Error */
  private final void saveKeyStore()
  {
    // Byte code:
    //   0: getstatic 248	at/bitfire/cert4android/Constants:INSTANCE	Lat/bitfire/cert4android/Constants;
    //   3: invokevirtual 252	at/bitfire/cert4android/Constants:getLog	()Ljava/util/logging/Logger;
    //   6: astore_1
    //   7: new 103	java/lang/StringBuilder
    //   10: dup
    //   11: invokespecial 105	java/lang/StringBuilder:<init>	()V
    //   14: astore_2
    //   15: aload_2
    //   16: ldc_w 385
    //   19: invokevirtual 111	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: pop
    //   23: aload_0
    //   24: getfield 387	at/bitfire/cert4android/CustomCertService:keyStoreFile	Ljava/io/File;
    //   27: astore_3
    //   28: aload_3
    //   29: astore 4
    //   31: aload_3
    //   32: ifnonnull +12 -> 44
    //   35: ldc_w 388
    //   38: invokestatic 391	kotlin/jvm/internal/r:x	(Ljava/lang/String;)V
    //   41: aconst_null
    //   42: astore 4
    //   44: aload_2
    //   45: aload 4
    //   47: invokevirtual 394	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   50: pop
    //   51: aload_1
    //   52: aload_2
    //   53: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: invokevirtual 355	java/util/logging/Logger:fine	(Ljava/lang/String;)V
    //   59: new 396	java/io/FileOutputStream
    //   62: astore_2
    //   63: aload_0
    //   64: getfield 387	at/bitfire/cert4android/CustomCertService:keyStoreFile	Ljava/io/File;
    //   67: astore_3
    //   68: aload_3
    //   69: astore 4
    //   71: aload_3
    //   72: ifnonnull +12 -> 84
    //   75: ldc_w 388
    //   78: invokestatic 391	kotlin/jvm/internal/r:x	(Ljava/lang/String;)V
    //   81: aconst_null
    //   82: astore 4
    //   84: aload_2
    //   85: aload 4
    //   87: invokespecial 399	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   90: aload_0
    //   91: getfield 210	at/bitfire/cert4android/CustomCertService:trustedKeyStore	Ljava/security/KeyStore;
    //   94: aload_2
    //   95: aconst_null
    //   96: invokevirtual 403	java/security/KeyStore:store	(Ljava/io/OutputStream;[C)V
    //   99: getstatic 408	kotlin/u:a	Lkotlin/u;
    //   102: astore 4
    //   104: aload_2
    //   105: aconst_null
    //   106: invokestatic 413	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   109: goto +36 -> 145
    //   112: astore 4
    //   114: aload 4
    //   116: athrow
    //   117: astore_3
    //   118: aload_2
    //   119: aload 4
    //   121: invokestatic 413	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   124: aload_3
    //   125: athrow
    //   126: astore 4
    //   128: getstatic 248	at/bitfire/cert4android/Constants:INSTANCE	Lat/bitfire/cert4android/Constants;
    //   131: invokevirtual 252	at/bitfire/cert4android/Constants:getLog	()Ljava/util/logging/Logger;
    //   134: getstatic 316	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   137: ldc_w 415
    //   140: aload 4
    //   142: invokevirtual 266	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   145: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	146	0	this	CustomCertService
    //   6	46	1	localLogger	Logger
    //   14	105	2	localObject1	Object
    //   27	45	3	localFile	File
    //   117	8	3	localObject2	Object
    //   29	74	4	localObject3	Object
    //   112	8	4	localThrowable	java.lang.Throwable
    //   126	15	4	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   90	104	112	finally
    //   114	117	117	finally
    //   59	68	126	java/lang/Exception
    //   75	81	126	java/lang/Exception
    //   84	90	126	java/lang/Exception
    //   104	109	126	java/lang/Exception
    //   118	126	126	java/lang/Exception
  }
  
  public ICustomCertService.Stub onBind(Intent paramIntent)
  {
    return this.binder;
  }
  
  /* Error */
  public void onCreate()
  {
    // Byte code:
    //   0: getstatic 248	at/bitfire/cert4android/Constants:INSTANCE	Lat/bitfire/cert4android/Constants;
    //   3: invokevirtual 252	at/bitfire/cert4android/Constants:getLog	()Ljava/util/logging/Logger;
    //   6: ldc_w 421
    //   9: invokevirtual 424	java/util/logging/Logger:info	(Ljava/lang/String;)V
    //   12: aload_0
    //   13: new 426	java/io/File
    //   16: dup
    //   17: aload_0
    //   18: ldc 74
    //   20: iconst_0
    //   21: invokevirtual 432	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   24: ldc 77
    //   26: invokespecial 435	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   29: putfield 387	at/bitfire/cert4android/CustomCertService:keyStoreFile	Ljava/io/File;
    //   32: new 437	java/io/FileInputStream
    //   35: astore_1
    //   36: aload_0
    //   37: getfield 387	at/bitfire/cert4android/CustomCertService:keyStoreFile	Ljava/io/File;
    //   40: astore_2
    //   41: aload_2
    //   42: astore_3
    //   43: aload_2
    //   44: ifnonnull +11 -> 55
    //   47: ldc_w 388
    //   50: invokestatic 391	kotlin/jvm/internal/r:x	(Ljava/lang/String;)V
    //   53: aconst_null
    //   54: astore_3
    //   55: aload_1
    //   56: aload_3
    //   57: invokespecial 438	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   60: aload_0
    //   61: getfield 210	at/bitfire/cert4android/CustomCertService:trustedKeyStore	Ljava/security/KeyStore;
    //   64: aload_1
    //   65: aconst_null
    //   66: invokevirtual 442	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   69: getstatic 408	kotlin/u:a	Lkotlin/u;
    //   72: astore_3
    //   73: aload_1
    //   74: aconst_null
    //   75: invokestatic 413	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   78: goto +60 -> 138
    //   81: astore_3
    //   82: aload_3
    //   83: athrow
    //   84: astore_2
    //   85: aload_1
    //   86: aload_3
    //   87: invokestatic 413	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   90: aload_2
    //   91: athrow
    //   92: astore_3
    //   93: getstatic 248	at/bitfire/cert4android/Constants:INSTANCE	Lat/bitfire/cert4android/Constants;
    //   96: invokevirtual 252	at/bitfire/cert4android/Constants:getLog	()Ljava/util/logging/Logger;
    //   99: getstatic 445	java/util/logging/Level:INFO	Ljava/util/logging/Level;
    //   102: ldc_w 447
    //   105: aload_3
    //   106: invokevirtual 266	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   109: aload_0
    //   110: getfield 210	at/bitfire/cert4android/CustomCertService:trustedKeyStore	Ljava/security/KeyStore;
    //   113: aconst_null
    //   114: aconst_null
    //   115: invokevirtual 442	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   118: goto +20 -> 138
    //   121: astore_3
    //   122: getstatic 248	at/bitfire/cert4android/Constants:INSTANCE	Lat/bitfire/cert4android/Constants;
    //   125: invokevirtual 252	at/bitfire/cert4android/Constants:getLog	()Ljava/util/logging/Logger;
    //   128: getstatic 316	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   131: ldc_w 449
    //   134: aload_3
    //   135: invokevirtual 266	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   138: aload_0
    //   139: getstatic 281	at/bitfire/cert4android/CertUtils:INSTANCE	Lat/bitfire/cert4android/CertUtils;
    //   142: aload_0
    //   143: getfield 210	at/bitfire/cert4android/CustomCertService:trustedKeyStore	Ljava/security/KeyStore;
    //   146: invokevirtual 453	at/bitfire/cert4android/CertUtils:getTrustManager	(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    //   149: putfield 455	at/bitfire/cert4android/CustomCertService:customTrustManager	Ljavax/net/ssl/X509TrustManager;
    //   152: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	153	0	this	CustomCertService
    //   35	51	1	localFileInputStream	java.io.FileInputStream
    //   40	4	2	localFile	File
    //   84	7	2	localObject1	Object
    //   42	31	3	localObject2	Object
    //   81	6	3	localThrowable	java.lang.Throwable
    //   92	14	3	localException1	Exception
    //   121	14	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   60	73	81	finally
    //   82	84	84	finally
    //   32	41	92	java/lang/Exception
    //   47	53	92	java/lang/Exception
    //   55	60	92	java/lang/Exception
    //   73	78	92	java/lang/Exception
    //   85	92	92	java/lang/Exception
    //   109	118	121	java/lang/Exception
  }
  
  public void onDestroy()
  {
    Constants.INSTANCE.getLog().info("CustomCertService destroyed");
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Object localObject1 = Constants.INSTANCE.getLog();
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("Received command: ");
    ((StringBuilder)localObject2).append(paramIntent);
    ((Logger)localObject1).fine(((StringBuilder)localObject2).toString());
    if (paramIntent != null) {
      localObject1 = paramIntent.getAction();
    } else {
      localObject1 = null;
    }
    if (localObject1 != null)
    {
      paramInt1 = ((String)localObject1).hashCode();
      if (paramInt1 != -1728715605)
      {
        if ((paramInt1 == -1619112301) && (((String)localObject1).equals("certificateDecision")))
        {
          byte[] arrayOfByte = paramIntent.getByteArrayExtra("certificate");
          try
          {
            localObject1 = this.certFactory;
            localObject2 = new java/io/ByteArrayInputStream;
            ((ByteArrayInputStream)localObject2).<init>(arrayOfByte);
            localObject1 = ((CertificateFactory)localObject1).generateCertificate((InputStream)localObject2);
            r.d(localObject1, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            onReceiveDecision((X509Certificate)localObject1, paramIntent.getBooleanExtra("trusted", false));
          }
          catch (Exception paramIntent)
          {
            Constants.INSTANCE.getLog().log(Level.SEVERE, "Couldn't process certificate", paramIntent);
          }
        }
      }
      else if (((String)localObject1).equals("resetCertificates"))
      {
        this.untrustedCerts.clear();
        try
        {
          paramIntent = this.trustedKeyStore.aliases();
          r.e(paramIntent, "trustedKeyStore.aliases()");
          localObject1 = t.x(paramIntent);
          while (((Iterator)localObject1).hasNext())
          {
            paramIntent = (String)((Iterator)localObject1).next();
            this.trustedKeyStore.deleteEntry(paramIntent);
          }
          saveKeyStore();
        }
        catch (KeyStoreException paramIntent)
        {
          Constants.INSTANCE.getLog().log(Level.SEVERE, "Couldn't reset custom certificates", paramIntent);
        }
      }
    }
    stopSelf();
    return 2;
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/cert4android/CustomCertService$Companion;", "", "()V", "CMD_CERTIFICATION_DECISION", "", "CMD_RESET_CERTIFICATES", "EXTRA_CERTIFICATE", "EXTRA_TRUSTED", "KEYSTORE_DIR", "KEYSTORE_NAME", "cert4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.cert4android.CustomCertService
 * JD-Core Version:    0.7.0.1
 */