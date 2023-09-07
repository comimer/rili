package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.internal.r;
import kotlin.sequences.h;
import kotlin.sequences.k;
import kotlin.u;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Landroid/view/ViewGroup;", "", "index", "Landroid/view/View;", "a", "Lkotlin/sequences/h;", "b", "(Landroid/view/ViewGroup;)Lkotlin/sequences/h;", "descendants", "core-ktx_release"}, k=2, mv={1, 6, 0})
public final class ViewGroupKt
{
  public static final View a(ViewGroup paramViewGroup, int paramInt)
  {
    r.f(paramViewGroup, "<this>");
    Object localObject = paramViewGroup.getChildAt(paramInt);
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Index: ");
    ((StringBuilder)localObject).append(paramInt);
    ((StringBuilder)localObject).append(", Size: ");
    ((StringBuilder)localObject).append(paramViewGroup.getChildCount());
    throw new IndexOutOfBoundsException(((StringBuilder)localObject).toString());
  }
  
  public static final h<View> b(ViewGroup paramViewGroup)
  {
    r.f(paramViewGroup, "<this>");
    k.b(new RestrictedSuspendLambda(paramViewGroup, null)
    {
      int I$0;
      int I$1;
      Object L$1;
      Object L$2;
      int label;
      
      public final c<u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
      {
        paramAnonymousc = new 1(this.$this_descendants, paramAnonymousc);
        paramAnonymousc.L$0 = paramAnonymousObject;
        return paramAnonymousc;
      }
      
      public final Object invoke(kotlin.sequences.j<? super View> paramAnonymousj, c<? super u> paramAnonymousc)
      {
        return ((1)create(paramAnonymousj, paramAnonymousc)).invokeSuspend(u.a);
      }
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        Object localObject1 = a.d();
        int i = this.label;
        int j;
        Object localObject2;
        kotlin.sequences.j localj;
        Object localObject3;
        if (i != 0)
        {
          if (i != 1)
          {
            if (i == 2)
            {
              j = this.I$1;
              i = this.I$0;
              localObject2 = (ViewGroup)this.L$1;
              localj = (kotlin.sequences.j)this.L$0;
              kotlin.j.b(paramAnonymousObject);
              localObject3 = this;
              paramAnonymousObject = localObject2;
              break label310;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
          }
          j = this.I$1;
          i = this.I$0;
          localObject2 = (View)this.L$2;
          localObject3 = (ViewGroup)this.L$1;
          localj = (kotlin.sequences.j)this.L$0;
          kotlin.j.b(paramAnonymousObject);
          paramAnonymousObject = this;
        }
        else
        {
          kotlin.j.b(paramAnonymousObject);
          localj = (kotlin.sequences.j)this.L$0;
          paramAnonymousObject = this.$this_descendants;
          i = 0;
          j = paramAnonymousObject.getChildCount();
          localObject3 = this;
        }
        while (i < j)
        {
          localObject2 = paramAnonymousObject.getChildAt(i);
          r.e(localObject2, "getChildAt(index)");
          ((1)localObject3).L$0 = localj;
          ((1)localObject3).L$1 = paramAnonymousObject;
          ((1)localObject3).L$2 = localObject2;
          ((1)localObject3).I$0 = i;
          ((1)localObject3).I$1 = j;
          ((1)localObject3).label = 1;
          if (localj.c(localObject2, (c)localObject3) == localObject1) {
            return localObject1;
          }
          Object localObject4 = localObject3;
          localObject3 = paramAnonymousObject;
          paramAnonymousObject = localObject4;
          if ((localObject2 instanceof ViewGroup))
          {
            localObject2 = ViewGroupKt.b((ViewGroup)localObject2);
            paramAnonymousObject.L$0 = localj;
            paramAnonymousObject.L$1 = localObject3;
            paramAnonymousObject.L$2 = null;
            paramAnonymousObject.I$0 = i;
            paramAnonymousObject.I$1 = j;
            paramAnonymousObject.label = 2;
            if (localj.h((h)localObject2, paramAnonymousObject) == localObject1) {
              return localObject1;
            }
            localObject2 = localObject3;
            localObject3 = paramAnonymousObject;
            paramAnonymousObject = localObject2;
          }
          else
          {
            label310:
            localObject2 = localObject3;
            localObject3 = paramAnonymousObject;
            paramAnonymousObject = localObject2;
          }
          i++;
        }
        return u.a;
      }
    });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.ViewGroupKt
 * JD-Core Version:    0.7.0.1
 */