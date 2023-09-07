package com.jakewharton.retrofit2.adapter.kotlin.coroutines;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.s1;
import kotlinx.coroutines.w;
import kotlinx.coroutines.y;
import retrofit2.HttpException;
import retrofit2.b.a;
import retrofit2.j;
import retrofit2.k;
import tc.a;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lcom/jakewharton/retrofit2/adapter/kotlin/coroutines/CoroutineCallAdapterFactory;", "Lretrofit2/b$a;", "Ljava/lang/reflect/Type;", "returnType", "", "", "annotations", "Lretrofit2/k;", "retrofit", "Lretrofit2/b;", "a", "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/k;)Lretrofit2/b;", "<init>", "()V", "BodyCallAdapter", "ResponseCallAdapter", "retrofit2-kotlin-coroutine-adapter"}, k=1, mv={1, 4, 0})
public final class CoroutineCallAdapterFactory
  extends b.a
{
  public static final a a = new a(null);
  
  public retrofit2.b<?, ?> a(Type paramType, Annotation[] paramArrayOfAnnotation, k paramk)
  {
    r.g(paramType, "returnType");
    r.g(paramArrayOfAnnotation, "annotations");
    r.g(paramk, "retrofit");
    if ((r.a(p0.class, e(paramType)) ^ true)) {
      return null;
    }
    if ((paramType instanceof ParameterizedType))
    {
      paramType = d(0, (ParameterizedType)paramType);
      if (r.a(e(paramType), j.class))
      {
        if ((paramType instanceof ParameterizedType))
        {
          paramType = d(0, (ParameterizedType)paramType);
          r.b(paramType, "getParameterUpperBound(0, responseType)");
          paramType = new ResponseCallAdapter(paramType);
        }
        else
        {
          throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<out Foo>");
        }
      }
      else
      {
        r.b(paramType, "responseType");
        paramType = new BodyCallAdapter(paramType);
      }
      return paramType;
    }
    throw new IllegalStateException("Deferred return type must be parameterized as Deferred<Foo> or Deferred<out Foo>");
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/jakewharton/retrofit2/adapter/kotlin/coroutines/CoroutineCallAdapterFactory$BodyCallAdapter;", "T", "Lretrofit2/b;", "Lkotlinx/coroutines/p0;", "Ljava/lang/reflect/Type;", "b", "Ltc/a;", "call", "c", "a", "Ljava/lang/reflect/Type;", "responseType", "<init>", "(Ljava/lang/reflect/Type;)V", "retrofit2-kotlin-coroutine-adapter"}, k=1, mv={1, 4, 0})
  private static final class BodyCallAdapter<T>
    implements retrofit2.b<T, p0<? extends T>>
  {
    private final Type a;
    
    public BodyCallAdapter(Type paramType)
    {
      this.a = paramType;
    }
    
    public Type b()
    {
      return this.a;
    }
    
    public p0<T> c(final a<T> parama)
    {
      r.g(parama, "call");
      w localw = y.b(null, 1, null);
      localw.c0(new Lambda(localw)
      {
        public final void invoke(Throwable paramAnonymousThrowable)
        {
          if (this.$deferred.isCancelled()) {
            parama.cancel();
          }
        }
      });
      parama.q(new a(localw));
      return localw;
    }
    
    @Metadata(bv={}, d1={""}, d2={"com/jakewharton/retrofit2/adapter/kotlin/coroutines/CoroutineCallAdapterFactory$BodyCallAdapter$a", "Ltc/b;", "Ltc/a;", "call", "", "t", "Lkotlin/u;", "a", "Lretrofit2/j;", "response", "b", "retrofit2-kotlin-coroutine-adapter"}, k=1, mv={1, 4, 0})
    public static final class a
      implements tc.b<T>
    {
      a(w paramw) {}
      
      public void a(a<T> parama, Throwable paramThrowable)
      {
        r.g(parama, "call");
        r.g(paramThrowable, "t");
        this.a.a0(paramThrowable);
      }
      
      public void b(a<T> parama, j<T> paramj)
      {
        r.g(parama, "call");
        r.g(paramj, "response");
        if (paramj.d())
        {
          parama = this.a;
          paramj = paramj.a();
          if (paramj == null) {
            r.r();
          }
          parama.d0(paramj);
        }
        else
        {
          this.a.a0(new HttpException(paramj));
        }
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/jakewharton/retrofit2/adapter/kotlin/coroutines/CoroutineCallAdapterFactory$ResponseCallAdapter;", "T", "Lretrofit2/b;", "Lkotlinx/coroutines/p0;", "Lretrofit2/j;", "Ljava/lang/reflect/Type;", "b", "Ltc/a;", "call", "c", "a", "Ljava/lang/reflect/Type;", "responseType", "<init>", "(Ljava/lang/reflect/Type;)V", "retrofit2-kotlin-coroutine-adapter"}, k=1, mv={1, 4, 0})
  private static final class ResponseCallAdapter<T>
    implements retrofit2.b<T, p0<? extends j<T>>>
  {
    private final Type a;
    
    public ResponseCallAdapter(Type paramType)
    {
      this.a = paramType;
    }
    
    public Type b()
    {
      return this.a;
    }
    
    public p0<j<T>> c(final a<T> parama)
    {
      r.g(parama, "call");
      w localw = y.b(null, 1, null);
      localw.c0(new Lambda(localw)
      {
        public final void invoke(Throwable paramAnonymousThrowable)
        {
          if (this.$deferred.isCancelled()) {
            parama.cancel();
          }
        }
      });
      parama.q(new a(localw));
      return localw;
    }
    
    @Metadata(bv={}, d1={""}, d2={"com/jakewharton/retrofit2/adapter/kotlin/coroutines/CoroutineCallAdapterFactory$ResponseCallAdapter$a", "Ltc/b;", "Ltc/a;", "call", "", "t", "Lkotlin/u;", "a", "Lretrofit2/j;", "response", "b", "retrofit2-kotlin-coroutine-adapter"}, k=1, mv={1, 4, 0})
    public static final class a
      implements tc.b<T>
    {
      a(w paramw) {}
      
      public void a(a<T> parama, Throwable paramThrowable)
      {
        r.g(parama, "call");
        r.g(paramThrowable, "t");
        this.a.a0(paramThrowable);
      }
      
      public void b(a<T> parama, j<T> paramj)
      {
        r.g(parama, "call");
        r.g(paramj, "response");
        this.a.d0(paramj);
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/jakewharton/retrofit2/adapter/kotlin/coroutines/CoroutineCallAdapterFactory$a;", "", "Lcom/jakewharton/retrofit2/adapter/kotlin/coroutines/CoroutineCallAdapterFactory;", "a", "()Lcom/jakewharton/retrofit2/adapter/kotlin/coroutines/CoroutineCallAdapterFactory;", "<init>", "()V", "retrofit2-kotlin-coroutine-adapter"}, k=1, mv={1, 4, 0})
  public static final class a
  {
    public final CoroutineCallAdapterFactory a()
    {
      return new CoroutineCallAdapterFactory(null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.jakewharton.retrofit2.adapter.kotlin.coroutines.CoroutineCallAdapterFactory
 * JD-Core Version:    0.7.0.1
 */