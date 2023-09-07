package s2;

import java.io.InputStream;
import java.net.URL;
import n2.d;
import r2.n;
import r2.n.a;
import r2.o;
import r2.r;

public class g
  implements n<URL, InputStream>
{
  private final n<r2.g, InputStream> a;
  
  public g(n<r2.g, InputStream> paramn)
  {
    this.a = paramn;
  }
  
  public n.a<InputStream> c(URL paramURL, int paramInt1, int paramInt2, d paramd)
  {
    return this.a.a(new r2.g(paramURL), paramInt1, paramInt2, paramd);
  }
  
  public boolean d(URL paramURL)
  {
    return true;
  }
  
  public static class a
    implements o<URL, InputStream>
  {
    public n<URL, InputStream> b(r paramr)
    {
      return new g(paramr.d(r2.g.class, InputStream.class));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s2.g
 * JD-Core Version:    0.7.0.1
 */