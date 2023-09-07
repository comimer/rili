package androidx.work;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.c<-Landroidx.work.m.b.c;>;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.n;
import kotlinx.coroutines.o;

@Metadata(bv={}, d1={""}, d2={"Landroidx/work/m;", "Landroidx/work/m$b$c;", "a", "(Landroidx/work/m;Lkotlin/coroutines/c;)Ljava/lang/Object;", "work-runtime-ktx_release"}, k=2, mv={1, 5, 1})
public final class OperationKt
{
  public static final Object a(m paramm, c<? super m.b.c> paramc)
  {
    if ((paramc instanceof await.1))
    {
      localObject1 = (await.1)paramc;
      i = ((await.1)localObject1).label;
      if ((i & 0x80000000) != 0)
      {
        ((await.1)localObject1).label = (i + -2147483648);
        paramc = (c<? super m.b.c>)localObject1;
        break label46;
      }
    }
    paramc = new ContinuationImpl(paramc)
    {
      Object L$0;
      int label;
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        this.result = paramAnonymousObject;
        this.label |= 0x80000000;
        return OperationKt.a(null, this);
      }
    };
    label46:
    Object localObject1 = paramc.result;
    Object localObject2 = a.d();
    int i = paramc.label;
    if (i != 0)
    {
      if (i == 1)
      {
        paramm = (ListenableFuture)paramc.L$0;
        kotlin.j.b(localObject1);
        paramm = (m)localObject1;
      }
      else
      {
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
    }
    else
    {
      kotlin.j.b(localObject1);
      paramm = paramm.getResult();
      r.e(paramm, "result");
      if (paramm.isDone())
      {
        try
        {
          paramm = paramm.get();
        }
        catch (ExecutionException paramm)
        {
          paramc = paramm.getCause();
          if (paramc != null) {
            paramm = paramc;
          }
          throw paramm;
        }
      }
      else
      {
        paramc.L$0 = paramm;
        paramc.label = 1;
        localObject1 = new o(a.c(paramc), 1);
        ((o)localObject1).z();
        paramm.addListener(new j((n)localObject1, paramm), DirectExecutor.INSTANCE);
        ((n)localObject1).f(new ListenableFutureKt.await.2.2(paramm));
        localObject1 = ((o)localObject1).w();
        if (localObject1 == a.d()) {
          f.c(paramc);
        }
        paramm = (m)localObject1;
        if (localObject1 == localObject2) {
          return localObject2;
        }
      }
    }
    r.e(paramm, "result.await()");
    return paramm;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.OperationKt
 * JD-Core Version:    0.7.0.1
 */