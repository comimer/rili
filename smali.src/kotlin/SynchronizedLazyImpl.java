package kotlin;

import java.io.Serializable;
import w7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/SynchronizedLazyImpl;", "T", "Lkotlin/f;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "", "isInitialized", "", "toString", "_value", "Ljava/lang/Object;", "lock", "getValue", "()Ljava/lang/Object;", "value", "Lkotlin/Function0;", "initializer", "<init>", "(Lw7/a;Ljava/lang/Object;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class SynchronizedLazyImpl<T>
  implements f<T>, Serializable
{
  private volatile Object _value;
  private a<? extends T> initializer;
  private final Object lock;
  
  public SynchronizedLazyImpl(a<? extends T> parama, Object paramObject)
  {
    this.initializer = parama;
    this._value = r.a;
    parama = paramObject;
    if (paramObject == null) {
      parama = this;
    }
    this.lock = parama;
  }
  
  private final Object writeReplace()
  {
    return new InitializedLazyImpl(getValue());
  }
  
  public T getValue()
  {
    Object localObject1 = this._value;
    r localr = r.a;
    if (localObject1 != localr) {
      return localObject1;
    }
    synchronized (this.lock)
    {
      localObject1 = this._value;
      if (localObject1 == localr)
      {
        localObject1 = this.initializer;
        kotlin.jvm.internal.r.c(localObject1);
        localObject1 = ((a)localObject1).invoke();
        this._value = localObject1;
        this.initializer = null;
      }
      return localObject1;
    }
  }
  
  public boolean isInitialized()
  {
    boolean bool;
    if (this._value != r.a) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public String toString()
  {
    String str;
    if (isInitialized()) {
      str = String.valueOf(getValue());
    } else {
      str = "Lazy value not initialized yet.";
    }
    return str;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.SynchronizedLazyImpl
 * JD-Core Version:    0.7.0.1
 */