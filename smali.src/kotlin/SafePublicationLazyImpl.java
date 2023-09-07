package kotlin;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/SafePublicationLazyImpl;", "T", "Lkotlin/f;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "", "isInitialized", "", "toString", "_value", "Ljava/lang/Object;", "final", "getValue", "()Ljava/lang/Object;", "value", "Lkotlin/Function0;", "initializer", "<init>", "(Lw7/a;)V", "Companion", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class SafePublicationLazyImpl<T>
  implements f<T>, Serializable
{
  public static final a Companion = new a(null);
  private static final AtomicReferenceFieldUpdater<SafePublicationLazyImpl<?>, Object> valueUpdater = AtomicReferenceFieldUpdater.newUpdater(SafePublicationLazyImpl.class, Object.class, "_value");
  private volatile Object _value;
  private final Object jdField_final;
  private volatile w7.a<? extends T> initializer;
  
  public SafePublicationLazyImpl(w7.a<? extends T> parama)
  {
    this.initializer = parama;
    parama = r.a;
    this._value = parama;
    this.jdField_final = parama;
  }
  
  private final Object writeReplace()
  {
    return new InitializedLazyImpl(getValue());
  }
  
  public T getValue()
  {
    Object localObject = this._value;
    r localr = r.a;
    if (localObject != localr) {
      return localObject;
    }
    localObject = this.initializer;
    if (localObject != null)
    {
      localObject = ((w7.a)localObject).invoke();
      if (androidx.work.impl.utils.futures.a.a(valueUpdater, this, localr, localObject))
      {
        this.initializer = null;
        return localObject;
      }
    }
    return this._value;
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
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/SafePublicationLazyImpl$a;", "", "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;", "Lkotlin/SafePublicationLazyImpl;", "kotlin.jvm.PlatformType", "valueUpdater", "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.SafePublicationLazyImpl
 * JD-Core Version:    0.7.0.1
 */