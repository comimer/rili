package at.bitfire.cert4android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.g;
import androidx.lifecycle.i0;
import androidx.lifecycle.k0;
import at.bitfire.cert4android.databinding.ActivityTrustCertificateBinding;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.security.spec.MGF1ParameterSpec;
import java.text.DateFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.z;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/cert4android/TrustCertificateActivity;", "Landroidx/appcompat/app/d;", "", "trusted", "Lkotlin/u;", "sendDecision", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/content/Intent;", "intent", "onNewIntent", "Landroid/view/View;", "view", "acceptCertificate", "rejectCertificate", "Lat/bitfire/cert4android/TrustCertificateActivity$Model;", "model", "Lat/bitfire/cert4android/TrustCertificateActivity$Model;", "<init>", "()V", "Companion", "Model", "cert4android_release"}, k=1, mv={1, 7, 1})
public final class TrustCertificateActivity
  extends androidx.appcompat.app.d
{
  public static final Companion Companion = new Companion(null);
  public static final String EXTRA_CERTIFICATE = "certificate";
  private Model model;
  
  private final void sendDecision(boolean paramBoolean)
  {
    Intent localIntent = new Intent(this, CustomCertService.class);
    localIntent.setAction("certificateDecision");
    localIntent.putExtra("certificate", getIntent().getSerializableExtra("certificate"));
    localIntent.putExtra("trusted", paramBoolean);
    startService(localIntent);
  }
  
  public final void acceptCertificate(View paramView)
  {
    r.f(paramView, "view");
    sendDecision(true);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject1 = (Model)new k0(this).a(Model.class);
    this.model = ((Model)localObject1);
    Object localObject2 = null;
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null)
    {
      r.x("model");
      paramBundle = null;
    }
    paramBundle.processIntent(getIntent());
    localObject1 = (ActivityTrustCertificateBinding)g.f(this, R.layout.activity_trust_certificate);
    ((ViewDataBinding)localObject1).setLifecycleOwner(this);
    paramBundle = this.model;
    if (paramBundle == null)
    {
      r.x("model");
      paramBundle = localObject2;
    }
    ((ActivityTrustCertificateBinding)localObject1).setModel(paramBundle);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    r.f(paramIntent, "intent");
    super.onNewIntent(paramIntent);
    Model localModel1 = this.model;
    Model localModel2 = localModel1;
    if (localModel1 == null)
    {
      r.x("model");
      localModel2 = null;
    }
    localModel2.processIntent(paramIntent);
  }
  
  public final void rejectCertificate(View paramView)
  {
    r.f(paramView, "view");
    sendDecision(false);
    finish();
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/cert4android/TrustCertificateActivity$Companion;", "", "()V", "EXTRA_CERTIFICATE", "", "cert4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion {}
  
  @Metadata(bv={}, d1={""}, d2={"Lat/bitfire/cert4android/TrustCertificateActivity$Model;", "Landroidx/lifecycle/i0;", "Ljava/security/cert/X509Certificate;", "cert", "", "algorithm", "fingerprint", "", "data", "hexString", "Landroid/content/Intent;", "intent", "Lkotlin/u;", "processIntent", "Landroidx/lifecycle/u;", "issuedFor", "Landroidx/lifecycle/u;", "getIssuedFor", "()Landroidx/lifecycle/u;", "issuedBy", "getIssuedBy", "validFrom", "getValidFrom", "validTo", "getValidTo", "sha1", "getSha1", "sha256", "getSha256", "", "verifiedByUser", "getVerifiedByUser", "<init>", "()V", "Companion", "cert4android_release"}, k=1, mv={1, 7, 1})
  public static final class Model
    extends i0
  {
    public static final Companion Companion = new Companion(null);
    private static final CertificateFactory certFactory;
    private final androidx.lifecycle.u<String> issuedBy = new androidx.lifecycle.u();
    private final androidx.lifecycle.u<String> issuedFor = new androidx.lifecycle.u();
    private final androidx.lifecycle.u<String> sha1 = new androidx.lifecycle.u();
    private final androidx.lifecycle.u<String> sha256 = new androidx.lifecycle.u();
    private final androidx.lifecycle.u<String> validFrom = new androidx.lifecycle.u();
    private final androidx.lifecycle.u<String> validTo = new androidx.lifecycle.u();
    private final androidx.lifecycle.u<Boolean> verifiedByUser = new androidx.lifecycle.u();
    
    static
    {
      CertificateFactory localCertificateFactory = CertificateFactory.getInstance("X.509");
      r.c(localCertificateFactory);
      certFactory = localCertificateFactory;
    }
    
    private final String fingerprint(X509Certificate paramX509Certificate, String paramString)
    {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append(paramString);
        localStringBuilder.append(": ");
        paramX509Certificate = localMessageDigest.digest(paramX509Certificate.getEncoded());
        r.e(paramX509Certificate, "md.digest(cert.encoded)");
        localStringBuilder.append(hexString(paramX509Certificate));
        paramX509Certificate = localStringBuilder.toString();
      }
      catch (Exception paramX509Certificate)
      {
        paramString = paramX509Certificate.getMessage();
        paramX509Certificate = paramString;
        if (paramString == null) {
          paramX509Certificate = "Couldn't create message digest";
        }
      }
      return paramX509Certificate;
    }
    
    private final String hexString(byte[] paramArrayOfByte)
    {
      LinkedList localLinkedList = new LinkedList();
      int i = paramArrayOfByte.length;
      for (int j = 0; j < i; j++)
      {
        byte b = paramArrayOfByte[j];
        Object localObject = z.a;
        localObject = String.format("%02x", Arrays.copyOf(new Object[] { Byte.valueOf(b) }, 1));
        r.e(localObject, "format(format, *args)");
        localLinkedList.add(localObject);
      }
      return t.h0(localLinkedList, ":", null, null, 0, null, null, 62, null);
    }
    
    public final androidx.lifecycle.u<String> getIssuedBy()
    {
      return this.issuedBy;
    }
    
    public final androidx.lifecycle.u<String> getIssuedFor()
    {
      return this.issuedFor;
    }
    
    public final androidx.lifecycle.u<String> getSha1()
    {
      return this.sha1;
    }
    
    public final androidx.lifecycle.u<String> getSha256()
    {
      return this.sha256;
    }
    
    public final androidx.lifecycle.u<String> getValidFrom()
    {
      return this.validFrom;
    }
    
    public final androidx.lifecycle.u<String> getValidTo()
    {
      return this.validTo;
    }
    
    public final androidx.lifecycle.u<Boolean> getVerifiedByUser()
    {
      return this.verifiedByUser;
    }
    
    public final void processIntent(Intent paramIntent)
    {
      if (paramIntent != null)
      {
        paramIntent = paramIntent.getByteArrayExtra("certificate");
        if (paramIntent != null) {
          r7.a.b(false, false, null, null, 0, new Lambda(paramIntent)
          {
            public final void invoke()
            {
              Object localObject1 = TrustCertificateActivity.Model.Companion.getCertFactory().generateCertificate(new ByteArrayInputStream(this.$raw));
              if ((localObject1 instanceof X509Certificate)) {
                localObject1 = (X509Certificate)localObject1;
              } else {
                localObject1 = null;
              }
              if (localObject1 == null) {
                return;
              }
              try
              {
                if (((X509Certificate)localObject1).getIssuerAlternativeNames() != null)
                {
                  localObject2 = new java/lang/StringBuilder;
                  ((StringBuilder)localObject2).<init>();
                  localObject3 = ((X509Certificate)localObject1).getSubjectAlternativeNames();
                  localObject4 = localObject3;
                  if (localObject3 == null) {
                    localObject4 = t.j();
                  }
                  Iterator localIterator = ((Collection)localObject4).iterator();
                  while (localIterator.hasNext())
                  {
                    localObject4 = (List)localIterator.next();
                    localObject3 = ((List)localObject4).get(1);
                    if ((localObject3 instanceof String))
                    {
                      ((StringBuilder)localObject2).append("[");
                      ((StringBuilder)localObject2).append(((List)localObject4).get(0));
                      ((StringBuilder)localObject2).append("]");
                      ((StringBuilder)localObject2).append((String)localObject3);
                      ((StringBuilder)localObject2).append(" ");
                    }
                  }
                  localObject4 = ((StringBuilder)localObject2).toString();
                }
                else
                {
                  localObject4 = ((X509Certificate)localObject1).getSubjectDN().getName();
                }
                jdField_this.getIssuedFor().l(localObject4);
                jdField_this.getIssuedBy().l(((X509Certificate)localObject1).getIssuerDN().toString());
                Object localObject4 = DateFormat.getDateInstance(1);
                jdField_this.getValidFrom().l(((DateFormat)localObject4).format(((X509Certificate)localObject1).getNotBefore()));
                jdField_this.getValidTo().l(((DateFormat)localObject4).format(((X509Certificate)localObject1).getNotAfter()));
                localObject4 = jdField_this.getSha1();
                Object localObject2 = jdField_this;
                Object localObject3 = MGF1ParameterSpec.SHA1.getDigestAlgorithm();
                r.e(localObject3, "SHA1.digestAlgorithm");
                ((androidx.lifecycle.u)localObject4).l(TrustCertificateActivity.Model.access$fingerprint((TrustCertificateActivity.Model)localObject2, (X509Certificate)localObject1, (String)localObject3));
                localObject3 = jdField_this.getSha256();
                localObject2 = jdField_this;
                localObject4 = MGF1ParameterSpec.SHA256.getDigestAlgorithm();
                r.e(localObject4, "SHA256.digestAlgorithm");
                ((androidx.lifecycle.u)localObject3).l(TrustCertificateActivity.Model.access$fingerprint((TrustCertificateActivity.Model)localObject2, (X509Certificate)localObject1, (String)localObject4));
              }
              catch (CertificateParsingException localCertificateParsingException)
              {
                Constants.INSTANCE.getLog().log(Level.WARNING, "Couldn't parse certificate", localCertificateParsingException);
              }
            }
          }, 31, null);
        }
      }
    }
    
    @Metadata(d1={""}, d2={"Lat/bitfire/cert4android/TrustCertificateActivity$Model$Companion;", "", "()V", "certFactory", "Ljava/security/cert/CertificateFactory;", "getCertFactory", "()Ljava/security/cert/CertificateFactory;", "cert4android_release"}, k=1, mv={1, 7, 1}, xi=48)
    public static final class Companion
    {
      public final CertificateFactory getCertFactory()
      {
        return TrustCertificateActivity.Model.access$getCertFactory$cp();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.cert4android.TrustCertificateActivity
 * JD-Core Version:    0.7.0.1
 */