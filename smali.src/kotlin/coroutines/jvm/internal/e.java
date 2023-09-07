package kotlin.coroutines.jvm.internal;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Ljava/lang/StackTraceElement;", "d", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/StackTraceElement;", "Lkotlin/coroutines/jvm/internal/d;", "b", "", "c", "expected", "actual", "Lkotlin/u;", "a", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class e
{
  private static final void a(int paramInt1, int paramInt2)
  {
    if (paramInt2 <= paramInt1) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Debug metadata version mismatch. Expected: ");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append(", got ");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append(". Please update the Kotlin standard library.");
    throw new IllegalStateException(localStringBuilder.toString().toString());
  }
  
  private static final d b(BaseContinuationImpl paramBaseContinuationImpl)
  {
    return (d)paramBaseContinuationImpl.getClass().getAnnotation(d.class);
  }
  
  private static final int c(BaseContinuationImpl paramBaseContinuationImpl)
  {
    int i;
    try
    {
      Field localField = paramBaseContinuationImpl.getClass().getDeclaredField("label");
      localField.setAccessible(true);
      paramBaseContinuationImpl = localField.get(paramBaseContinuationImpl);
      if ((paramBaseContinuationImpl instanceof Integer)) {
        paramBaseContinuationImpl = (Integer)paramBaseContinuationImpl;
      } else {
        paramBaseContinuationImpl = null;
      }
      if (paramBaseContinuationImpl != null) {
        i = paramBaseContinuationImpl.intValue();
      } else {
        i = 0;
      }
      i--;
    }
    catch (Exception paramBaseContinuationImpl)
    {
      i = -1;
    }
    return i;
  }
  
  public static final StackTraceElement d(BaseContinuationImpl paramBaseContinuationImpl)
  {
    r.f(paramBaseContinuationImpl, "<this>");
    d locald = b(paramBaseContinuationImpl);
    if (locald == null) {
      return null;
    }
    a(1, locald.v());
    int i = c(paramBaseContinuationImpl);
    if (i < 0) {
      i = -1;
    } else {
      i = locald.l()[i];
    }
    paramBaseContinuationImpl = g.a.b(paramBaseContinuationImpl);
    if (paramBaseContinuationImpl == null)
    {
      paramBaseContinuationImpl = locald.c();
    }
    else
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramBaseContinuationImpl);
      localStringBuilder.append('/');
      localStringBuilder.append(locald.c());
      paramBaseContinuationImpl = localStringBuilder.toString();
    }
    return new StackTraceElement(paramBaseContinuationImpl, locald.m(), locald.f(), i);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.jvm.internal.e
 * JD-Core Version:    0.7.0.1
 */