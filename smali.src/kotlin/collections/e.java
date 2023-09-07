package kotlin.collections;

import java.util.AbstractList;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/e;", "E", "", "Ljava/util/AbstractList;", "", "index", "element", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "removeAt", "(I)Ljava/lang/Object;", "Lkotlin/u;", "add", "(ILjava/lang/Object;)V", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class e<E>
  extends AbstractList<E>
  implements x7.e
{
  public abstract void add(int paramInt, E paramE);
  
  public abstract int getSize();
  
  public abstract E removeAt(int paramInt);
  
  public abstract E set(int paramInt, E paramE);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.e
 * JD-Core Version:    0.7.0.1
 */