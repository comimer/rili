package at.bitfire.dav4jvm;

import cc.e;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.r;
import kotlin.text.d;
import kotlin.text.k;
import okhttp3.a0;
import okhttp3.b;
import okhttp3.c0;
import okhttp3.g;
import okhttp3.n;
import okhttp3.u;
import okhttp3.u.a;
import okhttp3.y;
import okhttp3.y.a;
import okio.ByteString;
import okio.ByteString.a;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/BasicDigestAuthHandler;", "Lokhttp3/b;", "Lokhttp3/u;", "Lokhttp3/y;", "request", "Lokhttp3/a0;", "response", "authenticateRequest", "Lokhttp3/g;", "digest", "digestRequest", "Lokhttp3/c0;", "route", "authenticate", "Lokhttp3/u$a;", "chain", "intercept", "basicAuth", "Lokhttp3/g;", "digestAuth", "", "domain", "Ljava/lang/String;", "getDomain", "()Ljava/lang/String;", "username", "getUsername", "password", "getPassword", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "Algorithm", "Protection", "build"}, k=1, mv={1, 4, 0})
public final class BasicDigestAuthHandler
  implements b, u
{
  public static final Companion Companion;
  private static final String HEADER_AUTHORIZATION = "Authorization";
  private static String clientNonce;
  private static AtomicInteger nonceCount = new AtomicInteger(1);
  private g basicAuth;
  private g digestAuth;
  private final String domain;
  private final String password;
  private final String username;
  
  static
  {
    Companion localCompanion = new Companion(null);
    Companion = localCompanion;
    String str = UUID.randomUUID().toString();
    r.b(str, "UUID.randomUUID().toString()");
    clientNonce = localCompanion.h(str);
  }
  
  public BasicDigestAuthHandler(String paramString1, String paramString2, String paramString3)
  {
    this.domain = paramString1;
    this.username = paramString2;
    this.password = paramString3;
  }
  
  public y authenticate(c0 paramc0, a0 parama0)
  {
    r.g(parama0, "response");
    return authenticateRequest(parama0.l0(), parama0);
  }
  
  public final y authenticateRequest(y paramy, a0 parama0)
  {
    r.g(paramy, "request");
    Object localObject1;
    if (this.domain != null)
    {
      localObject1 = paramy.i().h();
      if (!k.p(this.domain, UrlUtils.INSTANCE.hostToDomain((String)localObject1), true))
      {
        parama0 = Dav4jvm.INSTANCE.getLog();
        paramy = new StringBuilder();
        paramy.append("Not authenticating against ");
        paramy.append((String)localObject1);
        paramy.append(" because it doesn't belong to ");
        paramy.append(this.domain);
        parama0.warning(paramy.toString());
        return null;
      }
    }
    if (parama0 == null)
    {
      if ((this.basicAuth == null) && (this.digestAuth == null) && (paramy.f()))
      {
        Dav4jvm.INSTANCE.getLog().fine("Trying Basic auth preemptively");
        this.basicAuth = new g("Basic", "");
      }
    }
    else
    {
      Iterator localIterator = parama0.j().iterator();
      Object localObject2 = null;
      localObject1 = localObject2;
      while (localIterator.hasNext())
      {
        g localg = (g)localIterator.next();
        if (k.p("Basic", localg.d(), true))
        {
          if (this.basicAuth != null)
          {
            Dav4jvm.INSTANCE.getLog().warning("Basic credentials didn't work last time -> aborting");
            this.basicAuth = null;
            return null;
          }
          localObject2 = localg;
        }
        else if (k.p("Digest", localg.d(), true))
        {
          if ((this.digestAuth != null) && (!k.p("true", (String)localg.a().get("stale"), true)))
          {
            Dav4jvm.INSTANCE.getLog().warning("Digest credentials didn't work last time and server nonce has not expired -> aborting");
            this.digestAuth = null;
            return null;
          }
          localObject1 = localg;
        }
      }
      this.basicAuth = localObject2;
      this.digestAuth = ((g)localObject1);
    }
    if (this.digestAuth != null)
    {
      parama0 = Dav4jvm.INSTANCE.getLog();
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Adding Digest authorization request for ");
      ((StringBuilder)localObject1).append(paramy.i());
      parama0.fine(((StringBuilder)localObject1).toString());
      return digestRequest(paramy, this.digestAuth);
    }
    if (this.basicAuth != null)
    {
      parama0 = Dav4jvm.INSTANCE.getLog();
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Adding Basic authorization header for ");
      ((StringBuilder)localObject1).append(paramy.i());
      parama0.fine(((StringBuilder)localObject1).toString());
      return paramy.h().f("Authorization", n.a(this.username, this.password, d.b)).b();
    }
    if (parama0 != null) {
      Dav4jvm.INSTANCE.getLog().warning("No supported authentication scheme");
    }
    return null;
  }
  
  public final y digestRequest(y paramy, g paramg)
  {
    r.g(paramy, "request");
    Object localObject1 = null;
    if (paramg == null) {
      return null;
    }
    Object localObject3 = (String)paramg.a().get("realm");
    String str1 = (String)paramg.a().get("opaque");
    String str2 = (String)paramg.a().get("nonce");
    Algorithm localAlgorithm = Algorithm.Companion.determine((String)paramg.a().get("algorithm"));
    Object localObject4 = Protection.Companion.selectFrom((String)paramg.a().get("qop"));
    LinkedList localLinkedList = new LinkedList();
    paramg = new StringBuilder();
    paramg.append("username=");
    Object localObject5 = Companion;
    paramg.append(((Companion)localObject5).quotedString(this.username));
    localLinkedList.add(paramg.toString());
    if (localObject3 != null)
    {
      paramg = new StringBuilder();
      paramg.append("realm=");
      paramg.append(((Companion)localObject5).quotedString((String)localObject3));
      localLinkedList.add(paramg.toString());
      if (str2 != null)
      {
        paramg = new StringBuilder();
        paramg.append("nonce=");
        paramg.append(((Companion)localObject5).quotedString(str2));
        localLinkedList.add(paramg.toString());
        if (str1 != null)
        {
          paramg = new StringBuilder();
          paramg.append("opaque=");
          paramg.append(((Companion)localObject5).quotedString(str1));
          localLinkedList.add(paramg.toString());
        }
        if (localAlgorithm != null)
        {
          paramg = new StringBuilder();
          paramg.append("algorithm=");
          paramg.append(((Companion)localObject5).quotedString(localAlgorithm.getAlgorithm()));
          localLinkedList.add(paramg.toString());
        }
        String str3 = paramy.g();
        Object localObject6 = paramy.i().d();
        paramg = new StringBuilder();
        paramg.append("uri=");
        paramg.append(((Companion)localObject5).quotedString((String)localObject6));
        localLinkedList.add(paramg.toString());
        Object localObject2;
        if (localObject4 != null)
        {
          paramg = new StringBuilder();
          paramg.append("qop=");
          paramg.append(((Protection)localObject4).getQop());
          localLinkedList.add(paramg.toString());
          paramg = new StringBuilder();
          paramg.append("cnonce=");
          paramg.append(((Companion)localObject5).quotedString(clientNonce));
          localLinkedList.add(paramg.toString());
          int i = nonceCount.getAndIncrement();
          paramg = kotlin.jvm.internal.z.a;
          str1 = String.format("%08x", Arrays.copyOf(new Object[] { Integer.valueOf(i) }, 1));
          r.b(str1, "java.lang.String.format(format, *args)");
          paramg = new StringBuilder();
          paramg.append("nc=");
          paramg.append(str1);
          localLinkedList.add(paramg.toString());
          if (localAlgorithm == null)
          {
            paramg = (g)localObject1;
          }
          else
          {
            i = BasicDigestAuthHandler.WhenMappings.$EnumSwitchMapping$0[localAlgorithm.ordinal()];
            if (i != 1)
            {
              if (i != 2)
              {
                paramg = (g)localObject1;
              }
              else
              {
                paramg = new StringBuilder();
                localObject1 = new StringBuilder();
                ((StringBuilder)localObject1).append(this.username);
                ((StringBuilder)localObject1).append(':');
                ((StringBuilder)localObject1).append((String)localObject3);
                ((StringBuilder)localObject1).append(':');
                ((StringBuilder)localObject1).append(this.password);
                paramg.append(((Companion)localObject5).h(((StringBuilder)localObject1).toString()));
                paramg.append(':');
                paramg.append(str2);
                paramg.append(':');
                paramg.append(clientNonce);
                paramg = paramg.toString();
              }
            }
            else
            {
              paramg = new StringBuilder();
              paramg.append(this.username);
              paramg.append(':');
              paramg.append((String)localObject3);
              paramg.append(':');
              paramg.append(this.password);
              paramg = paramg.toString();
            }
          }
          localObject3 = Dav4jvm.INSTANCE.getLog();
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("A1=");
          ((StringBuilder)localObject1).append(paramg);
          ((Logger)localObject3).finer(((StringBuilder)localObject1).toString());
          i = BasicDigestAuthHandler.WhenMappings.$EnumSwitchMapping$1[localObject4.ordinal()];
          if (i != 1)
          {
            if (i == 2) {
              try
              {
                localObject1 = paramy.a();
                localObject3 = new java/lang/StringBuilder;
                ((StringBuilder)localObject3).<init>();
                ((StringBuilder)localObject3).append(str3);
                ((StringBuilder)localObject3).append(':');
                ((StringBuilder)localObject3).append((String)localObject6);
                ((StringBuilder)localObject3).append(':');
                if (localObject1 != null) {
                  localObject1 = ((Companion)localObject5).h((okhttp3.z)localObject1);
                } else {
                  localObject1 = ((Companion)localObject5).h("");
                }
                ((StringBuilder)localObject3).append((String)localObject1);
                localObject1 = ((StringBuilder)localObject3).toString();
              }
              catch (IOException localIOException)
              {
                Dav4jvm.INSTANCE.getLog().warning("Couldn't get entity-body for hash calculation");
                localObject2 = null;
              }
            } else {
              throw new NoWhenBranchMatchedException();
            }
          }
          else
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append(str3);
            ((StringBuilder)localObject2).append(':');
            ((StringBuilder)localObject2).append((String)localObject6);
            localObject2 = ((StringBuilder)localObject2).toString();
          }
          localObject6 = Dav4jvm.INSTANCE.getLog();
          localObject5 = new StringBuilder();
          ((StringBuilder)localObject5).append("A2=");
          ((StringBuilder)localObject5).append((String)localObject2);
          ((Logger)localObject6).finer(((StringBuilder)localObject5).toString());
          if ((paramg != null) && (localObject2 != null))
          {
            localObject5 = Companion;
            localObject6 = ((Companion)localObject5).h(paramg);
            paramg = new StringBuilder();
            paramg.append(str2);
            paramg.append(':');
            paramg.append(str1);
            paramg.append(':');
            paramg.append(clientNonce);
            paramg.append(':');
            paramg.append(((Protection)localObject4).getQop());
            paramg.append(':');
            paramg.append(((Companion)localObject5).h((String)localObject2));
            paramg = ((Companion)localObject5).kd((String)localObject6, paramg.toString());
            break label1279;
          }
        }
        else
        {
          Dav4jvm.INSTANCE.getLog().finer("Using legacy Digest auth");
          if (localAlgorithm == Algorithm.MD5)
          {
            paramg = new StringBuilder();
            paramg.append(this.username);
            paramg.append(':');
            paramg.append((String)localObject3);
            paramg.append(':');
            paramg.append(this.password);
            paramg = paramg.toString();
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append(str3);
            ((StringBuilder)localObject2).append(':');
            ((StringBuilder)localObject2).append((String)localObject6);
            localObject2 = ((StringBuilder)localObject2).toString();
            paramg = ((Companion)localObject5).h(paramg);
            localObject4 = new StringBuilder();
            ((StringBuilder)localObject4).append(str2);
            ((StringBuilder)localObject4).append(":");
            ((StringBuilder)localObject4).append(((Companion)localObject5).h((String)localObject2));
            paramg = ((Companion)localObject5).kd(paramg, ((StringBuilder)localObject4).toString());
            break label1279;
          }
        }
        paramg = null;
        label1279:
        if (paramg != null)
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("response=");
          ((StringBuilder)localObject2).append(Companion.quotedString(paramg));
          localLinkedList.add(((StringBuilder)localObject2).toString());
          paramy = paramy.h();
          paramg = new StringBuilder();
          paramg.append("Digest ");
          paramg.append(kotlin.collections.t.h0(localLinkedList, ", ", null, null, 0, null, null, 62, null));
          paramy = paramy.f("Authorization", paramg.toString()).b();
        }
        else
        {
          paramy = null;
        }
        return paramy;
      }
      Dav4jvm.INSTANCE.getLog().warning("No nonce provided, aborting Digest auth");
      return null;
    }
    Dav4jvm.INSTANCE.getLog().warning("No realm provided, aborting Digest auth");
    return null;
  }
  
  public final String getDomain()
  {
    return this.domain;
  }
  
  public final String getPassword()
  {
    return this.password;
  }
  
  public final String getUsername()
  {
    return this.username;
  }
  
  public a0 intercept(u.a parama)
  {
    r.g(parama, "chain");
    y localy1 = parama.b();
    Object localObject = localy1;
    if (localy1.d("Authorization") == null)
    {
      y localy2 = authenticateRequest(localy1, null);
      localObject = localy1;
      if (localy2 != null) {
        localObject = localy2;
      }
    }
    return parama.a((y)localObject);
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Algorithm;", "", "algorithm", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getAlgorithm", "()Ljava/lang/String;", "MD5", "MD5_SESSION", "Companion", "build"}, k=1, mv={1, 1, 16})
  private static enum Algorithm
  {
    public static final Companion Companion = new Companion(null);
    private final String algorithm;
    
    static
    {
      Algorithm localAlgorithm1 = new Algorithm("MD5", 0, "MD5");
      MD5 = localAlgorithm1;
      Algorithm localAlgorithm2 = new Algorithm("MD5_SESSION", 1, "MD5-sess");
      MD5_SESSION = localAlgorithm2;
      $VALUES = new Algorithm[] { localAlgorithm1, localAlgorithm2 };
    }
    
    private Algorithm(String paramString)
    {
      this.algorithm = paramString;
    }
    
    public final String getAlgorithm()
    {
      return this.algorithm;
    }
    
    @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Algorithm$Companion;", "", "()V", "determine", "Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Algorithm;", "paramValue", "", "build"}, k=1, mv={1, 1, 16})
    public static final class Companion
    {
      public final BasicDigestAuthHandler.Algorithm determine(String paramString)
      {
        if ((paramString != null) && (!k.p(BasicDigestAuthHandler.Algorithm.MD5.getAlgorithm(), paramString, true)))
        {
          Object localObject = BasicDigestAuthHandler.Algorithm.MD5_SESSION;
          if (k.p(((BasicDigestAuthHandler.Algorithm)localObject).getAlgorithm(), paramString, true))
          {
            paramString = (String)localObject;
          }
          else
          {
            Logger localLogger = Dav4jvm.INSTANCE.getLog();
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Ignoring unknown hash algorithm: ");
            ((StringBuilder)localObject).append(paramString);
            localLogger.warning(((StringBuilder)localObject).toString());
            paramString = null;
          }
        }
        else
        {
          paramString = BasicDigestAuthHandler.Algorithm.MD5;
        }
        return paramString;
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Companion;", "", "", "s", "quotedString", "data", "h", "Lokhttp3/z;", "body", "secret", "kd", "clientNonce", "Ljava/lang/String;", "getClientNonce", "()Ljava/lang/String;", "setClientNonce", "(Ljava/lang/String;)V", "Ljava/util/concurrent/atomic/AtomicInteger;", "nonceCount", "Ljava/util/concurrent/atomic/AtomicInteger;", "getNonceCount", "()Ljava/util/concurrent/atomic/AtomicInteger;", "setNonceCount", "(Ljava/util/concurrent/atomic/AtomicInteger;)V", "HEADER_AUTHORIZATION", "<init>", "()V", "build"}, k=1, mv={1, 4, 0})
  public static final class Companion
  {
    public final String getClientNonce()
    {
      return BasicDigestAuthHandler.access$getClientNonce$cp();
    }
    
    public final AtomicInteger getNonceCount()
    {
      return BasicDigestAuthHandler.access$getNonceCount$cp();
    }
    
    public final String h(String paramString)
    {
      r.g(paramString, "data");
      ByteString.a locala = ByteString.Companion;
      paramString = paramString.getBytes(d.b);
      r.b(paramString, "(this as java.lang.String).getBytes(charset)");
      return ByteString.a.h(locala, paramString, 0, 0, 3, null).md5().hex();
    }
    
    public final String h(okhttp3.z paramz)
    {
      r.g(paramz, "body");
      e locale = new e();
      paramz.g(locale);
      return ByteString.a.h(ByteString.Companion, locale.t(), 0, 0, 3, null).md5().hex();
    }
    
    public final String kd(String paramString1, String paramString2)
    {
      r.g(paramString1, "secret");
      r.g(paramString2, "data");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString1);
      localStringBuilder.append(':');
      localStringBuilder.append(paramString2);
      return h(localStringBuilder.toString());
    }
    
    public final String quotedString(String paramString)
    {
      r.g(paramString, "s");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("\"");
      localStringBuilder.append(k.y(paramString, "\"", "\\\"", false, 4, null));
      localStringBuilder.append("\"");
      return localStringBuilder.toString();
    }
    
    public final void setClientNonce(String paramString)
    {
      r.g(paramString, "<set-?>");
      BasicDigestAuthHandler.access$setClientNonce$cp(paramString);
    }
    
    public final void setNonceCount(AtomicInteger paramAtomicInteger)
    {
      r.g(paramAtomicInteger, "<set-?>");
      BasicDigestAuthHandler.access$setNonceCount$cp(paramAtomicInteger);
    }
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;", "", "qop", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getQop", "()Ljava/lang/String;", "Auth", "AuthInt", "Companion", "build"}, k=1, mv={1, 1, 16})
  private static enum Protection
  {
    public static final Companion Companion = new Companion(null);
    private final String qop;
    
    static
    {
      Protection localProtection1 = new Protection("Auth", 0, "auth");
      Auth = localProtection1;
      Protection localProtection2 = new Protection("AuthInt", 1, "auth-int");
      AuthInt = localProtection2;
      $VALUES = new Protection[] { localProtection1, localProtection2 };
    }
    
    private Protection(String paramString)
    {
      this.qop = paramString;
    }
    
    public final String getQop()
    {
      return this.qop;
    }
    
    @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection$Companion;", "", "()V", "selectFrom", "Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;", "paramValue", "", "build"}, k=1, mv={1, 1, 16})
    public static final class Companion
    {
      public final BasicDigestAuthHandler.Protection selectFrom(String paramString)
      {
        if (paramString != null)
        {
          Iterator localIterator = k.s0(paramString, new String[] { "," }, false, 0, 6, null).iterator();
          int i = 0;
          int j = 0;
          while (localIterator.hasNext())
          {
            paramString = (String)localIterator.next();
            int k = paramString.hashCode();
            if (k != 3005864)
            {
              if ((k == 1431098954) && (paramString.equals("auth-int"))) {
                i = 1;
              }
            }
            else if (paramString.equals("auth")) {
              j = 1;
            }
          }
          if (i != 0) {
            return BasicDigestAuthHandler.Protection.AuthInt;
          }
          if (j != 0) {
            return BasicDigestAuthHandler.Protection.Auth;
          }
        }
        return null;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.BasicDigestAuthHandler
 * JD-Core Version:    0.7.0.1
 */