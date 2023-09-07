package r0;

import androidx.work.k;
import java.util.HashMap;
import java.util.Map;

public class a
{
  static final String d = k.f("DelayedWorkTracker");
  final b a;
  private final androidx.work.p b;
  private final Map<String, Runnable> c;
  
  public a(b paramb, androidx.work.p paramp)
  {
    this.a = paramb;
    this.b = paramp;
    this.c = new HashMap();
  }
  
  public void a(final x0.p paramp)
  {
    Object localObject = (Runnable)this.c.remove(paramp.a);
    if (localObject != null) {
      this.b.b((Runnable)localObject);
    }
    localObject = new a(paramp);
    this.c.put(paramp.a, localObject);
    long l1 = System.currentTimeMillis();
    long l2 = paramp.a();
    this.b.a(l2 - l1, (Runnable)localObject);
  }
  
  public void b(String paramString)
  {
    paramString = (Runnable)this.c.remove(paramString);
    if (paramString != null) {
      this.b.b(paramString);
    }
  }
  
  class a
    implements Runnable
  {
    a(x0.p paramp) {}
    
    public void run()
    {
      k.c().a(a.d, String.format("Scheduling work %s", new Object[] { paramp.a }), new Throwable[0]);
      a.this.a.e(new x0.p[] { paramp });
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r0.a
 * JD-Core Version:    0.7.0.1
 */