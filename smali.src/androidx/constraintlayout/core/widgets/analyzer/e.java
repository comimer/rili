package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import q.b;

public class e
{
  private androidx.constraintlayout.core.widgets.d a;
  private boolean b = true;
  private boolean c = true;
  private androidx.constraintlayout.core.widgets.d d;
  private ArrayList<WidgetRun> e = new ArrayList();
  private ArrayList<l> f = new ArrayList();
  private b.b g = null;
  private b.a h = new b.a();
  ArrayList<l> i = new ArrayList();
  
  public e(androidx.constraintlayout.core.widgets.d paramd)
  {
    this.a = paramd;
    this.d = paramd;
  }
  
  private void a(DependencyNode paramDependencyNode1, int paramInt1, int paramInt2, DependencyNode paramDependencyNode2, ArrayList<l> paramArrayList, l paraml)
  {
    WidgetRun localWidgetRun = paramDependencyNode1.d;
    if (localWidgetRun.c == null)
    {
      paramDependencyNode1 = this.a;
      if ((localWidgetRun != paramDependencyNode1.e) && (localWidgetRun != paramDependencyNode1.f))
      {
        paramDependencyNode1 = paraml;
        if (paraml == null)
        {
          paramDependencyNode1 = new l(localWidgetRun, paramInt2);
          paramArrayList.add(paramDependencyNode1);
        }
        localWidgetRun.c = paramDependencyNode1;
        paramDependencyNode1.a(localWidgetRun);
        Object localObject = localWidgetRun.h.k.iterator();
        while (((Iterator)localObject).hasNext())
        {
          paraml = (d)((Iterator)localObject).next();
          if ((paraml instanceof DependencyNode)) {
            a((DependencyNode)paraml, paramInt1, 0, paramDependencyNode2, paramArrayList, paramDependencyNode1);
          }
        }
        paraml = localWidgetRun.i.k.iterator();
        while (paraml.hasNext())
        {
          localObject = (d)paraml.next();
          if ((localObject instanceof DependencyNode)) {
            a((DependencyNode)localObject, paramInt1, 1, paramDependencyNode2, paramArrayList, paramDependencyNode1);
          }
        }
        if ((paramInt1 == 1) && ((localWidgetRun instanceof m)))
        {
          paraml = ((m)localWidgetRun).k.k.iterator();
          while (paraml.hasNext())
          {
            localObject = (d)paraml.next();
            if ((localObject instanceof DependencyNode)) {
              a((DependencyNode)localObject, paramInt1, 2, paramDependencyNode2, paramArrayList, paramDependencyNode1);
            }
          }
        }
        localObject = localWidgetRun.h.l.iterator();
        while (((Iterator)localObject).hasNext())
        {
          paraml = (DependencyNode)((Iterator)localObject).next();
          if (paraml == paramDependencyNode2) {
            paramDependencyNode1.b = true;
          }
          a(paraml, paramInt1, 0, paramDependencyNode2, paramArrayList, paramDependencyNode1);
        }
        localObject = localWidgetRun.i.l.iterator();
        while (((Iterator)localObject).hasNext())
        {
          paraml = (DependencyNode)((Iterator)localObject).next();
          if (paraml == paramDependencyNode2) {
            paramDependencyNode1.b = true;
          }
          a(paraml, paramInt1, 1, paramDependencyNode2, paramArrayList, paramDependencyNode1);
        }
        if ((paramInt1 == 1) && ((localWidgetRun instanceof m)))
        {
          paraml = ((m)localWidgetRun).k.l.iterator();
          while (paraml.hasNext()) {
            a((DependencyNode)paraml.next(), paramInt1, 2, paramDependencyNode2, paramArrayList, paramDependencyNode1);
          }
        }
      }
    }
  }
  
  private boolean b(androidx.constraintlayout.core.widgets.d paramd)
  {
    Iterator localIterator = paramd.L0.iterator();
    while (localIterator.hasNext())
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)localIterator.next();
      Object localObject1 = localConstraintWidget.Z;
      Object localObject2 = localObject1[0];
      Object localObject3 = localObject1[1];
      if (localConstraintWidget.V() == 8)
      {
        localConstraintWidget.a = true;
      }
      else
      {
        if ((localConstraintWidget.B < 1.0F) && (localObject2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) {
          localConstraintWidget.w = 2;
        }
        if ((localConstraintWidget.E < 1.0F) && (localObject3 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) {
          localConstraintWidget.x = 2;
        }
        if (localConstraintWidget.v() > 0.0F)
        {
          localObject1 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
          if ((localObject2 == localObject1) && ((localObject3 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (localObject3 == ConstraintWidget.DimensionBehaviour.FIXED)))
          {
            localConstraintWidget.w = 3;
          }
          else if ((localObject3 == localObject1) && ((localObject2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (localObject2 == ConstraintWidget.DimensionBehaviour.FIXED)))
          {
            localConstraintWidget.x = 3;
          }
          else if ((localObject2 == localObject1) && (localObject3 == localObject1))
          {
            if (localConstraintWidget.w == 0) {
              localConstraintWidget.w = 3;
            }
            if (localConstraintWidget.x == 0) {
              localConstraintWidget.x = 3;
            }
          }
        }
        ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        localObject1 = localObject2;
        if (localObject2 == localDimensionBehaviour1)
        {
          localObject1 = localObject2;
          if (localConstraintWidget.w == 1) {
            if (localConstraintWidget.O.f != null)
            {
              localObject1 = localObject2;
              if (localConstraintWidget.Q.f != null) {}
            }
            else
            {
              localObject1 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            }
          }
        }
        localObject2 = localObject3;
        if (localObject3 == localDimensionBehaviour1)
        {
          localObject2 = localObject3;
          if (localConstraintWidget.x == 1) {
            if (localConstraintWidget.P.f != null)
            {
              localObject2 = localObject3;
              if (localConstraintWidget.R.f != null) {}
            }
            else
            {
              localObject2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            }
          }
        }
        localObject3 = localConstraintWidget.e;
        ((WidgetRun)localObject3).d = ((ConstraintWidget.DimensionBehaviour)localObject1);
        int j = localConstraintWidget.w;
        ((WidgetRun)localObject3).a = j;
        localObject3 = localConstraintWidget.f;
        ((WidgetRun)localObject3).d = ((ConstraintWidget.DimensionBehaviour)localObject2);
        int k = localConstraintWidget.x;
        ((WidgetRun)localObject3).a = k;
        localObject3 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
        if (((localObject1 != localObject3) && (localObject1 != ConstraintWidget.DimensionBehaviour.FIXED) && (localObject1 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) || ((localObject2 != localObject3) && (localObject2 != ConstraintWidget.DimensionBehaviour.FIXED) && (localObject2 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)))
        {
          ConstraintWidget.DimensionBehaviour localDimensionBehaviour2;
          Object localObject4;
          if (localObject1 == localDimensionBehaviour1)
          {
            localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if ((localObject2 == localDimensionBehaviour2) || (localObject2 == ConstraintWidget.DimensionBehaviour.FIXED))
            {
              if (j == 3)
              {
                if (localObject2 == localDimensionBehaviour2) {
                  l(localConstraintWidget, localDimensionBehaviour2, 0, localDimensionBehaviour2, 0);
                }
                k = localConstraintWidget.x();
                j = (int)(k * localConstraintWidget.d0 + 0.5F);
                localObject2 = ConstraintWidget.DimensionBehaviour.FIXED;
                l(localConstraintWidget, (ConstraintWidget.DimensionBehaviour)localObject2, j, (ConstraintWidget.DimensionBehaviour)localObject2, k);
                localConstraintWidget.e.e.d(localConstraintWidget.W());
                localConstraintWidget.f.e.d(localConstraintWidget.x());
                localConstraintWidget.a = true;
                continue;
              }
              if (j == 1)
              {
                l(localConstraintWidget, localDimensionBehaviour2, 0, (ConstraintWidget.DimensionBehaviour)localObject2, 0);
                localConstraintWidget.e.e.m = localConstraintWidget.W();
                continue;
              }
              if (j == 2)
              {
                localDimensionBehaviour2 = paramd.Z[0];
                localObject4 = ConstraintWidget.DimensionBehaviour.FIXED;
                if ((localDimensionBehaviour2 == localObject4) || (localDimensionBehaviour2 == localObject3))
                {
                  l(localConstraintWidget, (ConstraintWidget.DimensionBehaviour)localObject4, (int)(localConstraintWidget.B * paramd.W() + 0.5F), (ConstraintWidget.DimensionBehaviour)localObject2, localConstraintWidget.x());
                  localConstraintWidget.e.e.d(localConstraintWidget.W());
                  localConstraintWidget.f.e.d(localConstraintWidget.x());
                  localConstraintWidget.a = true;
                }
              }
              else
              {
                localObject4 = localConstraintWidget.W;
                if ((localObject4[0].f == null) || (localObject4[1].f == null))
                {
                  l(localConstraintWidget, localDimensionBehaviour2, 0, (ConstraintWidget.DimensionBehaviour)localObject2, 0);
                  localConstraintWidget.e.e.d(localConstraintWidget.W());
                  localConstraintWidget.f.e.d(localConstraintWidget.x());
                  localConstraintWidget.a = true;
                  continue;
                }
              }
            }
          }
          float f1;
          float f2;
          if (localObject2 == localDimensionBehaviour1)
          {
            localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if ((localObject1 == localDimensionBehaviour2) || (localObject1 == ConstraintWidget.DimensionBehaviour.FIXED))
            {
              if (k == 3)
              {
                if (localObject1 == localDimensionBehaviour2) {
                  l(localConstraintWidget, localDimensionBehaviour2, 0, localDimensionBehaviour2, 0);
                }
                k = localConstraintWidget.W();
                f1 = localConstraintWidget.d0;
                f2 = f1;
                if (localConstraintWidget.w() == -1) {
                  f2 = 1.0F / f1;
                }
                j = (int)(k * f2 + 0.5F);
                localObject2 = ConstraintWidget.DimensionBehaviour.FIXED;
                l(localConstraintWidget, (ConstraintWidget.DimensionBehaviour)localObject2, k, (ConstraintWidget.DimensionBehaviour)localObject2, j);
                localConstraintWidget.e.e.d(localConstraintWidget.W());
                localConstraintWidget.f.e.d(localConstraintWidget.x());
                localConstraintWidget.a = true;
                continue;
              }
              if (k == 1)
              {
                l(localConstraintWidget, (ConstraintWidget.DimensionBehaviour)localObject1, 0, localDimensionBehaviour2, 0);
                localConstraintWidget.f.e.m = localConstraintWidget.x();
                continue;
              }
              if (k == 2)
              {
                localObject4 = paramd.Z[1];
                localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
                if ((localObject4 == localDimensionBehaviour2) || (localObject4 == localObject3))
                {
                  f2 = localConstraintWidget.E;
                  l(localConstraintWidget, (ConstraintWidget.DimensionBehaviour)localObject1, localConstraintWidget.W(), localDimensionBehaviour2, (int)(f2 * paramd.x() + 0.5F));
                  localConstraintWidget.e.e.d(localConstraintWidget.W());
                  localConstraintWidget.f.e.d(localConstraintWidget.x());
                  localConstraintWidget.a = true;
                }
              }
              else
              {
                localObject3 = localConstraintWidget.W;
                if ((localObject3[2].f == null) || (localObject3[3].f == null))
                {
                  l(localConstraintWidget, localDimensionBehaviour2, 0, (ConstraintWidget.DimensionBehaviour)localObject2, 0);
                  localConstraintWidget.e.e.d(localConstraintWidget.W());
                  localConstraintWidget.f.e.d(localConstraintWidget.x());
                  localConstraintWidget.a = true;
                  continue;
                }
              }
            }
          }
          if ((localObject1 == localDimensionBehaviour1) && (localObject2 == localDimensionBehaviour1)) {
            if ((j != 1) && (k != 1))
            {
              if ((k == 2) && (j == 2))
              {
                localObject2 = paramd.Z;
                localObject3 = localObject2[0];
                localObject1 = ConstraintWidget.DimensionBehaviour.FIXED;
                if ((localObject3 == localObject1) && (localObject2[1] == localObject1))
                {
                  f2 = localConstraintWidget.B;
                  f1 = localConstraintWidget.E;
                  l(localConstraintWidget, (ConstraintWidget.DimensionBehaviour)localObject1, (int)(f2 * paramd.W() + 0.5F), (ConstraintWidget.DimensionBehaviour)localObject1, (int)(f1 * paramd.x() + 0.5F));
                  localConstraintWidget.e.e.d(localConstraintWidget.W());
                  localConstraintWidget.f.e.d(localConstraintWidget.x());
                  localConstraintWidget.a = true;
                }
              }
            }
            else
            {
              localObject2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
              l(localConstraintWidget, (ConstraintWidget.DimensionBehaviour)localObject2, 0, (ConstraintWidget.DimensionBehaviour)localObject2, 0);
              localConstraintWidget.e.e.m = localConstraintWidget.W();
              localConstraintWidget.f.e.m = localConstraintWidget.x();
            }
          }
        }
        else
        {
          j = localConstraintWidget.W();
          int m;
          if (localObject1 == localObject3)
          {
            k = paramd.W();
            j = localConstraintWidget.O.g;
            m = localConstraintWidget.Q.g;
            localObject1 = ConstraintWidget.DimensionBehaviour.FIXED;
            j = k - j - m;
          }
          k = localConstraintWidget.x();
          if (localObject2 == localObject3)
          {
            m = paramd.x();
            k = localConstraintWidget.P.g;
            int n = localConstraintWidget.R.g;
            localObject2 = ConstraintWidget.DimensionBehaviour.FIXED;
            k = m - k - n;
          }
          l(localConstraintWidget, (ConstraintWidget.DimensionBehaviour)localObject1, j, (ConstraintWidget.DimensionBehaviour)localObject2, k);
          localConstraintWidget.e.e.d(localConstraintWidget.W());
          localConstraintWidget.f.e.d(localConstraintWidget.x());
          localConstraintWidget.a = true;
        }
      }
    }
    return false;
  }
  
  private int e(androidx.constraintlayout.core.widgets.d paramd, int paramInt)
  {
    int j = this.i.size();
    long l = 0L;
    for (int k = 0; k < j; k++) {
      l = Math.max(l, ((l)this.i.get(k)).b(paramd, paramInt));
    }
    return (int)l;
  }
  
  private void i(WidgetRun paramWidgetRun, int paramInt, ArrayList<l> paramArrayList)
  {
    Object localObject1 = paramWidgetRun.h.k.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (d)((Iterator)localObject1).next();
      if ((localObject2 instanceof DependencyNode)) {
        a((DependencyNode)localObject2, paramInt, 0, paramWidgetRun.i, paramArrayList, null);
      } else if ((localObject2 instanceof WidgetRun)) {
        a(((WidgetRun)localObject2).h, paramInt, 0, paramWidgetRun.i, paramArrayList, null);
      }
    }
    Object localObject2 = paramWidgetRun.i.k.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (d)((Iterator)localObject2).next();
      if ((localObject1 instanceof DependencyNode)) {
        a((DependencyNode)localObject1, paramInt, 1, paramWidgetRun.h, paramArrayList, null);
      } else if ((localObject1 instanceof WidgetRun)) {
        a(((WidgetRun)localObject1).i, paramInt, 1, paramWidgetRun.h, paramArrayList, null);
      }
    }
    if (paramInt == 1)
    {
      localObject1 = ((m)paramWidgetRun).k.k.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        paramWidgetRun = (d)((Iterator)localObject1).next();
        if ((paramWidgetRun instanceof DependencyNode)) {
          a((DependencyNode)paramWidgetRun, paramInt, 2, null, paramArrayList, null);
        }
      }
    }
  }
  
  private void l(ConstraintWidget paramConstraintWidget, ConstraintWidget.DimensionBehaviour paramDimensionBehaviour1, int paramInt1, ConstraintWidget.DimensionBehaviour paramDimensionBehaviour2, int paramInt2)
  {
    b.a locala = this.h;
    locala.a = paramDimensionBehaviour1;
    locala.b = paramDimensionBehaviour2;
    locala.c = paramInt1;
    locala.d = paramInt2;
    this.g.b(paramConstraintWidget, locala);
    paramConstraintWidget.k1(this.h.e);
    paramConstraintWidget.L0(this.h.f);
    paramConstraintWidget.K0(this.h.h);
    paramConstraintWidget.A0(this.h.g);
  }
  
  public void c()
  {
    d(this.e);
    this.i.clear();
    l.h = 0;
    i(this.a.e, 0, this.i);
    i(this.a.f, 1, this.i);
    this.b = false;
  }
  
  public void d(ArrayList<WidgetRun> paramArrayList)
  {
    paramArrayList.clear();
    this.d.e.f();
    this.d.f.f();
    paramArrayList.add(this.d.e);
    paramArrayList.add(this.d.f);
    Iterator localIterator = this.d.L0.iterator();
    Object localObject1 = null;
    while (localIterator.hasNext())
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)localIterator.next();
      if ((localConstraintWidget instanceof androidx.constraintlayout.core.widgets.f))
      {
        paramArrayList.add(new i(localConstraintWidget));
      }
      else
      {
        Object localObject2;
        if (localConstraintWidget.i0())
        {
          if (localConstraintWidget.c == null) {
            localConstraintWidget.c = new c(localConstraintWidget, 0);
          }
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new HashSet();
          }
          ((HashSet)localObject2).add(localConstraintWidget.c);
          localObject1 = localObject2;
        }
        else
        {
          paramArrayList.add(localConstraintWidget.e);
        }
        if (localConstraintWidget.k0())
        {
          if (localConstraintWidget.d == null) {
            localConstraintWidget.d = new c(localConstraintWidget, 1);
          }
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new HashSet();
          }
          ((HashSet)localObject2).add(localConstraintWidget.d);
        }
        else
        {
          paramArrayList.add(localConstraintWidget.f);
          localObject2 = localObject1;
        }
        localObject1 = localObject2;
        if ((localConstraintWidget instanceof b))
        {
          paramArrayList.add(new j(localConstraintWidget));
          localObject1 = localObject2;
        }
      }
    }
    if (localObject1 != null) {
      paramArrayList.addAll((Collection)localObject1);
    }
    localObject1 = paramArrayList.iterator();
    while (((Iterator)localObject1).hasNext()) {
      ((WidgetRun)((Iterator)localObject1).next()).f();
    }
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      localObject1 = (WidgetRun)paramArrayList.next();
      if (((WidgetRun)localObject1).b != this.d) {
        ((WidgetRun)localObject1).d();
      }
    }
  }
  
  public boolean f(boolean paramBoolean)
  {
    boolean bool1 = true;
    boolean bool2 = paramBoolean & true;
    if ((this.b) || (this.c))
    {
      localObject1 = this.a.L0.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ConstraintWidget)((Iterator)localObject1).next();
        ((ConstraintWidget)localObject2).n();
        ((ConstraintWidget)localObject2).a = false;
        ((ConstraintWidget)localObject2).e.r();
        ((ConstraintWidget)localObject2).f.q();
      }
      this.a.n();
      localObject1 = this.a;
      ((ConstraintWidget)localObject1).a = false;
      ((ConstraintWidget)localObject1).e.r();
      this.a.f.q();
      this.c = false;
    }
    if (b(this.d)) {
      return false;
    }
    this.a.m1(0);
    this.a.n1(0);
    Object localObject1 = this.a.u(0);
    Object localObject2 = this.a.u(1);
    if (this.b) {
      c();
    }
    int j = this.a.X();
    int k = this.a.Y();
    this.a.e.h.d(j);
    this.a.f.h.d(k);
    m();
    Object localObject3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
    boolean bool3;
    if ((localObject1 == localObject3) || (localObject2 == localObject3))
    {
      bool3 = bool2;
      if (bool2)
      {
        localObject3 = this.e.iterator();
        do
        {
          bool3 = bool2;
          if (!((Iterator)localObject3).hasNext()) {
            break;
          }
        } while (((WidgetRun)((Iterator)localObject3).next()).m());
        bool3 = false;
      }
      if ((bool3) && (localObject1 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT))
      {
        this.a.P0(ConstraintWidget.DimensionBehaviour.FIXED);
        localObject3 = this.a;
        ((ConstraintWidget)localObject3).k1(e((androidx.constraintlayout.core.widgets.d)localObject3, 0));
        localObject3 = this.a;
        ((ConstraintWidget)localObject3).e.e.d(((ConstraintWidget)localObject3).W());
      }
      if ((bool3) && (localObject2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT))
      {
        this.a.g1(ConstraintWidget.DimensionBehaviour.FIXED);
        localObject3 = this.a;
        ((ConstraintWidget)localObject3).L0(e((androidx.constraintlayout.core.widgets.d)localObject3, 1));
        localObject3 = this.a;
        ((ConstraintWidget)localObject3).f.e.d(((ConstraintWidget)localObject3).x());
      }
    }
    Object localObject4 = this.a;
    Object localObject5 = localObject4.Z[0];
    localObject3 = ConstraintWidget.DimensionBehaviour.FIXED;
    int m;
    if ((localObject5 != localObject3) && (localObject5 != ConstraintWidget.DimensionBehaviour.MATCH_PARENT))
    {
      bool3 = false;
    }
    else
    {
      m = ((ConstraintWidget)localObject4).W() + j;
      this.a.e.i.d(m);
      this.a.e.e.d(m - j);
      m();
      localObject5 = this.a;
      localObject4 = localObject5.Z[1];
      if ((localObject4 == localObject3) || (localObject4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT))
      {
        m = ((ConstraintWidget)localObject5).x() + k;
        this.a.f.i.d(m);
        this.a.f.e.d(m - k);
      }
      m();
      m = 1;
    }
    localObject3 = this.e.iterator();
    while (((Iterator)localObject3).hasNext())
    {
      localObject5 = (WidgetRun)((Iterator)localObject3).next();
      if ((((WidgetRun)localObject5).b != this.a) || (((WidgetRun)localObject5).g)) {
        ((WidgetRun)localObject5).e();
      }
    }
    localObject5 = this.e.iterator();
    do
    {
      paramBoolean = bool1;
      if (!((Iterator)localObject5).hasNext()) {
        break;
      }
      localObject3 = (WidgetRun)((Iterator)localObject5).next();
    } while ((m == 0) && (((WidgetRun)localObject3).b == this.a));
    if (!((WidgetRun)localObject3).h.j) {}
    for (;;)
    {
      paramBoolean = false;
      break label785;
      if ((((WidgetRun)localObject3).i.j) || ((localObject3 instanceof i))) {
        if ((((WidgetRun)localObject3).e.j) || ((localObject3 instanceof c)) || ((localObject3 instanceof i))) {
          break;
        }
      }
    }
    label785:
    this.a.P0((ConstraintWidget.DimensionBehaviour)localObject1);
    this.a.g1((ConstraintWidget.DimensionBehaviour)localObject2);
    return paramBoolean;
  }
  
  public boolean g(boolean paramBoolean)
  {
    if (this.b)
    {
      Object localObject1 = this.a.L0.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (ConstraintWidget)((Iterator)localObject1).next();
        ((ConstraintWidget)localObject2).n();
        ((ConstraintWidget)localObject2).a = false;
        k localk = ((ConstraintWidget)localObject2).e;
        localk.e.j = false;
        localk.g = false;
        localk.r();
        localObject2 = ((ConstraintWidget)localObject2).f;
        ((WidgetRun)localObject2).e.j = false;
        ((WidgetRun)localObject2).g = false;
        ((m)localObject2).q();
      }
      this.a.n();
      localObject1 = this.a;
      ((ConstraintWidget)localObject1).a = false;
      localObject1 = ((ConstraintWidget)localObject1).e;
      ((WidgetRun)localObject1).e.j = false;
      ((WidgetRun)localObject1).g = false;
      ((k)localObject1).r();
      localObject1 = this.a.f;
      ((WidgetRun)localObject1).e.j = false;
      ((WidgetRun)localObject1).g = false;
      ((m)localObject1).q();
      c();
    }
    if (b(this.d)) {
      return false;
    }
    this.a.m1(0);
    this.a.n1(0);
    this.a.e.h.d(0);
    this.a.f.h.d(0);
    return true;
  }
  
  public boolean h(boolean paramBoolean, int paramInt)
  {
    boolean bool1 = true;
    boolean bool2 = paramBoolean & true;
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = this.a.u(0);
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour2 = this.a.u(1);
    int j = this.a.X();
    int k = this.a.Y();
    if (bool2)
    {
      localObject1 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
      if ((localDimensionBehaviour1 == localObject1) || (localDimensionBehaviour2 == localObject1))
      {
        localObject1 = this.e.iterator();
        do
        {
          bool3 = bool2;
          if (!((Iterator)localObject1).hasNext()) {
            break;
          }
          localObject2 = (WidgetRun)((Iterator)localObject1).next();
        } while ((((WidgetRun)localObject2).f != paramInt) || (((WidgetRun)localObject2).m()));
        boolean bool3 = false;
        if (paramInt == 0)
        {
          if ((bool3) && (localDimensionBehaviour1 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT))
          {
            this.a.P0(ConstraintWidget.DimensionBehaviour.FIXED);
            localObject1 = this.a;
            ((ConstraintWidget)localObject1).k1(e((androidx.constraintlayout.core.widgets.d)localObject1, 0));
            localObject1 = this.a;
            ((ConstraintWidget)localObject1).e.e.d(((ConstraintWidget)localObject1).W());
          }
        }
        else if ((bool3) && (localDimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT))
        {
          this.a.g1(ConstraintWidget.DimensionBehaviour.FIXED);
          localObject1 = this.a;
          ((ConstraintWidget)localObject1).L0(e((androidx.constraintlayout.core.widgets.d)localObject1, 1));
          localObject1 = this.a;
          ((ConstraintWidget)localObject1).f.e.d(((ConstraintWidget)localObject1).x());
        }
      }
    }
    if (paramInt == 0)
    {
      localObject1 = this.a;
      localObject2 = localObject1.Z[0];
      if ((localObject2 == ConstraintWidget.DimensionBehaviour.FIXED) || (localObject2 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT))
      {
        m = ((ConstraintWidget)localObject1).W() + j;
        this.a.e.i.d(m);
        this.a.e.e.d(m - j);
        break label421;
      }
    }
    else
    {
      localObject2 = this.a;
      localObject1 = localObject2.Z[1];
      if ((localObject1 == ConstraintWidget.DimensionBehaviour.FIXED) || (localObject1 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT)) {
        break label378;
      }
    }
    int m = 0;
    break label424;
    label378:
    m = ((ConstraintWidget)localObject2).x() + k;
    this.a.f.i.d(m);
    this.a.f.e.d(m - k);
    label421:
    m = 1;
    label424:
    m();
    Object localObject1 = this.e.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (WidgetRun)((Iterator)localObject1).next();
      if ((((WidgetRun)localObject2).f == paramInt) && ((((WidgetRun)localObject2).b != this.a) || (((WidgetRun)localObject2).g))) {
        ((WidgetRun)localObject2).e();
      }
    }
    Object localObject2 = this.e.iterator();
    do
    {
      paramBoolean = bool1;
      if (!((Iterator)localObject2).hasNext()) {
        break;
      }
      localObject1 = (WidgetRun)((Iterator)localObject2).next();
    } while ((((WidgetRun)localObject1).f != paramInt) || ((m == 0) && (((WidgetRun)localObject1).b == this.a)));
    if (!((WidgetRun)localObject1).h.j) {}
    for (;;)
    {
      paramBoolean = false;
      break label619;
      if (((WidgetRun)localObject1).i.j) {
        if (((localObject1 instanceof c)) || (((WidgetRun)localObject1).e.j)) {
          break;
        }
      }
    }
    label619:
    this.a.P0(localDimensionBehaviour1);
    this.a.g1(localDimensionBehaviour2);
    return paramBoolean;
  }
  
  public void j()
  {
    this.b = true;
  }
  
  public void k()
  {
    this.c = true;
  }
  
  public void m()
  {
    Iterator localIterator = this.a.L0.iterator();
    while (localIterator.hasNext())
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)localIterator.next();
      if (!localConstraintWidget.a)
      {
        Object localObject1 = localConstraintWidget.Z;
        int j = 0;
        ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = localObject1[0];
        Object localObject2 = localObject1[1];
        int k = localConstraintWidget.w;
        int m = localConstraintWidget.x;
        ConstraintWidget.DimensionBehaviour localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if ((localDimensionBehaviour1 != localDimensionBehaviour2) && ((localDimensionBehaviour1 != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) || (k != 1))) {
          k = 0;
        } else {
          k = 1;
        }
        int n;
        if (localObject2 != localDimensionBehaviour2)
        {
          n = j;
          if (localObject2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
          {
            n = j;
            if (m != 1) {}
          }
        }
        else
        {
          n = 1;
        }
        localObject1 = localConstraintWidget.e.e;
        boolean bool1 = ((DependencyNode)localObject1).j;
        f localf = localConstraintWidget.f.e;
        boolean bool2 = localf.j;
        if ((bool1) && (bool2))
        {
          localDimensionBehaviour1 = ConstraintWidget.DimensionBehaviour.FIXED;
          l(localConstraintWidget, localDimensionBehaviour1, ((DependencyNode)localObject1).g, localDimensionBehaviour1, localf.g);
          localConstraintWidget.a = true;
        }
        else if ((bool1) && (n != 0))
        {
          l(localConstraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, ((DependencyNode)localObject1).g, localDimensionBehaviour2, localf.g);
          if (localObject2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
          {
            localConstraintWidget.f.e.m = localConstraintWidget.x();
          }
          else
          {
            localConstraintWidget.f.e.d(localConstraintWidget.x());
            localConstraintWidget.a = true;
          }
        }
        else if ((bool2) && (k != 0))
        {
          l(localConstraintWidget, localDimensionBehaviour2, ((DependencyNode)localObject1).g, ConstraintWidget.DimensionBehaviour.FIXED, localf.g);
          if (localDimensionBehaviour1 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
          {
            localConstraintWidget.e.e.m = localConstraintWidget.W();
          }
          else
          {
            localConstraintWidget.e.e.d(localConstraintWidget.W());
            localConstraintWidget.a = true;
          }
        }
        if (localConstraintWidget.a)
        {
          localObject1 = localConstraintWidget.f.l;
          if (localObject1 != null) {
            ((f)localObject1).d(localConstraintWidget.p());
          }
        }
      }
    }
  }
  
  public void n(b.b paramb)
  {
    this.g = paramb;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.e
 * JD-Core Version:    0.7.0.1
 */