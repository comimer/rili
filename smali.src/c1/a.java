package c1;

import android.animation.TimeInterpolator;
import java.util.ArrayList;
import java.util.List;

public abstract class a<K, A>
{
  final List<b> a = new ArrayList(1);
  private boolean b = false;
  private final d<K> c;
  protected float d = 0.0F;
  protected l1.c<A> e;
  private A f = null;
  private float g = -1.0F;
  private float h = -1.0F;
  
  a(List<? extends l1.a<K>> paramList)
  {
    this.c = o(paramList);
  }
  
  private float g()
  {
    if (this.g == -1.0F) {
      this.g = this.c.e();
    }
    return this.g;
  }
  
  private static <T> d<T> o(List<? extends l1.a<T>> paramList)
  {
    if (paramList.isEmpty()) {
      return new c(null);
    }
    if (paramList.size() == 1) {
      return new f(paramList);
    }
    return new e(paramList);
  }
  
  public void a(b paramb)
  {
    this.a.add(paramb);
  }
  
  protected l1.a<K> b()
  {
    com.airbnb.lottie.c.a("BaseKeyframeAnimation#getCurrentKeyframe");
    l1.a locala = this.c.b();
    com.airbnb.lottie.c.b("BaseKeyframeAnimation#getCurrentKeyframe");
    return locala;
  }
  
  float c()
  {
    if (this.h == -1.0F) {
      this.h = this.c.d();
    }
    return this.h;
  }
  
  protected float d()
  {
    l1.a locala = b();
    if ((locala != null) && (!locala.h())) {
      return locala.d.getInterpolation(e());
    }
    return 0.0F;
  }
  
  float e()
  {
    if (this.b) {
      return 0.0F;
    }
    l1.a locala = b();
    if (locala.h()) {
      return 0.0F;
    }
    return (this.d - locala.e()) / (locala.b() - locala.e());
  }
  
  public float f()
  {
    return this.d;
  }
  
  public A h()
  {
    float f1 = e();
    if ((this.e == null) && (this.c.a(f1))) {
      return this.f;
    }
    l1.a locala = b();
    Object localObject = locala.e;
    if ((localObject != null) && (locala.f != null)) {
      localObject = j(locala, f1, ((TimeInterpolator)localObject).getInterpolation(f1), locala.f.getInterpolation(f1));
    } else {
      localObject = i(locala, d());
    }
    this.f = localObject;
    return localObject;
  }
  
  abstract A i(l1.a<K> parama, float paramFloat);
  
  protected A j(l1.a<K> parama, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    throw new UnsupportedOperationException("This animation does not support split dimensions!");
  }
  
  public void k()
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((b)this.a.get(i)).a();
    }
  }
  
  public void l()
  {
    this.b = true;
  }
  
  public void m(float paramFloat)
  {
    if (this.c.isEmpty()) {
      return;
    }
    float f1;
    if (paramFloat < g())
    {
      f1 = g();
    }
    else
    {
      f1 = paramFloat;
      if (paramFloat > c()) {
        f1 = c();
      }
    }
    if (f1 == this.d) {
      return;
    }
    this.d = f1;
    if (this.c.c(f1)) {
      k();
    }
  }
  
  public void n(l1.c<A> paramc)
  {
    l1.c localc = this.e;
    if (localc != null) {
      localc.c(null);
    }
    this.e = paramc;
    if (paramc != null) {
      paramc.c(this);
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
  
  private static final class c<T>
    implements a.d<T>
  {
    public boolean a(float paramFloat)
    {
      throw new IllegalStateException("not implemented");
    }
    
    public l1.a<T> b()
    {
      throw new IllegalStateException("not implemented");
    }
    
    public boolean c(float paramFloat)
    {
      return false;
    }
    
    public float d()
    {
      return 1.0F;
    }
    
    public float e()
    {
      return 0.0F;
    }
    
    public boolean isEmpty()
    {
      return true;
    }
  }
  
  private static abstract interface d<T>
  {
    public abstract boolean a(float paramFloat);
    
    public abstract l1.a<T> b();
    
    public abstract boolean c(float paramFloat);
    
    public abstract float d();
    
    public abstract float e();
    
    public abstract boolean isEmpty();
  }
  
  private static final class e<T>
    implements a.d<T>
  {
    private final List<? extends l1.a<T>> a;
    private l1.a<T> b;
    private l1.a<T> c = null;
    private float d = -1.0F;
    
    e(List<? extends l1.a<T>> paramList)
    {
      this.a = paramList;
      this.b = f(0.0F);
    }
    
    private l1.a<T> f(float paramFloat)
    {
      Object localObject = this.a;
      localObject = (l1.a)((List)localObject).get(((List)localObject).size() - 1);
      if (paramFloat >= ((l1.a)localObject).e()) {
        return localObject;
      }
      for (int i = this.a.size() - 2; i >= 1; i--)
      {
        localObject = (l1.a)this.a.get(i);
        if ((this.b != localObject) && (((l1.a)localObject).a(paramFloat))) {
          return localObject;
        }
      }
      return (l1.a)this.a.get(0);
    }
    
    public boolean a(float paramFloat)
    {
      l1.a locala1 = this.c;
      l1.a locala2 = this.b;
      if ((locala1 == locala2) && (this.d == paramFloat)) {
        return true;
      }
      this.c = locala2;
      this.d = paramFloat;
      return false;
    }
    
    public l1.a<T> b()
    {
      return this.b;
    }
    
    public boolean c(float paramFloat)
    {
      if (this.b.a(paramFloat)) {
        return this.b.h() ^ true;
      }
      this.b = f(paramFloat);
      return true;
    }
    
    public float d()
    {
      List localList = this.a;
      return ((l1.a)localList.get(localList.size() - 1)).b();
    }
    
    public float e()
    {
      return ((l1.a)this.a.get(0)).e();
    }
    
    public boolean isEmpty()
    {
      return false;
    }
  }
  
  private static final class f<T>
    implements a.d<T>
  {
    private final l1.a<T> a;
    private float b = -1.0F;
    
    f(List<? extends l1.a<T>> paramList)
    {
      this.a = ((l1.a)paramList.get(0));
    }
    
    public boolean a(float paramFloat)
    {
      if (this.b == paramFloat) {
        return true;
      }
      this.b = paramFloat;
      return false;
    }
    
    public l1.a<T> b()
    {
      return this.a;
    }
    
    public boolean c(float paramFloat)
    {
      return this.a.h() ^ true;
    }
    
    public float d()
    {
      return this.a.b();
    }
    
    public float e()
    {
      return this.a.e();
    }
    
    public boolean isEmpty()
    {
      return false;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.a
 * JD-Core Version:    0.7.0.1
 */