package androidx.databinding;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.lifecycle.n;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.flow.e;
import kotlinx.coroutines.k0;

@Metadata(bv={}, d1={""}, d2={"Lkotlinx/coroutines/k0;", "Lkotlin/u;", "<anonymous>"}, k=3, mv={1, 5, 1})
@kotlin.coroutines.jvm.internal.d(c="androidx.databinding.ViewDataBindingKtx$StateFlowListener$startCollection$1", f="ViewDataBindingKtx.kt", l={95}, m="invokeSuspend")
final class ViewDataBindingKtx$StateFlowListener$startCollection$1
  extends SuspendLambda
  implements w7.p<k0, c<? super u>, Object>
{
  int label;
  
  ViewDataBindingKtx$StateFlowListener$startCollection$1(n paramn, kotlinx.coroutines.flow.d<? extends Object> paramd, p paramp, c<? super 1> paramc)
  {
    super(2, paramc);
  }
  
  public final c<u> create(Object paramObject, c<?> paramc)
  {
    return new 1(this.$owner, this.$flow, null, paramc);
  }
  
  public final Object invoke(k0 paramk0, c<? super u> paramc)
  {
    return ((1)create(paramk0, paramc)).invokeSuspend(u.a);
  }
  
  public final Object invokeSuspend(Object paramObject)
  {
    Object localObject = a.d();
    int i = this.label;
    if (i != 0)
    {
      if (i == 1) {
        j.b(paramObject);
      } else {
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
    }
    else
    {
      j.b(paramObject);
      Lifecycle localLifecycle = this.$owner.getLifecycle();
      r.e(localLifecycle, "owner.lifecycle");
      Lifecycle.State localState = Lifecycle.State.STARTED;
      paramObject = new SuspendLambda(this.$flow, null)
      {
        int label;
        
        public final c<u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
        {
          return new 1(this.$flow, null, paramAnonymousc);
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
            paramAnonymousObject = this.$flow;
            a locala = new a(null);
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
          public a(p paramp) {}
          
          public Object emit(Object paramObject, c<? super u> paramc)
          {
            paramObject = null;
            paramc = p.d(null).a();
            if (paramc != null)
            {
              paramc.handleFieldChange(p.d(null).b, p.d(null).b(), 0);
              paramObject = u.a;
            }
            if (paramObject == a.d()) {
              return paramObject;
            }
            return u.a;
          }
        }
      };
      this.label = 1;
      if (RepeatOnLifecycleKt.a(localLifecycle, localState, paramObject, this) == localObject) {
        return localObject;
      }
    }
    return u.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ViewDataBindingKtx.StateFlowListener.startCollection.1
 * JD-Core Version:    0.7.0.1
 */