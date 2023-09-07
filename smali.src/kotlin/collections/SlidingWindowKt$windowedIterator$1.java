package kotlin.collections;

import b8.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.u;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"T", "Lkotlin/sequences/j;", "", "Lkotlin/u;", "<anonymous>"}, k=3, mv={1, 7, 1})
@d(c="kotlin.collections.SlidingWindowKt$windowedIterator$1", f="SlidingWindow.kt", l={34, 40, 49, 55, 58}, m="invokeSuspend")
final class SlidingWindowKt$windowedIterator$1
  extends RestrictedSuspendLambda
  implements p<kotlin.sequences.j<? super List<Object>>, c<? super u>, Object>
{
  int I$0;
  Object L$1;
  Object L$2;
  int label;
  
  SlidingWindowKt$windowedIterator$1(int paramInt1, int paramInt2, Iterator<Object> paramIterator, boolean paramBoolean1, boolean paramBoolean2, c<? super 1> paramc)
  {
    super(2, paramc);
  }
  
  public final c<u> create(Object paramObject, c<?> paramc)
  {
    paramc = new 1(this.$size, this.$step, this.$iterator, this.$reuseBuffer, this.$partialWindows, paramc);
    paramc.L$0 = paramObject;
    return paramc;
  }
  
  public final Object invoke(kotlin.sequences.j<? super List<Object>> paramj, c<? super u> paramc)
  {
    return ((1)create(paramj, paramc)).invokeSuspend(u.a);
  }
  
  public final Object invokeSuspend(Object paramObject)
  {
    Object localObject1 = a.d();
    int i = this.label;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    Object localObject5;
    Object localObject6;
    Object localObject7;
    int j;
    if (i != 0)
    {
      if (i != 1)
      {
        if (i != 2) {
          if (i != 3)
          {
            if (i != 4)
            {
              if (i != 5) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
              }
            }
            else
            {
              localObject2 = (t0)this.L$1;
              localObject3 = (kotlin.sequences.j)this.L$0;
              kotlin.j.b(paramObject);
              localObject4 = this;
              paramObject = localObject2;
              break label720;
            }
          }
          else
          {
            localObject3 = (Iterator)this.L$2;
            localObject2 = (t0)this.L$1;
            localObject5 = (kotlin.sequences.j)this.L$0;
            kotlin.j.b(paramObject);
            localObject6 = this;
            paramObject = localObject2;
            break label608;
          }
        }
        kotlin.j.b(paramObject);
        break label789;
      }
      i = this.I$0;
      localObject7 = (Iterator)this.L$2;
      localObject2 = (ArrayList)this.L$1;
      localObject4 = (kotlin.sequences.j)this.L$0;
      kotlin.j.b(paramObject);
      localObject6 = this;
    }
    else
    {
      kotlin.j.b(paramObject);
      localObject7 = (kotlin.sequences.j)this.L$0;
      j = g.f(this.$size, 1024);
      i = this.$step - this.$size;
      if (i < 0) {
        break label461;
      }
      paramObject = new ArrayList(j);
      j = 0;
      localObject2 = this.$iterator;
      localObject5 = localObject7;
      localObject3 = this;
      localObject7 = localObject2;
    }
    while (((Iterator)localObject7).hasNext())
    {
      localObject2 = ((Iterator)localObject7).next();
      if (j > 0)
      {
        j--;
      }
      else
      {
        paramObject.add(localObject2);
        if (paramObject.size() == ((1)localObject3).$size)
        {
          ((1)localObject3).L$0 = localObject5;
          ((1)localObject3).L$1 = paramObject;
          ((1)localObject3).L$2 = localObject7;
          ((1)localObject3).I$0 = i;
          ((1)localObject3).label = 1;
          localObject2 = paramObject;
          localObject4 = localObject5;
          localObject6 = localObject3;
          if (((kotlin.sequences.j)localObject5).c(paramObject, (c)localObject3) == localObject1) {
            return localObject1;
          }
          if (((1)localObject6).$reuseBuffer)
          {
            ((ArrayList)localObject2).clear();
            paramObject = localObject2;
          }
          else
          {
            paramObject = new ArrayList(((1)localObject6).$size);
          }
          j = i;
          localObject5 = localObject4;
          localObject3 = localObject6;
        }
      }
    }
    if (((paramObject.isEmpty() ^ true)) && ((((1)localObject3).$partialWindows) || (paramObject.size() == ((1)localObject3).$size)))
    {
      ((1)localObject3).L$0 = null;
      ((1)localObject3).L$1 = null;
      ((1)localObject3).L$2 = null;
      ((1)localObject3).label = 2;
      if (((kotlin.sequences.j)localObject5).c(paramObject, (c)localObject3) == localObject1)
      {
        return localObject1;
        label461:
        paramObject = new t0(j);
        localObject3 = this.$iterator;
        localObject2 = this;
        while (((Iterator)localObject3).hasNext())
        {
          paramObject.l(((Iterator)localObject3).next());
          if (paramObject.isFull())
          {
            j = paramObject.size();
            i = ((1)localObject2).$size;
            if (j < i)
            {
              paramObject = paramObject.m(i);
            }
            else
            {
              if (((1)localObject2).$reuseBuffer) {
                localObject4 = paramObject;
              } else {
                localObject4 = new ArrayList(paramObject);
              }
              ((1)localObject2).L$0 = localObject7;
              ((1)localObject2).L$1 = paramObject;
              ((1)localObject2).L$2 = localObject3;
              ((1)localObject2).label = 3;
              localObject5 = localObject7;
              localObject6 = localObject2;
              if (((kotlin.sequences.j)localObject7).c(localObject4, (c)localObject2) == localObject1) {
                return localObject1;
              }
              label608:
              paramObject.n(((1)localObject6).$step);
              localObject7 = localObject5;
              localObject2 = localObject6;
            }
          }
        }
        if (((1)localObject2).$partialWindows)
        {
          while (paramObject.size() > ((1)localObject2).$step)
          {
            if (((1)localObject2).$reuseBuffer) {
              localObject5 = paramObject;
            } else {
              localObject5 = new ArrayList(paramObject);
            }
            ((1)localObject2).L$0 = localObject7;
            ((1)localObject2).L$1 = paramObject;
            ((1)localObject2).L$2 = null;
            ((1)localObject2).label = 4;
            localObject3 = localObject7;
            localObject4 = localObject2;
            if (((kotlin.sequences.j)localObject7).c(localObject5, (c)localObject2) == localObject1) {
              return localObject1;
            }
            label720:
            paramObject.n(((1)localObject4).$step);
            localObject7 = localObject3;
            localObject2 = localObject4;
          }
          if ((paramObject.isEmpty() ^ true))
          {
            ((1)localObject2).L$0 = null;
            ((1)localObject2).L$1 = null;
            ((1)localObject2).L$2 = null;
            ((1)localObject2).label = 5;
            if (((kotlin.sequences.j)localObject7).c(paramObject, (c)localObject2) == localObject1) {
              return localObject1;
            }
          }
        }
      }
    }
    label789:
    return u.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.SlidingWindowKt.windowedIterator.1
 * JD-Core Version:    0.7.0.1
 */