package b3;

import com.bumptech.glide.load.engine.q;
import f3.i;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import n.a;

public class c
{
  private static final q<?, ?, ?> c = new q(Object.class, Object.class, Object.class, Collections.singletonList(new com.bumptech.glide.load.engine.g(Object.class, Object.class, Object.class, Collections.emptyList(), new y2.g(), null)), null);
  private final a<i, q<?, ?, ?>> a = new a();
  private final AtomicReference<i> b = new AtomicReference();
  
  private i b(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3)
  {
    i locali1 = (i)this.b.getAndSet(null);
    i locali2 = locali1;
    if (locali1 == null) {
      locali2 = new i();
    }
    locali2.a(paramClass1, paramClass2, paramClass3);
    return locali2;
  }
  
  public <Data, TResource, Transcode> q<Data, TResource, Transcode> a(Class<Data> arg1, Class<TResource> paramClass1, Class<Transcode> paramClass2)
  {
    paramClass2 = b(???, paramClass1, paramClass2);
    synchronized (this.a)
    {
      paramClass1 = (q)this.a.get(paramClass2);
      this.b.set(paramClass2);
      return paramClass1;
    }
  }
  
  public boolean c(q<?, ?, ?> paramq)
  {
    return c.equals(paramq);
  }
  
  public void d(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3, q<?, ?, ?> paramq)
  {
    synchronized (this.a)
    {
      a locala2 = this.a;
      i locali = new f3/i;
      locali.<init>(paramClass1, paramClass2, paramClass3);
      if (paramq == null) {
        paramq = c;
      }
      locala2.put(locali, paramq);
      return;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b3.c
 * JD-Core Version:    0.7.0.1
 */