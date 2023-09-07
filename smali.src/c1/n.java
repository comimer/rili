package c1;

import android.graphics.PointF;
import java.util.Collections;
import java.util.List;
import l1.c;

public class n
  extends a<PointF, PointF>
{
  private final PointF i = new PointF();
  private final PointF j = new PointF();
  private final a<Float, Float> k;
  private final a<Float, Float> l;
  protected c<Float> m;
  protected c<Float> n;
  
  public n(a<Float, Float> parama1, a<Float, Float> parama2)
  {
    super(Collections.emptyList());
    this.k = parama1;
    this.l = parama2;
    m(f());
  }
  
  public void m(float paramFloat)
  {
    this.k.m(paramFloat);
    this.l.m(paramFloat);
    this.i.set(((Float)this.k.h()).floatValue(), ((Float)this.l.h()).floatValue());
    for (int i1 = 0; i1 < this.a.size(); i1++) {
      ((a.b)this.a.get(i1)).a();
    }
  }
  
  public PointF p()
  {
    return q(null, 0.0F);
  }
  
  PointF q(l1.a<PointF> parama, float paramFloat)
  {
    parama = this.m;
    Float localFloat = null;
    l1.a locala;
    float f1;
    float f2;
    float f3;
    if (parama != null)
    {
      locala = this.k.b();
      if (locala != null)
      {
        f1 = this.k.d();
        parama = locala.h;
        localObject = this.m;
        f2 = locala.g;
        if (parama == null) {
          f3 = f2;
        } else {
          f3 = parama.floatValue();
        }
        parama = (Float)((c)localObject).b(f2, f3, (Float)locala.b, (Float)locala.c, paramFloat, paramFloat, f1);
        break label108;
      }
    }
    parama = null;
    label108:
    Object localObject = localFloat;
    if (this.n != null)
    {
      locala = this.l.b();
      localObject = localFloat;
      if (locala != null)
      {
        f1 = this.l.d();
        localFloat = locala.h;
        localObject = this.n;
        f2 = locala.g;
        if (localFloat == null) {
          f3 = f2;
        } else {
          f3 = localFloat.floatValue();
        }
        localObject = (Float)((c)localObject).b(f2, f3, (Float)locala.b, (Float)locala.c, paramFloat, paramFloat, f1);
      }
    }
    if (parama == null) {
      this.j.set(this.i.x, 0.0F);
    } else {
      this.j.set(parama.floatValue(), 0.0F);
    }
    if (localObject == null)
    {
      parama = this.j;
      parama.set(parama.x, this.i.y);
    }
    else
    {
      parama = this.j;
      parama.set(parama.x, ((Float)localObject).floatValue());
    }
    return this.j;
  }
  
  public void r(c<Float> paramc)
  {
    c localc = this.m;
    if (localc != null) {
      localc.c(null);
    }
    this.m = paramc;
    if (paramc != null) {
      paramc.c(this);
    }
  }
  
  public void s(c<Float> paramc)
  {
    c localc = this.n;
    if (localc != null) {
      localc.c(null);
    }
    this.n = paramc;
    if (paramc != null) {
      paramc.c(this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.n
 * JD-Core Version:    0.7.0.1
 */