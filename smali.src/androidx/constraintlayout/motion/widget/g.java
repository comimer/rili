package androidx.constraintlayout.motion.widget;

import android.animation.TimeInterpolator;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.Interpolator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import r.b.a;
import r.c.a;
import r.d.a;

public class g
{
  boolean a;
  private j b;
  private j c;
  private f d;
  private f e;
  private p.a[] f;
  private p.a g;
  float h;
  float i;
  private int[] j;
  private double[] k;
  private double[] l;
  private String[] m;
  private float[] n;
  private ArrayList<j> o;
  private HashMap<String, r.d> p;
  private HashMap<String, r.c> q;
  private HashMap<String, r.b> r;
  private e[] s;
  private int t;
  private View u;
  private int v;
  private float w;
  private Interpolator x;
  private boolean y;
  
  private float a(float paramFloat, float[] paramArrayOfFloat)
  {
    float f1 = 0.0F;
    float f2 = 1.0F;
    float f3;
    if (paramArrayOfFloat != null)
    {
      paramArrayOfFloat[0] = 1.0F;
      f3 = paramFloat;
    }
    else
    {
      float f4 = this.i;
      f3 = paramFloat;
      if (f4 != 1.0D)
      {
        float f5 = this.h;
        f6 = paramFloat;
        if (paramFloat < f5) {
          f6 = 0.0F;
        }
        f3 = f6;
        if (f6 > f5)
        {
          f3 = f6;
          if (f6 < 1.0D) {
            f3 = Math.min((f6 - f5) * f4, 1.0F);
          }
        }
      }
    }
    Object localObject = this.b.a;
    paramFloat = (0.0F / 0.0F);
    Iterator localIterator = this.o.iterator();
    float f6 = f1;
    while (localIterator.hasNext())
    {
      j localj = (j)localIterator.next();
      p.b localb = localj.a;
      if (localb != null)
      {
        f1 = localj.c;
        if (f1 < f3)
        {
          localObject = localb;
          f6 = f1;
        }
        else if (Float.isNaN(paramFloat))
        {
          paramFloat = localj.c;
        }
      }
    }
    f1 = f3;
    if (localObject != null)
    {
      if (Float.isNaN(paramFloat)) {
        paramFloat = f2;
      }
      paramFloat -= f6;
      double d1 = (f3 - f6) / paramFloat;
      paramFloat = (float)((p.b)localObject).a(d1) * paramFloat + f6;
      f1 = paramFloat;
      if (paramArrayOfFloat != null)
      {
        paramArrayOfFloat[0] = ((float)((p.b)localObject).b(d1));
        f1 = paramFloat;
      }
    }
    return f1;
  }
  
  public void b(double paramDouble, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    double[] arrayOfDouble1 = new double[4];
    double[] arrayOfDouble2 = new double[4];
    this.f[0].b(paramDouble, arrayOfDouble1);
    this.f[0].d(paramDouble, arrayOfDouble2);
    Arrays.fill(paramArrayOfFloat2, 0.0F);
    this.b.c(paramDouble, this.j, arrayOfDouble1, paramArrayOfFloat1, arrayOfDouble2, paramArrayOfFloat2);
  }
  
  boolean c(View paramView, float paramFloat, long paramLong, p.c paramc)
  {
    float f1 = a(paramFloat, null);
    int i1 = this.v;
    paramFloat = f1;
    float f2;
    float f3;
    if (i1 != d.a)
    {
      f2 = 1.0F / i1;
      f3 = (float)Math.floor(f1 / f2);
      f1 = f1 % f2 / f2;
      paramFloat = f1;
      if (!Float.isNaN(this.w)) {
        paramFloat = (f1 + this.w) % 1.0F;
      }
      localObject1 = this.x;
      if (localObject1 != null) {
        paramFloat = ((TimeInterpolator)localObject1).getInterpolation(paramFloat);
      } else if (paramFloat > 0.5D) {
        paramFloat = 1.0F;
      } else {
        paramFloat = 0.0F;
      }
      paramFloat = paramFloat * f2 + f3 * f2;
    }
    Object localObject1 = this.q;
    if (localObject1 != null)
    {
      localObject1 = ((HashMap)localObject1).values().iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((r.c)((Iterator)localObject1).next()).b(paramView, paramFloat);
      }
    }
    localObject1 = this.p;
    boolean bool1;
    Object localObject3;
    if (localObject1 != null)
    {
      localObject2 = ((HashMap)localObject1).values().iterator();
      localObject1 = null;
      bool1 = false;
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (r.d)((Iterator)localObject2).next();
        if ((localObject3 instanceof d.a)) {
          localObject1 = (d.a)localObject3;
        } else {
          bool1 |= ((r.d)localObject3).b(paramView, paramFloat, paramLong, paramc);
        }
      }
    }
    else
    {
      localObject1 = null;
      bool1 = false;
    }
    Object localObject2 = this.f;
    float f4;
    boolean bool2;
    if (localObject2 != null)
    {
      localObject2 = localObject2[0];
      double d1 = paramFloat;
      ((p.a)localObject2).b(d1, this.k);
      this.f[0].d(d1, this.l);
      localObject2 = this.g;
      if (localObject2 != null)
      {
        localObject3 = this.k;
        if (localObject3.length > 0)
        {
          ((p.a)localObject2).b(d1, (double[])localObject3);
          this.g.d(d1, this.l);
        }
      }
      if (!this.y)
      {
        this.b.h(paramFloat, paramView, this.j, this.k, this.l, null, this.a);
        this.a = false;
      }
      if (this.t != d.a)
      {
        if (this.u == null) {
          this.u = ((View)paramView.getParent()).findViewById(this.t);
        }
        localObject2 = this.u;
        if (localObject2 != null)
        {
          f1 = (((View)localObject2).getTop() + this.u.getBottom()) / 2.0F;
          f2 = (this.u.getLeft() + this.u.getRight()) / 2.0F;
          if ((paramView.getRight() - paramView.getLeft() > 0) && (paramView.getBottom() - paramView.getTop() > 0))
          {
            f4 = paramView.getLeft();
            f3 = paramView.getTop();
            paramView.setPivotX(f2 - f4);
            paramView.setPivotY(f1 - f3);
          }
        }
      }
      localObject2 = this.q;
      if (localObject2 != null)
      {
        localObject3 = ((HashMap)localObject2).values().iterator();
        while (((Iterator)localObject3).hasNext())
        {
          localObject2 = (p.e)((Iterator)localObject3).next();
          if ((localObject2 instanceof c.a))
          {
            double[] arrayOfDouble = this.l;
            if (arrayOfDouble.length > 1) {
              ((c.a)localObject2).c(paramView, paramFloat, arrayOfDouble[0], arrayOfDouble[1]);
            }
          }
        }
      }
      if (localObject1 != null)
      {
        localObject2 = this.l;
        bool1 |= ((d.a)localObject1).c(paramView, paramc, paramFloat, paramLong, localObject2[0], localObject2[1]);
      }
      for (i1 = 1;; i1++)
      {
        paramc = this.f;
        if (i1 >= paramc.length) {
          break;
        }
        paramc[i1].c(d1, this.n);
        r.a.b((ConstraintAttribute)this.b.o.get(this.m[(i1 - 1)]), paramView, this.n);
      }
      paramc = this.d;
      if (paramc.a == 0) {
        if (paramFloat <= 0.0F) {
          paramView.setVisibility(paramc.b);
        } else if (paramFloat >= 1.0F) {
          paramView.setVisibility(this.e.b);
        } else if (this.e.b != paramc.b) {
          paramView.setVisibility(0);
        }
      }
      bool2 = bool1;
      if (this.s != null) {
        for (i1 = 0;; i1++)
        {
          paramc = this.s;
          bool2 = bool1;
          if (i1 >= paramc.length) {
            break;
          }
          paramc[i1].a(paramFloat, paramView);
        }
      }
    }
    else
    {
      paramc = this.b;
      float f5 = paramc.e;
      localObject1 = this.c;
      float f6 = ((j)localObject1).e;
      float f7 = paramc.f;
      float f8 = ((j)localObject1).f;
      f4 = paramc.g;
      f1 = ((j)localObject1).g;
      f3 = paramc.h;
      f2 = ((j)localObject1).h;
      f5 = f5 + (f6 - f5) * paramFloat + 0.5F;
      int i2 = (int)f5;
      f8 = f7 + (f8 - f7) * paramFloat + 0.5F;
      int i3 = (int)f8;
      i1 = (int)(f5 + ((f1 - f4) * paramFloat + f4));
      int i4 = (int)(f8 + ((f2 - f3) * paramFloat + f3));
      if ((f1 != f4) || (f2 != f3) || (this.a))
      {
        paramView.measure(View.MeasureSpec.makeMeasureSpec(i1 - i2, 1073741824), View.MeasureSpec.makeMeasureSpec(i4 - i3, 1073741824));
        this.a = false;
      }
      paramView.layout(i2, i3, i1, i4);
      bool2 = bool1;
    }
    paramc = this.r;
    if (paramc != null)
    {
      paramc = paramc.values().iterator();
      while (paramc.hasNext())
      {
        localObject1 = (r.b)paramc.next();
        if ((localObject1 instanceof b.a))
        {
          localObject2 = (b.a)localObject1;
          localObject1 = this.l;
          ((b.a)localObject2).c(paramView, paramFloat, localObject1[0], localObject1[1]);
        }
        else
        {
          ((r.b)localObject1).b(paramView, paramFloat);
        }
      }
    }
    return bool2;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(" start: x: ");
    localStringBuilder.append(this.b.e);
    localStringBuilder.append(" y: ");
    localStringBuilder.append(this.b.f);
    localStringBuilder.append(" end: x: ");
    localStringBuilder.append(this.c.e);
    localStringBuilder.append(" y: ");
    localStringBuilder.append(this.c.f);
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.motion.widget.g
 * JD-Core Version:    0.7.0.1
 */