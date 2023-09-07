package androidx.room;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.CoroutineContext.a;
import kotlin.coroutines.c;
import kotlin.coroutines.c<-TR;>;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.internal.Lambda;
import kotlin.u;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.n;
import kotlinx.coroutines.s1;
import kotlinx.coroutines.s1.a;
import kotlinx.coroutines.z;
import w7.l;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"R", "Landroidx/room/RoomDatabase;", "Lkotlin/Function1;", "Lkotlin/coroutines/c;", "", "block", "c", "(Landroidx/room/RoomDatabase;Lw7/l;Lkotlin/coroutines/c;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "b", "(Landroidx/room/RoomDatabase;Lkotlin/coroutines/c;)Ljava/lang/Object;", "Ljava/util/concurrent/Executor;", "Lkotlinx/coroutines/s1;", "controlJob", "Lkotlin/coroutines/d;", "a", "(Ljava/util/concurrent/Executor;Lkotlinx/coroutines/s1;Lkotlin/coroutines/c;)Ljava/lang/Object;", "room-ktx_release"}, k=2, mv={1, 4, 0})
public final class RoomDatabaseKt
{
  public static final <R> Object c(RoomDatabase paramRoomDatabase, final l<? super c<? super R>, ? extends Object> paraml, c<? super R> paramc)
  {
    if ((paramc instanceof withTransaction.1))
    {
      localObject1 = (withTransaction.1)paramc;
      i = ((withTransaction.1)localObject1).label;
      if ((i & 0x80000000) != 0)
      {
        ((withTransaction.1)localObject1).label = (i + -2147483648);
        paramc = (c<? super R>)localObject1;
        break label49;
      }
    }
    paramc = new ContinuationImpl(paramc)
    {
      Object L$0;
      Object L$1;
      Object L$2;
      int label;
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        this.result = paramAnonymousObject;
        this.label |= 0x80000000;
        return RoomDatabaseKt.c(null, null, this);
      }
    };
    label49:
    Object localObject1 = paramc.result;
    Object localObject2 = a.d();
    int i = paramc.label;
    if (i != 0)
    {
      if (i != 1)
      {
        if (i == 2)
        {
          paramRoomDatabase = (CoroutineContext)paramc.L$2;
          paramRoomDatabase = (l)paramc.L$1;
          paramRoomDatabase = (RoomDatabase)paramc.L$0;
          j.b(localObject1);
          return localObject1;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
      paraml = (l)paramc.L$1;
      paramRoomDatabase = (RoomDatabase)paramc.L$0;
      j.b(localObject1);
    }
    else
    {
      j.b(localObject1);
      localObject1 = (r)paramc.getContext().get(r.d);
      if (localObject1 != null)
      {
        localObject1 = ((r)localObject1).b();
        if (localObject1 != null) {
          break label224;
        }
      }
      paramc.L$0 = paramRoomDatabase;
      paramc.L$1 = paraml;
      paramc.label = 1;
      localObject3 = b(paramRoomDatabase, paramc);
      localObject1 = localObject3;
      if (localObject3 == localObject2) {
        return localObject2;
      }
    }
    localObject1 = (CoroutineContext)localObject1;
    label224:
    Object localObject3 = new SuspendLambda(paramRoomDatabase, paraml)
    {
      Object L$0;
      Object L$1;
      int label;
      private k0 p$;
      
      public final c<u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
      {
        kotlin.jvm.internal.r.g(paramAnonymousc, "completion");
        paramAnonymousc = new 2(this.$this_withTransaction, paraml, paramAnonymousc);
        paramAnonymousc.p$ = ((k0)paramAnonymousObject);
        return paramAnonymousc;
      }
      
      public final Object invoke(Object paramAnonymousObject1, Object paramAnonymousObject2)
      {
        return ((2)create(paramAnonymousObject1, (c)paramAnonymousObject2)).invokeSuspend(u.a);
      }
      
      /* Error */
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        // Byte code:
        //   0: invokestatic 93	kotlin/coroutines/intrinsics/a:d	()Ljava/lang/Object;
        //   3: astore_2
        //   4: aload_0
        //   5: getfield 95	androidx/room/RoomDatabaseKt$withTransaction$2:label	I
        //   8: istore_3
        //   9: iload_3
        //   10: ifeq +52 -> 62
        //   13: iload_3
        //   14: iconst_1
        //   15: if_icmpne +37 -> 52
        //   18: aload_0
        //   19: getfield 97	androidx/room/RoomDatabaseKt$withTransaction$2:L$1	Ljava/lang/Object;
        //   22: checkcast 99	androidx/room/r
        //   25: astore_2
        //   26: aload_0
        //   27: getfield 101	androidx/room/RoomDatabaseKt$withTransaction$2:L$0	Ljava/lang/Object;
        //   30: checkcast 70	kotlinx/coroutines/k0
        //   33: astore 4
        //   35: aload_2
        //   36: astore 4
        //   38: aload_1
        //   39: invokestatic 107	kotlin/j:b	(Ljava/lang/Object;)V
        //   42: aload_1
        //   43: astore 5
        //   45: goto +108 -> 153
        //   48: astore_2
        //   49: goto +134 -> 183
        //   52: new 109	java/lang/IllegalStateException
        //   55: dup
        //   56: ldc 111
        //   58: invokespecial 114	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
        //   61: athrow
        //   62: aload_1
        //   63: invokestatic 107	kotlin/j:b	(Ljava/lang/Object;)V
        //   66: aload_0
        //   67: getfield 72	androidx/room/RoomDatabaseKt$withTransaction$2:p$	Lkotlinx/coroutines/k0;
        //   70: astore 4
        //   72: aload 4
        //   74: invokeinterface 118 1 0
        //   79: getstatic 121	androidx/room/r:d	Landroidx/room/r$a;
        //   82: invokeinterface 127 2 0
        //   87: astore_1
        //   88: aload_1
        //   89: ifnonnull +6 -> 95
        //   92: invokestatic 131	kotlin/jvm/internal/r:r	()V
        //   95: aload_1
        //   96: checkcast 99	androidx/room/r
        //   99: astore_1
        //   100: aload_1
        //   101: invokevirtual 133	androidx/room/r:a	()V
        //   104: aload_0
        //   105: getfield 50	androidx/room/RoomDatabaseKt$withTransaction$2:$this_withTransaction	Landroidx/room/RoomDatabase;
        //   108: invokevirtual 138	androidx/room/RoomDatabase:beginTransaction	()V
        //   111: aload_0
        //   112: getfield 52	androidx/room/RoomDatabaseKt$withTransaction$2:$block	Lw7/l;
        //   115: astore 5
        //   117: aload_0
        //   118: aload 4
        //   120: putfield 101	androidx/room/RoomDatabaseKt$withTransaction$2:L$0	Ljava/lang/Object;
        //   123: aload_0
        //   124: aload_1
        //   125: putfield 97	androidx/room/RoomDatabaseKt$withTransaction$2:L$1	Ljava/lang/Object;
        //   128: aload_0
        //   129: iconst_1
        //   130: putfield 95	androidx/room/RoomDatabaseKt$withTransaction$2:label	I
        //   133: aload 5
        //   135: aload_0
        //   136: invokeinterface 142 2 0
        //   141: astore 5
        //   143: aload 5
        //   145: aload_2
        //   146: if_acmpne +5 -> 151
        //   149: aload_2
        //   150: areturn
        //   151: aload_1
        //   152: astore_2
        //   153: aload_2
        //   154: astore 4
        //   156: aload_0
        //   157: getfield 50	androidx/room/RoomDatabaseKt$withTransaction$2:$this_withTransaction	Landroidx/room/RoomDatabase;
        //   160: invokevirtual 145	androidx/room/RoomDatabase:setTransactionSuccessful	()V
        //   163: aload_2
        //   164: astore_1
        //   165: aload_0
        //   166: getfield 50	androidx/room/RoomDatabaseKt$withTransaction$2:$this_withTransaction	Landroidx/room/RoomDatabase;
        //   169: invokevirtual 148	androidx/room/RoomDatabase:endTransaction	()V
        //   172: aload_2
        //   173: invokevirtual 150	androidx/room/r:f	()V
        //   176: aload 5
        //   178: areturn
        //   179: astore_2
        //   180: aload_1
        //   181: astore 4
        //   183: aload 4
        //   185: astore_1
        //   186: aload_0
        //   187: getfield 50	androidx/room/RoomDatabaseKt$withTransaction$2:$this_withTransaction	Landroidx/room/RoomDatabase;
        //   190: invokevirtual 148	androidx/room/RoomDatabase:endTransaction	()V
        //   193: aload 4
        //   195: astore_1
        //   196: aload_2
        //   197: athrow
        //   198: astore_2
        //   199: goto +4 -> 203
        //   202: astore_2
        //   203: aload_1
        //   204: invokevirtual 150	androidx/room/r:f	()V
        //   207: aload_2
        //   208: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	209	0	this	2
        //   0	209	1	paramAnonymousObject	Object
        //   3	33	2	localObject1	Object
        //   48	102	2	localObject2	Object
        //   152	21	2	localObject3	Object
        //   179	18	2	localObject4	Object
        //   198	1	2	localObject5	Object
        //   202	6	2	localObject6	Object
        //   8	8	3	i	int
        //   33	161	4	localObject7	Object
        //   43	134	5	localObject8	Object
        // Exception table:
        //   from	to	target	type
        //   38	42	48	finally
        //   156	163	48	finally
        //   111	143	179	finally
        //   165	172	198	finally
        //   186	193	198	finally
        //   196	198	198	finally
        //   104	111	202	finally
      }
    };
    paramc.L$0 = paramRoomDatabase;
    paramc.L$1 = paraml;
    paramc.L$2 = localObject1;
    paramc.label = 2;
    paramRoomDatabase = h.g((CoroutineContext)localObject1, (p)localObject3, paramc);
    localObject1 = paramRoomDatabase;
    if (paramRoomDatabase == localObject2) {
      return localObject2;
    }
    return localObject1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.RoomDatabaseKt
 * JD-Core Version:    0.7.0.1
 */