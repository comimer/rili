package kotlin.reflect.full;

import java.util.Arrays;
import java.util.Map;
import java.util.Map<Lkotlin.reflect.KParameter;+Ljava.lang.Object;>;
import kotlin.Metadata;
import kotlin.coroutines.c<-TR;>;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.j;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.jvm.internal.y;
import kotlin.reflect.KParameter;
import kotlin.reflect.g;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.m;
import kotlin.reflect.p;
import kotlin.u;

@Metadata(bv={}, d1={""}, d2={"R", "Lkotlin/reflect/c;", "", "", "args", "a", "(Lkotlin/reflect/c;[Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;", "", "Lkotlin/reflect/KParameter;", "b", "(Lkotlin/reflect/c;Ljava/util/Map;Lkotlin/coroutines/c;)Ljava/lang/Object;", "kotlin-reflection"}, k=2, mv={1, 7, 1})
public final class KCallables
{
  public static final <R> Object a(kotlin.reflect.c<? extends R> paramc, Object[] paramArrayOfObject, kotlin.coroutines.c<? super R> paramc1)
  {
    if ((paramc1 instanceof callSuspend.1))
    {
      localObject1 = (callSuspend.1)paramc1;
      i = ((callSuspend.1)localObject1).label;
      if ((i & 0x80000000) != 0)
      {
        ((callSuspend.1)localObject1).label = (i + -2147483648);
        paramc1 = (kotlin.coroutines.c<? super R>)localObject1;
        break label49;
      }
    }
    paramc1 = new ContinuationImpl(paramc1)
    {
      Object L$0;
      Object L$1;
      int label;
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        this.result = paramAnonymousObject;
        this.label |= 0x80000000;
        return KCallables.a(null, null, this);
      }
    };
    label49:
    Object localObject1 = paramc1.result;
    Object localObject2 = a.d();
    int i = paramc1.label;
    if (i != 0)
    {
      if (i == 1)
      {
        paramc = (Object[])paramc1.L$1;
        paramc = (kotlin.reflect.c)paramc1.L$0;
        j.b(localObject1);
        paramArrayOfObject = (Object[])localObject1;
      }
      else
      {
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
    }
    else
    {
      j.b(localObject1);
      if (!paramc.isSuspend()) {
        return paramc.call(Arrays.copyOf(paramArrayOfObject, paramArrayOfObject.length));
      }
      if (!(paramc instanceof g)) {
        break label260;
      }
      paramc1.L$0 = paramc;
      paramc1.L$1 = paramArrayOfObject;
      paramc1.label = 1;
      localObject1 = new y(2);
      ((y)localObject1).b(paramArrayOfObject);
      ((y)localObject1).a(paramc1);
      localObject1 = paramc.call(((y)localObject1).d(new Object[((y)localObject1).c()]));
      if (localObject1 == a.d()) {
        f.c(paramc1);
      }
      paramArrayOfObject = (Object[])localObject1;
      if (localObject1 == localObject2) {
        return localObject2;
      }
    }
    if ((r.a(paramc.getReturnType().h(), v.b(u.class))) && (!paramc.getReturnType().f())) {
      return u.a;
    }
    return paramArrayOfObject;
    label260:
    paramArrayOfObject = new StringBuilder();
    paramArrayOfObject.append("Cannot callSuspend on a property ");
    paramArrayOfObject.append(paramc);
    paramArrayOfObject.append(": suspend properties are not supported yet");
    throw new IllegalArgumentException(paramArrayOfObject.toString());
  }
  
  public static final <R> Object b(kotlin.reflect.c<? extends R> paramc, Map<KParameter, ? extends Object> paramMap, kotlin.coroutines.c<? super R> paramc1)
  {
    if ((paramc1 instanceof callSuspendBy.1))
    {
      localObject1 = (callSuspendBy.1)paramc1;
      i = ((callSuspendBy.1)localObject1).label;
      if ((i & 0x80000000) != 0)
      {
        ((callSuspendBy.1)localObject1).label = (i + -2147483648);
        paramc1 = (kotlin.coroutines.c<? super R>)localObject1;
        break label49;
      }
    }
    paramc1 = new ContinuationImpl(paramc1)
    {
      Object L$0;
      Object L$1;
      Object L$2;
      int label;
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        this.result = paramAnonymousObject;
        this.label |= 0x80000000;
        return KCallables.b(null, null, this);
      }
    };
    label49:
    Object localObject1 = paramc1.result;
    Object localObject2 = a.d();
    int i = paramc1.label;
    if (i != 0)
    {
      if (i == 1)
      {
        paramc = (KCallableImpl)paramc1.L$2;
        paramc = (Map)paramc1.L$1;
        paramc = (kotlin.reflect.c)paramc1.L$0;
        j.b(localObject1);
        paramMap = (Map<KParameter, ? extends Object>)localObject1;
      }
      else
      {
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
    }
    else
    {
      j.b(localObject1);
      if (!paramc.isSuspend()) {
        return paramc.callBy(paramMap);
      }
      if (!(paramc instanceof g)) {
        break label280;
      }
      localObject1 = m.b(paramc);
      if (localObject1 == null) {
        break label247;
      }
      paramc1.L$0 = paramc;
      paramc1.L$1 = paramMap;
      paramc1.L$2 = localObject1;
      paramc1.label = 1;
      localObject1 = ((KCallableImpl)localObject1).o(paramMap, paramc1);
      if (localObject1 == a.d()) {
        f.c(paramc1);
      }
      paramMap = (Map<KParameter, ? extends Object>)localObject1;
      if (localObject1 == localObject2) {
        return localObject2;
      }
    }
    if ((r.a(paramc.getReturnType().h(), v.b(u.class))) && (!paramc.getReturnType().f())) {
      return u.a;
    }
    return paramMap;
    label247:
    paramMap = new StringBuilder();
    paramMap.append("This callable does not support a default call: ");
    paramMap.append(paramc);
    throw new KotlinReflectionInternalError(paramMap.toString());
    label280:
    paramMap = new StringBuilder();
    paramMap.append("Cannot callSuspendBy on a property ");
    paramMap.append(paramc);
    paramMap.append(": suspend properties are not supported yet");
    throw new IllegalArgumentException(paramMap.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.full.KCallables
 * JD-Core Version:    0.7.0.1
 */