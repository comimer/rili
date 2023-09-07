package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintAnchor.Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour;
import java.util.List;

public class m
  extends WidgetRun
{
  public DependencyNode k;
  f l;
  
  public m(ConstraintWidget paramConstraintWidget)
  {
    super(paramConstraintWidget);
    paramConstraintWidget = new DependencyNode(this);
    this.k = paramConstraintWidget;
    this.l = null;
    this.h.e = DependencyNode.Type.TOP;
    this.i.e = DependencyNode.Type.BOTTOM;
    paramConstraintWidget.e = DependencyNode.Type.BASELINE;
    this.f = 1;
  }
  
  public void a(d paramd)
  {
    int i = a.a[this.j.ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i == 3)
        {
          localObject = this.b;
          n(paramd, ((ConstraintWidget)localObject).P, ((ConstraintWidget)localObject).R, 1);
        }
      }
      else {
        o(paramd);
      }
    }
    else {
      p(paramd);
    }
    paramd = this.e;
    float f1;
    if ((paramd.c) && (!paramd.j) && (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))
    {
      paramd = this.b;
      i = paramd.x;
      if (i != 2)
      {
        if ((i == 3) && (paramd.e.e.j))
        {
          i = paramd.w();
          float f2;
          if (i != -1)
          {
            if (i != 0)
            {
              if (i != 1)
              {
                i = 0;
                break label243;
              }
              paramd = this.b;
              f1 = paramd.e.e.g;
              f2 = paramd.v();
            }
            else
            {
              paramd = this.b;
              f1 = paramd.e.e.g * paramd.v();
              break label236;
            }
          }
          else
          {
            paramd = this.b;
            f1 = paramd.e.e.g;
            f2 = paramd.v();
          }
          f1 /= f2;
          label236:
          i = (int)(f1 + 0.5F);
          label243:
          this.e.d(i);
        }
      }
      else
      {
        paramd = paramd.K();
        if (paramd != null)
        {
          paramd = paramd.f.e;
          if (paramd.j)
          {
            f1 = this.b.E;
            i = (int)(paramd.g * f1 + 0.5F);
            this.e.d(i);
          }
        }
      }
    }
    Object localObject = this.h;
    if (((DependencyNode)localObject).c)
    {
      paramd = this.i;
      if (paramd.c)
      {
        if ((((DependencyNode)localObject).j) && (paramd.j) && (this.e.j)) {
          return;
        }
        int j;
        if ((!this.e.j) && (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))
        {
          paramd = this.b;
          if ((paramd.w == 0) && (!paramd.k0()))
          {
            localObject = (DependencyNode)this.h.l.get(0);
            paramd = (DependencyNode)this.i.l.get(0);
            i = ((DependencyNode)localObject).g;
            localObject = this.h;
            j = i + ((DependencyNode)localObject).f;
            i = paramd.g + this.i.f;
            ((DependencyNode)localObject).d(j);
            this.i.d(i);
            this.e.d(i - j);
            return;
          }
        }
        if ((!this.e.j) && (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (this.a == 1) && (this.h.l.size() > 0) && (this.i.l.size() > 0))
        {
          paramd = (DependencyNode)this.h.l.get(0);
          localObject = (DependencyNode)this.i.l.get(0);
          j = paramd.g;
          i = this.h.f;
          i = ((DependencyNode)localObject).g + this.i.f - (j + i);
          paramd = this.e;
          j = paramd.m;
          if (i < j) {
            paramd.d(i);
          } else {
            paramd.d(j);
          }
        }
        if (!this.e.j) {
          return;
        }
        if ((this.h.l.size() > 0) && (this.i.l.size() > 0))
        {
          localObject = (DependencyNode)this.h.l.get(0);
          paramd = (DependencyNode)this.i.l.get(0);
          i = ((DependencyNode)localObject).g + this.h.f;
          j = paramd.g + this.i.f;
          f1 = this.b.R();
          if (localObject == paramd)
          {
            i = ((DependencyNode)localObject).g;
            j = paramd.g;
            f1 = 0.5F;
          }
          int m = this.e.g;
          this.h.d((int)(i + 0.5F + (j - i - m) * f1));
          this.i.d(this.h.g + this.e.g);
        }
      }
    }
  }
  
  void d()
  {
    Object localObject1 = this.b;
    if (((ConstraintWidget)localObject1).a) {
      this.e.d(((ConstraintWidget)localObject1).x());
    }
    int m;
    if (!this.e.j)
    {
      this.d = this.b.T();
      if (this.b.Z()) {
        this.l = new a(this);
      }
      localObject1 = this.d;
      if (localObject1 != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
      {
        if (localObject1 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT)
        {
          localObject1 = this.b.K();
          if ((localObject1 != null) && (((ConstraintWidget)localObject1).T() == ConstraintWidget.DimensionBehaviour.FIXED))
          {
            int i = ((ConstraintWidget)localObject1).x();
            int j = this.b.P.f();
            m = this.b.R.f();
            b(this.h, ((ConstraintWidget)localObject1).f.h, this.b.P.f());
            b(this.i, ((ConstraintWidget)localObject1).f.i, -this.b.R.f());
            this.e.d(i - j - m);
            return;
          }
        }
        if (this.d == ConstraintWidget.DimensionBehaviour.FIXED) {
          this.e.d(this.b.x());
        }
      }
    }
    else if (this.d == ConstraintWidget.DimensionBehaviour.MATCH_PARENT)
    {
      localObject1 = this.b.K();
      if ((localObject1 != null) && (((ConstraintWidget)localObject1).T() == ConstraintWidget.DimensionBehaviour.FIXED))
      {
        b(this.h, ((ConstraintWidget)localObject1).f.h, this.b.P.f());
        b(this.i, ((ConstraintWidget)localObject1).f.i, -this.b.R.f());
        return;
      }
    }
    Object localObject2 = this.e;
    boolean bool = ((DependencyNode)localObject2).j;
    if (bool)
    {
      localObject1 = this.b;
      if (((ConstraintWidget)localObject1).a)
      {
        localObject2 = ((ConstraintWidget)localObject1).W;
        localConstraintAnchor1 = localObject2[2];
        localConstraintAnchor2 = localConstraintAnchor1.f;
        if ((localConstraintAnchor2 != null) && (localObject2[3].f != null))
        {
          if (((ConstraintWidget)localObject1).k0())
          {
            this.h.f = this.b.W[2].f();
            this.i.f = (-this.b.W[3].f());
          }
          else
          {
            localObject1 = h(this.b.W[2]);
            if (localObject1 != null) {
              b(this.h, (DependencyNode)localObject1, this.b.W[2].f());
            }
            localObject1 = h(this.b.W[3]);
            if (localObject1 != null) {
              b(this.i, (DependencyNode)localObject1, -this.b.W[3].f());
            }
            this.h.b = true;
            this.i.b = true;
          }
          if (!this.b.Z()) {
            return;
          }
          b(this.k, this.h, this.b.p());
          return;
        }
        if (localConstraintAnchor2 != null)
        {
          localObject1 = h(localConstraintAnchor1);
          if (localObject1 == null) {
            return;
          }
          b(this.h, (DependencyNode)localObject1, this.b.W[2].f());
          b(this.i, this.h, this.e.g);
          if (!this.b.Z()) {
            return;
          }
          b(this.k, this.h, this.b.p());
          return;
        }
        localConstraintAnchor2 = localObject2[3];
        if (localConstraintAnchor2.f != null)
        {
          localObject1 = h(localConstraintAnchor2);
          if (localObject1 != null)
          {
            b(this.i, (DependencyNode)localObject1, -this.b.W[3].f());
            b(this.h, this.i, -this.e.g);
          }
          if (!this.b.Z()) {
            return;
          }
          b(this.k, this.h, this.b.p());
          return;
        }
        localObject2 = localObject2[4];
        if (((ConstraintAnchor)localObject2).f != null)
        {
          localObject1 = h((ConstraintAnchor)localObject2);
          if (localObject1 == null) {
            return;
          }
          b(this.k, (DependencyNode)localObject1, 0);
          b(this.h, this.k, -this.b.p());
          b(this.i, this.h, this.e.g);
          return;
        }
        if (((localObject1 instanceof q.a)) || (((ConstraintWidget)localObject1).K() == null) || (this.b.o(ConstraintAnchor.Type.CENTER).f != null)) {
          return;
        }
        localObject1 = this.b.K().f.h;
        b(this.h, (DependencyNode)localObject1, this.b.Y());
        b(this.i, this.h, this.e.g);
        if (!this.b.Z()) {
          return;
        }
        b(this.k, this.h, this.b.p());
        return;
      }
    }
    if ((!bool) && (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))
    {
      localObject1 = this.b;
      m = ((ConstraintWidget)localObject1).x;
      if (m != 2)
      {
        if ((m == 3) && (!((ConstraintWidget)localObject1).k0()))
        {
          localObject1 = this.b;
          if (((ConstraintWidget)localObject1).w != 3)
          {
            localObject1 = ((ConstraintWidget)localObject1).e.e;
            this.e.l.add(localObject1);
            ((DependencyNode)localObject1).k.add(this.e);
            localObject1 = this.e;
            ((DependencyNode)localObject1).b = true;
            ((DependencyNode)localObject1).k.add(this.h);
            this.e.k.add(this.i);
          }
        }
      }
      else
      {
        localObject1 = ((ConstraintWidget)localObject1).K();
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
    else
    {
      ((DependencyNode)localObject2).b(this);
    }
    localObject1 = this.b;
    localObject2 = ((ConstraintWidget)localObject1).W;
    ConstraintAnchor localConstraintAnchor1 = localObject2[2];
    ConstraintAnchor localConstraintAnchor2 = localConstraintAnchor1.f;
    if ((localConstraintAnchor2 != null) && (localObject2[3].f != null))
    {
      if (((ConstraintWidget)localObject1).k0())
      {
        this.h.f = this.b.W[2].f();
        this.i.f = (-this.b.W[3].f());
      }
      else
      {
        localObject2 = h(this.b.W[2]);
        localObject1 = h(this.b.W[3]);
        if (localObject2 != null) {
          ((DependencyNode)localObject2).b(this);
        }
        if (localObject1 != null) {
          ((DependencyNode)localObject1).b(this);
        }
        this.j = WidgetRun.RunType.CENTER;
      }
      if (this.b.Z()) {
        c(this.k, this.h, 1, this.l);
      }
    }
    else if (localConstraintAnchor2 != null)
    {
      localObject1 = h(localConstraintAnchor1);
      if (localObject1 != null)
      {
        b(this.h, (DependencyNode)localObject1, this.b.W[2].f());
        c(this.i, this.h, 1, this.e);
        if (this.b.Z()) {
          c(this.k, this.h, 1, this.l);
        }
        localObject2 = this.d;
        localObject1 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if ((localObject2 == localObject1) && (this.b.v() > 0.0F))
        {
          localObject2 = this.b.e;
          if (((WidgetRun)localObject2).d == localObject1)
          {
            ((WidgetRun)localObject2).e.k.add(this.e);
            this.e.l.add(this.b.e.e);
            this.e.a = this;
          }
        }
      }
    }
    else
    {
      localConstraintAnchor2 = localObject2[3];
      if (localConstraintAnchor2.f != null)
      {
        localObject1 = h(localConstraintAnchor2);
        if (localObject1 != null)
        {
          b(this.i, (DependencyNode)localObject1, -this.b.W[3].f());
          c(this.h, this.i, -1, this.e);
          if (this.b.Z()) {
            c(this.k, this.h, 1, this.l);
          }
        }
      }
      else
      {
        localObject2 = localObject2[4];
        if (((ConstraintAnchor)localObject2).f != null)
        {
          localObject1 = h((ConstraintAnchor)localObject2);
          if (localObject1 != null)
          {
            b(this.k, (DependencyNode)localObject1, 0);
            c(this.h, this.k, -1, this.l);
            c(this.i, this.h, 1, this.e);
          }
        }
        else if ((!(localObject1 instanceof q.a)) && (((ConstraintWidget)localObject1).K() != null))
        {
          localObject1 = this.b.K().f.h;
          b(this.h, (DependencyNode)localObject1, this.b.Y());
          c(this.i, this.h, 1, this.e);
          if (this.b.Z()) {
            c(this.k, this.h, 1, this.l);
          }
          localObject2 = this.d;
          localObject1 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
          if ((localObject2 == localObject1) && (this.b.v() > 0.0F))
          {
            localObject2 = this.b.e;
            if (((WidgetRun)localObject2).d == localObject1)
            {
              ((WidgetRun)localObject2).e.k.add(this.e);
              this.e.l.add(this.b.e.e);
              this.e.a = this;
            }
          }
        }
      }
    }
    if (this.e.l.size() == 0) {
      this.e.c = true;
    }
  }
  
  public void e()
  {
    DependencyNode localDependencyNode = this.h;
    if (localDependencyNode.j) {
      this.b.n1(localDependencyNode.g);
    }
  }
  
  void f()
  {
    this.c = null;
    this.h.c();
    this.i.c();
    this.k.c();
    this.e.c();
    this.g = false;
  }
  
  boolean m()
  {
    if (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
      return this.b.x == 0;
    }
    return true;
  }
  
  void q()
  {
    this.g = false;
    this.h.c();
    this.h.j = false;
    this.i.c();
    this.i.j = false;
    this.k.c();
    this.k.j = false;
    this.e.j = false;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("VerticalRun ");
    localStringBuilder.append(this.b.t());
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.m
 * JD-Core Version:    0.7.0.1
 */