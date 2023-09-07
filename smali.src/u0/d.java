package u0;

import android.content.Context;
import androidx.work.NetworkType;
import v0.g;
import x0.p;
import z0.a;

public class d
  extends c<t0.b>
{
  public d(Context paramContext, a parama)
  {
    super(g.c(paramContext, parama).d());
  }
  
  boolean b(p paramp)
  {
    boolean bool;
    if (paramp.j.b() == NetworkType.CONNECTED) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  boolean i(t0.b paramb)
  {
    boolean bool;
    if ((paramb.a()) && (paramb.d())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u0.d
 * JD-Core Version:    0.7.0.1
 */