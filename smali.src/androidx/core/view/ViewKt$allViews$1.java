package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.sequences.h;
import kotlin.u;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/sequences/j;", "Landroid/view/View;", "Lkotlin/u;", "<anonymous>"}, k=3, mv={1, 6, 0})
@d(c="androidx.core.view.ViewKt$allViews$1", f="View.kt", l={406, 408}, m="invokeSuspend")
final class ViewKt$allViews$1
  extends RestrictedSuspendLambda
  implements p<kotlin.sequences.j<? super View>, c<? super u>, Object>
{
  int label;
  
  ViewKt$allViews$1(View paramView, c<? super 1> paramc)
  {
    super(2, paramc);
  }
  
  public final c<u> create(Object paramObject, c<?> paramc)
  {
    paramc = new 1(this.$this_allViews, paramc);
    paramc.L$0 = paramObject;
    return paramc;
  }
  
  public final Object invoke(kotlin.sequences.j<? super View> paramj, c<? super u> paramc)
  {
    return ((1)create(paramj, paramc)).invokeSuspend(u.a);
  }
  
  public final Object invokeSuspend(Object paramObject)
  {
    Object localObject1 = a.d();
    int i = this.label;
    if (i != 0)
    {
      if (i != 1)
      {
        if (i == 2)
        {
          kotlin.j.b(paramObject);
          break label153;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
      localObject2 = (kotlin.sequences.j)this.L$0;
      kotlin.j.b(paramObject);
      paramObject = localObject2;
    }
    else
    {
      kotlin.j.b(paramObject);
      localObject2 = (kotlin.sequences.j)this.L$0;
      View localView = this.$this_allViews;
      this.L$0 = localObject2;
      this.label = 1;
      paramObject = localObject2;
      if (((kotlin.sequences.j)localObject2).c(localView, this) == localObject1) {
        return localObject1;
      }
    }
    Object localObject2 = this.$this_allViews;
    if ((localObject2 instanceof ViewGroup))
    {
      localObject2 = ViewGroupKt.b((ViewGroup)localObject2);
      this.L$0 = null;
      this.label = 2;
      if (paramObject.h((h)localObject2, this) == localObject1) {
        return localObject1;
      }
    }
    label153:
    return u.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.ViewKt.allViews.1
 * JD-Core Version:    0.7.0.1
 */