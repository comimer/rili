package at.bitfire.cert4android;

import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.z;

@Metadata(d1={""}, d2={"Lat/bitfire/cert4android/CertUtils;", "", "()V", "getTag", "", "cert", "Ljava/security/cert/X509Certificate;", "getTrustManager", "Ljavax/net/ssl/X509TrustManager;", "keyStore", "Ljava/security/KeyStore;", "cert4android_release"}, k=1, mv={1, 7, 1}, xi=48)
public final class CertUtils
{
  public static final CertUtils INSTANCE = new CertUtils();
  
  public final String getTag(X509Certificate paramX509Certificate)
  {
    r.f(paramX509Certificate, "cert");
    StringBuilder localStringBuilder = new StringBuilder();
    paramX509Certificate = paramX509Certificate.getSignature();
    r.e(paramX509Certificate, "cert.signature");
    int i = paramX509Certificate.length;
    for (int j = 0; j < i; j++)
    {
      byte b = paramX509Certificate[j];
      Object localObject = z.a;
      localObject = String.format("%02x", Arrays.copyOf(new Object[] { Byte.valueOf(b) }, 1));
      r.e(localObject, "format(format, *args)");
      localStringBuilder.append((String)localObject);
    }
    paramX509Certificate = localStringBuilder.toString();
    r.e(paramX509Certificate, "str.toString()");
    return paramX509Certificate;
  }
  
  public final X509TrustManager getTrustManager(KeyStore paramKeyStore)
  {
    try
    {
      Object localObject = TrustManagerFactory.getInstance("X509");
      ((TrustManagerFactory)localObject).init(paramKeyStore);
      TrustManager[] arrayOfTrustManager = ((TrustManagerFactory)localObject).getTrustManagers();
      r.e(arrayOfTrustManager, "tmf.trustManagers");
      localObject = new java/util/ArrayList;
      ((ArrayList)localObject).<init>();
      int i = 0;
      int j = arrayOfTrustManager.length;
      while (i < j)
      {
        paramKeyStore = arrayOfTrustManager[i];
        if ((paramKeyStore instanceof X509TrustManager)) {
          ((Collection)localObject).add(paramKeyStore);
        }
        i++;
      }
      paramKeyStore = ((Iterable)localObject).iterator();
      if (paramKeyStore.hasNext())
      {
        paramKeyStore = (X509TrustManager)paramKeyStore.next();
        return paramKeyStore;
      }
    }
    catch (GeneralSecurityException paramKeyStore)
    {
      Constants.INSTANCE.getLog().log(Level.SEVERE, "Couldn't initialize trust manager", paramKeyStore);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.cert4android.CertUtils
 * JD-Core Version:    0.7.0.1
 */