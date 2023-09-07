package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintAnchor.Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour;
import java.util.List;
import q.a;

public class k
  extends WidgetRun
{
  private static int[] k = new int[2];
  
  public k(ConstraintWidget paramConstraintWidget)
  {
    super(paramConstraintWidget);
    this.h.e = DependencyNode.Type.LEFT;
    this.i.e = DependencyNode.Type.RIGHT;
    this.f = 0;
  }
  
  private void q(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat, int paramInt5)
  {
    paramInt1 = paramInt2 - paramInt1;
    paramInt2 = paramInt4 - paramInt3;
    if (paramInt5 != -1)
    {
      if (paramInt5 != 0)
      {
        if (paramInt5 == 1)
        {
          paramInt2 = (int)(paramInt1 * paramFloat + 0.5F);
          paramArrayOfInt[0] = paramInt1;
          paramArrayOfInt[1] = paramInt2;
        }
      }
      else
      {
        paramArrayOfInt[0] = ((int)(paramInt2 * paramFloat + 0.5F));
        paramArrayOfInt[1] = paramInt2;
      }
    }
    else
    {
      paramInt3 = (int)(paramInt2 * paramFloat + 0.5F);
      paramInt4 = (int)(paramInt1 / paramFloat + 0.5F);
      if (paramInt3 <= paramInt1)
      {
        paramArrayOfInt[0] = paramInt3;
        paramArrayOfInt[1] = paramInt2;
      }
      else if (paramInt4 <= paramInt2)
      {
        paramArrayOfInt[0] = paramInt1;
        paramArrayOfInt[1] = paramInt4;
      }
    }
  }
  
  public void a(d paramd)
  {
    int i = a.a[this.j.ordinal()];
    Object localObject1;
    if (i != 1)
    {
      if (i != 2)
      {
        if (i == 3)
        {
          localObject1 = this.b;
          n(paramd, ((ConstraintWidget)localObject1).O, ((ConstraintWidget)localObject1).Q, 0);
        }
      }
      else {
        o(paramd);
      }
    }
    else {
      p(paramd);
    }
    float f2;
    label235:
    label242:
    int j;
    int m;
    if ((!this.e.j) && (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))
    {
      Object localObject2 = this.b;
      i = ((ConstraintWidget)localObject2).w;
      if (i != 2)
      {
        if (i == 3)
        {
          i = ((ConstraintWidget)localObject2).x;
          if ((i != 0) && (i != 3))
          {
            i = ((ConstraintWidget)localObject2).w();
            float f1;
            if (i != -1)
            {
              if (i != 0)
              {
                if (i != 1)
                {
                  i = 0;
                  break label242;
                }
                paramd = this.b;
                f1 = paramd.f.e.g;
                f2 = paramd.v();
              }
              else
              {
                paramd = this.b;
                f2 = paramd.f.e.g / paramd.v();
                break label235;
              }
            }
            else
            {
              paramd = this.b;
              f1 = paramd.f.e.g;
              f2 = paramd.v();
            }
            f2 = f1 * f2;
            i = (int)(f2 + 0.5F);
            this.e.d(i);
          }
          else
          {
            localObject1 = ((ConstraintWidget)localObject2).f;
            paramd = ((WidgetRun)localObject1).h;
            localObject1 = ((WidgetRun)localObject1).i;
            if (((ConstraintWidget)localObject2).O.f != null) {
              i = 1;
            } else {
              i = 0;
            }
            if (((ConstraintWidget)localObject2).P.f != null) {
              j = 1;
            } else {
              j = 0;
            }
            if (((ConstraintWidget)localObject2).Q.f != null) {
              m = 1;
            } else {
              m = 0;
            }
            int n;
            if (((ConstraintWidget)localObject2).R.f != null) {
              n = 1;
            } else {
              n = 0;
            }
            int i1 = ((ConstraintWidget)localObject2).w();
            if ((i != 0) && (j != 0) && (m != 0) && (n != 0))
            {
              f2 = this.b.v();
              int i2;
              int i3;
              int i4;
              int i5;
              if ((paramd.j) && (((DependencyNode)localObject1).j))
              {
                localObject2 = this.h;
                if ((((DependencyNode)localObject2).c) && (this.i.c))
                {
                  i = ((DependencyNode)((DependencyNode)localObject2).l.get(0)).g;
                  i2 = this.h.f;
                  i3 = ((DependencyNode)this.i.l.get(0)).g;
                  n = this.i.f;
                  i4 = paramd.g;
                  m = paramd.f;
                  i5 = ((DependencyNode)localObject1).g;
                  j = ((DependencyNode)localObject1).f;
                  q(k, i + i2, i3 - n, i4 + m, i5 - j, f2, i1);
                  this.e.d(k[0]);
                  this.b.f.e.d(k[1]);
                }
                return;
              }
              localObject2 = this.h;
              if (((DependencyNode)localObject2).j)
              {
                DependencyNode localDependencyNode = this.i;
                if (localDependencyNode.j) {
                  if ((paramd.c) && (((DependencyNode)localObject1).c))
                  {
                    i2 = ((DependencyNode)localObject2).g;
                    i = ((DependencyNode)localObject2).f;
                    i5 = localDependencyNode.g;
                    i4 = localDependencyNode.f;
                    m = ((DependencyNode)paramd.l.get(0)).g;
                    i3 = paramd.f;
                    n = ((DependencyNode)((DependencyNode)localObject1).l.get(0)).g;
                    j = ((DependencyNode)localObject1).f;
                    q(k, i2 + i, i5 - i4, m + i3, n - j, f2, i1);
                    this.e.d(k[0]);
                    this.b.f.e.d(k[1]);
                  }
                  else
                  {
                    return;
                  }
                }
              }
              localObject2 = this.h;
              if ((((DependencyNode)localObject2).c) && (this.i.c) && (paramd.c) && (((DependencyNode)localObject1).c))
              {
                i = ((DependencyNode)((DependencyNode)localObject2).l.get(0)).g;
                i4 = this.h.f;
                i2 = ((DependencyNode)this.i.l.get(0)).g;
                m = this.i.f;
                j = ((DependencyNode)paramd.l.get(0)).g;
                n = paramd.f;
                i5 = ((DependencyNode)((DependencyNode)localObject1).l.get(0)).g;
                i3 = ((DependencyNode)localObject1).f;
                q(k, i + i4, i2 - m, j + n, i5 - i3, f2, i1);
                this.e.d(k[0]);
                this.b.f.e.d(k[1]);
              }
            }
            else if ((i != 0) && (m != 0))
            {
              if ((this.h.c) && (this.i.c))
              {
                f2 = this.b.v();
                j = ((DependencyNode)this.h.l.get(0)).g + this.h.f;
                i = ((DependencyNode)this.i.l.get(0)).g - this.i.f;
                if ((i1 != -1) && (i1 != 0))
                {
                  if (i1 == 1)
                  {
                    i = g(i - j, 0);
                    m = (int)(i / f2 + 0.5F);
                    j = g(m, 1);
                    if (m != j) {
                      i = (int)(j * f2 + 0.5F);
                    }
                    this.e.d(i);
                    this.b.f.e.d(j);
                  }
                }
                else
                {
                  i = g(i - j, 0);
                  m = (int)(i * f2 + 0.5F);
                  j = g(m, 1);
                  if (m != j) {
                    i = (int)(j / f2 + 0.5F);
                  }
                  this.e.d(i);
                  this.b.f.e.d(j);
                }
              }
            }
            else if ((j != 0) && (n != 0))
            {
              if ((paramd.c) && (((DependencyNode)localObject1).c))
              {
                f2 = this.b.v();
                j = ((DependencyNode)paramd.l.get(0)).g + paramd.f;
                i = ((DependencyNode)((DependencyNode)localObject1).l.get(0)).g - ((DependencyNode)localObject1).f;
                if (i1 != -1) {
                  if (i1 != 0)
                  {
                    if (i1 != 1) {
                      break label1531;
                    }
                  }
                  else
                  {
                    i = g(i - j, 1);
                    m = (int)(i * f2 + 0.5F);
                    j = g(m, 0);
                    if (m != j) {
                      i = (int)(j / f2 + 0.5F);
                    }
                    this.e.d(j);
                    this.b.f.e.d(i);
                    break label1531;
                  }
                }
                i = g(i - j, 1);
                m = (int)(i / f2 + 0.5F);
                j = g(m, 0);
                if (m != j) {
                  i = (int)(j * f2 + 0.5F);
                }
                this.e.d(j);
                this.b.f.e.d(i);
              }
            }
          }
        }
      }
      else
      {
        paramd = ((ConstraintWidget)localObject2).K();
        if (paramd != null)
        {
          paramd = paramd.e.e;
          if (paramd.j)
          {
            f2 = this.b.B;
            i = (int)(paramd.g * f2 + 0.5F);
            this.e.d(i);
          }
        }
      }
    }
    label1531:
    paramd = this.h;
    if (paramd.c)
    {
      localObject1 = this.i;
      if (((DependencyNode)localObject1).c)
      {
        if ((paramd.j) && (((DependencyNode)localObject1).j) && (this.e.j)) {
          return;
        }
        if ((!this.e.j) && (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))
        {
          paramd = this.b;
          if ((paramd.w == 0) && (!paramd.i0()))
          {
            localObject1 = (DependencyNode)this.h.l.get(0);
            paramd = (DependencyNode)this.i.l.get(0);
            i = ((DependencyNode)localObject1).g;
            localObject1 = this.h;
            j = i + ((DependencyNode)localObject1).f;
            i = paramd.g + this.i.f;
            ((DependencyNode)localObject1).d(j);
            this.i.d(i);
            this.e.d(i - j);
            return;
          }
        }
        if ((!this.e.j) && (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (this.a == 1) && (this.h.l.size() > 0) && (this.i.l.size() > 0))
        {
          paramd = (DependencyNode)this.h.l.get(0);
          localObject1 = (DependencyNode)this.i.l.get(0);
          j = paramd.g;
          i = this.h.f;
          i = Math.min(((DependencyNode)localObject1).g + this.i.f - (j + i), this.e.m);
          paramd = this.b;
          m = paramd.A;
          j = Math.max(paramd.z, i);
          i = j;
          if (m > 0) {
            i = Math.min(m, j);
          }
          this.e.d(i);
        }
        if (!this.e.j) {
          return;
        }
        paramd = (DependencyNode)this.h.l.get(0);
        localObject1 = (DependencyNode)this.i.l.get(0);
        i = paramd.g + this.h.f;
        j = ((DependencyNode)localObject1).g + this.i.f;
        f2 = this.b.y();
        if (paramd == localObject1)
        {
          i = paramd.g;
          j = ((DependencyNode)localObject1).g;
          f2 = 0.5F;
        }
        m = this.e.g;
        this.h.d((int)(i + 0.5F + (j - i - m) * f2));
        this.i.d(this.h.g + this.e.g);
      }
    }
  }
  
  void d()
  {
    Object localObject1 = this.b;
    if (((ConstraintWidget)localObject1).a) {
      this.e.d(((ConstraintWidget)localObject1).W());
    }
    int j;
    if (!this.e.j)
    {
      localObject2 = this.b.A();
      this.d = ((ConstraintWidget.DimensionBehaviour)localObject2);
      if (localObject2 != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
      {
        localObject1 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
        if (localObject2 == localObject1)
        {
          localObject2 = this.b.K();
          if ((localObject2 != null) && ((((ConstraintWidget)localObject2).A() == ConstraintWidget.DimensionBehaviour.FIXED) || (((ConstraintWidget)localObject2).A() == localObject1)))
          {
            int i = ((ConstraintWidget)localObject2).W();
            j = this.b.O.f();
            int m = this.b.Q.f();
            b(this.h, ((ConstraintWidget)localObject2).e.h, this.b.O.f());
            b(this.i, ((ConstraintWidget)localObject2).e.i, -this.b.Q.f());
            this.e.d(i - j - m);
            return;
          }
        }
        if (this.d == ConstraintWidget.DimensionBehaviour.FIXED) {
          this.e.d(this.b.W());
        }
      }
    }
    else
    {
      localObject2 = this.d;
      localObject1 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
      if (localObject2 == localObject1)
      {
        localObject2 = this.b.K();
        if ((localObject2 != null) && ((((ConstraintWidget)localObject2).A() == ConstraintWidget.DimensionBehaviour.FIXED) || (((ConstraintWidget)localObject2).A() == localObject1)))
        {
          b(this.h, ((ConstraintWidget)localObject2).e.h, this.b.O.f());
          b(this.i, ((ConstraintWidget)localObject2).e.i, -this.b.Q.f());
          return;
        }
      }
    }
    Object localObject2 = this.e;
    if (((DependencyNode)localObject2).j)
    {
      localObject1 = this.b;
      if (((ConstraintWidget)localObject1).a)
      {
        localObject2 = ((ConstraintWidget)localObject1).W;
        localObject3 = localObject2[0];
        localObject4 = ((ConstraintAnchor)localObject3).f;
        if ((localObject4 != null) && (localObject2[1].f != null))
        {
          if (((ConstraintWidget)localObject1).i0())
          {
            this.h.f = this.b.W[0].f();
            this.i.f = (-this.b.W[1].f());
            return;
          }
          localObject1 = h(this.b.W[0]);
          if (localObject1 != null) {
            b(this.h, (DependencyNode)localObject1, this.b.W[0].f());
          }
          localObject1 = h(this.b.W[1]);
          if (localObject1 != null) {
            b(this.i, (DependencyNode)localObject1, -this.b.W[1].f());
          }
          this.h.b = true;
          this.i.b = true;
          return;
        }
        if (localObject4 != null)
        {
          localObject1 = h((ConstraintAnchor)localObject3);
          if (localObject1 == null) {
            return;
          }
          b(this.h, (DependencyNode)localObject1, this.b.W[0].f());
          b(this.i, this.h, this.e.g);
          return;
        }
        localObject2 = localObject2[1];
        if (((ConstraintAnchor)localObject2).f != null)
        {
          localObject1 = h((ConstraintAnchor)localObject2);
          if (localObject1 == null) {
            return;
          }
          b(this.i, (DependencyNode)localObject1, -this.b.W[1].f());
          b(this.h, this.i, -this.e.g);
          return;
        }
        if (((localObject1 instanceof a)) || (((ConstraintWidget)localObject1).K() == null) || (this.b.o(ConstraintAnchor.Type.CENTER).f != null)) {
          return;
        }
        localObject1 = this.b.K().e.h;
        b(this.h, (DependencyNode)localObject1, this.b.X());
        b(this.i, this.h, this.e.g);
        return;
      }
    }
    if (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
    {
      localObject3 = this.b;
      j = ((ConstraintWidget)localObject3).w;
      if (j != 2)
      {
        if (j == 3) {
          if (((ConstraintWidget)localObject3).x == 3)
          {
            this.h.a = this;
            this.i.a = this;
            localObject1 = ((ConstraintWidget)localObject3).f;
            ((WidgetRun)localObject1).h.a = this;
            ((WidgetRun)localObject1).i.a = this;
            ((DependencyNode)localObject2).a = this;
            if (((ConstraintWidget)localObject3).k0())
            {
              this.e.l.add(this.b.f.e);
              this.b.f.e.k.add(this.e);
              localObject1 = this.b.f;
              ((WidgetRun)localObject1).e.a = this;
              this.e.l.add(((WidgetRun)localObject1).h);
              this.e.l.add(this.b.f.i);
              this.b.f.h.k.add(this.e);
              this.b.f.i.k.add(this.e);
            }
            else if (this.b.i0())
            {
              this.b.f.e.l.add(this.e);
              this.e.k.add(this.b.f.e);
            }
            else
            {
              this.b.f.e.l.add(this.e);
            }
          }
          else
          {
            localObject1 = ((ConstraintWidget)localObject3).f.e;
            ((DependencyNode)localObject2).l.add(localObject1);
            ((DependencyNode)localObject1).k.add(this.e);
            this.b.f.h.k.add(this.e);
            this.b.f.i.k.add(this.e);
            localObject1 = this.e;
            ((DependencyNode)localObject1).b = true;
            ((DependencyNode)localObject1).k.add(this.h);
            this.e.k.add(this.i);
            this.h.l.add(this.e);
            this.i.l.add(this.e);
          }
        }
      }
      else
      {
        localObject1 = ((ConstraintWidget)localObject3).K();
        if (localObject1 != null)
        {
          localObject1 = ((ConstraintWidget)localObject1).f.e;
          this.e.l.add(localObject1);
          ((DependencyNode)localObject1).k.add(this.e);
          localObject1 = this.e;
          ((DependencyNode)localObject1).b = true;
          ((DependencyNode)localObject1).k.add(this.h);
          this.e.k.add(this.i);
        }
      }
    }
    localObject1 = this.b;
    Object localObject4 = ((ConstraintWidget)localObject1).W;
    Object localObject3 = localObject4[0];
    localObject2 = ((ConstraintAnchor)localObject3).f;
    if ((localObject2 != null) && (localObject4[1].f != null))
    {
      if (((ConstraintWidget)localObject1).i0())
      {
        this.h.f = this.b.W[0].f();
        this.i.f = (-this.b.W[1].f());
      }
      else
      {
        localObject1 = h(this.b.W[0]);
        localObject2 = h(this.b.W[1]);
        if (localObject1 != null) {
          ((DependencyNode)localObject1).b(this);
        }
        if (localObject2 != null) {
          ((DependencyNode)localObject2).b(this);
        }
        this.j = WidgetRun.RunType.CENTER;
      }
    }
    else if (localObject2 != null)
    {
      localObject1 = h((ConstraintAnchor)localObject3);
      if (localObject1 != null)
      {
        b(this.h, (DependencyNode)localObject1, this.b.W[0].f());
        c(this.i, this.h, 1, this.e);
      }
    }
    else
    {
      localObject2 = localObject4[1];
      if (((ConstraintAnchor)localObject2).f != null)
      {
        localObject1 = h((ConstraintAnchor)localObject2);
        if (localObject1 != null)
        {
          b(this.i, (DependencyNode)localObject1, -this.b.W[1].f());
          c(this.h, this.i, -1, this.e);
        }
      }
      else if ((!(localObject1 instanceof a)) && (((ConstraintWidget)localObject1).K() != null))
      {
        localObject1 = this.b.K().e.h;
        b(this.h, (DependencyNode)localObject1, this.b.X());
        c(this.i, this.h, 1, this.e);
      }
    }
  }
  
  public void e()
  {
    DependencyNode localDependencyNode = this.h;
    if (localDependencyNode.j) {
      this.b.m1(localDependencyNode.g);
    }
  }
  
  void f()
  {
    this.c = null;
    this.h.c();
    this.i.c();
    this.e.c();
    this.g = false;
  }
  
  boolean m()
  {
    if (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
      return this.b.w == 0;
    }
    return true;
  }
  
  void r()
  {
    this.g = false;
    this.h.c();
    this.h.j = false;
    this.i.c();
    this.i.j = false;
    this.e.j = false;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("HorizontalRun ");
    localStringBuilder.append(this.b.t());
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.k
 * JD-Core Version:    0.7.0.1
 */