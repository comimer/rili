package u0;

import android.content.Context;
import android.os.Build.VERSION;
import androidx.work.NetworkType;
import x0.p;
import z0.a;

public class g
  extends c<t0.b>
{
  public g(Context paramContext, a parama)
  {
    super(v0.g.c(paramContext, parama).d());
  }
  
  boolean b(p paramp)
  {
    boolean bool;
    if ((paramp.j.b() != NetworkType.UNMETERED) && ((Build.VERSION.SDK_INT < 30) || (paramp.j.b() != NetworkType.TEMPORARILY_UNMETERED))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  boolean i(t0.b paramb)
  {
    boolean bool;
    if ((paramb.a()) && (!paramb.b())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u0.g
 * JD-Core Version:    0.7.0.1
 */