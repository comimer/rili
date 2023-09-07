package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.a;
import java.util.Iterator;
import java.util.List;
import q.b;

class j
  extends WidgetRun
{
  public j(ConstraintWidget paramConstraintWidget)
  {
    super(paramConstraintWidget);
  }
  
  private void q(DependencyNode paramDependencyNode)
  {
    this.h.k.add(paramDependencyNode);
    paramDependencyNode.l.add(this.h);
  }
  
  public void a(d paramd)
  {
    paramd = (a)this.b;
    int i = paramd.v1();
    Iterator localIterator = this.h.l.iterator();
    int j = 0;
    int k = -1;
    while (localIterator.hasNext())
    {
      int m = ((DependencyNode)localIterator.next()).g;
      int n;
      if (k != -1)
      {
        n = k;
        if (m >= k) {}
      }
      else
      {
        n = m;
      }
      k = n;
      if (j < m)
      {
        j = m;
        k = n;
      }
    }
    if ((i != 0) && (i != 2)) {
      this.h.d(j + paramd.w1());
    } else {
      this.h.d(k + paramd.w1());
    }
  }
  
  void d()
  {
    Object localObject1 = this.b;
    if ((localObject1 instanceof a))
    {
      this.h.b = true;
      localObject1 = (a)localObject1;
      int i = ((a)localObject1).v1();
      boolean bool = ((a)localObject1).u1();
      int j = 0;
      int k = 0;
      int m = 0;
      int n = 0;
      Object localObject2;
      if (i != 0)
      {
        if (i != 1)
        {
          if (i != 2)
          {
            if (i == 3)
            {
              this.h.e = DependencyNode.Type.BOTTOM;
              while (n < ((b)localObject1).M0)
              {
                localObject2 = localObject1.L0[n];
                if ((bool) || (((ConstraintWidget)localObject2).V() != 8))
                {
                  localObject2 = ((ConstraintWidget)localObject2).f.i;
                  ((DependencyNode)localObject2).k.add(this.h);
                  this.h.l.add(localObject2);
                }
                n++;
              }
              q(this.b.f.h);
              q(this.b.f.i);
            }
          }
          else
          {
            this.h.e = DependencyNode.Type.TOP;
            for (n = j; n < ((b)localObject1).M0; n++)
            {
              localObject2 = localObject1.L0[n];
              if ((bool) || (((ConstraintWidget)localObject2).V() != 8))
              {
                localObject2 = ((ConstraintWidget)localObject2).f.h;
                ((DependencyNode)localObject2).k.add(this.h);
                this.h.l.add(localObject2);
              }
            }
            q(this.b.f.h);
            q(this.b.f.i);
          }
        }
        else
        {
          this.h.e = DependencyNode.Type.RIGHT;
          for (n = k; n < ((b)localObject1).M0; n++)
          {
            localObject2 = localObject1.L0[n];
            if ((bool) || (((ConstraintWidget)localObject2).V() != 8))
            {
              localObject2 = ((ConstraintWidget)localObject2).e.i;
              ((DependencyNode)localObject2).k.add(this.h);
              this.h.l.add(localObject2);
            }
          }
          q(this.b.e.h);
          q(this.b.e.i);
        }
      }
      else
      {
        this.h.e = DependencyNode.Type.LEFT;
        for (n = m; n < ((b)localObject1).M0; n++)
        {
          localObject2 = localObject1.L0[n];
          if ((bool) || (((ConstraintWidget)localObject2).V() != 8))
          {
            localObject2 = ((ConstraintWidget)localObject2).e.h;
            ((DependencyNode)localObject2).k.add(this.h);
            this.h.l.add(localObject2);
          }
        }
        q(this.b.e.h);
        q(this.b.e.i);
      }
    }
  }
  
  public void e()
  {
    ConstraintWidget localConstraintWidget = this.b;
    if ((localConstraintWidget instanceof a))
    {
      int i = ((a)localConstraintWidget).v1();
      if ((i != 0) && (i != 1)) {
        this.b.n1(this.h.g);
      } else {
        this.b.m1(this.h.g);
      }
    }
  }
  
  void f()
  {
    this.c = null;
    this.h.c();
  }
  
  boolean m()
  {
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.j
 * JD-Core Version:    0.7.0.1
 */