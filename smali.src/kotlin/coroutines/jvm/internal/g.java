package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/jvm/internal/g;", "", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "continuation", "Lkotlin/coroutines/jvm/internal/g$a;", "a", "", "b", "Lkotlin/coroutines/jvm/internal/g$a;", "notOnJava9", "c", "cache", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class g
{
  public static final g a = new g();
  private static final a b = new a(null, null, null);
  private static a c;
  
  private final a a(BaseContinuationImpl paramBaseContinuationImpl)
  {
    try
    {
      Method localMethod1 = Class.class.getDeclaredMethod("getModule", new Class[0]);
      Method localMethod2 = paramBaseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]);
      Method localMethod3 = paramBaseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]);
      paramBaseContinuationImpl = new kotlin/coroutines/jvm/internal/g$a;
      paramBaseContinuationImpl.<init>(localMethod1, localMethod2, localMethod3);
      c = paramBaseContinuationImpl;
      return paramBaseContinuationImpl;
    }
    catch (Exception paramBaseContinuationImpl)
    {
      paramBaseContinuationImpl = b;
      c = paramBaseContinuationImpl;
    }
    return paramBaseContinuationImpl;
  }
  
  public final String b(BaseContinuationImpl paramBaseContinuationImpl)
  {
    r.f(paramBaseContinuationImpl, "continuation");
    a locala = c;
    Object localObject1 = locala;
    if (locala == null) {
      localObject1 = a(paramBaseContinuationImpl);
    }
    Object localObject2 = b;
    locala = null;
    if (localObject1 == localObject2) {
      return null;
    }
    localObject2 = ((a)localObject1).a;
    if (localObject2 != null) {
      paramBaseContinuationImpl = ((Method)localObject2).invoke(paramBaseContinuationImpl.getClass(), new Object[0]);
    } else {
      paramBaseContinuationImpl = null;
    }
    if (paramBaseContinuationImpl == null) {
      return null;
    }
    localObject2 = ((a)localObject1).b;
    if (localObject2 != null) {
      paramBaseContinuationImpl = ((Method)localObject2).invoke(paramBaseContinuationImpl, new Object[0]);
    } else {
      paramBaseContinuationImpl = null;
    }
    if (paramBaseContinuationImpl == null) {
      return null;
    }
    localObject1 = ((a)localObject1).c;
    if (localObject1 != null) {
      paramBaseContinuationImpl = ((Method)localObject1).invoke(paramBaseContinuationImpl, new Object[0]);
    } else {
      paramBaseContinuationImpl = null;
    }
    localObject1 = locala;
    if ((paramBaseContinuationImpl instanceof String)) {
      localObject1 = (String)paramBaseContinuationImpl;
    }
    return localObject1;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/jvm/internal/g$a;", "", "Ljava/lang/reflect/Method;", "a", "Ljava/lang/reflect/Method;", "getModuleMethod", "b", "getDescriptorMethod", "c", "nameMethod", "<init>", "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class a
  {
    public final Method a;
    public final Method b;
    public final Method c;
    
    public a(Method paramMethod1, Method paramMethod2, Method paramMethod3)
    {
      this.a = paramMethod1;
      this.b = paramMethod2;
      this.c = paramMethod3;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.jvm.internal.g
 * JD-Core Version:    0.7.0.1
 */