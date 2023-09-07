package com.bumptech.glide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.ImageView;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.a;
import com.bumptech.glide.request.c;
import f3.j;
import f3.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

public class g<TranscodeType>
  extends a<g<TranscodeType>>
{
  protected static final com.bumptech.glide.request.e U = (com.bumptech.glide.request.e)((com.bumptech.glide.request.e)((com.bumptech.glide.request.e)new com.bumptech.glide.request.e().h(com.bumptech.glide.load.engine.h.c)).Z(Priority.LOW)).g0(true);
  private final Context G;
  private final h H;
  private final Class<TranscodeType> I;
  private final b J;
  private final d K;
  private i<?, ? super TranscodeType> L;
  private Object M;
  private List<com.bumptech.glide.request.d<TranscodeType>> N;
  private g<TranscodeType> O;
  private g<TranscodeType> P;
  private Float Q;
  private boolean R = true;
  private boolean S;
  private boolean T;
  
  @SuppressLint({"CheckResult"})
  protected g(b paramb, h paramh, Class<TranscodeType> paramClass, Context paramContext)
  {
    this.J = paramb;
    this.H = paramh;
    this.I = paramClass;
    this.G = paramContext;
    this.L = paramh.q(paramClass);
    this.K = paramb.i();
    t0(paramh.o());
    n0(paramh.p());
  }
  
  private g<TranscodeType> B0(Object paramObject)
  {
    if (H()) {
      return r0().B0(paramObject);
    }
    this.M = paramObject;
    this.S = true;
    return (g)c0();
  }
  
  private c C0(Object paramObject, c3.h<TranscodeType> paramh, com.bumptech.glide.request.d<TranscodeType> paramd, a<?> parama, RequestCoordinator paramRequestCoordinator, i<?, ? super TranscodeType> parami, Priority paramPriority, int paramInt1, int paramInt2, Executor paramExecutor)
  {
    Context localContext = this.G;
    d locald = this.K;
    return SingleRequest.x(localContext, locald, paramObject, this.M, this.I, parama, paramInt1, paramInt2, paramPriority, paramh, paramd, this.N, paramRequestCoordinator, locald.f(), parami.b(), paramExecutor);
  }
  
  private c o0(c3.h<TranscodeType> paramh, com.bumptech.glide.request.d<TranscodeType> paramd, a<?> parama, Executor paramExecutor)
  {
    return p0(new Object(), paramh, paramd, null, this.L, parama.z(), parama.w(), parama.v(), parama, paramExecutor);
  }
  
  private c p0(Object paramObject, c3.h<TranscodeType> paramh, com.bumptech.glide.request.d<TranscodeType> paramd, RequestCoordinator paramRequestCoordinator, i<?, ? super TranscodeType> parami, Priority paramPriority, int paramInt1, int paramInt2, a<?> parama, Executor paramExecutor)
  {
    Object localObject1;
    if (this.P != null)
    {
      localObject1 = new com.bumptech.glide.request.b(paramObject, paramRequestCoordinator);
      paramRequestCoordinator = (RequestCoordinator)localObject1;
    }
    else
    {
      Object localObject2 = null;
      localObject1 = paramRequestCoordinator;
      paramRequestCoordinator = localObject2;
    }
    parami = q0(paramObject, paramh, paramd, (RequestCoordinator)localObject1, parami, paramPriority, paramInt1, paramInt2, parama, paramExecutor);
    if (paramRequestCoordinator == null) {
      return parami;
    }
    int i = this.P.w();
    int j = this.P.v();
    int k = i;
    int m = j;
    if (k.t(paramInt1, paramInt2))
    {
      k = i;
      m = j;
      if (!this.P.Q())
      {
        k = parama.w();
        m = parama.v();
      }
    }
    paramPriority = this.P;
    paramRequestCoordinator.o(parami, paramPriority.p0(paramObject, paramh, paramd, paramRequestCoordinator, paramPriority.L, paramPriority.z(), k, m, this.P, paramExecutor));
    return paramRequestCoordinator;
  }
  
  private c q0(Object paramObject, c3.h<TranscodeType> paramh, com.bumptech.glide.request.d<TranscodeType> paramd, RequestCoordinator paramRequestCoordinator, i<?, ? super TranscodeType> parami, Priority paramPriority, int paramInt1, int paramInt2, a<?> parama, Executor paramExecutor)
  {
    Object localObject1 = this.O;
    if (localObject1 != null)
    {
      if (!this.T)
      {
        Object localObject2 = ((g)localObject1).L;
        if (((g)localObject1).R) {
          localObject2 = parami;
        }
        if (((a)localObject1).J()) {
          localObject1 = this.O.z();
        } else {
          localObject1 = s0(paramPriority);
        }
        int i = this.O.w();
        int j = this.O.v();
        int k = i;
        int m = j;
        if (k.t(paramInt1, paramInt2))
        {
          k = i;
          m = j;
          if (!this.O.Q())
          {
            k = parama.w();
            m = parama.v();
          }
        }
        paramRequestCoordinator = new com.bumptech.glide.request.g(paramObject, paramRequestCoordinator);
        parami = C0(paramObject, paramh, paramd, parama, paramRequestCoordinator, parami, paramPriority, paramInt1, paramInt2, paramExecutor);
        this.T = true;
        paramPriority = this.O;
        paramObject = paramPriority.p0(paramObject, paramh, paramd, paramRequestCoordinator, (i)localObject2, (Priority)localObject1, k, m, paramPriority, paramExecutor);
        this.T = false;
        paramRequestCoordinator.n(parami, paramObject);
        return paramRequestCoordinator;
      }
      throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
    }
    if (this.Q != null)
    {
      paramRequestCoordinator = new com.bumptech.glide.request.g(paramObject, paramRequestCoordinator);
      paramRequestCoordinator.n(C0(paramObject, paramh, paramd, parama, paramRequestCoordinator, parami, paramPriority, paramInt1, paramInt2, paramExecutor), C0(paramObject, paramh, paramd, parama.f().f0(this.Q.floatValue()), paramRequestCoordinator, parami, s0(paramPriority), paramInt1, paramInt2, paramExecutor));
      return paramRequestCoordinator;
    }
    return C0(paramObject, paramh, paramd, parama, paramRequestCoordinator, parami, paramPriority, paramInt1, paramInt2, paramExecutor);
  }
  
  private Priority s0(Priority paramPriority)
  {
    int i = a.b[paramPriority.ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if ((i != 3) && (i != 4))
        {
          paramPriority = new StringBuilder();
          paramPriority.append("unknown priority: ");
          paramPriority.append(z());
          throw new IllegalArgumentException(paramPriority.toString());
        }
        return Priority.IMMEDIATE;
      }
      return Priority.HIGH;
    }
    return Priority.NORMAL;
  }
  
  @SuppressLint({"CheckResult"})
  private void t0(List<com.bumptech.glide.request.d<Object>> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      m0((com.bumptech.glide.request.d)paramList.next());
    }
  }
  
  private <Y extends c3.h<TranscodeType>> Y v0(Y paramY, com.bumptech.glide.request.d<TranscodeType> paramd, a<?> parama, Executor paramExecutor)
  {
    j.d(paramY);
    if (this.S)
    {
      paramd = o0(paramY, paramd, parama, paramExecutor);
      paramExecutor = paramY.i();
      if ((paramd.d(paramExecutor)) && (!y0(parama, paramExecutor)))
      {
        if (!((c)j.d(paramExecutor)).isRunning()) {
          paramExecutor.h();
        }
        return paramY;
      }
      this.H.n(paramY);
      paramY.d(paramd);
      this.H.x(paramY, paramd);
      return paramY;
    }
    throw new IllegalArgumentException("You must call #load() before calling #into()");
  }
  
  private boolean y0(a<?> parama, c paramc)
  {
    boolean bool;
    if ((!parama.I()) && (paramc.i())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public g<TranscodeType> A0(String paramString)
  {
    return B0(paramString);
  }
  
  public g<TranscodeType> m0(com.bumptech.glide.request.d<TranscodeType> paramd)
  {
    if (H()) {
      return r0().m0(paramd);
    }
    if (paramd != null)
    {
      if (this.N == null) {
        this.N = new ArrayList();
      }
      this.N.add(paramd);
    }
    return (g)c0();
  }
  
  public g<TranscodeType> n0(a<?> parama)
  {
    j.d(parama);
    return (g)super.a(parama);
  }
  
  public g<TranscodeType> r0()
  {
    g localg1 = (g)super.f();
    localg1.L = localg1.L.a();
    if (localg1.N != null) {
      localg1.N = new ArrayList(localg1.N);
    }
    g localg2 = localg1.O;
    if (localg2 != null) {
      localg1.O = localg2.r0();
    }
    localg2 = localg1.P;
    if (localg2 != null) {
      localg1.P = localg2.r0();
    }
    return localg1;
  }
  
  public <Y extends c3.h<TranscodeType>> Y u0(Y paramY)
  {
    return w0(paramY, null, f3.e.b());
  }
  
  <Y extends c3.h<TranscodeType>> Y w0(Y paramY, com.bumptech.glide.request.d<TranscodeType> paramd, Executor paramExecutor)
  {
    return v0(paramY, paramd, this, paramExecutor);
  }
  
  public c3.i<ImageView, TranscodeType> x0(ImageView paramImageView)
  {
    k.a();
    j.d(paramImageView);
    if ((!P()) && (N()) && (paramImageView.getScaleType() != null)) {
      switch (a.a[paramImageView.getScaleType().ordinal()])
      {
      default: 
        break;
      case 6: 
        localObject = f().T();
        break;
      case 3: 
      case 4: 
      case 5: 
        localObject = f().U();
        break;
      case 2: 
        localObject = f().T();
        break;
      case 1: 
        localObject = f().S();
        break;
      }
    }
    Object localObject = this;
    return (c3.i)v0(this.K.a(paramImageView, this.I), null, (a)localObject, f3.e.b());
  }
  
  public g<TranscodeType> z0(Object paramObject)
  {
    return B0(paramObject);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.g
 * JD-Core Version:    0.7.0.1
 */