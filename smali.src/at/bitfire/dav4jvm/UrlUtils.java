package at.bitfire.dav4jvm;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import okhttp3.t;
import okhttp3.t.a;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/UrlUtils;", "", "Lokhttp3/t;", "url1", "url2", "", "equals", "", "host", "hostToDomain", "url", "omitTrailingSlash", "withTrailingSlash", "<init>", "()V", "build"}, k=1, mv={1, 4, 0})
public final class UrlUtils
{
  public static final UrlUtils INSTANCE = new UrlUtils();
  
  public final boolean equals(t paramt1, t paramt2)
  {
    r.g(paramt1, "url1");
    r.g(paramt2, "url2");
    if (r.a(paramt1, paramt2)) {
      return true;
    }
    paramt1 = paramt1.j().h(null).d().t();
    paramt2 = paramt2.j().h(null).d().t();
    boolean bool;
    try
    {
      URI localURI = new java/net/URI;
      localURI.<init>(paramt1.getScheme(), paramt1.getSchemeSpecificPart(), paramt1.getFragment());
      paramt1 = new java/net/URI;
      paramt1.<init>(paramt2.getScheme(), paramt2.getSchemeSpecificPart(), paramt2.getFragment());
      bool = r.a(localURI, paramt1);
    }
    catch (URISyntaxException paramt1)
    {
      bool = false;
    }
    return bool;
  }
  
  public final String hostToDomain(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    paramString = k.m0(paramString, ".");
    List localList = k.r0(paramString, new char[] { '.' }, false, 0, 6, null);
    if (localList.size() >= 2)
    {
      paramString = new StringBuilder();
      paramString.append((String)localList.get(localList.size() - 2));
      paramString.append(".");
      paramString.append((String)localList.get(localList.size() - 1));
      paramString = paramString.toString();
    }
    return paramString;
  }
  
  public final t omitTrailingSlash(t paramt)
  {
    r.g(paramt, "url");
    int i = paramt.n() - 1;
    t localt = paramt;
    if (r.a((String)paramt.m().get(i), "")) {
      localt = paramt.j().s(i).d();
    }
    return localt;
  }
  
  public final t withTrailingSlash(t paramt)
  {
    r.g(paramt, "url");
    int i = paramt.n();
    if (!r.a((String)paramt.m().get(i - 1), "")) {
      paramt = paramt.j().b("").d();
    }
    return paramt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.UrlUtils
 * JD-Core Version:    0.7.0.1
 */