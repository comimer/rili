package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.j;
import kotlin.jvm.internal.Ref.ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.s1;
import kotlinx.coroutines.s1.a;
import kotlinx.coroutines.w0;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/Lifecycle$State;", "state", "Lkotlin/Function2;", "Lkotlinx/coroutines/k0;", "Lkotlin/coroutines/c;", "Lkotlin/u;", "", "block", "a", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lw7/p;Lkotlin/coroutines/c;)Ljava/lang/Object;", "lifecycle-runtime-ktx_release"}, k=2, mv={1, 5, 1})
public final class RepeatOnLifecycleKt
{
  public static final Object a(Lifecycle paramLifecycle, final Lifecycle.State paramState, final p<? super k0, ? super kotlin.coroutines.c<? super u>, ? extends Object> paramp, kotlin.coroutines.c<? super u> paramc)
  {
    int i;
    if (paramState != Lifecycle.State.INITIALIZED) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      if (paramLifecycle.b() == Lifecycle.State.DESTROYED) {
        return u.a;
      }
      paramLifecycle = l0.b(new SuspendLambda(paramLifecycle, paramState)
      {
        int label;
        
        public final kotlin.coroutines.c<u> create(Object paramAnonymousObject, kotlin.coroutines.c<?> paramAnonymousc)
        {
          paramAnonymousc = new 3(this.$this_repeatOnLifecycle, paramState, paramp, paramAnonymousc);
          paramAnonymousc.L$0 = paramAnonymousObject;
          return paramAnonymousc;
        }
        
        public final Object invoke(k0 paramAnonymousk0, kotlin.coroutines.c<? super u> paramAnonymousc)
        {
          return ((3)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
        }
        
        public final Object invokeSuspend(Object paramAnonymousObject)
        {
          Object localObject1 = a.d();
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
            Object localObject2 = (k0)this.L$0;
            paramAnonymousObject = w0.c().u0();
            localObject2 = new SuspendLambda(this.$this_repeatOnLifecycle, paramState)
            {
              Object L$0;
              Object L$1;
              Object L$2;
              Object L$3;
              Object L$4;
              Object L$5;
              int label;
              
              public final kotlin.coroutines.c<u> create(Object paramAnonymous2Object, kotlin.coroutines.c<?> paramAnonymous2c)
              {
                return new 1(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, paramAnonymous2c);
              }
              
              public final Object invoke(k0 paramAnonymous2k0, kotlin.coroutines.c<? super u> paramAnonymous2c)
              {
                return ((1)create(paramAnonymous2k0, paramAnonymous2c)).invokeSuspend(u.a);
              }
              
              /* Error */
              public final Object invokeSuspend(Object paramAnonymous2Object)
              {
                // Byte code:
                //   0: invokestatic 101	kotlin/coroutines/intrinsics/a:d	()Ljava/lang/Object;
                //   3: astore_2
                //   4: aload_0
                //   5: getfield 103	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:label	I
                //   8: istore_3
                //   9: iload_3
                //   10: ifeq +83 -> 93
                //   13: iload_3
                //   14: iconst_1
                //   15: if_icmpne +68 -> 83
                //   18: aload_0
                //   19: getfield 105	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$5	Ljava/lang/Object;
                //   22: checkcast 7	w7/p
                //   25: astore 4
                //   27: aload_0
                //   28: getfield 107	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$4	Ljava/lang/Object;
                //   31: checkcast 81	kotlinx/coroutines/k0
                //   34: astore 4
                //   36: aload_0
                //   37: getfield 109	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$3	Ljava/lang/Object;
                //   40: checkcast 111	androidx/lifecycle/Lifecycle
                //   43: astore 4
                //   45: aload_0
                //   46: getfield 113	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$2	Ljava/lang/Object;
                //   49: checkcast 115	androidx/lifecycle/Lifecycle$State
                //   52: astore 4
                //   54: aload_0
                //   55: getfield 117	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$1	Ljava/lang/Object;
                //   58: checkcast 119	kotlin/jvm/internal/Ref$ObjectRef
                //   61: astore 5
                //   63: aload_0
                //   64: getfield 121	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$0	Ljava/lang/Object;
                //   67: checkcast 119	kotlin/jvm/internal/Ref$ObjectRef
                //   70: astore 4
                //   72: aload_1
                //   73: invokestatic 127	kotlin/j:b	(Ljava/lang/Object;)V
                //   76: goto +231 -> 307
                //   79: astore_2
                //   80: goto +282 -> 362
                //   83: new 129	java/lang/IllegalStateException
                //   86: dup
                //   87: ldc 131
                //   89: invokespecial 134	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
                //   92: athrow
                //   93: aload_1
                //   94: invokestatic 127	kotlin/j:b	(Ljava/lang/Object;)V
                //   97: aload_0
                //   98: getfield 60	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:$this_repeatOnLifecycle	Landroidx/lifecycle/Lifecycle;
                //   101: invokevirtual 137	androidx/lifecycle/Lifecycle:b	()Landroidx/lifecycle/Lifecycle$State;
                //   104: getstatic 140	androidx/lifecycle/Lifecycle$State:DESTROYED	Landroidx/lifecycle/Lifecycle$State;
                //   107: if_acmpne +7 -> 114
                //   110: getstatic 93	kotlin/u:a	Lkotlin/u;
                //   113: areturn
                //   114: new 119	kotlin/jvm/internal/Ref$ObjectRef
                //   117: dup
                //   118: invokespecial 143	kotlin/jvm/internal/Ref$ObjectRef:<init>	()V
                //   121: astore 4
                //   123: new 119	kotlin/jvm/internal/Ref$ObjectRef
                //   126: dup
                //   127: invokespecial 143	kotlin/jvm/internal/Ref$ObjectRef:<init>	()V
                //   130: astore_1
                //   131: aload_0
                //   132: getfield 62	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:$state	Landroidx/lifecycle/Lifecycle$State;
                //   135: astore 6
                //   137: aload_0
                //   138: getfield 60	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:$this_repeatOnLifecycle	Landroidx/lifecycle/Lifecycle;
                //   141: astore 7
                //   143: aload_0
                //   144: getfield 64	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:$$this$coroutineScope	Lkotlinx/coroutines/k0;
                //   147: astore 8
                //   149: aload_0
                //   150: getfield 66	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:$block	Lw7/p;
                //   153: astore 5
                //   155: aload_0
                //   156: aload 4
                //   158: putfield 121	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$0	Ljava/lang/Object;
                //   161: aload_0
                //   162: aload_1
                //   163: putfield 117	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$1	Ljava/lang/Object;
                //   166: aload_0
                //   167: aload 6
                //   169: putfield 113	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$2	Ljava/lang/Object;
                //   172: aload_0
                //   173: aload 7
                //   175: putfield 109	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$3	Ljava/lang/Object;
                //   178: aload_0
                //   179: aload 8
                //   181: putfield 107	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$4	Ljava/lang/Object;
                //   184: aload_0
                //   185: aload 5
                //   187: putfield 105	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:L$5	Ljava/lang/Object;
                //   190: aload_0
                //   191: iconst_1
                //   192: putfield 103	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:label	I
                //   195: new 145	kotlinx/coroutines/o
                //   198: astore 9
                //   200: aload 9
                //   202: aload_0
                //   203: invokestatic 148	kotlin/coroutines/intrinsics/a:c	(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
                //   206: iconst_1
                //   207: invokespecial 151	kotlinx/coroutines/o:<init>	(Lkotlin/coroutines/c;I)V
                //   210: aload 9
                //   212: invokevirtual 154	kotlinx/coroutines/o:z	()V
                //   215: aload 6
                //   217: invokestatic 160	androidx/lifecycle/Lifecycle$Event:upTo	(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
                //   220: astore 10
                //   222: aload 6
                //   224: invokestatic 163	androidx/lifecycle/Lifecycle$Event:downFrom	(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
                //   227: astore 6
                //   229: iconst_0
                //   230: iconst_1
                //   231: aconst_null
                //   232: invokestatic 168	kotlinx/coroutines/sync/MutexKt:b	(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/c;
                //   235: astore 11
                //   237: new 14	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1
                //   240: astore 12
                //   242: aload 12
                //   244: aload 10
                //   246: aload 4
                //   248: aload 8
                //   250: aload 6
                //   252: aload 9
                //   254: aload 11
                //   256: aload 5
                //   258: invokespecial 171	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1:<init>	(Landroidx/lifecycle/Lifecycle$Event;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/k0;Landroidx/lifecycle/Lifecycle$Event;Lkotlinx/coroutines/n;Lkotlinx/coroutines/sync/c;Lw7/p;)V
                //   261: aload_1
                //   262: aload 12
                //   264: putfield 174	kotlin/jvm/internal/Ref$ObjectRef:element	Ljava/lang/Object;
                //   267: aload 7
                //   269: aload 12
                //   271: checkcast 176	androidx/lifecycle/l
                //   274: invokevirtual 179	androidx/lifecycle/Lifecycle:a	(Landroidx/lifecycle/m;)V
                //   277: aload 9
                //   279: invokevirtual 182	kotlinx/coroutines/o:w	()Ljava/lang/Object;
                //   282: astore 5
                //   284: aload 5
                //   286: invokestatic 101	kotlin/coroutines/intrinsics/a:d	()Ljava/lang/Object;
                //   289: if_acmpne +7 -> 296
                //   292: aload_0
                //   293: invokestatic 187	kotlin/coroutines/jvm/internal/f:c	(Lkotlin/coroutines/c;)V
                //   296: aload 5
                //   298: aload_2
                //   299: if_acmpne +5 -> 304
                //   302: aload_2
                //   303: areturn
                //   304: aload_1
                //   305: astore 5
                //   307: aload 4
                //   309: getfield 174	kotlin/jvm/internal/Ref$ObjectRef:element	Ljava/lang/Object;
                //   312: checkcast 189	kotlinx/coroutines/s1
                //   315: astore_1
                //   316: aload_1
                //   317: ifnonnull +6 -> 323
                //   320: goto +10 -> 330
                //   323: aload_1
                //   324: aconst_null
                //   325: iconst_1
                //   326: aconst_null
                //   327: invokestatic 194	kotlinx/coroutines/s1$a:a	(Lkotlinx/coroutines/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
                //   330: aload 5
                //   332: getfield 174	kotlin/jvm/internal/Ref$ObjectRef:element	Ljava/lang/Object;
                //   335: checkcast 176	androidx/lifecycle/l
                //   338: astore_1
                //   339: aload_1
                //   340: ifnonnull +6 -> 346
                //   343: goto +11 -> 354
                //   346: aload_0
                //   347: getfield 60	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:$this_repeatOnLifecycle	Landroidx/lifecycle/Lifecycle;
                //   350: aload_1
                //   351: invokevirtual 196	androidx/lifecycle/Lifecycle:c	(Landroidx/lifecycle/m;)V
                //   354: getstatic 93	kotlin/u:a	Lkotlin/u;
                //   357: areturn
                //   358: astore_2
                //   359: aload_1
                //   360: astore 5
                //   362: aload 4
                //   364: getfield 174	kotlin/jvm/internal/Ref$ObjectRef:element	Ljava/lang/Object;
                //   367: checkcast 189	kotlinx/coroutines/s1
                //   370: astore_1
                //   371: aload_1
                //   372: ifnonnull +6 -> 378
                //   375: goto +10 -> 385
                //   378: aload_1
                //   379: aconst_null
                //   380: iconst_1
                //   381: aconst_null
                //   382: invokestatic 194	kotlinx/coroutines/s1$a:a	(Lkotlinx/coroutines/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
                //   385: aload 5
                //   387: getfield 174	kotlin/jvm/internal/Ref$ObjectRef:element	Ljava/lang/Object;
                //   390: checkcast 176	androidx/lifecycle/l
                //   393: astore_1
                //   394: aload_1
                //   395: ifnonnull +6 -> 401
                //   398: goto +11 -> 409
                //   401: aload_0
                //   402: getfield 60	androidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1:$this_repeatOnLifecycle	Landroidx/lifecycle/Lifecycle;
                //   405: aload_1
                //   406: invokevirtual 196	androidx/lifecycle/Lifecycle:c	(Landroidx/lifecycle/m;)V
                //   409: aload_2
                //   410: athrow
                // Local variable table:
                //   start	length	slot	name	signature
                //   0	411	0	this	1
                //   0	411	1	paramAnonymous2Object	Object
                //   3	1	2	localObject1	Object
                //   79	224	2	localObject2	Object
                //   358	52	2	localObject3	Object
                //   8	8	3	i	int
                //   25	338	4	localObject4	Object
                //   61	325	5	localObject5	Object
                //   135	116	6	localObject6	Object
                //   141	127	7	localLifecycle	Lifecycle
                //   147	102	8	localk0	k0
                //   198	80	9	localo	kotlinx.coroutines.o
                //   220	25	10	localEvent	Lifecycle.Event
                //   235	20	11	localc	kotlinx.coroutines.sync.c
                //   240	30	12	local1	1.1
                // Exception table:
                //   from	to	target	type
                //   72	76	79	finally
                //   131	296	358	finally
              }
            };
            this.label = 1;
            if (h.g(paramAnonymousObject, (p)localObject2, this) == localObject1) {
              return localObject1;
            }
          }
          return u.a;
        }
      }, paramc);
      if (paramLifecycle == a.d()) {
        return paramLifecycle;
      }
      return u.a;
    }
    throw new IllegalArgumentException("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.".toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.RepeatOnLifecycleKt
 * JD-Core Version:    0.7.0.1
 */