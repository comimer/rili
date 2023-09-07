package androidx.core.provider;

import android.graphics.Typeface;
import android.os.Handler;

class a
{
  private final g.c a;
  private final Handler b;
  
  a(g.c paramc, Handler paramHandler)
  {
    this.a = paramc;
    this.b = paramHandler;
  }
  
  private void a(final int paramInt)
  {
    final g.c localc = this.a;
    this.b.post(new b(localc, paramInt));
  }
  
  private void c(final Typeface paramTypeface)
  {
    final g.c localc = this.a;
    this.b.post(new a(localc, paramTypeface));
  }
  
  void b(f.e parame)
  {
    if (parame.a()) {
      c(parame.a);
    } else {
      a(parame.b);
    }
  }
  
  class a
    implements Runnable
  {
    a(g.c paramc, Typeface paramTypeface) {}
    
    public void run()
    {
      localc.b(paramTypeface);
    }
  }
  
  class b
    implements Runnable
  {
    b(g.c paramc, int paramInt) {}
    
    public void run()
    {
      localc.a(paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.provider.a
 * JD-Core Version:    0.7.0.1
 */