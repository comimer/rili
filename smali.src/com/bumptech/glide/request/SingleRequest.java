package com.bumptech.glide.request;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.util.Log;
import c3.g;
import c3.h;
import com.bumptech.glide.Priority;
import com.bumptech.glide.c.c;
import com.bumptech.glide.e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.engine.i.d;
import com.bumptech.glide.load.engine.s;
import com.bumptech.glide.load.engine.s<*>;
import f3.k;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

public final class SingleRequest<R>
  implements c, g, f
{
  private static final boolean D = Log.isLoggable("Request", 2);
  private int A;
  private boolean B;
  private RuntimeException C;
  private final String a;
  private final g3.c b;
  private final Object c;
  private final d<R> d;
  private final RequestCoordinator e;
  private final Context f;
  private final com.bumptech.glide.d g;
  private final Object h;
  private final Class<R> i;
  private final a<?> j;
  private final int k;
  private final int l;
  private final Priority m;
  private final h<R> n;
  private final List<d<R>> o;
  private final d3.c<? super R> p;
  private final Executor q;
  private s<R> r;
  private i.d s;
  private long t;
  private volatile i u;
  private Status v;
  private Drawable w;
  private Drawable x;
  private Drawable y;
  private int z;
  
  private SingleRequest(Context paramContext, com.bumptech.glide.d paramd, Object paramObject1, Object paramObject2, Class<R> paramClass, a<?> parama, int paramInt1, int paramInt2, Priority paramPriority, h<R> paramh, d<R> paramd1, List<d<R>> paramList, RequestCoordinator paramRequestCoordinator, i parami, d3.c<? super R> paramc, Executor paramExecutor)
  {
    String str;
    if (D) {
      str = String.valueOf(super.hashCode());
    } else {
      str = null;
    }
    this.a = str;
    this.b = g3.c.a();
    this.c = paramObject1;
    this.f = paramContext;
    this.g = paramd;
    this.h = paramObject2;
    this.i = paramClass;
    this.j = parama;
    this.k = paramInt1;
    this.l = paramInt2;
    this.m = paramPriority;
    this.n = paramh;
    this.d = paramd1;
    this.o = paramList;
    this.e = paramRequestCoordinator;
    this.u = parami;
    this.p = paramc;
    this.q = paramExecutor;
    this.v = Status.PENDING;
    if ((this.C == null) && (paramd.g().a(c.c.class))) {
      this.C = new RuntimeException("Glide request origin trace");
    }
  }
  
  private void A()
  {
    if (!l()) {
      return;
    }
    Object localObject1 = null;
    if (this.h == null) {
      localObject1 = p();
    }
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = o();
    }
    localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = q();
    }
    this.n.g((Drawable)localObject1);
  }
  
  private void j()
  {
    if (!this.B) {
      return;
    }
    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
  }
  
  private boolean k()
  {
    RequestCoordinator localRequestCoordinator = this.e;
    boolean bool;
    if ((localRequestCoordinator != null) && (!localRequestCoordinator.j(this))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean l()
  {
    RequestCoordinator localRequestCoordinator = this.e;
    boolean bool;
    if ((localRequestCoordinator != null) && (!localRequestCoordinator.c(this))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean m()
  {
    RequestCoordinator localRequestCoordinator = this.e;
    boolean bool;
    if ((localRequestCoordinator != null) && (!localRequestCoordinator.e(this))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private void n()
  {
    j();
    this.b.c();
    this.n.f(this);
    i.d locald = this.s;
    if (locald != null)
    {
      locald.a();
      this.s = null;
    }
  }
  
  private Drawable o()
  {
    if (this.w == null)
    {
      Drawable localDrawable = this.j.o();
      this.w = localDrawable;
      if ((localDrawable == null) && (this.j.n() > 0)) {
        this.w = s(this.j.n());
      }
    }
    return this.w;
  }
  
  private Drawable p()
  {
    if (this.y == null)
    {
      Drawable localDrawable = this.j.p();
      this.y = localDrawable;
      if ((localDrawable == null) && (this.j.r() > 0)) {
        this.y = s(this.j.r());
      }
    }
    return this.y;
  }
  
  private Drawable q()
  {
    if (this.x == null)
    {
      Drawable localDrawable = this.j.x();
      this.x = localDrawable;
      if ((localDrawable == null) && (this.j.y() > 0)) {
        this.x = s(this.j.y());
      }
    }
    return this.x;
  }
  
  private boolean r()
  {
    RequestCoordinator localRequestCoordinator = this.e;
    boolean bool;
    if ((localRequestCoordinator != null) && (localRequestCoordinator.getRoot().b())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private Drawable s(int paramInt)
  {
    Resources.Theme localTheme;
    if (this.j.D() != null) {
      localTheme = this.j.D();
    } else {
      localTheme = this.f.getTheme();
    }
    return v2.a.a(this.g, paramInt, localTheme);
  }
  
  private void t(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(" this: ");
    localStringBuilder.append(this.a);
    Log.v("Request", localStringBuilder.toString());
  }
  
  private static int u(int paramInt, float paramFloat)
  {
    if (paramInt != -2147483648) {
      paramInt = Math.round(paramFloat * paramInt);
    }
    return paramInt;
  }
  
  private void v()
  {
    RequestCoordinator localRequestCoordinator = this.e;
    if (localRequestCoordinator != null) {
      localRequestCoordinator.a(this);
    }
  }
  
  private void w()
  {
    RequestCoordinator localRequestCoordinator = this.e;
    if (localRequestCoordinator != null) {
      localRequestCoordinator.g(this);
    }
  }
  
  public static <R> SingleRequest<R> x(Context paramContext, com.bumptech.glide.d paramd, Object paramObject1, Object paramObject2, Class<R> paramClass, a<?> parama, int paramInt1, int paramInt2, Priority paramPriority, h<R> paramh, d<R> paramd1, List<d<R>> paramList, RequestCoordinator paramRequestCoordinator, i parami, d3.c<? super R> paramc, Executor paramExecutor)
  {
    return new SingleRequest(paramContext, paramd, paramObject1, paramObject2, paramClass, parama, paramInt1, paramInt2, paramPriority, paramh, paramd1, paramList, paramRequestCoordinator, parami, paramc, paramExecutor);
  }
  
  private void y(GlideException paramGlideException, int paramInt)
  {
    this.b.c();
    synchronized (this.c)
    {
      paramGlideException.setOrigin(this.C);
      int i1 = this.g.h();
      Object localObject2;
      if (i1 <= paramInt)
      {
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append("Load failed for ");
        ((StringBuilder)localObject2).append(this.h);
        ((StringBuilder)localObject2).append(" with size [");
        ((StringBuilder)localObject2).append(this.z);
        ((StringBuilder)localObject2).append("x");
        ((StringBuilder)localObject2).append(this.A);
        ((StringBuilder)localObject2).append("]");
        Log.w("Glide", ((StringBuilder)localObject2).toString(), paramGlideException);
        if (i1 <= 4) {
          paramGlideException.logRootCauses("Glide");
        }
      }
      this.s = null;
      this.v = Status.FAILED;
      int i2 = 1;
      this.B = true;
      try
      {
        localObject2 = this.o;
        if (localObject2 != null)
        {
          localObject2 = ((List)localObject2).iterator();
          paramInt = 0;
          for (;;)
          {
            i1 = paramInt;
            if (!((Iterator)localObject2).hasNext()) {
              break;
            }
            paramInt |= ((d)((Iterator)localObject2).next()).b(paramGlideException, this.h, this.n, r());
          }
        }
        i1 = 0;
        localObject2 = this.d;
        if ((localObject2 != null) && (((d)localObject2).b(paramGlideException, this.h, this.n, r()))) {
          paramInt = i2;
        } else {
          paramInt = 0;
        }
        if ((i1 | paramInt) == 0) {
          A();
        }
        this.B = false;
        v();
        return;
      }
      finally
      {
        this.B = false;
      }
    }
  }
  
  private void z(s<R> params, R paramR, DataSource paramDataSource, boolean paramBoolean)
  {
    paramBoolean = r();
    this.v = Status.COMPLETE;
    this.r = params;
    if (this.g.h() <= 3)
    {
      params = new StringBuilder();
      params.append("Finished loading ");
      params.append(paramR.getClass().getSimpleName());
      params.append(" from ");
      params.append(paramDataSource);
      params.append(" for ");
      params.append(this.h);
      params.append(" with size [");
      params.append(this.z);
      params.append("x");
      params.append(this.A);
      params.append("] in ");
      params.append(f3.f.a(this.t));
      params.append(" ms");
      Log.d("Glide", params.toString());
    }
    boolean bool1 = true;
    this.B = true;
    try
    {
      params = this.o;
      boolean bool2;
      if (params != null)
      {
        params = params.iterator();
        bool2 = false;
        for (;;)
        {
          bool3 = bool2;
          if (!params.hasNext()) {
            break;
          }
          bool2 |= ((d)params.next()).a(paramR, this.h, this.n, paramDataSource, paramBoolean);
        }
      }
      boolean bool3 = false;
      params = this.d;
      if ((params != null) && (params.a(paramR, this.h, this.n, paramDataSource, paramBoolean))) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
      if (!(bool2 | bool3))
      {
        params = this.p.a(paramDataSource, paramBoolean);
        this.n.e(paramR, params);
      }
      this.B = false;
      w();
      return;
    }
    finally
    {
      this.B = false;
    }
  }
  
  public void a(GlideException paramGlideException)
  {
    y(paramGlideException, 5);
  }
  
  public boolean b()
  {
    synchronized (this.c)
    {
      boolean bool;
      if (this.v == Status.COMPLETE) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public void c(s<?> params, DataSource paramDataSource, boolean paramBoolean)
  {
    this.b.c();
    Object localObject1 = null;
    GlideException localGlideException = null;
    Object localObject2 = localObject1;
    try
    {
      Object localObject3 = this.c;
      localObject2 = localObject1;
      localObject2 = localGlideException;
      try
      {
        this.s = null;
        if (params == null)
        {
          localObject2 = localGlideException;
          paramDataSource = new com/bumptech/glide/load/engine/GlideException;
          localObject2 = localGlideException;
          params = new java/lang/StringBuilder;
          localObject2 = localGlideException;
          params.<init>();
          localObject2 = localGlideException;
          params.append("Expected to receive a Resource<R> with an object of ");
          localObject2 = localGlideException;
          params.append(this.i);
          localObject2 = localGlideException;
          params.append(" inside, but instead got null.");
          localObject2 = localGlideException;
          paramDataSource.<init>(params.toString());
          localObject2 = localGlideException;
          a(paramDataSource);
          localObject2 = localGlideException;
          return;
        }
        localObject2 = localGlideException;
        localObject1 = params.get();
        if (localObject1 != null)
        {
          localObject2 = localGlideException;
          if (this.i.isAssignableFrom(localObject1.getClass()))
          {
            localObject2 = localGlideException;
            boolean bool = m();
            if (bool) {}
          }
        }
        try
        {
          this.r = null;
          this.v = Status.COMPLETE;
          this.u.k(params);
          return;
        }
        finally
        {
          break label406;
        }
        localObject2 = localGlideException;
        z(params, localObject1, paramDataSource, paramBoolean);
        localObject2 = localGlideException;
        return;
        this.r = null;
        localGlideException = new com/bumptech/glide/load/engine/GlideException;
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append("Expected to receive an object of ");
        ((StringBuilder)localObject2).append(this.i);
        ((StringBuilder)localObject2).append(" but instead got ");
        if (localObject1 != null) {
          paramDataSource = localObject1.getClass();
        } else {
          paramDataSource = "";
        }
        ((StringBuilder)localObject2).append(paramDataSource);
        ((StringBuilder)localObject2).append("{");
        ((StringBuilder)localObject2).append(localObject1);
        ((StringBuilder)localObject2).append("} inside Resource{");
        ((StringBuilder)localObject2).append(params);
        ((StringBuilder)localObject2).append("}.");
        if (localObject1 != null) {
          paramDataSource = "";
        } else {
          paramDataSource = " To indicate failure return a null Resource object, rather than a Resource object containing null data.";
        }
        ((StringBuilder)localObject2).append(paramDataSource);
        localGlideException.<init>(((StringBuilder)localObject2).toString());
        a(localGlideException);
        this.u.k(params);
        return;
      }
      finally
      {
        params = (s<?>)localObject2;
      }
      label406:
      localObject2 = params;
      localObject2 = params;
      throw paramDataSource;
    }
    finally
    {
      if (localObject2 != null) {
        this.u.k((s)localObject2);
      }
    }
  }
  
  public void clear()
  {
    synchronized (this.c)
    {
      j();
      this.b.c();
      Object localObject2 = this.v;
      Status localStatus = Status.CLEARED;
      if (localObject2 == localStatus) {
        return;
      }
      n();
      localObject2 = this.r;
      if (localObject2 != null) {
        this.r = null;
      } else {
        localObject2 = null;
      }
      if (k()) {
        this.n.j(q());
      }
      this.v = localStatus;
      if (localObject2 != null) {
        this.u.k((s)localObject2);
      }
      return;
    }
  }
  
  public boolean d(c arg1)
  {
    if (!(??? instanceof SingleRequest)) {
      return false;
    }
    synchronized (this.c)
    {
      int i1 = this.k;
      int i2 = this.l;
      Object localObject2 = this.h;
      Class localClass1 = this.i;
      a locala1 = this.j;
      Priority localPriority = this.m;
      Object localObject4 = this.o;
      int i3;
      if (localObject4 != null) {
        i3 = ((List)localObject4).size();
      } else {
        i3 = 0;
      }
      Object localObject5 = (SingleRequest)???;
      synchronized (((SingleRequest)localObject5).c)
      {
        int i4 = ((SingleRequest)localObject5).k;
        int i5 = ((SingleRequest)localObject5).l;
        ??? = ((SingleRequest)localObject5).h;
        Class localClass2 = ((SingleRequest)localObject5).i;
        a locala2 = ((SingleRequest)localObject5).j;
        localObject4 = ((SingleRequest)localObject5).m;
        localObject5 = ((SingleRequest)localObject5).o;
        int i6;
        if (localObject5 != null) {
          i6 = ((List)localObject5).size();
        } else {
          i6 = 0;
        }
        boolean bool;
        if ((i1 == i4) && (i2 == i5) && (k.b(localObject2, ???)) && (localClass1.equals(localClass2)) && (locala1.equals(locala2)) && (localPriority == localObject4) && (i3 == i6)) {
          bool = true;
        } else {
          bool = false;
        }
        return bool;
      }
    }
  }
  
  /* Error */
  public void e(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 110	com/bumptech/glide/request/SingleRequest:b	Lg3/c;
    //   4: invokevirtual 205	g3/c:c	()V
    //   7: aload_0
    //   8: getfield 112	com/bumptech/glide/request/SingleRequest:c	Ljava/lang/Object;
    //   11: astore_3
    //   12: aload_3
    //   13: monitorenter
    //   14: getstatic 86	com/bumptech/glide/request/SingleRequest:D	Z
    //   17: istore 4
    //   19: iload 4
    //   21: ifeq +44 -> 65
    //   24: new 256	java/lang/StringBuilder
    //   27: astore 5
    //   29: aload 5
    //   31: invokespecial 257	java/lang/StringBuilder:<init>	()V
    //   34: aload 5
    //   36: ldc_w 470
    //   39: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: pop
    //   43: aload 5
    //   45: aload_0
    //   46: getfield 375	com/bumptech/glide/request/SingleRequest:t	J
    //   49: invokestatic 380	f3/f:a	(J)D
    //   52: invokevirtual 383	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   55: pop
    //   56: aload_0
    //   57: aload 5
    //   59: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: invokespecial 472	com/bumptech/glide/request/SingleRequest:t	(Ljava/lang/String;)V
    //   65: aload_0
    //   66: getfield 147	com/bumptech/glide/request/SingleRequest:v	Lcom/bumptech/glide/request/SingleRequest$Status;
    //   69: getstatic 475	com/bumptech/glide/request/SingleRequest$Status:WAITING_FOR_SIZE	Lcom/bumptech/glide/request/SingleRequest$Status;
    //   72: if_acmpeq +6 -> 78
    //   75: aload_3
    //   76: monitorexit
    //   77: return
    //   78: getstatic 478	com/bumptech/glide/request/SingleRequest$Status:RUNNING	Lcom/bumptech/glide/request/SingleRequest$Status;
    //   81: astore 5
    //   83: aload_0
    //   84: aload 5
    //   86: putfield 147	com/bumptech/glide/request/SingleRequest:v	Lcom/bumptech/glide/request/SingleRequest$Status;
    //   89: aload_0
    //   90: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   93: invokevirtual 481	com/bumptech/glide/request/a:C	()F
    //   96: fstore 6
    //   98: aload_0
    //   99: iload_1
    //   100: fload 6
    //   102: invokestatic 483	com/bumptech/glide/request/SingleRequest:u	(IF)I
    //   105: putfield 305	com/bumptech/glide/request/SingleRequest:z	I
    //   108: aload_0
    //   109: iload_2
    //   110: fload 6
    //   112: invokestatic 483	com/bumptech/glide/request/SingleRequest:u	(IF)I
    //   115: putfield 311	com/bumptech/glide/request/SingleRequest:A	I
    //   118: iload 4
    //   120: ifeq +44 -> 164
    //   123: new 256	java/lang/StringBuilder
    //   126: astore 7
    //   128: aload 7
    //   130: invokespecial 257	java/lang/StringBuilder:<init>	()V
    //   133: aload 7
    //   135: ldc_w 485
    //   138: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: pop
    //   142: aload 7
    //   144: aload_0
    //   145: getfield 375	com/bumptech/glide/request/SingleRequest:t	J
    //   148: invokestatic 380	f3/f:a	(J)D
    //   151: invokevirtual 383	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   154: pop
    //   155: aload_0
    //   156: aload 7
    //   158: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokespecial 472	com/bumptech/glide/request/SingleRequest:t	(Ljava/lang/String;)V
    //   164: aload_0
    //   165: getfield 138	com/bumptech/glide/request/SingleRequest:u	Lcom/bumptech/glide/load/engine/i;
    //   168: astore 7
    //   170: aload_0
    //   171: getfield 116	com/bumptech/glide/request/SingleRequest:g	Lcom/bumptech/glide/d;
    //   174: astore 8
    //   176: aload_0
    //   177: getfield 118	com/bumptech/glide/request/SingleRequest:h	Ljava/lang/Object;
    //   180: astore 9
    //   182: aload_0
    //   183: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   186: invokevirtual 488	com/bumptech/glide/request/a:B	()Ln2/b;
    //   189: astore 10
    //   191: aload_0
    //   192: getfield 305	com/bumptech/glide/request/SingleRequest:z	I
    //   195: istore_2
    //   196: aload_0
    //   197: getfield 311	com/bumptech/glide/request/SingleRequest:A	I
    //   200: istore_1
    //   201: aload_0
    //   202: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   205: invokevirtual 490	com/bumptech/glide/request/a:A	()Ljava/lang/Class;
    //   208: astore 11
    //   210: aload_0
    //   211: getfield 120	com/bumptech/glide/request/SingleRequest:i	Ljava/lang/Class;
    //   214: astore 12
    //   216: aload_0
    //   217: getfield 128	com/bumptech/glide/request/SingleRequest:m	Lcom/bumptech/glide/Priority;
    //   220: astore 13
    //   222: aload_0
    //   223: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   226: invokevirtual 493	com/bumptech/glide/request/a:l	()Lcom/bumptech/glide/load/engine/h;
    //   229: astore 14
    //   231: aload_0
    //   232: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   235: invokevirtual 497	com/bumptech/glide/request/a:E	()Ljava/util/Map;
    //   238: astore 15
    //   240: aload_0
    //   241: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   244: invokevirtual 500	com/bumptech/glide/request/a:O	()Z
    //   247: istore 16
    //   249: aload_0
    //   250: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   253: invokevirtual 503	com/bumptech/glide/request/a:K	()Z
    //   256: istore 17
    //   258: aload_0
    //   259: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   262: invokevirtual 506	com/bumptech/glide/request/a:u	()Ln2/d;
    //   265: astore 18
    //   267: aload_0
    //   268: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   271: invokevirtual 508	com/bumptech/glide/request/a:I	()Z
    //   274: istore 19
    //   276: aload_0
    //   277: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   280: invokevirtual 511	com/bumptech/glide/request/a:G	()Z
    //   283: istore 20
    //   285: aload_0
    //   286: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   289: invokevirtual 514	com/bumptech/glide/request/a:F	()Z
    //   292: istore 21
    //   294: aload_0
    //   295: getfield 122	com/bumptech/glide/request/SingleRequest:j	Lcom/bumptech/glide/request/a;
    //   298: invokevirtual 516	com/bumptech/glide/request/a:t	()Z
    //   301: istore 22
    //   303: aload_0
    //   304: getfield 142	com/bumptech/glide/request/SingleRequest:q	Ljava/util/concurrent/Executor;
    //   307: astore 23
    //   309: aload 7
    //   311: aload 8
    //   313: aload 9
    //   315: aload 10
    //   317: iload_2
    //   318: iload_1
    //   319: aload 11
    //   321: aload 12
    //   323: aload 13
    //   325: aload 14
    //   327: aload 15
    //   329: iload 16
    //   331: iload 17
    //   333: aload 18
    //   335: iload 19
    //   337: iload 20
    //   339: iload 21
    //   341: iload 22
    //   343: aload_0
    //   344: aload 23
    //   346: invokevirtual 519	com/bumptech/glide/load/engine/i:f	(Lcom/bumptech/glide/d;Ljava/lang/Object;Ln2/b;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/h;Ljava/util/Map;ZZLn2/d;ZZZZLcom/bumptech/glide/request/f;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/i$d;
    //   349: astore 8
    //   351: aload_3
    //   352: astore 7
    //   354: aload_0
    //   355: aload 8
    //   357: putfield 210	com/bumptech/glide/request/SingleRequest:s	Lcom/bumptech/glide/load/engine/i$d;
    //   360: aload_3
    //   361: astore 7
    //   363: aload_0
    //   364: getfield 147	com/bumptech/glide/request/SingleRequest:v	Lcom/bumptech/glide/request/SingleRequest$Status;
    //   367: aload 5
    //   369: if_acmpeq +11 -> 380
    //   372: aload_3
    //   373: astore 7
    //   375: aload_0
    //   376: aconst_null
    //   377: putfield 210	com/bumptech/glide/request/SingleRequest:s	Lcom/bumptech/glide/load/engine/i$d;
    //   380: iload 4
    //   382: ifeq +59 -> 441
    //   385: aload_3
    //   386: astore 7
    //   388: new 256	java/lang/StringBuilder
    //   391: astore 5
    //   393: aload_3
    //   394: astore 7
    //   396: aload 5
    //   398: invokespecial 257	java/lang/StringBuilder:<init>	()V
    //   401: aload_3
    //   402: astore 7
    //   404: aload 5
    //   406: ldc_w 521
    //   409: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   412: pop
    //   413: aload_3
    //   414: astore 7
    //   416: aload 5
    //   418: aload_0
    //   419: getfield 375	com/bumptech/glide/request/SingleRequest:t	J
    //   422: invokestatic 380	f3/f:a	(J)D
    //   425: invokevirtual 383	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   428: pop
    //   429: aload_3
    //   430: astore 7
    //   432: aload_0
    //   433: aload 5
    //   435: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   438: invokespecial 472	com/bumptech/glide/request/SingleRequest:t	(Ljava/lang/String;)V
    //   441: aload_3
    //   442: astore 7
    //   444: aload_3
    //   445: monitorexit
    //   446: return
    //   447: astore 5
    //   449: goto +5 -> 454
    //   452: astore 5
    //   454: aload_3
    //   455: astore 7
    //   457: aload_3
    //   458: monitorexit
    //   459: aload 5
    //   461: athrow
    //   462: astore 5
    //   464: aload 7
    //   466: astore_3
    //   467: goto -13 -> 454
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	470	0	this	SingleRequest
    //   0	470	1	paramInt1	int
    //   0	470	2	paramInt2	int
    //   11	456	3	localObject1	Object
    //   17	364	4	bool1	boolean
    //   27	407	5	localObject2	Object
    //   447	1	5	localObject3	Object
    //   452	8	5	localObject4	Object
    //   462	1	5	localObject5	Object
    //   96	15	6	f1	float
    //   126	339	7	localObject6	Object
    //   174	182	8	localObject7	Object
    //   180	134	9	localObject8	Object
    //   189	127	10	localb	n2.b
    //   208	112	11	localClass1	Class
    //   214	108	12	localClass2	Class
    //   220	104	13	localPriority	Priority
    //   229	97	14	localh	com.bumptech.glide.load.engine.h
    //   238	90	15	localMap	java.util.Map
    //   247	83	16	bool2	boolean
    //   256	76	17	bool3	boolean
    //   265	69	18	locald	n2.d
    //   274	62	19	bool4	boolean
    //   283	55	20	bool5	boolean
    //   292	48	21	bool6	boolean
    //   301	41	22	bool7	boolean
    //   307	38	23	localExecutor	Executor
    // Exception table:
    //   from	to	target	type
    //   309	351	447	finally
    //   14	19	452	finally
    //   24	65	452	finally
    //   65	77	452	finally
    //   78	118	452	finally
    //   123	164	452	finally
    //   164	309	452	finally
    //   354	360	462	finally
    //   363	372	462	finally
    //   375	380	462	finally
    //   388	393	462	finally
    //   396	401	462	finally
    //   404	413	462	finally
    //   416	429	462	finally
    //   432	441	462	finally
    //   444	446	462	finally
    //   457	459	462	finally
  }
  
  public boolean f()
  {
    synchronized (this.c)
    {
      boolean bool;
      if (this.v == Status.CLEARED) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public Object g()
  {
    this.b.c();
    return this.c;
  }
  
  public void h()
  {
    synchronized (this.c)
    {
      j();
      this.b.c();
      this.t = f3.f.b();
      if (this.h == null)
      {
        if (k.t(this.k, this.l))
        {
          this.z = this.k;
          this.A = this.l;
        }
        int i1;
        if (p() == null) {
          i1 = 5;
        } else {
          i1 = 3;
        }
        localObject2 = new com/bumptech/glide/load/engine/GlideException;
        ((GlideException)localObject2).<init>("Received null model");
        y((GlideException)localObject2, i1);
        return;
      }
      Status localStatus1 = this.v;
      Object localObject2 = Status.RUNNING;
      if (localStatus1 != localObject2)
      {
        if (localStatus1 == Status.COMPLETE)
        {
          c(this.r, DataSource.MEMORY_CACHE, false);
          return;
        }
        localStatus1 = Status.WAITING_FOR_SIZE;
        this.v = localStatus1;
        if (k.t(this.k, this.l)) {
          e(this.k, this.l);
        } else {
          this.n.c(this);
        }
        Status localStatus2 = this.v;
        if (((localStatus2 == localObject2) || (localStatus2 == localStatus1)) && (l())) {
          this.n.h(q());
        }
        if (D)
        {
          localObject2 = new java/lang/StringBuilder;
          ((StringBuilder)localObject2).<init>();
          ((StringBuilder)localObject2).append("finished run method in ");
          ((StringBuilder)localObject2).append(f3.f.a(this.t));
          t(((StringBuilder)localObject2).toString());
        }
        return;
      }
      localObject2 = new java/lang/IllegalArgumentException;
      ((IllegalArgumentException)localObject2).<init>("Cannot restart a running request");
      throw ((Throwable)localObject2);
    }
  }
  
  public boolean i()
  {
    synchronized (this.c)
    {
      boolean bool;
      if (this.v == Status.COMPLETE) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  public boolean isRunning()
  {
    synchronized (this.c)
    {
      Status localStatus = this.v;
      boolean bool;
      if ((localStatus != Status.RUNNING) && (localStatus != Status.WAITING_FOR_SIZE)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
  }
  
  public void pause()
  {
    synchronized (this.c)
    {
      if (isRunning()) {
        clear();
      }
      return;
    }
  }
  
  private static enum Status
  {
    static
    {
      Status localStatus1 = new Status("PENDING", 0);
      PENDING = localStatus1;
      Status localStatus2 = new Status("RUNNING", 1);
      RUNNING = localStatus2;
      Status localStatus3 = new Status("WAITING_FOR_SIZE", 2);
      WAITING_FOR_SIZE = localStatus3;
      Status localStatus4 = new Status("COMPLETE", 3);
      COMPLETE = localStatus4;
      Status localStatus5 = new Status("FAILED", 4);
      FAILED = localStatus5;
      Status localStatus6 = new Status("CLEARED", 5);
      CLEARED = localStatus6;
      $VALUES = new Status[] { localStatus1, localStatus2, localStatus3, localStatus4, localStatus5, localStatus6 };
    }
    
    private Status() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.request.SingleRequest
 * JD-Core Version:    0.7.0.1
 */