package kotlin.jvm;

import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/jvm/KotlinReflectionNotSupportedError;", "Ljava/lang/Error;", "()V", "message", "", "(Ljava/lang/String;)V", "cause", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "(Ljava/lang/Throwable;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public class KotlinReflectionNotSupportedError
  extends Error
{
  public KotlinReflectionNotSupportedError()
  {
    super("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
  }
  
  public KotlinReflectionNotSupportedError(String paramString)
  {
    super(paramString);
  }
  
  public KotlinReflectionNotSupportedError(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public KotlinReflectionNotSupportedError(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.KotlinReflectionNotSupportedError
 * JD-Core Version:    0.7.0.1
 */