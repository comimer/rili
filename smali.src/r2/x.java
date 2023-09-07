package r2;

import android.net.Uri;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import n2.d;

public class x<Data>
  implements n<Uri, Data>
{
  private static final Set<String> b = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "http", "https" })));
  private final n<g, Data> a;
  
  public x(n<g, Data> paramn)
  {
    this.a = paramn;
  }
  
  public n.a<Data> c(Uri paramUri, int paramInt1, int paramInt2, d paramd)
  {
    paramUri = new g(paramUri.toString());
    return this.a.a(paramUri, paramInt1, paramInt2, paramd);
  }
  
  public boolean d(Uri paramUri)
  {
    return b.contains(paramUri.getScheme());
  }
  
  public static class a
    implements o<Uri, InputStream>
  {
    public n<Uri, InputStream> b(r paramr)
    {
      return new x(paramr.d(g.class, InputStream.class));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.x
 * JD-Core Version:    0.7.0.1
 */