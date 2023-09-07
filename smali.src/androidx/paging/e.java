package androidx.paging;

import java.util.List;
import k.a;

class e<A, B>
  extends d<B>
{
  private final d<A> a;
  final a<List<A>, List<B>> b;
  
  e(d<A> paramd, a<List<A>, List<B>> parama)
  {
    this.a = paramd;
    this.b = parama;
  }
  
  public void addInvalidatedCallback(b.c paramc)
  {
    this.a.addInvalidatedCallback(paramc);
  }
  
  public void invalidate()
  {
    this.a.invalidate();
  }
  
  public boolean isInvalid()
  {
    return this.a.isInvalid();
  }
  
  public void loadInitial(d.d paramd, final d.b<B> paramb)
  {
    this.a.loadInitial(paramd, new a(paramb));
  }
  
  public void loadRange(d.g paramg, final d.e<B> parame)
  {
    this.a.loadRange(paramg, new b(parame));
  }
  
  public void removeInvalidatedCallback(b.c paramc)
  {
    this.a.removeInvalidatedCallback(paramc);
  }
  
  class a
    extends d.b<A>
  {
    a(d.b paramb) {}
    
    public void a(List<A> paramList, int paramInt1, int paramInt2)
    {
      paramb.a(b.convert(e.this.b, paramList), paramInt1, paramInt2);
    }
  }
  
  class b
    extends d.e<A>
  {
    b(d.e parame) {}
    
    public void a(List<A> paramList)
    {
      parame.a(b.convert(e.this.b, paramList));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.paging.e
 * JD-Core Version:    0.7.0.1
 */