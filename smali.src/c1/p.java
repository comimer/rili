package c1;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.airbnb.lottie.h0;
import f1.b;
import f1.e;
import f1.g;
import f1.l;
import f1.m;
import java.util.Collections;
import l1.c;

public class p
{
  private final Matrix a = new Matrix();
  private final Matrix b;
  private final Matrix c;
  private final Matrix d;
  private final float[] e;
  private a<PointF, PointF> f;
  private a<?, PointF> g;
  private a<l1.d, l1.d> h;
  private a<Float, Float> i;
  private a<Integer, Integer> j;
  private d k;
  private d l;
  private a<?, Float> m;
  private a<?, Float> n;
  
  public p(l paraml)
  {
    Object localObject;
    if (paraml.c() == null) {
      localObject = null;
    } else {
      localObject = paraml.c().m();
    }
    this.f = ((a)localObject);
    if (paraml.f() == null) {
      localObject = null;
    } else {
      localObject = paraml.f().m();
    }
    this.g = ((a)localObject);
    if (paraml.h() == null) {
      localObject = null;
    } else {
      localObject = paraml.h().m();
    }
    this.h = ((a)localObject);
    if (paraml.g() == null) {
      localObject = null;
    } else {
      localObject = paraml.g().m();
    }
    this.i = ((a)localObject);
    if (paraml.i() == null) {
      localObject = null;
    } else {
      localObject = (d)paraml.i().m();
    }
    this.k = ((d)localObject);
    if (localObject != null)
    {
      this.b = new Matrix();
      this.c = new Matrix();
      this.d = new Matrix();
      this.e = new float[9];
    }
    else
    {
      this.b = null;
      this.c = null;
      this.d = null;
      this.e = null;
    }
    if (paraml.j() == null) {
      localObject = null;
    } else {
      localObject = (d)paraml.j().m();
    }
    this.l = ((d)localObject);
    if (paraml.e() != null) {
      this.j = paraml.e().m();
    }
    if (paraml.k() != null) {
      this.m = paraml.k().m();
    } else {
      this.m = null;
    }
    if (paraml.d() != null) {
      this.n = paraml.d().m();
    } else {
      this.n = null;
    }
  }
  
  private void d()
  {
    for (int i1 = 0; i1 < 9; i1++) {
      this.e[i1] = 0.0F;
    }
  }
  
  public void a(com.airbnb.lottie.model.layer.a parama)
  {
    parama.i(this.j);
    parama.i(this.m);
    parama.i(this.n);
    parama.i(this.f);
    parama.i(this.g);
    parama.i(this.h);
    parama.i(this.i);
    parama.i(this.k);
    parama.i(this.l);
  }
  
  public void b(a.b paramb)
  {
    Object localObject = this.j;
    if (localObject != null) {
      ((a)localObject).a(paramb);
    }
    localObject = this.m;
    if (localObject != null) {
      ((a)localObject).a(paramb);
    }
    localObject = this.n;
    if (localObject != null) {
      ((a)localObject).a(paramb);
    }
    localObject = this.f;
    if (localObject != null) {
      ((a)localObject).a(paramb);
    }
    localObject = this.g;
    if (localObject != null) {
      ((a)localObject).a(paramb);
    }
    localObject = this.h;
    if (localObject != null) {
      ((a)localObject).a(paramb);
    }
    localObject = this.i;
    if (localObject != null) {
      ((a)localObject).a(paramb);
    }
    localObject = this.k;
    if (localObject != null) {
      ((a)localObject).a(paramb);
    }
    localObject = this.l;
    if (localObject != null) {
      ((a)localObject).a(paramb);
    }
  }
  
  public <T> boolean c(T paramT, c<T> paramc)
  {
    if (paramT == h0.f)
    {
      paramT = this.f;
      if (paramT == null) {
        this.f = new q(paramc, new PointF());
      } else {
        paramT.n(paramc);
      }
    }
    else if (paramT == h0.g)
    {
      paramT = this.g;
      if (paramT == null) {
        this.g = new q(paramc, new PointF());
      } else {
        paramT.n(paramc);
      }
    }
    else
    {
      a locala;
      if (paramT == h0.h)
      {
        locala = this.g;
        if ((locala instanceof n))
        {
          ((n)locala).r(paramc);
          break label470;
        }
      }
      if (paramT == h0.i)
      {
        locala = this.g;
        if ((locala instanceof n))
        {
          ((n)locala).s(paramc);
          break label470;
        }
      }
      if (paramT == h0.o)
      {
        paramT = this.h;
        if (paramT == null) {
          this.h = new q(paramc, new l1.d());
        } else {
          paramT.n(paramc);
        }
      }
      else if (paramT == h0.p)
      {
        paramT = this.i;
        if (paramT == null) {
          this.i = new q(paramc, Float.valueOf(0.0F));
        } else {
          paramT.n(paramc);
        }
      }
      else if (paramT == h0.c)
      {
        paramT = this.j;
        if (paramT == null) {
          this.j = new q(paramc, Integer.valueOf(100));
        } else {
          paramT.n(paramc);
        }
      }
      else if (paramT == h0.C)
      {
        paramT = this.m;
        if (paramT == null) {
          this.m = new q(paramc, Float.valueOf(100.0F));
        } else {
          paramT.n(paramc);
        }
      }
      else if (paramT == h0.D)
      {
        paramT = this.n;
        if (paramT == null) {
          this.n = new q(paramc, Float.valueOf(100.0F));
        } else {
          paramT.n(paramc);
        }
      }
      else if (paramT == h0.q)
      {
        if (this.k == null) {
          this.k = new d(Collections.singletonList(new l1.a(Float.valueOf(0.0F))));
        }
        this.k.n(paramc);
      }
      else
      {
        if (paramT != h0.r) {
          break label472;
        }
        if (this.l == null) {
          this.l = new d(Collections.singletonList(new l1.a(Float.valueOf(0.0F))));
        }
        this.l.n(paramc);
      }
    }
    label470:
    return true;
    label472:
    return false;
  }
  
  public a<?, Float> e()
  {
    return this.n;
  }
  
  public Matrix f()
  {
    this.a.reset();
    Object localObject = this.g;
    float f1;
    if (localObject != null)
    {
      localObject = (PointF)((a)localObject).h();
      if (localObject != null)
      {
        f1 = ((PointF)localObject).x;
        if ((f1 != 0.0F) || (((PointF)localObject).y != 0.0F)) {
          this.a.preTranslate(f1, ((PointF)localObject).y);
        }
      }
    }
    localObject = this.i;
    if (localObject != null)
    {
      if ((localObject instanceof q)) {
        f1 = ((Float)((a)localObject).h()).floatValue();
      } else {
        f1 = ((d)localObject).p();
      }
      if (f1 != 0.0F) {
        this.a.preRotate(f1);
      }
    }
    localObject = this.k;
    if (localObject != null)
    {
      d locald = this.l;
      if (locald == null) {
        f1 = 0.0F;
      } else {
        f1 = (float)Math.cos(Math.toRadians(-locald.p() + 90.0F));
      }
      locald = this.l;
      float f2;
      if (locald == null) {
        f2 = 1.0F;
      } else {
        f2 = (float)Math.sin(Math.toRadians(-locald.p() + 90.0F));
      }
      float f3 = (float)Math.tan(Math.toRadians(((d)localObject).p()));
      d();
      localObject = this.e;
      localObject[0] = f1;
      localObject[1] = f2;
      float f4 = -f2;
      localObject[3] = f4;
      localObject[4] = f1;
      localObject[8] = 1.0F;
      this.b.setValues((float[])localObject);
      d();
      localObject = this.e;
      localObject[0] = 1.0F;
      localObject[3] = f3;
      localObject[4] = 1.0F;
      localObject[8] = 1.0F;
      this.c.setValues((float[])localObject);
      d();
      localObject = this.e;
      localObject[0] = f1;
      localObject[1] = f4;
      localObject[3] = f2;
      localObject[4] = f1;
      localObject[8] = 1.0F;
      this.d.setValues((float[])localObject);
      this.c.preConcat(this.b);
      this.d.preConcat(this.c);
      this.a.preConcat(this.d);
    }
    localObject = this.h;
    if (localObject != null)
    {
      localObject = (l1.d)((a)localObject).h();
      if ((((l1.d)localObject).b() != 1.0F) || (((l1.d)localObject).c() != 1.0F)) {
        this.a.preScale(((l1.d)localObject).b(), ((l1.d)localObject).c());
      }
    }
    localObject = this.f;
    if (localObject != null)
    {
      localObject = (PointF)((a)localObject).h();
      f1 = ((PointF)localObject).x;
      if ((f1 != 0.0F) || (((PointF)localObject).y != 0.0F)) {
        this.a.preTranslate(-f1, -((PointF)localObject).y);
      }
    }
    return this.a;
  }
  
  public Matrix g(float paramFloat)
  {
    Object localObject1 = this.g;
    Object localObject2 = null;
    if (localObject1 == null) {
      localObject1 = null;
    } else {
      localObject1 = (PointF)((a)localObject1).h();
    }
    Object localObject3 = this.h;
    if (localObject3 == null) {
      localObject3 = null;
    } else {
      localObject3 = (l1.d)((a)localObject3).h();
    }
    this.a.reset();
    if (localObject1 != null) {
      this.a.preTranslate(((PointF)localObject1).x * paramFloat, ((PointF)localObject1).y * paramFloat);
    }
    if (localObject3 != null)
    {
      localObject1 = this.a;
      double d1 = ((l1.d)localObject3).b();
      double d2 = paramFloat;
      ((Matrix)localObject1).preScale((float)Math.pow(d1, d2), (float)Math.pow(((l1.d)localObject3).c(), d2));
    }
    localObject1 = this.i;
    if (localObject1 != null)
    {
      float f1 = ((Float)((a)localObject1).h()).floatValue();
      localObject1 = this.f;
      if (localObject1 == null) {
        localObject1 = localObject2;
      } else {
        localObject1 = (PointF)((a)localObject1).h();
      }
      localObject3 = this.a;
      float f2 = 0.0F;
      float f3;
      if (localObject1 == null) {
        f3 = 0.0F;
      } else {
        f3 = ((PointF)localObject1).x;
      }
      if (localObject1 != null) {
        f2 = ((PointF)localObject1).y;
      }
      ((Matrix)localObject3).preRotate(f1 * paramFloat, f3, f2);
    }
    return this.a;
  }
  
  public a<?, Integer> h()
  {
    return this.j;
  }
  
  public a<?, Float> i()
  {
    return this.m;
  }
  
  public void j(float paramFloat)
  {
    Object localObject = this.j;
    if (localObject != null) {
      ((a)localObject).m(paramFloat);
    }
    localObject = this.m;
    if (localObject != null) {
      ((a)localObject).m(paramFloat);
    }
    localObject = this.n;
    if (localObject != null) {
      ((a)localObject).m(paramFloat);
    }
    localObject = this.f;
    if (localObject != null) {
      ((a)localObject).m(paramFloat);
    }
    localObject = this.g;
    if (localObject != null) {
      ((a)localObject).m(paramFloat);
    }
    localObject = this.h;
    if (localObject != null) {
      ((a)localObject).m(paramFloat);
    }
    localObject = this.i;
    if (localObject != null) {
      ((a)localObject).m(paramFloat);
    }
    localObject = this.k;
    if (localObject != null) {
      ((a)localObject).m(paramFloat);
    }
    localObject = this.l;
    if (localObject != null) {
      ((a)localObject).m(paramFloat);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.p
 * JD-Core Version:    0.7.0.1
 */