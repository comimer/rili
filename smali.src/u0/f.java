package u0;

import android.content.Context;
import androidx.work.NetworkType;
import androidx.work.k;
import v0.g;
import x0.p;
import z0.a;

public class f
  extends c<t0.b>
{
  private static final String e = k.f("NetworkNotRoamingCtrlr");
  
  public f(Context paramContext, a parama)
  {
    super(g.c(paramContext, parama).d());
  }
  
  boolean b(p paramp)
  {
    boolean bool;
    if (paramp.j.b() == NetworkType.NOT_ROAMING) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  boolean i(t0.b paramb)
  {
    boolean bool;
    if ((paramb.a()) && (paramb.c())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u0.f
 * JD-Core Version:    0.7.0.1
 */