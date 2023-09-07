package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.u;
import kotlinx.coroutines.channels.n;
import kotlinx.coroutines.channels.s;
import kotlinx.coroutines.channels.s.a;
import kotlinx.coroutines.flow.e;
import kotlinx.coroutines.k0;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"T", "Lkotlinx/coroutines/channels/n;", "Lkotlin/u;", "<anonymous>"}, k=3, mv={1, 5, 1})
@kotlin.coroutines.jvm.internal.d(c="androidx.lifecycle.FlowExtKt$flowWithLifecycle$1", f="FlowExt.kt", l={91}, m="invokeSuspend")
final class FlowExtKt$flowWithLifecycle$1
  extends SuspendLambda
  implements p<n<Object>, c<? super u>, Object>
{
  int label;
  
  FlowExtKt$flowWithLifecycle$1(Lifecycle paramLifecycle, Lifecycle.State paramState, kotlinx.coroutines.flow.d<Object> paramd, c<? super 1> paramc)
  {
    super(2, paramc);
  }
  
  public final c<u> create(Object paramObject, c<?> paramc)
  {
    paramc = new 1(this.$lifecycle, this.$minActiveState, this.$this_flowWithLifecycle, paramc);
    paramc.L$0 = paramObject;
    return paramc;
  }
  
  public final Object invoke(n<Object> paramn, c<? super u> paramc)
  {
    return ((1)create(paramn, paramc)).invokeSuspend(u.a);
  }
  
  public final Object invokeSuspend(final Object paramObject)
  {
    Object localObject = a.d();
    int i = this.label;
    if (i != 0)
    {
      if (i == 1)
      {
        localObject = (n)this.L$0;
        j.b(paramObject);
        paramObject = localObject;
      }
      else
      {
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
    }
    else
    {
      j.b(paramObject);
      paramObject = (n)this.L$0;
      Lifecycle localLifecycle = this.$lifecycle;
      Lifecycle.State localState = this.$minActiveState;
      SuspendLambda local1 = new SuspendLambda(this.$this_flowWithLifecycle, paramObject)
      {
        int label;
        
        public final c<u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
        {
          return new 1(this.$this_flowWithLifecycle, paramObject, paramAnonymousc);
        }
        
        public final Object invoke(k0 paramAnonymousk0, c<? super u> paramAnonymousc)
        {
          return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
        }
        
        public final Object invokeSuspend(Object paramAnonymousObject)
        {
          Object localObject = a.d();
          int i = this.label;
          if (i != 0)
          {
            if (i == 1) {
              j.b(paramAnonymousObject);
            } else {
              throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
          }
          else
          {
            j.b(paramAnonymousObject);
            paramAnonymousObject = this.$this_flowWithLifecycle;
            a locala = new a(paramObject);
            this.label = 1;
            if (paramAnonymousObject.a(locala, this) == localObject) {
              return localObject;
            }
          }
          return u.a;
        }
        
        @Metadata(bv={}, d1={""}, d2={"kotlinx/coroutines/flow/r", "Lkotlinx/coroutines/flow/e;", "value", "Lkotlin/u;", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k=1, mv={1, 5, 1})
        public static final class a
          implements e<Object>
        {
          public a(n paramn) {}
          
          public Object emit(Object paramObject, c<? super u> paramc)
          {
            paramObject = this.a.w(paramObject, paramc);
            if (paramObject == a.d()) {
              return paramObject;
            }
            return u.a;
          }
        }
      };
      this.L$0 = paramObject;
      this.label = 1;
      if (RepeatOnLifecycleKt.a(localLifecycle, localState, local1, this) == localObject) {
        return localObject;
      }
    }
    s.a.a(paramObject, null, 1, null);
    return u.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.FlowExtKt.flowWithLifecycle.1
 * JD-Core Version:    0.7.0.1
 */