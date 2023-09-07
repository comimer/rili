package com.android.calendar.syncer.net;

import android.content.Context;
import android.os.Build.VERSION;
import android.security.KeyChain;
import android.util.Log;
import at.bitfire.cert4android.CustomCertManager;
import at.bitfire.dav4jvm.BasicDigestAuthHandler;
import at.bitfire.dav4jvm.UrlUtils;
import com.android.calendar.syncer.e;
import com.android.calendar.syncer.model.Credentials;
import java.net.Socket;
import java.security.KeyStore;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509ExtendedKeyManager;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref.ObjectRef;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.p0;
import okhttp3.Protocol;
import okhttp3.a0;
import okhttp3.k;
import okhttp3.u.a;
import okhttp3.x;
import okhttp3.x.a;
import okhttp3.y;
import okhttp3.y.a;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/net/CalDavHttpClient;", "Ljava/lang/AutoCloseable;", "Lkotlin/u;", "close", "Lokhttp3/x;", "a", "Lokhttp3/x;", "d", "()Lokhttp3/x;", "okHttpClient", "Lat/bitfire/cert4android/CustomCertManager;", "b", "Lat/bitfire/cert4android/CustomCertManager;", "certManager", "<init>", "(Lokhttp3/x;Lat/bitfire/cert4android/CustomCertManager;)V", "c", "TimeoutInterceptor", "syncer_release"}, k=1, mv={1, 7, 1})
public final class CalDavHttpClient
  implements AutoCloseable
{
  public static final b c = new b(null);
  private static final x d;
  private final x a;
  private final CustomCertManager b;
  
  static
  {
    x.a locala = new x.a();
    TimeUnit localTimeUnit = TimeUnit.SECONDS;
    d = locala.e(5L, localTimeUnit).Q(20L, localTimeUnit).O(60L, localTimeUnit).f(t.m(new k[] { k.j, k.i })).h(false).b(c.d).a(TimeoutInterceptor.d).d();
  }
  
  private CalDavHttpClient(x paramx, CustomCertManager paramCustomCertManager)
  {
    this.a = paramx;
    this.b = paramCustomCertManager;
  }
  
  public void close()
  {
    this.a.g();
    CustomCertManager localCustomCertManager = this.b;
    if (localCustomCertManager != null) {
      localCustomCertManager.close();
    }
  }
  
  public final x d()
  {
    return this.a;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/net/CalDavHttpClient$TimeoutInterceptor;", "Lokhttp3/u;", "Lokhttp3/u$a;", "chain", "Lokhttp3/a0;", "intercept", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  private static final class TimeoutInterceptor
    implements okhttp3.u
  {
    public static final TimeoutInterceptor d = new TimeoutInterceptor();
    
    public a0 intercept(u.a parama)
    {
      r.f(parama, "chain");
      final Ref.ObjectRef localObjectRef = new Ref.ObjectRef();
      Log.i("CalSync:D:CalDavHttpClient", "TimeoutInterceptor start");
      h.f(null, new SuspendLambda(parama, localObjectRef)
      {
        int label;
        
        public final c<kotlin.u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
        {
          paramAnonymousc = new 1(this.$chain, localObjectRef, paramAnonymousc);
          paramAnonymousc.L$0 = paramAnonymousObject;
          return paramAnonymousc;
        }
        
        public final Object invoke(k0 paramAnonymousk0, c<? super Integer> paramAnonymousc)
        {
          return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(kotlin.u.a);
        }
        
        public final Object invokeSuspend(Object paramAnonymousObject)
        {
          Object localObject = kotlin.coroutines.intrinsics.a.d();
          int i = this.label;
          if (i != 0)
          {
            if (i == 1) {
              try
              {
                kotlin.j.b(paramAnonymousObject);
              }
              catch (Exception paramAnonymousObject)
              {
                break label118;
              }
            } else {
              throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
          }
          else
          {
            kotlin.j.b(paramAnonymousObject);
            p0 localp0 = h.b((k0)this.L$0, null, null, new SuspendLambda(this.$chain, null)
            {
              int label;
              
              public final c<kotlin.u> create(Object paramAnonymous2Object, c<?> paramAnonymous2c)
              {
                return new 1(this.$chain, paramAnonymous2c);
              }
              
              public final Object invoke(k0 paramAnonymous2k0, c<? super a0> paramAnonymous2c)
              {
                return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(kotlin.u.a);
              }
              
              public final Object invokeSuspend(Object paramAnonymous2Object)
              {
                kotlin.coroutines.intrinsics.a.d();
                if (this.label == 0)
                {
                  kotlin.j.b(paramAnonymous2Object);
                  Log.i("CalSync:D:CalDavHttpClient", "TimeoutInterceptor async request");
                  paramAnonymous2Object = this.$chain;
                  return paramAnonymous2Object.a(paramAnonymous2Object.b());
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
              }
            }, 3, null);
            paramAnonymousObject = new com/android/calendar/syncer/net/CalDavHttpClient$TimeoutInterceptor$intercept$1$1;
            paramAnonymousObject.<init>(localObjectRef, localp0, null);
            this.label = 1;
            paramAnonymousObject = TimeoutKt.c(5000L, paramAnonymousObject, this);
            if (paramAnonymousObject == localObject) {
              return localObject;
            }
          }
          return kotlin.coroutines.jvm.internal.a.b(Log.i("CalSync:D:CalDavHttpClient", "TimeoutInterceptor withTimeout end."));
          label118:
          paramAnonymousObject.printStackTrace();
          throw paramAnonymousObject;
        }
      }, 1, null);
      parama = localObjectRef.element;
      if (parama != null)
      {
        r.c(parama);
        return (a0)parama;
      }
      throw new TimeoutException("timeout, over 5 secs.");
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/net/CalDavHttpClient$a;", "", "", "foreground", "d", "", "host", "Lcom/android/calendar/syncer/model/Credentials;", "credentials", "a", "Lcom/android/calendar/syncer/net/CalDavHttpClient;", "b", "Landroid/content/Context;", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "Lat/bitfire/cert4android/CustomCertManager;", "Lat/bitfire/cert4android/CustomCertManager;", "certManager", "c", "Ljava/lang/String;", "certificateAlias", "Lokhttp3/x$a;", "Lokhttp3/x$a;", "orig", "Ld2/a;", "accountSettings", "<init>", "(Landroid/content/Context;Ld2/a;)V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    private final Context a;
    private CustomCertManager b;
    private String c;
    private final x.a d;
    
    public a(Context paramContext, d2.a parama)
    {
      this.a = paramContext;
      paramContext = CalDavHttpClient.c.a().C();
      this.d = paramContext;
      paramContext.g(new e());
      if (parama != null) {
        a(null, parama.a());
      }
    }
    
    private static final X509TrustManager c()
    {
      Object localObject = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
      ((TrustManagerFactory)localObject).init(null);
      localObject = ((TrustManagerFactory)localObject).getTrustManagers();
      r.e(localObject, "factory.trustManagers");
      localObject = kotlin.collections.j.x((Object[])localObject);
      r.d(localObject, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
      return (X509TrustManager)localObject;
    }
    
    public final a a(String paramString, Credentials paramCredentials)
    {
      r.f(paramCredentials, "credentials");
      Object localObject = paramCredentials.getType();
      int i = a.a[localObject.ordinal()];
      if (i != 1)
      {
        if (i == 2) {
          this.c = paramCredentials.getCertificateAlias();
        }
      }
      else
      {
        paramString = UrlUtils.INSTANCE.hostToDomain(paramString);
        localObject = paramCredentials.getUserName();
        r.c(localObject);
        paramCredentials = paramCredentials.getPassword();
        r.c(paramCredentials);
        paramString = new BasicDigestAuthHandler(paramString, (String)localObject, paramCredentials);
        this.d.b(paramString).c(paramString);
      }
      return this;
    }
    
    public final CalDavHttpClient b()
    {
      Object localObject1 = this.b;
      if (localObject1 == null) {
        localObject1 = c();
      }
      Object localObject2 = this.b;
      Object localObject3;
      if (localObject2 != null)
      {
        localObject3 = ((CustomCertManager)localObject2).hostnameVerifier(bc.d.a);
        if (localObject3 != null) {}
      }
      else
      {
        localObject3 = bc.d.a;
      }
      String str = this.c;
      if (str != null) {
        try
        {
          localObject2 = this.a;
          if (localObject2 != null)
          {
            localObject5 = KeyChain.getCertificateChain((Context)localObject2, str);
            PrivateKey localPrivateKey;
            if (localObject5 != null)
            {
              r.e(localObject5, "KeyChain.getCertificateC…ext, alias) ?: return@let");
              localPrivateKey = KeyChain.getPrivateKey((Context)localObject2, str);
              if (localPrivateKey == null) {
                break label243;
              }
            }
            r.e(localPrivateKey, "KeyChain.getPrivateKey(c…ext, alias) ?: return@let");
            localObject2 = new java/lang/StringBuilder;
            ((StringBuilder)localObject2).<init>();
            ((StringBuilder)localObject2).append("Using provider certificate ");
            ((StringBuilder)localObject2).append(str);
            ((StringBuilder)localObject2).append(" for authentication (chain length: ");
            ((StringBuilder)localObject2).append(localObject5.length);
            ((StringBuilder)localObject2).append(')');
            Log.d("CalSync:D:CalDavHttpClient", ((StringBuilder)localObject2).toString());
            KeyStore.getInstance("AndroidKeyStore").load(null);
            localObject2 = new com/android/calendar/syncer/net/CalDavHttpClient$a$b;
            ((b)localObject2).<init>(str, (X509Certificate[])localObject5, localPrivateKey);
            try
            {
              this.d.N(t.e(Protocol.HTTP_1_1));
            }
            catch (Exception localException1)
            {
              break label229;
            }
          }
          else
          {
            localObject2 = new java/lang/IllegalArgumentException;
            ((IllegalArgumentException)localObject2).<init>("Required value was null.".toString());
            throw ((Throwable)localObject2);
          }
        }
        catch (Exception localException2)
        {
          localObject2 = null;
          label229:
          Log.w("CalSync:D:CalDavHttpClient", "Couldn't set up provider certificate authentication", localException2);
        }
      }
      label243:
      localObject2 = null;
      Object localObject5 = SSLContext.getInstance("TLS");
      if (localObject2 != null)
      {
        localObject4 = new KeyManager[1];
        localObject4[0] = localObject2;
        localObject2 = localObject4;
      }
      else
      {
        localObject2 = null;
      }
      ((SSLContext)localObject5).init((KeyManager[])localObject2, (TrustManager[])new X509TrustManager[] { localObject1 }, null);
      localObject2 = this.d;
      Object localObject4 = ((SSLContext)localObject5).getSocketFactory();
      r.e(localObject4, "sslContext.socketFactory");
      ((x.a)localObject2).P((SSLSocketFactory)localObject4, (X509TrustManager)localObject1);
      this.d.M((HostnameVerifier)localObject3);
      return new CalDavHttpClient(this.d.d(), this.b, null);
    }
    
    public final a d(boolean paramBoolean)
    {
      CustomCertManager localCustomCertManager = this.b;
      if (localCustomCertManager != null) {
        localCustomCertManager.setAppInForeground(paramBoolean);
      }
      return this;
    }
    
    @Metadata(bv={}, d1={""}, d2={"com/android/calendar/syncer/net/CalDavHttpClient$a$b", "Ljavax/net/ssl/X509ExtendedKeyManager;", "", "p0", "", "Ljava/security/Principal;", "p1", "getServerAliases", "(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;", "Ljava/net/Socket;", "p2", "", "a", "(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/Void;", "getClientAliases", "chooseClientAlias", "([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;", "forAlias", "Ljava/security/cert/X509Certificate;", "kotlin.jvm.PlatformType", "getCertificateChain", "(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;", "Ljava/security/PrivateKey;", "getPrivateKey", "syncer_release"}, k=1, mv={1, 7, 1})
    public static final class b
      extends X509ExtendedKeyManager
    {
      b(String paramString, X509Certificate[] paramArrayOfX509Certificate, PrivateKey paramPrivateKey) {}
      
      public Void a(String paramString, Principal[] paramArrayOfPrincipal, Socket paramSocket)
      {
        return null;
      }
      
      public String chooseClientAlias(String[] paramArrayOfString, Principal[] paramArrayOfPrincipal, Socket paramSocket)
      {
        return this.a;
      }
      
      public X509Certificate[] getCertificateChain(String paramString)
      {
        X509Certificate[] arrayOfX509Certificate = this.b;
        if (r.a(paramString, this.a)) {
          paramString = arrayOfX509Certificate;
        } else {
          paramString = null;
        }
        return paramString;
      }
      
      public String[] getClientAliases(String paramString, Principal[] paramArrayOfPrincipal)
      {
        return new String[] { this.a };
      }
      
      public PrivateKey getPrivateKey(String paramString)
      {
        PrivateKey localPrivateKey = this.c;
        if (r.a(paramString, this.a)) {
          paramString = localPrivateKey;
        } else {
          paramString = null;
        }
        return paramString;
      }
      
      public String[] getServerAliases(String paramString, Principal[] paramArrayOfPrincipal)
      {
        return null;
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/net/CalDavHttpClient$b;", "", "Lokhttp3/x;", "sharedClient", "Lokhttp3/x;", "a", "()Lokhttp3/x;", "", "DISK_CACHE_MAX_SIZE", "J", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class b
  {
    public final x a()
    {
      return CalDavHttpClient.c();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/net/CalDavHttpClient$c;", "Lokhttp3/u;", "Lokhttp3/u$a;", "chain", "Lokhttp3/a0;", "intercept", "", "e", "Ljava/lang/String;", "userAgent", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  private static final class c
    implements okhttp3.u
  {
    public static final c d = new c();
    private static final String e;
    
    static
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("com.android.calendar/ (okhttp/4.8.0) Android/");
      localStringBuilder.append(Build.VERSION.RELEASE);
      e = localStringBuilder.toString();
    }
    
    public a0 intercept(u.a parama)
    {
      r.f(parama, "chain");
      Locale localLocale = Locale.getDefault();
      y.a locala = parama.b().h().f("User-Agent", e);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localLocale.getLanguage());
      localStringBuilder.append('-');
      localStringBuilder.append(localLocale.getCountry());
      localStringBuilder.append(", ");
      localStringBuilder.append(localLocale.getLanguage());
      localStringBuilder.append(";q=0.7, *;q=0.5");
      return parama.a(locala.f("Accept-Language", localStringBuilder.toString()).b());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.net.CalDavHttpClient
 * JD-Core Version:    0.7.0.1
 */