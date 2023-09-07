package kotlin.reflect;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/n;", "T", "V", "Lkotlin/reflect/l;", "Lkotlin/Function1;", "receiver", "", "getDelegate", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/reflect/n$a;", "getGetter", "()Lkotlin/reflect/n$a;", "getter", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract interface n<T, V>
  extends l<V>, w7.l<T, V>
{
  public abstract Object getDelegate(T paramT);
  
  public abstract a<T, V> getGetter();
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/n$a;", "T", "V", "Lkotlin/reflect/l$a;", "Lkotlin/Function1;", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static abstract interface a<T, V>
    extends l.a<V>, w7.l<T, V>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.n
 * JD-Core Version:    0.7.0.1
 */