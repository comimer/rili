package q0;

import androidx.lifecycle.u;
import androidx.work.impl.utils.futures.b;
import androidx.work.m;
import androidx.work.m.b;
import androidx.work.m.b.a;
import androidx.work.m.b.c;
import com.google.common.util.concurrent.ListenableFuture;

public class c
  implements m
{
  private final u<m.b> c = new u();
  private final b<m.b.c> d = b.s();
  
  public c()
  {
    a(m.b);
  }
  
  public void a(m.b paramb)
  {
    this.c.l(paramb);
    if ((paramb instanceof m.b.c))
    {
      this.d.o((m.b.c)paramb);
    }
    else if ((paramb instanceof m.b.a))
    {
      paramb = (m.b.a)paramb;
      this.d.p(paramb.a());
    }
  }
  
  public ListenableFuture<m.b.c> getResult()
  {
    return this.d;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q0.c
 * JD-Core Version:    0.7.0.1
 */