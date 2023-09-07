package kotlin.coroutines;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref.IntRef;
import kotlin.jvm.internal.r;
import kotlin.u;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/CombinedContext;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "size", "Lkotlin/coroutines/CoroutineContext$a;", "element", "", "contains", "context", "containsAll", "", "writeReplace", "E", "Lkotlin/coroutines/CoroutineContext$b;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Lw7/p;)Ljava/lang/Object;", "minusKey", "other", "equals", "hashCode", "", "toString", "left", "Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/CoroutineContext$a;", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$a;)V", "Serialized", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class CombinedContext
  implements CoroutineContext, Serializable
{
  private final CoroutineContext.a element;
  private final CoroutineContext left;
  
  public CombinedContext(CoroutineContext paramCoroutineContext, CoroutineContext.a parama)
  {
    this.left = paramCoroutineContext;
    this.element = parama;
  }
  
  private final boolean contains(CoroutineContext.a parama)
  {
    return r.a(get(parama.getKey()), parama);
  }
  
  private final boolean containsAll(CombinedContext paramCombinedContext)
  {
    for (;;)
    {
      if (!contains(paramCombinedContext.element)) {
        return false;
      }
      paramCombinedContext = paramCombinedContext.left;
      if (!(paramCombinedContext instanceof CombinedContext)) {
        break;
      }
      paramCombinedContext = (CombinedContext)paramCombinedContext;
    }
    r.d(paramCombinedContext, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
    return contains((CoroutineContext.a)paramCombinedContext);
  }
  
  private final int size()
  {
    int i = 2;
    Object localObject = this;
    for (;;)
    {
      localObject = ((CombinedContext)localObject).left;
      if ((localObject instanceof CombinedContext)) {
        localObject = (CombinedContext)localObject;
      } else {
        localObject = null;
      }
      if (localObject == null) {
        return i;
      }
      i++;
    }
  }
  
  private final Object writeReplace()
  {
    int i = size();
    CoroutineContext[] arrayOfCoroutineContext = new CoroutineContext[i];
    final Ref.IntRef localIntRef = new Ref.IntRef();
    fold(u.a, new Lambda(arrayOfCoroutineContext)
    {
      public final void invoke(u paramAnonymousu, CoroutineContext.a paramAnonymousa)
      {
        r.f(paramAnonymousu, "<anonymous parameter 0>");
        r.f(paramAnonymousa, "element");
        CoroutineContext[] arrayOfCoroutineContext = this.$elements;
        paramAnonymousu = localIntRef;
        int i = paramAnonymousu.element;
        paramAnonymousu.element = (i + 1);
        arrayOfCoroutineContext[i] = paramAnonymousa;
      }
    });
    if (localIntRef.element == i) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return new Serialized(arrayOfCoroutineContext);
    }
    throw new IllegalStateException("Check failed.".toString());
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof CombinedContext))
      {
        paramObject = (CombinedContext)paramObject;
        if ((paramObject.size() == size()) && (paramObject.containsAll(this))) {}
      }
      else
      {
        return false;
      }
    }
    boolean bool = true;
    return bool;
  }
  
  public <R> R fold(R paramR, p<? super R, ? super CoroutineContext.a, ? extends R> paramp)
  {
    r.f(paramp, "operation");
    return paramp.invoke(this.left.fold(paramR, paramp), this.element);
  }
  
  public <E extends CoroutineContext.a> E get(CoroutineContext.b<E> paramb)
  {
    r.f(paramb, "key");
    for (Object localObject = this;; localObject = (CombinedContext)localObject)
    {
      CoroutineContext.a locala = ((CombinedContext)localObject).element.get(paramb);
      if (locala != null) {
        return locala;
      }
      localObject = ((CombinedContext)localObject).left;
      if (!(localObject instanceof CombinedContext)) {
        break;
      }
    }
    return ((CoroutineContext)localObject).get(paramb);
  }
  
  public int hashCode()
  {
    return this.left.hashCode() + this.element.hashCode();
  }
  
  public CoroutineContext minusKey(CoroutineContext.b<?> paramb)
  {
    r.f(paramb, "key");
    if (this.element.get(paramb) != null) {
      return this.left;
    }
    paramb = this.left.minusKey(paramb);
    if (paramb == this.left) {
      paramb = this;
    } else if (paramb == EmptyCoroutineContext.INSTANCE) {
      paramb = this.element;
    } else {
      paramb = new CombinedContext(paramb, this.element);
    }
    return paramb;
  }
  
  public CoroutineContext plus(CoroutineContext paramCoroutineContext)
  {
    return CoroutineContext.DefaultImpls.a(this, paramCoroutineContext);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('[');
    localStringBuilder.append((String)fold("", toString.1.INSTANCE));
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/CombinedContext$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "readResolve", "", "Lkotlin/coroutines/CoroutineContext;", "elements", "[Lkotlin/coroutines/CoroutineContext;", "getElements", "()[Lkotlin/coroutines/CoroutineContext;", "<init>", "([Lkotlin/coroutines/CoroutineContext;)V", "Companion", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class Serialized
    implements Serializable
  {
    public static final a Companion = new a(null);
    private static final long serialVersionUID = 0L;
    private final CoroutineContext[] elements;
    
    public Serialized(CoroutineContext[] paramArrayOfCoroutineContext)
    {
      this.elements = paramArrayOfCoroutineContext;
    }
    
    private final Object readResolve()
    {
      CoroutineContext[] arrayOfCoroutineContext = this.elements;
      Object localObject = EmptyCoroutineContext.INSTANCE;
      int i = arrayOfCoroutineContext.length;
      for (int j = 0; j < i; j++) {
        localObject = ((CoroutineContext)localObject).plus(arrayOfCoroutineContext[j]);
      }
      return localObject;
    }
    
    public final CoroutineContext[] getElements()
    {
      return this.elements;
    }
    
    @Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/CombinedContext$Serialized$a;", "", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
    public static final class a {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.CombinedContext
 * JD-Core Version:    0.7.0.1
 */