package androidx.lifecycle;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1", "Landroidx/lifecycle/l;", "Landroidx/lifecycle/n;", "source", "Landroidx/lifecycle/Lifecycle$Event;", "event", "Lkotlin/u;", "g", "lifecycle-runtime-ktx_release"}, k=1, mv={1, 5, 1})
public final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1
  implements l
{
  /* Error */
  public void g(n paramn, Lifecycle.Event paramEvent)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 35
    //   3: invokestatic 41	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   6: aload_2
    //   7: ldc 42
    //   9: invokestatic 41	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   12: aload_2
    //   13: aload_0
    //   14: getfield 44	androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1:a	Landroidx/lifecycle/Lifecycle$State;
    //   17: invokestatic 50	androidx/lifecycle/Lifecycle$Event:upTo	(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    //   20: if_acmpne +61 -> 81
    //   23: aload_0
    //   24: getfield 52	androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1:b	Landroidx/lifecycle/Lifecycle;
    //   27: aload_0
    //   28: invokevirtual 57	androidx/lifecycle/Lifecycle:c	(Landroidx/lifecycle/m;)V
    //   31: aload_0
    //   32: getfield 59	androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1:c	Lkotlinx/coroutines/n;
    //   35: astore_2
    //   36: aload_0
    //   37: getfield 61	androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1:d	Lw7/a;
    //   40: astore_1
    //   41: getstatic 67	kotlin/Result:Companion	Lkotlin/Result$a;
    //   44: astore_3
    //   45: aload_1
    //   46: invokeinterface 73 1 0
    //   51: invokestatic 77	kotlin/Result:constructor-impl	(Ljava/lang/Object;)Ljava/lang/Object;
    //   54: astore_1
    //   55: goto +16 -> 71
    //   58: astore_1
    //   59: getstatic 67	kotlin/Result:Companion	Lkotlin/Result$a;
    //   62: astore_3
    //   63: aload_1
    //   64: invokestatic 82	kotlin/j:a	(Ljava/lang/Throwable;)Ljava/lang/Object;
    //   67: invokestatic 77	kotlin/Result:constructor-impl	(Ljava/lang/Object;)Ljava/lang/Object;
    //   70: astore_1
    //   71: aload_2
    //   72: aload_1
    //   73: invokeinterface 88 2 0
    //   78: goto +48 -> 126
    //   81: aload_2
    //   82: getstatic 91	androidx/lifecycle/Lifecycle$Event:ON_DESTROY	Landroidx/lifecycle/Lifecycle$Event;
    //   85: if_acmpne +41 -> 126
    //   88: aload_0
    //   89: getfield 52	androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1:b	Landroidx/lifecycle/Lifecycle;
    //   92: aload_0
    //   93: invokevirtual 57	androidx/lifecycle/Lifecycle:c	(Landroidx/lifecycle/m;)V
    //   96: aload_0
    //   97: getfield 59	androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1:c	Lkotlinx/coroutines/n;
    //   100: astore_3
    //   101: new 93	androidx/lifecycle/LifecycleDestroyedException
    //   104: dup
    //   105: invokespecial 97	androidx/lifecycle/LifecycleDestroyedException:<init>	()V
    //   108: astore_1
    //   109: getstatic 67	kotlin/Result:Companion	Lkotlin/Result$a;
    //   112: astore_2
    //   113: aload_3
    //   114: aload_1
    //   115: invokestatic 82	kotlin/j:a	(Ljava/lang/Throwable;)Ljava/lang/Object;
    //   118: invokestatic 77	kotlin/Result:constructor-impl	(Ljava/lang/Object;)Ljava/lang/Object;
    //   121: invokeinterface 88 2 0
    //   126: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	127	0	this	1
    //   0	127	1	paramn	n
    //   0	127	2	paramEvent	Lifecycle.Event
    //   44	70	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   41	55	58	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.WithLifecycleStateKt.suspendWithStateAtLeastUnchecked.2.observer.1
 * JD-Core Version:    0.7.0.1
 */