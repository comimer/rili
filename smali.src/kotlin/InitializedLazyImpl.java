package kotlin;

import java.io.Serializable;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/InitializedLazyImpl;", "T", "Lkotlin/f;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "isInitialized", "", "toString", "value", "Ljava/lang/Object;", "getValue", "()Ljava/lang/Object;", "<init>", "(Ljava/lang/Object;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class InitializedLazyImpl<T>
  implements f<T>, Serializable
{
  private final T value;
  
  public InitializedLazyImpl(T paramT)
  {
    this.value = paramT;
  }
  
  public T getValue()
  {
    return this.value;
  }
  
  public boolean isInitialized()
  {
    return true;
  }
  
  public String toString()
  {
    return String.valueOf(getValue());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.InitializedLazyImpl
 * JD-Core Version:    0.7.0.1
 */