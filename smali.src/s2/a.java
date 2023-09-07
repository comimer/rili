package s2;

import com.bumptech.glide.load.data.j;
import java.io.InputStream;
import n2.c;
import n2.d;
import r2.g;
import r2.m;
import r2.n;
import r2.n.a;
import r2.o;
import r2.r;

public class a
  implements n<g, InputStream>
{
  public static final c<Integer> b = c.f("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", Integer.valueOf(2500));
  private final m<g, g> a;
  
  public a(m<g, g> paramm)
  {
    this.a = paramm;
  }
  
  public n.a<InputStream> c(g paramg, int paramInt1, int paramInt2, d paramd)
  {
    m localm = this.a;
    g localg = paramg;
    if (localm != null)
    {
      localg = (g)localm.a(paramg, 0, 0);
      if (localg == null)
      {
        this.a.b(paramg, 0, 0, paramg);
        localg = paramg;
      }
    }
    return new n.a(localg, new j(localg, ((Integer)paramd.c(b)).intValue()));
  }
  
  public boolean d(g paramg)
  {
    return true;
  }
  
  public static class a
    implements o<g, InputStream>
  {
    private final m<g, g> a = new m(500L);
    
    public n<g, InputStream> b(r paramr)
    {
      return new a(this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s2.a
 * JD-Core Version:    0.7.0.1
 */