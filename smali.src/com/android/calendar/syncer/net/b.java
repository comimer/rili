package com.android.calendar.syncer.net;

import android.content.Context;
import at.bitfire.cert4android.CustomCertManager;
import bc.d;
import com.android.calendar.syncer.g;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.a0;
import okhttp3.u;
import okhttp3.u.a;
import okhttp3.x;
import okhttp3.x.a;
import okhttp3.y;
import okhttp3.y.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/net/b;", "", "Lat/bitfire/cert4android/CustomCertManager;", "a", "Lat/bitfire/cert4android/CustomCertManager;", "certManager", "Ljavax/net/ssl/SSLContext;", "kotlin.jvm.PlatformType", "b", "Ljavax/net/ssl/SSLContext;", "sslContext", "Lokhttp3/x;", "c", "Lokhttp3/x;", "()Lokhttp3/x;", "okHttpClient", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "d", "syncer_release"}, k=1, mv={1, 7, 1})
public final class b
{
  public static final a d = new a(null);
  private static b e;
  private final CustomCertManager a;
  private final SSLContext b;
  private final x c;
  
  private b(Context paramContext)
  {
    paramContext = new CustomCertManager(paramContext, false, false, false, 14, null);
    this.a = paramContext;
    Object localObject = SSLContext.getInstance("TLS");
    this.b = ((SSLContext)localObject);
    ((SSLContext)localObject).init(null, (TrustManager[])new CustomCertManager[] { paramContext }, null);
    x.a locala = new x.a().b(new b()).h(false);
    TimeUnit localTimeUnit = TimeUnit.SECONDS;
    locala = locala.e(5L, localTimeUnit).O(60L, localTimeUnit);
    localObject = ((SSLContext)localObject).getSocketFactory();
    r.e(localObject, "sslContext.socketFactory");
    this.c = locala.P((SSLSocketFactory)localObject, paramContext).M(paramContext.hostnameVerifier(d.a)).d();
  }
  
  public final x c()
  {
    return this.c;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/net/b$a;", "", "Landroid/content/Context;", "context", "Lcom/android/calendar/syncer/net/b;", "a", "INSTANCE", "Lcom/android/calendar/syncer/net/b;", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final b a(Context paramContext)
    {
      try
      {
        r.f(paramContext, "context");
        b localb = b.a();
        if (localb != null) {
          return localb;
        }
        localb = new com/android/calendar/syncer/net/b;
        paramContext = paramContext.getApplicationContext();
        r.e(paramContext, "context.applicationContext");
        localb.<init>(paramContext, null);
        b.b(localb);
        return localb;
      }
      finally {}
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/net/b$b;", "Lokhttp3/u;", "Lokhttp3/u$a;", "chain", "Lokhttp3/a0;", "intercept", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class b
    implements u
  {
    public a0 intercept(u.a parama)
    {
      r.f(parama, "chain");
      return parama.a(parama.b().h().f("User-Agent", g.a.c()).b());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.net.b
 * JD-Core Version:    0.7.0.1
 */