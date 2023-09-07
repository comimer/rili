package kotlin.collections;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/a;", "T", "", "", "g", "hasNext", "next", "()Ljava/lang/Object;", "Lkotlin/u;", "b", "value", "f", "(Ljava/lang/Object;)V", "c", "Lkotlin/collections/State;", "a", "Lkotlin/collections/State;", "state", "Ljava/lang/Object;", "nextValue", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class a<T>
  implements Iterator<T>, x7.a
{
  private State a = State.NotReady;
  private T b;
  
  private final boolean g()
  {
    this.a = State.Failed;
    b();
    boolean bool;
    if (this.a == State.Ready) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected abstract void b();
  
  protected final void c()
  {
    this.a = State.Done;
  }
  
  protected final void f(T paramT)
  {
    this.b = paramT;
    this.a = State.Ready;
  }
  
  public boolean hasNext()
  {
    State localState1 = this.a;
    State localState2 = State.Failed;
    boolean bool = false;
    int i;
    if (localState1 != localState2) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      i = a.a[localState1.ordinal()];
      if (i != 1) {
        if (i != 2) {
          bool = g();
        } else {
          bool = true;
        }
      }
      return bool;
    }
    throw new IllegalArgumentException("Failed requirement.".toString());
  }
  
  public T next()
  {
    if (hasNext())
    {
      this.a = State.NotReady;
      return this.b;
    }
    throw new NoSuchElementException();
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.a
 * JD-Core Version:    0.7.0.1
 */