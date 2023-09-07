package androidx.work;

import x0.p;

public final class l
  extends s
{
  l(a parama)
  {
    super(parama.b, parama.c, parama.d);
  }
  
  public static l e(Class<? extends ListenableWorker> paramClass)
  {
    return (l)new a(paramClass).b();
  }
  
  public static final class a
    extends s.a<a, l>
  {
    public a(Class<? extends ListenableWorker> paramClass)
    {
      super();
      this.c.d = OverwritingInputMerger.class.getName();
    }
    
    l f()
    {
      if ((this.a) && (this.c.j.h())) {
        throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
      }
      return new l(this);
    }
    
    a g()
    {
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.l
 * JD-Core Version:    0.7.0.1
 */