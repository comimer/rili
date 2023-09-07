package kotlin;

import java.io.Serializable;
import w7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/UnsafeLazyImpl;", "T", "Lkotlin/f;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "", "isInitialized", "", "toString", "_value", "Ljava/lang/Object;", "getValue", "()Ljava/lang/Object;", "value", "Lkotlin/Function0;", "initializer", "<init>", "(Lw7/a;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class UnsafeLazyImpl<T>
  implements f<T>, Serializable
{
  private Object _value;
  private a<? extends T> initializer;
  
  public UnsafeLazyImpl(a<? extends T> parama)
  {
    this.initializer = parama;
    this._value = r.a;
  }
  
  private final Object writeReplace()
  {
    return new InitializedLazyImpl(getValue());
  }
  
  public T getValue()
  {
    if (this._value == r.a)
    {
      a locala = this.initializer;
      kotlin.jvm.internal.r.c(locala);
      this._value = locala.invoke();
      this.initializer = null;
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
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.UnsafeLazyImpl
 * JD-Core Version:    0.7.0.1
 */