package kotlin.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.coroutines.jvm.internal.f;
import kotlin.j;
import kotlin.jvm.internal.a0;
import kotlin.jvm.internal.r;
import kotlin.u;
import w7.l;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"T", "Lkotlin/Function1;", "Lkotlin/coroutines/c;", "", "completion", "Lkotlin/u;", "a", "(Lw7/l;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;", "R", "Lkotlin/Function2;", "receiver", "b", "(Lw7/p;Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;", "c", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/coroutines/intrinsics/IntrinsicsKt")
class IntrinsicsKt__IntrinsicsJvmKt
{
  public static <T> c<u> a(final l<? super c<? super T>, ? extends Object> paraml, c<? super T> paramc)
  {
    r.f(paraml, "<this>");
    r.f(paramc, "completion");
    c localc = f.a(paramc);
    if ((paraml instanceof BaseContinuationImpl))
    {
      paraml = ((BaseContinuationImpl)paraml).create(localc);
    }
    else
    {
      paramc = localc.getContext();
      if (paramc == EmptyCoroutineContext.INSTANCE) {
        paraml = new RestrictedContinuationImpl(localc)
        {
          private int label;
          
          protected Object invokeSuspend(Object paramAnonymousObject)
          {
            int i = this.label;
            if (i != 0)
            {
              if (i == 1)
              {
                this.label = 2;
                j.b(paramAnonymousObject);
              }
              else
              {
                throw new IllegalStateException("This coroutine had already completed".toString());
              }
            }
            else
            {
              this.label = 1;
              j.b(paramAnonymousObject);
              r.d(paraml, "null cannot be cast to non-null type kotlin.Function1<kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-0>, kotlin.Any?>");
              paramAnonymousObject = ((l)a0.g(paraml, 1)).invoke(this);
            }
            return paramAnonymousObject;
          }
        };
      } else {
        paraml = new ContinuationImpl(localc, paramc)
        {
          private int label;
          
          protected Object invokeSuspend(Object paramAnonymousObject)
          {
            int i = this.label;
            if (i != 0)
            {
              if (i == 1)
              {
                this.label = 2;
                j.b(paramAnonymousObject);
              }
              else
              {
                throw new IllegalStateException("This coroutine had already completed".toString());
              }
            }
            else
            {
              this.label = 1;
              j.b(paramAnonymousObject);
              r.d(paraml, "null cannot be cast to non-null type kotlin.Function1<kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-0>, kotlin.Any?>");
              paramAnonymousObject = ((l)a0.g(paraml, 1)).invoke(this);
            }
            return paramAnonymousObject;
          }
        };
      }
    }
    return paraml;
  }
  
  public static <R, T> c<u> b(final p<? super R, ? super c<? super T>, ? extends Object> paramp, final R paramR, c<? super T> paramc)
  {
    r.f(paramp, "<this>");
    r.f(paramc, "completion");
    paramc = f.a(paramc);
    if ((paramp instanceof BaseContinuationImpl))
    {
      paramp = ((BaseContinuationImpl)paramp).create(paramR, paramc);
    }
    else
    {
      CoroutineContext localCoroutineContext = paramc.getContext();
      if (localCoroutineContext == EmptyCoroutineContext.INSTANCE) {
        paramp = new RestrictedContinuationImpl(paramc)
        {
          private int label;
          
          protected Object invokeSuspend(Object paramAnonymousObject)
          {
            int i = this.label;
            if (i != 0)
            {
              if (i == 1)
              {
                this.label = 2;
                j.b(paramAnonymousObject);
              }
              else
              {
                throw new IllegalStateException("This coroutine had already completed".toString());
              }
            }
            else
            {
              this.label = 1;
              j.b(paramAnonymousObject);
              r.d(paramp, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1>, kotlin.Any?>");
              paramAnonymousObject = ((p)a0.g(paramp, 2)).invoke(paramR, this);
            }
            return paramAnonymousObject;
          }
        };
      } else {
        paramp = new ContinuationImpl(paramc, localCoroutineContext)
        {
          private int label;
          
          protected Object invokeSuspend(Object paramAnonymousObject)
          {
            int i = this.label;
            if (i != 0)
            {
              if (i == 1)
              {
                this.label = 2;
                j.b(paramAnonymousObject);
              }
              else
              {
                throw new IllegalStateException("This coroutine had already completed".toString());
              }
            }
            else
            {
              this.label = 1;
              j.b(paramAnonymousObject);
              r.d(paramp, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1>, kotlin.Any?>");
              paramAnonymousObject = ((p)a0.g(paramp, 2)).invoke(paramR, this);
            }
            return paramAnonymousObject;
          }
        };
      }
    }
    return paramp;
  }
  
  public static <T> c<T> c(c<? super T> paramc)
  {
    r.f(paramc, "<this>");
    ContinuationImpl localContinuationImpl;
    if ((paramc instanceof ContinuationImpl)) {
      localContinuationImpl = (ContinuationImpl)paramc;
    } else {
      localContinuationImpl = null;
    }
    Object localObject = paramc;
    if (localContinuationImpl != null)
    {
      localObject = localContinuationImpl.intercepted();
      if (localObject == null) {
        localObject = paramc;
      }
    }
    return localObject;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt
 * JD-Core Version:    0.7.0.1
 */