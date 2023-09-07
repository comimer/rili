package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.f;
import java.util.List;

class i
  extends WidgetRun
{
  public i(ConstraintWidget paramConstraintWidget)
  {
    super(paramConstraintWidget);
    paramConstraintWidget.e.f();
    paramConstraintWidget.f.f();
    this.f = ((f)paramConstraintWidget).s1();
  }
  
  private void q(DependencyNode paramDependencyNode)
  {
    this.h.k.add(paramDependencyNode);
    paramDependencyNode.l.add(this.h);
  }
  
  public void a(d paramd)
  {
    paramd = this.h;
    if (!paramd.c) {
      return;
    }
    if (paramd.j) {
      return;
    }
    paramd = (DependencyNode)paramd.l.get(0);
    f localf = (f)this.b;
    int i = (int)(paramd.g * localf.v1() + 0.5F);
    this.h.d(i);
  }
  
  void d()
  {
    Object localObject = (f)this.b;
    int i = ((f)localObject).t1();
    int j = ((f)localObject).u1();
    ((f)localObject).v1();
    if (((f)localObject).s1() == 1)
    {
      if (i != -1)
      {
        this.h.l.add(this.b.a0.e.h);
        this.b.a0.e.h.k.add(this.h);
        this.h.f = i;
      }
      else if (j != -1)
      {
        this.h.l.add(this.b.a0.e.i);
        this.b.a0.e.i.k.add(this.h);
        this.h.f = (-j);
      }
      else
      {
        localObject = this.h;
        ((DependencyNode)localObject).b = true;
        ((DependencyNode)localObject).l.add(this.b.a0.e.i);
        this.b.a0.e.i.k.add(this.h);
      }
      q(this.b.e.h);
      q(this.b.e.i);
    }
    else
    {
      if (i != -1)
      {
        this.h.l.add(this.b.a0.f.h);
        this.b.a0.f.h.k.add(this.h);
        this.h.f = i;
      }
      else if (j != -1)
      {
        this.h.l.add(this.b.a0.f.i);
        this.b.a0.f.i.k.add(this.h);
        this.h.f = (-j);
      }
      else
      {
        localObject = this.h;
        ((DependencyNode)localObject).b = true;
        ((DependencyNode)localObject).l.add(this.b.a0.f.i);
        this.b.a0.f.i.k.add(this.h);
      }
      q(this.b.f.h);
      q(this.b.f.i);
    }
  }
  
  public void e()
  {
    if (((f)this.b).s1() == 1) {
      this.b.m1(this.h.g);
    } else {
      this.b.n1(this.h.g);
    }
  }
  
  void f()
  {
    this.h.c();
  }
  
  boolean m()
  {
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.i
 * JD-Core Version:    0.7.0.1
 */