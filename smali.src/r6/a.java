package r6;

import android.os.AsyncTask;
import b7.r;
import x5.d;

public class a<T>
  extends AsyncTask<Void, Void, c<T>>
{
  private final d<a<T>> a;
  private final d<d<T>> b;
  private final d<b> c;
  
  public a(a<T> parama, d<T> paramd, b paramb)
  {
    this.a = new d(parama);
    this.b = new d(paramd);
    this.c = new d(paramb);
  }
  
  public void a()
  {
    this.a.b(null);
    this.b.b(null);
    this.c.b(null);
    cancel(true);
  }
  
  protected c b(Void... paramVarArgs)
  {
    paramVarArgs = (a)this.a.a();
    if (paramVarArgs != null) {
      try
      {
        paramVarArgs = new c(paramVarArgs.run(), null);
      }
      finally
      {
        return new c(null, paramVarArgs);
      }
    }
    return new c(null, null);
  }
  
  public void c()
  {
    executeOnExecutor(r.a(), new Void[0]);
  }
  
  protected void d(c<T> paramc)
  {
    Object localObject;
    if (paramc.b == null)
    {
      localObject = (d)this.b.a();
      if (localObject != null) {
        ((d)localObject).a(paramc.a);
      }
    }
    else
    {
      localObject = (b)this.c.a();
      if (localObject != null) {
        ((b)localObject).a(paramc.b);
      }
    }
  }
  
  public static abstract interface a<T>
  {
    public abstract T run()
      throws Throwable;
  }
  
  public static abstract interface b
  {
    public abstract void a(Throwable paramThrowable);
  }
  
  public static class c<T>
  {
    public final T a;
    public final Throwable b;
    
    public c(T paramT, Throwable paramThrowable)
    {
      this.a = paramT;
      this.b = paramThrowable;
    }
  }
  
  public static abstract interface d<T>
  {
    public abstract void a(T paramT);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r6.a
 * JD-Core Version:    0.7.0.1
 */