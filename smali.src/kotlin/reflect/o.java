package kotlin.reflect;

import kotlin.Metadata;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/o;", "D", "E", "V", "Lkotlin/reflect/l;", "Lkotlin/Function2;", "receiver1", "receiver2", "", "getDelegate", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/reflect/o$a;", "getGetter", "()Lkotlin/reflect/o$a;", "getter", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract interface o<D, E, V>
  extends l<V>, p<D, E, V>
{
  public abstract Object getDelegate(D paramD, E paramE);
  
  public abstract a<D, E, V> getGetter();
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/o$a;", "D", "E", "V", "Lkotlin/reflect/l$a;", "Lkotlin/Function2;", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static abstract interface a<D, E, V>
    extends l.a<V>, p<D, E, V>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.o
 * JD-Core Version:    0.7.0.1
 */