package androidx.room;

import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.j;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.g;
import kotlinx.coroutines.channels.s;
import kotlinx.coroutines.k0;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"R", "Lkotlinx/coroutines/flow/e;", "kotlin.jvm.PlatformType", "Lkotlin/u;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k=3, mv={1, 4, 0})
@d(c="androidx.room.CoroutinesRoom$Companion$createFlow$1", f="CoroutinesRoom.kt", l={75}, m="invokeSuspend")
final class CoroutinesRoom$Companion$createFlow$1
  extends SuspendLambda
  implements p<kotlinx.coroutines.flow.e<Object>, c<? super u>, Object>
{
  Object L$0;
  Object L$1;
  Object L$2;
  Object L$3;
  Object L$4;
  int label;
  private kotlinx.coroutines.flow.e p$;
  
  CoroutinesRoom$Companion$createFlow$1(String[] paramArrayOfString, boolean paramBoolean, RoomDatabase paramRoomDatabase, Callable paramCallable, c paramc)
  {
    super(2, paramc);
  }
  
  public final c<u> create(Object paramObject, c<?> paramc)
  {
    r.g(paramc, "completion");
    paramc = new 1(this.$tableNames, this.$inTransaction, this.$db, this.$callable, paramc);
    paramc.p$ = ((kotlinx.coroutines.flow.e)paramObject);
    return paramc;
  }
  
  public final Object invoke(Object paramObject1, Object paramObject2)
  {
    return ((1)create(paramObject1, (c)paramObject2)).invokeSuspend(u.a);
  }
  
  public final Object invokeSuspend(Object paramObject)
  {
    Object localObject = kotlin.coroutines.intrinsics.a.d();
    int i = this.label;
    if (i != 0)
    {
      if (i == 1)
      {
        localObject = (CoroutineDispatcher)this.L$4;
        localObject = (CoroutineContext)this.L$3;
        localObject = (a)this.L$2;
        localObject = (kotlinx.coroutines.channels.e)this.L$1;
        localObject = (kotlinx.coroutines.flow.e)this.L$0;
        j.b(paramObject);
      }
      else
      {
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
    }
    else
    {
      j.b(paramObject);
      final kotlinx.coroutines.flow.e locale = this.p$;
      final kotlinx.coroutines.channels.e locale1 = g.a(-1);
      final a locala = new a(this, locale1, this.$tableNames);
      locale1.offer(u.a);
      final CoroutineContext localCoroutineContext = getContext();
      if (this.$inTransaction) {
        paramObject = a.b(this.$db);
      } else {
        paramObject = a.a(this.$db);
      }
      SuspendLambda local1 = new SuspendLambda(locale, locala)
      {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        private k0 p$;
        
        public final c<u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
        {
          r.g(paramAnonymousc, "completion");
          paramAnonymousc = new 1(this.this$0, locale, locala, locale1, localCoroutineContext, paramAnonymousc);
          paramAnonymousc.p$ = ((k0)paramAnonymousObject);
          return paramAnonymousc;
        }
        
        public final Object invoke(Object paramAnonymousObject1, Object paramAnonymousObject2)
        {
          return ((1)create(paramAnonymousObject1, (c)paramAnonymousObject2)).invokeSuspend(u.a);
        }
        
        public final Object invokeSuspend(Object paramAnonymousObject)
        {
          Object localObject1 = kotlin.coroutines.intrinsics.a.d();
          int i = this.label;
          Object localObject2;
          Object localObject4;
          if (i != 0) {
            if (i != 1) {
              if (i == 2)
              {
                localObject2 = (ChannelIterator)this.L$2;
                localObject4 = (u)this.L$1;
                localObject4 = (k0)this.L$0;
              }
            }
          }
          try
          {
            j.b(paramAnonymousObject);
            paramAnonymousObject = localObject2;
            break label138;
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            Object localObject5 = (ChannelIterator)this.L$1;
            localObject4 = (k0)this.L$0;
            j.b(paramAnonymousObject);
            localObject2 = this;
            Object localObject6 = paramAnonymousObject;
            break label195;
            j.b(paramAnonymousObject);
            localObject4 = this.p$;
            this.this$0.$db.getInvalidationTracker().a(locala);
            paramAnonymousObject = locale1.iterator();
            label138:
            localObject2 = this;
            localObject5 = paramAnonymousObject;
            for (;;)
            {
              paramAnonymousObject = localObject2;
              try
              {
                ((1)localObject2).L$0 = localObject4;
                paramAnonymousObject = localObject2;
                ((1)localObject2).L$1 = localObject5;
                paramAnonymousObject = localObject2;
                ((1)localObject2).label = 1;
                paramAnonymousObject = localObject2;
                localObject6 = ((ChannelIterator)localObject5).a((c)localObject2);
                if (localObject6 == localObject1) {
                  return localObject1;
                }
                label195:
                paramAnonymousObject = localObject2;
                if (((Boolean)localObject6).booleanValue())
                {
                  paramAnonymousObject = localObject2;
                  localObject6 = (u)((ChannelIterator)localObject5).next();
                  paramAnonymousObject = localObject2;
                  Object localObject7 = ((1)localObject2).this$0.$callable.call();
                  paramAnonymousObject = localObject2;
                  CoroutineContext localCoroutineContext = localCoroutineContext;
                  paramAnonymousObject = localObject2;
                  SuspendLambda local1 = new androidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;
                  paramAnonymousObject = localObject2;
                  local1.<init>((1)localObject2, localObject7, null);
                  paramAnonymousObject = localObject2;
                  ((1)localObject2).L$0 = localObject4;
                  paramAnonymousObject = localObject2;
                  ((1)localObject2).L$1 = localObject6;
                  paramAnonymousObject = localObject2;
                  ((1)localObject2).L$2 = localObject5;
                  paramAnonymousObject = localObject2;
                  ((1)localObject2).L$3 = localObject7;
                  paramAnonymousObject = localObject2;
                  ((1)localObject2).label = 2;
                  paramAnonymousObject = localObject2;
                  localObject6 = kotlinx.coroutines.h.g(localCoroutineContext, local1, (c)localObject2);
                  if (localObject6 == localObject1) {
                    return localObject1;
                  }
                }
                else
                {
                  ((1)localObject2).this$0.$db.getInvalidationTracker().j(locala);
                  return u.a;
                }
              }
              finally
              {
                localObject4 = paramAnonymousObject;
                paramAnonymousObject = localObject3;
              }
            }
            ((1)localObject4).this$0.$db.getInvalidationTracker().j(locala);
          }
          finally
          {
            localObject4 = this;
          }
          throw paramAnonymousObject;
        }
      };
      this.L$0 = locale;
      this.L$1 = locale1;
      this.L$2 = locala;
      this.L$3 = localCoroutineContext;
      this.L$4 = paramObject;
      this.label = 1;
      if (kotlinx.coroutines.h.g(paramObject, local1, this) == localObject) {
        return localObject;
      }
    }
    return u.a;
  }
  
  @Metadata(bv={}, d1={""}, d2={"androidx/room/CoroutinesRoom$Companion$createFlow$1$a", "Landroidx/room/h$c;", "", "", "tables", "Lkotlin/u;", "b", "room-ktx_release"}, k=1, mv={1, 4, 0})
  public static final class a
    extends h.c
  {
    a(kotlinx.coroutines.channels.e parame, String[] paramArrayOfString)
    {
      super();
    }
    
    public void b(Set<String> paramSet)
    {
      r.g(paramSet, "tables");
      locale1.offer(u.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.CoroutinesRoom.Companion.createFlow.1
 * JD-Core Version:    0.7.0.1
 */