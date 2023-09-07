package androidx.work;

import android.content.Context;
import java.util.Collections;
import java.util.List;
import n0.a;

public final class WorkManagerInitializer
  implements a<r>
{
  private static final String a = k.f("WrkMgrInitializer");
  
  public List<Class<? extends a<?>>> a()
  {
    return Collections.emptyList();
  }
  
  public r c(Context paramContext)
  {
    k.c().a(a, "Initializing WorkManager with default configuration.", new Throwable[0]);
    r.h(paramContext, new a.b().a());
    return r.f(paramContext);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.WorkManagerInitializer
 * JD-Core Version:    0.7.0.1
 */