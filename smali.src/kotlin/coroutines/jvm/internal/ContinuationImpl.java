package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.CoroutineContext.a;
import kotlin.coroutines.c;
import kotlin.coroutines.d;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Lkotlin/coroutines/c;", "", "intercepted", "Lkotlin/u;", "releaseIntercepted", "Lkotlin/coroutines/CoroutineContext;", "_context", "Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/c;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "completion", "<init>", "(Lkotlin/coroutines/c;Lkotlin/coroutines/CoroutineContext;)V", "(Lkotlin/coroutines/c;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class ContinuationImpl
  extends BaseContinuationImpl
{
  private final CoroutineContext _context;
  private transient c<Object> intercepted;
  
  public ContinuationImpl(c<Object> paramc)
  {
    this(paramc, localCoroutineContext);
  }
  
  public ContinuationImpl(c<Object> paramc, CoroutineContext paramCoroutineContext)
  {
    super(paramc);
    this._context = paramCoroutineContext;
  }
  
  public CoroutineContext getContext()
  {
    CoroutineContext localCoroutineContext = this._context;
    r.c(localCoroutineContext);
    return localCoroutineContext;
  }
  
  public final c<Object> intercepted()
  {
    c localc = this.intercepted;
    Object localObject = localc;
    if (localc == null)
    {
      localObject = (d)getContext().get(d.t);
      if (localObject != null)
      {
        localc = ((d)localObject).j(this);
        localObject = localc;
        if (localc != null) {}
      }
      else
      {
        localObject = this;
      }
      this.intercepted = ((c)localObject);
    }
    return localObject;
  }
  
  protected void releaseIntercepted()
  {
    c localc = this.intercepted;
    if ((localc != null) && (localc != this))
    {
      CoroutineContext.a locala = getContext().get(d.t);
      r.c(locala);
      ((d)locala).e(localc);
    }
    this.intercepted = b.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.jvm.internal.ContinuationImpl
 * JD-Core Version:    0.7.0.1
 */