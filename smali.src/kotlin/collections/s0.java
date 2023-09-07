package kotlin.collections;

import java.util.List;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/s0;", "T", "Lkotlin/collections/e;", "", "index", "get", "(I)Ljava/lang/Object;", "Lkotlin/u;", "clear", "removeAt", "element", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "add", "(ILjava/lang/Object;)V", "", "a", "Ljava/util/List;", "delegate", "getSize", "()I", "size", "<init>", "(Ljava/util/List;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class s0<T>
  extends e<T>
{
  private final List<T> a;
  
  public s0(List<T> paramList)
  {
    this.a = paramList;
  }
  
  public void add(int paramInt, T paramT)
  {
    this.a.add(b0.J(this, paramInt), paramT);
  }
  
  public void clear()
  {
    this.a.clear();
  }
  
  public T get(int paramInt)
  {
    return this.a.get(b0.I(this, paramInt));
  }
  
  public int getSize()
  {
    return this.a.size();
  }
  
  public T removeAt(int paramInt)
  {
    return this.a.remove(b0.I(this, paramInt));
  }
  
  public T set(int paramInt, T paramT)
  {
    return this.a.set(b0.I(this, paramInt), paramT);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.s0
 * JD-Core Version:    0.7.0.1
 */