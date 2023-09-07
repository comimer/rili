package kotlin.reflect.full;

import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/reflect/full/IllegalPropertyDelegateAccessException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "cause", "Ljava/lang/IllegalAccessException;", "(Ljava/lang/IllegalAccessException;)V", "kotlin-reflection"}, k=1, mv={1, 7, 1}, xi=48)
public final class IllegalPropertyDelegateAccessException
  extends Exception
{
  public IllegalPropertyDelegateAccessException(IllegalAccessException paramIllegalAccessException)
  {
    super("Cannot obtain the delegate of a non-accessible property. Use \"isAccessible = true\" to make the property accessible", paramIllegalAccessException);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.full.IllegalPropertyDelegateAccessException
 * JD-Core Version:    0.7.0.1
 */