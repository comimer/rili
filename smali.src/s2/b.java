package s2;

import android.content.Context;
import android.net.Uri;
import java.io.InputStream;
import n2.d;
import o2.c;
import r2.n;
import r2.n.a;
import r2.o;
import r2.r;

public class b
  implements n<Uri, InputStream>
{
  private final Context a;
  
  public b(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }
  
  public n.a<InputStream> c(Uri paramUri, int paramInt1, int paramInt2, d paramd)
  {
    if (o2.b.d(paramInt1, paramInt2)) {
      return new n.a(new e3.b(paramUri), c.f(this.a, paramUri));
    }
    return null;
  }
  
  public boolean d(Uri paramUri)
  {
    return o2.b.a(paramUri);
  }
  
  public static class a
    implements o<Uri, InputStream>
  {
    private final Context a;
    
    public a(Context paramContext)
    {
      this.a = paramContext;
    }
    
    public n<Uri, InputStream> b(r paramr)
    {
      return new b(this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s2.b
 * JD-Core Version:    0.7.0.1
 */