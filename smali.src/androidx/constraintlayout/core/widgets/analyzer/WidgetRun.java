package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour;
import java.util.List;

public abstract class WidgetRun
  implements d
{
  public int a;
  ConstraintWidget b;
  l c;
  protected ConstraintWidget.DimensionBehaviour d;
  f e = new f(this);
  public int f = 0;
  boolean g = false;
  public DependencyNode h = new DependencyNode(this);
  public DependencyNode i = new DependencyNode(this);
  protected RunType j = RunType.NONE;
  
  public WidgetRun(ConstraintWidget paramConstraintWidget)
  {
    this.b = paramConstraintWidget;
  }
  
  private void l(int paramInt1, int paramInt2)
  {
    int k = this.a;
    if (k != 0)
    {
      if (k != 1)
      {
        Object localObject1;
        Object localObject2;
        float f1;
        if (k != 2)
        {
          if (k == 3)
          {
            localObject1 = this.b;
            localObject2 = ((ConstraintWidget)localObject1).e;
            Object localObject3 = ((WidgetRun)localObject2).d;
            ConstraintWidget.DimensionBehaviour localDimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if ((localObject3 == localDimensionBehaviour) && (((WidgetRun)localObject2).a == 3))
            {
              localObject3 = ((ConstraintWidget)localObject1).f;
              if ((((WidgetRun)localObject3).d == localDimensionBehaviour) && (((WidgetRun)localObject3).a == 3)) {}
            }
            else
            {
              if (paramInt1 == 0) {
                localObject2 = ((ConstraintWidget)localObject1).f;
              }
              if (((WidgetRun)localObject2).e.j)
              {
                f1 = ((ConstraintWidget)localObject1).v();
                if (paramInt1 == 1) {
                  paramInt1 = (int)(((WidgetRun)localObject2).e.g / f1 + 0.5F);
                } else {
                  paramInt1 = (int)(f1 * ((WidgetRun)localObject2).e.g + 0.5F);
                }
                this.e.d(paramInt1);
              }
            }
          }
        }
        else
        {
          localObject2 = this.b.K();
          if (localObject2 != null)
          {
            if (paramInt1 == 0) {
              localObject2 = ((ConstraintWidget)localObject2).e;
            } else {
              localObject2 = ((ConstraintWidget)localObject2).f;
            }
            localObject1 = ((WidgetRun)localObject2).e;
            if (((DependencyNode)localObject1).j)
            {
              localObject2 = this.b;
              if (paramInt1 == 0) {
                f1 = ((ConstraintWidget)localObject2).B;
              } else {
                f1 = ((ConstraintWidget)localObject2).E;
              }
              paramInt2 = (int)(((DependencyNode)localObject1).g * f1 + 0.5F);
              this.e.d(g(paramInt2, paramInt1));
            }
          }
        }
      }
      else
      {
        paramInt1 = g(this.e.m, paramInt1);
        this.e.d(Math.min(paramInt1, paramInt2));
      }
    }
    else {
      this.e.d(g(paramInt2, paramInt1));
    }
  }
  
  public void a(d paramd) {}
  
  protected final void b(DependencyNode paramDependencyNode1, DependencyNode paramDependencyNode2, int paramInt)
  {
    paramDependencyNode1.l.add(paramDependencyNode2);
    paramDependencyNode1.f = paramInt;
    paramDependencyNode2.k.add(paramDependencyNode1);
  }
  
  protected final void c(DependencyNode paramDependencyNode1, DependencyNode paramDependencyNode2, int paramInt, f paramf)
  {
    paramDependencyNode1.l.add(paramDependencyNode2);
    paramDependencyNode1.l.add(this.e);
    paramDependencyNode1.h = paramInt;
    paramDependencyNode1.i = paramf;
    paramDependencyNode2.k.add(paramDependencyNode1);
    paramf.k.add(paramDependencyNode1);
  }
  
  abstract void d();
  
  abstract void e();
  
  abstract void f();
  
  protected final int g(int paramInt1, int paramInt2)
  {
    ConstraintWidget localConstraintWidget;
    if (paramInt2 == 0)
    {
      localConstraintWidget = this.b;
      k = localConstraintWidget.A;
      paramInt2 = Math.max(localConstraintWidget.z, paramInt1);
      if (k > 0) {
        paramInt2 = Math.min(k, paramInt1);
      }
      k = paramInt1;
      if (paramInt2 == paramInt1) {
        break label90;
      }
    }
    else
    {
      localConstraintWidget = this.b;
      k = localConstraintWidget.D;
      paramInt2 = Math.max(localConstraintWidget.C, paramInt1);
      if (k > 0) {
        paramInt2 = Math.min(k, paramInt1);
      }
      k = paramInt1;
      if (paramInt2 == paramInt1) {
        break label90;
      }
    }
    int k = paramInt2;
    label90:
    return k;
  }
  
  protected final DependencyNode h(ConstraintAnchor paramConstraintAnchor)
  {
    Object localObject = paramConstraintAnchor.f;
    paramConstraintAnchor = null;
    if (localObject == null) {
      return null;
    }
    ConstraintWidget localConstraintWidget = ((ConstraintAnchor)localObject).d;
    localObject = ((ConstraintAnchor)localObject).e;
    int k = a.a[localObject.ordinal()];
    if (k != 1)
    {
      if (k != 2)
      {
        if (k != 3)
        {
          if (k != 4)
          {
            if (k == 5) {
              paramConstraintAnchor = localConstraintWidget.f.i;
            }
          }
          else {
            paramConstraintAnchor = localConstraintWidget.f.k;
          }
        }
        else {
          paramConstraintAnchor = localConstraintWidget.f.h;
        }
      }
      else {
        paramConstraintAnchor = localConstraintWidget.e.i;
      }
    }
    else {
      paramConstraintAnchor = localConstraintWidget.e.h;
    }
    return paramConstraintAnchor;
  }
  
  protected final DependencyNode i(ConstraintAnchor paramConstraintAnchor, int paramInt)
  {
    Object localObject1 = paramConstraintAnchor.f;
    Object localObject2 = null;
    if (localObject1 == null) {
      return null;
    }
    paramConstraintAnchor = ((ConstraintAnchor)localObject1).d;
    if (paramInt == 0) {
      paramConstraintAnchor = paramConstraintAnchor.e;
    } else {
      paramConstraintAnchor = paramConstraintAnchor.f;
    }
    localObject1 = ((ConstraintAnchor)localObject1).e;
    paramInt = a.a[localObject1.ordinal()];
    if (paramInt != 1)
    {
      if (paramInt != 2)
      {
        if (paramInt == 3) {
          break label84;
        }
        if (paramInt != 5) {
          return localObject2;
        }
      }
      return paramConstraintAnchor.i;
    }
    label84:
    paramConstraintAnchor = paramConstraintAnchor.h;
    return paramConstraintAnchor;
  }
  
  public long j()
  {
    f localf = this.e;
    if (localf.j) {
      return localf.g;
    }
    return 0L;
  }
  
  public boolean k()
  {
    return this.g;
  }
  
  abstract boolean m();
  
  protected void n(d paramd, ConstraintAnchor paramConstraintAnchor1, ConstraintAnchor paramConstraintAnchor2, int paramInt)
  {
    paramd = h(paramConstraintAnchor1);
    DependencyNode localDependencyNode = h(paramConstraintAnchor2);
    if ((paramd.j) && (localDependencyNode.j))
    {
      int k = paramd.g + paramConstraintAnchor1.f();
      int m = localDependencyNode.g - paramConstraintAnchor2.f();
      int n = m - k;
      if ((!this.e.j) && (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) {
        l(paramInt, n);
      }
      paramConstraintAnchor1 = this.e;
      if (!paramConstraintAnchor1.j) {
        return;
      }
      if (paramConstraintAnchor1.g == n)
      {
        this.h.d(k);
        this.i.d(m);
        return;
      }
      paramConstraintAnchor1 = this.b;
      float f1;
      if (paramInt == 0) {
        f1 = paramConstraintAnchor1.y();
      } else {
        f1 = paramConstraintAnchor1.R();
      }
      paramInt = k;
      if (paramd == localDependencyNode)
      {
        paramInt = paramd.g;
        m = localDependencyNode.g;
        f1 = 0.5F;
      }
      k = this.e.g;
      this.h.d((int)(paramInt + 0.5F + (m - paramInt - k) * f1));
      this.i.d(this.h.g + this.e.g);
    }
  }
  
  protected void o(d paramd) {}
  
  protected void p(d paramd) {}
  
  static enum RunType
  {
    static
    {
      RunType localRunType1 = new RunType("NONE", 0);
      NONE = localRunType1;
      RunType localRunType2 = new RunType("START", 1);
      START = localRunType2;
      RunType localRunType3 = new RunType("END", 2);
      END = localRunType3;
      RunType localRunType4 = new RunType("CENTER", 3);
      CENTER = localRunType4;
      $VALUES = new RunType[] { localRunType1, localRunType2, localRunType3, localRunType4 };
    }
    
    private RunType() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.WidgetRun
 * JD-Core Version:    0.7.0.1
 */