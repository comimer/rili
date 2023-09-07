package x2;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import c3.c;
import com.bumptech.glide.load.engine.bitmap_recycle.d;
import com.bumptech.glide.request.e;
import f3.j;
import f3.k;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

class g
{
  private final m2.a a;
  private final Handler b;
  private final List<b> c = new ArrayList();
  final com.bumptech.glide.h d;
  private final d e;
  private boolean f;
  private boolean g;
  private boolean h;
  private com.bumptech.glide.g<Bitmap> i;
  private a j;
  private boolean k;
  private a l;
  private Bitmap m;
  private n2.g<Bitmap> n;
  private a o;
  private d p;
  private int q;
  private int r;
  private int s;
  
  g(com.bumptech.glide.b paramb, m2.a parama, int paramInt1, int paramInt2, n2.g<Bitmap> paramg, Bitmap paramBitmap)
  {
    this(paramb.f(), com.bumptech.glide.b.t(paramb.h()), parama, null, i(com.bumptech.glide.b.t(paramb.h()), paramInt1, paramInt2), paramg, paramBitmap);
  }
  
  g(d paramd, com.bumptech.glide.h paramh, m2.a parama, Handler paramHandler, com.bumptech.glide.g<Bitmap> paramg, n2.g<Bitmap> paramg1, Bitmap paramBitmap)
  {
    this.d = paramh;
    paramh = paramHandler;
    if (paramHandler == null) {
      paramh = new Handler(Looper.getMainLooper(), new c());
    }
    this.e = paramd;
    this.b = paramh;
    this.i = paramg;
    this.a = parama;
    o(paramg1, paramBitmap);
  }
  
  private static n2.b g()
  {
    return new e3.b(Double.valueOf(Math.random()));
  }
  
  private static com.bumptech.glide.g<Bitmap> i(com.bumptech.glide.h paramh, int paramInt1, int paramInt2)
  {
    return paramh.l().n0(((e)((e)e.n0(com.bumptech.glide.load.engine.h.b).l0(true)).g0(true)).X(paramInt1, paramInt2));
  }
  
  private void l()
  {
    if ((this.f) && (!this.g))
    {
      if (this.h)
      {
        boolean bool;
        if (this.o == null) {
          bool = true;
        } else {
          bool = false;
        }
        j.a(bool, "Pending target must be null when starting from the first frame");
        this.a.f();
        this.h = false;
      }
      a locala = this.o;
      if (locala != null)
      {
        this.o = null;
        m(locala);
        return;
      }
      this.g = true;
      int i1 = this.a.d();
      long l1 = SystemClock.uptimeMillis();
      long l2 = i1;
      this.a.b();
      this.l = new a(this.b, this.a.g(), l1 + l2);
      this.i.n0(e.o0(g())).z0(this.a).u0(this.l);
    }
  }
  
  private void n()
  {
    Bitmap localBitmap = this.m;
    if (localBitmap != null)
    {
      this.e.c(localBitmap);
      this.m = null;
    }
  }
  
  private void p()
  {
    if (this.f) {
      return;
    }
    this.f = true;
    this.k = false;
    l();
  }
  
  private void q()
  {
    this.f = false;
  }
  
  void a()
  {
    this.c.clear();
    n();
    q();
    a locala = this.j;
    if (locala != null)
    {
      this.d.n(locala);
      this.j = null;
    }
    locala = this.l;
    if (locala != null)
    {
      this.d.n(locala);
      this.l = null;
    }
    locala = this.o;
    if (locala != null)
    {
      this.d.n(locala);
      this.o = null;
    }
    this.a.clear();
    this.k = true;
  }
  
  ByteBuffer b()
  {
    return this.a.getData().asReadOnlyBuffer();
  }
  
  Bitmap c()
  {
    Object localObject = this.j;
    if (localObject != null) {
      localObject = ((a)localObject).k();
    } else {
      localObject = this.m;
    }
    return localObject;
  }
  
  int d()
  {
    a locala = this.j;
    int i1;
    if (locala != null) {
      i1 = locala.e;
    } else {
      i1 = -1;
    }
    return i1;
  }
  
  Bitmap e()
  {
    return this.m;
  }
  
  int f()
  {
    return this.a.c();
  }
  
  int h()
  {
    return this.s;
  }
  
  int j()
  {
    return this.a.h() + this.q;
  }
  
  int k()
  {
    return this.r;
  }
  
  void m(a parama)
  {
    Object localObject = this.p;
    if (localObject != null) {
      ((d)localObject).a();
    }
    this.g = false;
    if (this.k)
    {
      this.b.obtainMessage(2, parama).sendToTarget();
      return;
    }
    if (!this.f)
    {
      if (this.h) {
        this.b.obtainMessage(2, parama).sendToTarget();
      } else {
        this.o = parama;
      }
      return;
    }
    if (parama.k() != null)
    {
      n();
      localObject = this.j;
      this.j = parama;
      for (int i1 = this.c.size() - 1; i1 >= 0; i1--) {
        ((b)this.c.get(i1)).a();
      }
      if (localObject != null) {
        this.b.obtainMessage(2, localObject).sendToTarget();
      }
    }
    l();
  }
  
  void o(n2.g<Bitmap> paramg, Bitmap paramBitmap)
  {
    this.n = ((n2.g)j.d(paramg));
    this.m = ((Bitmap)j.d(paramBitmap));
    this.i = this.i.n0(new e().j0(paramg));
    this.q = k.g(paramBitmap);
    this.r = paramBitmap.getWidth();
    this.s = paramBitmap.getHeight();
  }
  
  void r(b paramb)
  {
    if (!this.k)
    {
      if (!this.c.contains(paramb))
      {
        boolean bool = this.c.isEmpty();
        this.c.add(paramb);
        if (bool) {
          p();
        }
        return;
      }
      throw new IllegalStateException("Cannot subscribe twice in a row");
    }
    throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
  }
  
  void s(b paramb)
  {
    this.c.remove(paramb);
    if (this.c.isEmpty()) {
      q();
    }
  }
  
  static class a
    extends c<Bitmap>
  {
    private final Handler d;
    final int e;
    private final long f;
    private Bitmap g;
    
    a(Handler paramHandler, int paramInt, long paramLong)
    {
      this.d = paramHandler;
      this.e = paramInt;
      this.f = paramLong;
    }
    
    public void j(Drawable paramDrawable)
    {
      this.g = null;
    }
    
    Bitmap k()
    {
      return this.g;
    }
    
    public void l(Bitmap paramBitmap, d3.b<? super Bitmap> paramb)
    {
      this.g = paramBitmap;
      paramBitmap = this.d.obtainMessage(1, this);
      this.d.sendMessageAtTime(paramBitmap, this.f);
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
  
  private class c
    implements Handler.Callback
  {
    c() {}
    
    public boolean handleMessage(Message paramMessage)
    {
      int i = paramMessage.what;
      if (i == 1)
      {
        paramMessage = (g.a)paramMessage.obj;
        g.this.m(paramMessage);
        return true;
      }
      if (i == 2)
      {
        paramMessage = (g.a)paramMessage.obj;
        g.this.d.n(paramMessage);
      }
      return false;
    }
  }
  
  static abstract interface d
  {
    public abstract void a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x2.g
 * JD-Core Version:    0.7.0.1
 */