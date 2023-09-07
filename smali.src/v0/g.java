package v0;

import android.content.Context;

public class g
{
  private static g e;
  private a a;
  private b b;
  private e c;
  private f d;
  
  private g(Context paramContext, z0.a parama)
  {
    paramContext = paramContext.getApplicationContext();
    this.a = new a(paramContext, parama);
    this.b = new b(paramContext, parama);
    this.c = new e(paramContext, parama);
    this.d = new f(paramContext, parama);
  }
  
  public static g c(Context paramContext, z0.a parama)
  {
    try
    {
      if (e == null)
      {
        g localg = new v0/g;
        localg.<init>(paramContext, parama);
        e = localg;
      }
      paramContext = e;
      return paramContext;
    }
    finally {}
  }
  
  public a a()
  {
    return this.a;
  }
  
  public b b()
  {
    return this.b;
  }
  
  public e d()
  {
    return this.c;
  }
  
  public f e()
  {
    return this.d;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v0.g
 * JD-Core Version:    0.7.0.1
 */