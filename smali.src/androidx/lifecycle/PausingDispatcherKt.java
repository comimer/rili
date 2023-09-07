package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.u;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.w0;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"T", "Landroidx/lifecycle/Lifecycle;", "Lkotlin/Function2;", "Lkotlinx/coroutines/k0;", "Lkotlin/coroutines/c;", "", "block", "a", "(Landroidx/lifecycle/Lifecycle;Lw7/p;Lkotlin/coroutines/c;)Ljava/lang/Object;", "c", "b", "Landroidx/lifecycle/Lifecycle$State;", "minState", "d", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lw7/p;Lkotlin/coroutines/c;)Ljava/lang/Object;", "lifecycle-runtime-ktx_release"}, k=2, mv={1, 5, 1})
public final class PausingDispatcherKt
{
  public static final <T> Object a(Lifecycle paramLifecycle, p<? super k0, ? super c<? super T>, ? extends Object> paramp, c<? super T> paramc)
  {
    return d(paramLifecycle, Lifecycle.State.CREATED, paramp, paramc);
  }
  
  public static final <T> Object b(Lifecycle paramLifecycle, p<? super k0, ? super c<? super T>, ? extends Object> paramp, c<? super T> paramc)
  {
    return d(paramLifecycle, Lifecycle.State.RESUMED, paramp, paramc);
  }
  
  public static final <T> Object c(Lifecycle paramLifecycle, p<? super k0, ? super c<? super T>, ? extends Object> paramp, c<? super T> paramc)
  {
    return d(paramLifecycle, Lifecycle.State.STARTED, paramp, paramc);
  }
  
  public static final <T> Object d(Lifecycle paramLifecycle, final Lifecycle.State paramState, final p<? super k0, ? super c<? super T>, ? extends Object> paramp, c<? super T> paramc)
  {
    h.g(w0.c().u0(), new SuspendLambda(paramLifecycle, paramState)
    {
      int label;
      
      public final c<u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
      {
        paramAnonymousc = new 2(this.$this_whenStateAtLeast, paramState, paramp, paramAnonymousc);
        paramAnonymousc.L$0 = paramAnonymousObject;
        return paramAnonymousc;
      }
      
      public final Object invoke(k0 paramAnonymousk0, c<? super T> paramAnonymousc)
      {
        return ((2)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
      }
      
      /* Error */
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        // Byte code:
        //   0: invokestatic 92	kotlin/coroutines/intrinsics/a:d	()Ljava/lang/Object;
        //   3: astore_2
        //   4: aload_0
        //   5: getfield 94	androidx/lifecycle/PausingDispatcherKt$whenStateAtLeast$2:label	I
        //   8: istore_3
        //   9: iload_3
        //   10: ifeq +40 -> 50
        //   13: iload_3
        //   14: iconst_1
        //   15: if_icmpne +25 -> 40
        //   18: aload_0
        //   19: getfield 65	androidx/lifecycle/PausingDispatcherKt$whenStateAtLeast$2:L$0	Ljava/lang/Object;
        //   22: checkcast 96	androidx/lifecycle/LifecycleController
        //   25: astore_2
        //   26: aload_1
        //   27: invokestatic 102	kotlin/j:b	(Ljava/lang/Object;)V
        //   30: goto +122 -> 152
        //   33: astore_1
        //   34: aload_1
        //   35: astore 4
        //   37: goto +125 -> 162
        //   40: new 104	java/lang/IllegalStateException
        //   43: dup
        //   44: ldc 106
        //   46: invokespecial 109	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
        //   49: athrow
        //   50: aload_1
        //   51: invokestatic 102	kotlin/j:b	(Ljava/lang/Object;)V
        //   54: aload_0
        //   55: getfield 65	androidx/lifecycle/PausingDispatcherKt$whenStateAtLeast$2:L$0	Ljava/lang/Object;
        //   58: checkcast 70	kotlinx/coroutines/k0
        //   61: invokeinterface 113 1 0
        //   66: getstatic 119	kotlinx/coroutines/s1:B	Lkotlinx/coroutines/s1$b;
        //   69: invokeinterface 125 2 0
        //   74: checkcast 115	kotlinx/coroutines/s1
        //   77: astore_1
        //   78: aload_1
        //   79: ifnull +90 -> 169
        //   82: new 127	androidx/lifecycle/x
        //   85: dup
        //   86: invokespecial 130	androidx/lifecycle/x:<init>	()V
        //   89: astore 4
        //   91: new 96	androidx/lifecycle/LifecycleController
        //   94: dup
        //   95: aload_0
        //   96: getfield 49	androidx/lifecycle/PausingDispatcherKt$whenStateAtLeast$2:$this_whenStateAtLeast	Landroidx/lifecycle/Lifecycle;
        //   99: aload_0
        //   100: getfield 51	androidx/lifecycle/PausingDispatcherKt$whenStateAtLeast$2:$minState	Landroidx/lifecycle/Lifecycle$State;
        //   103: aload 4
        //   105: getfield 133	androidx/lifecycle/x:b	Landroidx/lifecycle/e;
        //   108: aload_1
        //   109: invokespecial 136	androidx/lifecycle/LifecycleController:<init>	(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/e;Lkotlinx/coroutines/s1;)V
        //   112: astore_1
        //   113: aload_0
        //   114: getfield 53	androidx/lifecycle/PausingDispatcherKt$whenStateAtLeast$2:$block	Lw7/p;
        //   117: astore 5
        //   119: aload_0
        //   120: aload_1
        //   121: putfield 65	androidx/lifecycle/PausingDispatcherKt$whenStateAtLeast$2:L$0	Ljava/lang/Object;
        //   124: aload_0
        //   125: iconst_1
        //   126: putfield 94	androidx/lifecycle/PausingDispatcherKt$whenStateAtLeast$2:label	I
        //   129: aload 4
        //   131: aload 5
        //   133: aload_0
        //   134: invokestatic 142	kotlinx/coroutines/h:g	(Lkotlin/coroutines/CoroutineContext;Lw7/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
        //   137: astore 4
        //   139: aload 4
        //   141: aload_2
        //   142: if_acmpne +5 -> 147
        //   145: aload_2
        //   146: areturn
        //   147: aload_1
        //   148: astore_2
        //   149: aload 4
        //   151: astore_1
        //   152: aload_2
        //   153: invokevirtual 144	androidx/lifecycle/LifecycleController:c	()V
        //   156: aload_1
        //   157: areturn
        //   158: astore 4
        //   160: aload_1
        //   161: astore_2
        //   162: aload_2
        //   163: invokevirtual 144	androidx/lifecycle/LifecycleController:c	()V
        //   166: aload 4
        //   168: athrow
        //   169: new 104	java/lang/IllegalStateException
        //   172: dup
        //   173: ldc 146
        //   175: invokevirtual 152	java/lang/Object:toString	()Ljava/lang/String;
        //   178: invokespecial 109	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
        //   181: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	182	0	this	2
        //   0	182	1	paramAnonymousObject	Object
        //   3	160	2	localObject1	Object
        //   8	8	3	i	int
        //   35	115	4	localObject2	Object
        //   158	9	4	localObject3	Object
        //   117	15	5	localp	p
        // Exception table:
        //   from	to	target	type
        //   26	30	33	finally
        //   113	139	158	finally
      }
    }, paramc);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.PausingDispatcherKt
 * JD-Core Version:    0.7.0.1
 */