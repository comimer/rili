package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/Result;", "T", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "getOrNull-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "getOrNull", "", "exceptionOrNull-impl", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "exceptionOrNull", "", "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "toString", "", "hashCode-impl", "(Ljava/lang/Object;)I", "hashCode", "", "other", "", "equals-impl", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "equals", "value", "Ljava/lang/Object;", "getValue$annotations", "()V", "isSuccess-impl", "(Ljava/lang/Object;)Z", "isSuccess", "isFailure-impl", "isFailure", "constructor-impl", "Companion", "a", "Failure", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class Result<T>
  implements Serializable
{
  public static final a Companion = new a(null);
  private final Object value;
  
  public static <T> Object constructor-impl(Object paramObject)
  {
    return paramObject;
  }
  
  public static boolean equals-impl(Object paramObject1, Object paramObject2)
  {
    if (!(paramObject2 instanceof Result)) {
      return false;
    }
    return r.a(paramObject1, ((Result)paramObject2).unbox-impl());
  }
  
  public static final boolean equals-impl0(Object paramObject1, Object paramObject2)
  {
    return r.a(paramObject1, paramObject2);
  }
  
  public static final Throwable exceptionOrNull-impl(Object paramObject)
  {
    if ((paramObject instanceof Failure)) {
      paramObject = ((Failure)paramObject).exception;
    } else {
      paramObject = null;
    }
    return paramObject;
  }
  
  private static final T getOrNull-impl(Object paramObject)
  {
    Object localObject = paramObject;
    if (isFailure-impl(paramObject)) {
      localObject = null;
    }
    return localObject;
  }
  
  public static int hashCode-impl(Object paramObject)
  {
    int i;
    if (paramObject == null) {
      i = 0;
    } else {
      i = paramObject.hashCode();
    }
    return i;
  }
  
  public static final boolean isFailure-impl(Object paramObject)
  {
    return paramObject instanceof Failure;
  }
  
  public static final boolean isSuccess-impl(Object paramObject)
  {
    return paramObject instanceof Failure ^ true;
  }
  
  public static String toString-impl(Object paramObject)
  {
    if ((paramObject instanceof Failure))
    {
      paramObject = ((Failure)paramObject).toString();
    }
    else
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Success(");
      localStringBuilder.append(paramObject);
      localStringBuilder.append(')');
      paramObject = localStringBuilder.toString();
    }
    return paramObject;
  }
  
  public boolean equals(Object paramObject)
  {
    return equals-impl(this.value, paramObject);
  }
  
  public int hashCode()
  {
    return hashCode-impl(this.value);
  }
  
  public String toString()
  {
    return toString-impl(this.value);
  }
  
  @Metadata(d1={""}, d2={"Lkotlin/Result$Failure;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "exception", "", "(Ljava/lang/Throwable;)V", "equals", "", "other", "", "hashCode", "", "toString", "", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Failure
    implements Serializable
  {
    public final Throwable exception;
    
    public Failure(Throwable paramThrowable)
    {
      this.exception = paramThrowable;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool;
      if (((paramObject instanceof Failure)) && (r.a(this.exception, ((Failure)paramObject).exception))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public int hashCode()
    {
      return this.exception.hashCode();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Failure(");
      localStringBuilder.append(this.exception);
      localStringBuilder.append(')');
      return localStringBuilder.toString();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/Result$a;", "", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.Result
 * JD-Core Version:    0.7.0.1
 */