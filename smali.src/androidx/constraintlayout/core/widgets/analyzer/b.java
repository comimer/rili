package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintAnchor.Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour;
import androidx.constraintlayout.core.widgets.f;
import androidx.constraintlayout.core.widgets.g;
import androidx.constraintlayout.core.widgets.h;
import java.util.ArrayList;
import q.c;

public class b
{
  private final ArrayList<ConstraintWidget> a = new ArrayList();
  private a b = new a();
  private androidx.constraintlayout.core.widgets.d c;
  
  public b(androidx.constraintlayout.core.widgets.d paramd)
  {
    this.c = paramd;
  }
  
  private boolean a(b paramb, ConstraintWidget paramConstraintWidget, int paramInt)
  {
    this.b.a = paramConstraintWidget.A();
    this.b.b = paramConstraintWidget.T();
    this.b.c = paramConstraintWidget.W();
    this.b.d = paramConstraintWidget.x();
    a locala = this.b;
    locala.i = false;
    locala.j = paramInt;
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = locala.a;
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
    if (localDimensionBehaviour1 == localDimensionBehaviour2) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    int i;
    if (locala.b == localDimensionBehaviour2) {
      i = 1;
    } else {
      i = 0;
    }
    if ((paramInt != 0) && (paramConstraintWidget.d0 > 0.0F)) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    if ((i != 0) && (paramConstraintWidget.d0 > 0.0F)) {
      i = 1;
    } else {
      i = 0;
    }
    if ((paramInt != 0) && (paramConstraintWidget.y[0] == 4)) {
      locala.a = ConstraintWidget.DimensionBehaviour.FIXED;
    }
    if ((i != 0) && (paramConstraintWidget.y[1] == 4)) {
      locala.b = ConstraintWidget.DimensionBehaviour.FIXED;
    }
    paramb.b(paramConstraintWidget, locala);
    paramConstraintWidget.k1(this.b.e);
    paramConstraintWidget.L0(this.b.f);
    paramConstraintWidget.K0(this.b.h);
    paramConstraintWidget.A0(this.b.g);
    paramb = this.b;
    paramb.j = a.k;
    return paramb.i;
  }
  
  private void b(androidx.constraintlayout.core.widgets.d paramd)
  {
    int i = paramd.L0.size();
    boolean bool = paramd.T1(64);
    b localb = paramd.I1();
    for (int j = 0; j < i; j++)
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)paramd.L0.get(j);
      if ((!(localConstraintWidget instanceof f)) && (!(localConstraintWidget instanceof androidx.constraintlayout.core.widgets.a)) && (!localConstraintWidget.l0()))
      {
        if (bool)
        {
          localObject1 = localConstraintWidget.e;
          if (localObject1 != null)
          {
            localObject2 = localConstraintWidget.f;
            if ((localObject2 != null) && (((WidgetRun)localObject1).e.j) && (((WidgetRun)localObject2).e.j)) {
              continue;
            }
          }
        }
        Object localObject1 = localConstraintWidget.u(0);
        int k = 1;
        Object localObject2 = localConstraintWidget.u(1);
        ConstraintWidget.DimensionBehaviour localDimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        int m;
        if ((localObject1 == localDimensionBehaviour) && (localConstraintWidget.w != 1) && (localObject2 == localDimensionBehaviour) && (localConstraintWidget.x != 1)) {
          m = 1;
        } else {
          m = 0;
        }
        int n = m;
        if (m == 0)
        {
          n = m;
          if (paramd.T1(1))
          {
            n = m;
            if (!(localConstraintWidget instanceof h))
            {
              n = m;
              if (localObject1 == localDimensionBehaviour)
              {
                n = m;
                if (localConstraintWidget.w == 0)
                {
                  n = m;
                  if (localObject2 != localDimensionBehaviour)
                  {
                    n = m;
                    if (!localConstraintWidget.i0()) {
                      n = 1;
                    }
                  }
                }
              }
              m = n;
              if (localObject2 == localDimensionBehaviour)
              {
                m = n;
                if (localConstraintWidget.x == 0)
                {
                  m = n;
                  if (localObject1 != localDimensionBehaviour)
                  {
                    m = n;
                    if (!localConstraintWidget.i0()) {
                      m = 1;
                    }
                  }
                }
              }
              if (localObject1 != localDimensionBehaviour)
              {
                n = m;
                if (localObject2 != localDimensionBehaviour) {}
              }
              else
              {
                n = m;
                if (localConstraintWidget.d0 > 0.0F) {
                  n = k;
                }
              }
            }
          }
        }
        if (n == 0) {
          a(localb, localConstraintWidget, a.k);
        }
      }
    }
    localb.a();
  }
  
  private void c(androidx.constraintlayout.core.widgets.d paramd, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramd.I();
    int j = paramd.H();
    paramd.a1(0);
    paramd.Z0(0);
    paramd.k1(paramInt2);
    paramd.L0(paramInt3);
    paramd.a1(i);
    paramd.Z0(j);
    this.c.X1(paramInt1);
    this.c.s1();
  }
  
  public long d(androidx.constraintlayout.core.widgets.d paramd, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9)
  {
    b localb = this;
    b localb1 = paramd.I1();
    paramInt9 = paramd.L0.size();
    int i = paramd.W();
    int j = paramd.x();
    int k = g.b(paramInt1, 128);
    if ((k == 0) && (!g.b(paramInt1, 64))) {
      paramInt1 = 0;
    } else {
      paramInt1 = 1;
    }
    paramInt3 = paramInt1;
    Object localObject1;
    Object localObject2;
    if (paramInt1 != 0) {
      for (paramInt2 = 0;; paramInt2++)
      {
        paramInt3 = paramInt1;
        if (paramInt2 >= paramInt9) {
          break;
        }
        localObject1 = (ConstraintWidget)paramd.L0.get(paramInt2);
        localObject2 = ((ConstraintWidget)localObject1).A();
        ConstraintWidget.DimensionBehaviour localDimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (localObject2 == localDimensionBehaviour) {
          paramInt3 = 1;
        } else {
          paramInt3 = 0;
        }
        if (((ConstraintWidget)localObject1).T() == localDimensionBehaviour) {
          paramInt8 = 1;
        } else {
          paramInt8 = 0;
        }
        if ((paramInt3 != 0) && (paramInt8 != 0) && (((ConstraintWidget)localObject1).v() > 0.0F)) {
          paramInt3 = 1;
        } else {
          paramInt3 = 0;
        }
        if ((((ConstraintWidget)localObject1).i0()) && (paramInt3 != 0)) {}
        while (((((ConstraintWidget)localObject1).k0()) && (paramInt3 != 0)) || ((localObject1 instanceof h)) || (((ConstraintWidget)localObject1).i0()) || (((ConstraintWidget)localObject1).k0()))
        {
          paramInt3 = 0;
          break;
        }
      }
    }
    boolean bool;
    if (paramInt3 != 0) {
      bool = androidx.constraintlayout.core.d.r;
    }
    if (((paramInt4 == 1073741824) && (paramInt6 == 1073741824)) || (k != 0)) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    }
    int m = paramInt3 & paramInt1;
    if (m != 0)
    {
      paramInt1 = Math.min(paramd.G(), paramInt5);
      paramInt2 = Math.min(paramd.F(), paramInt7);
      if ((paramInt4 == 1073741824) && (paramd.W() != paramInt1))
      {
        paramd.k1(paramInt1);
        paramd.M1();
      }
      if ((paramInt6 == 1073741824) && (paramd.x() != paramInt2))
      {
        paramd.L0(paramInt2);
        paramd.M1();
      }
      if ((paramInt4 == 1073741824) && (paramInt6 == 1073741824))
      {
        paramInt1 = paramd.F1(k);
        paramInt2 = 2;
      }
      else
      {
        paramInt1 = paramd.G1(k);
        if (paramInt4 == 1073741824)
        {
          paramInt1 &= paramd.H1(k, 0);
          paramInt2 = 1;
        }
        else
        {
          paramInt2 = 0;
        }
        if (paramInt6 == 1073741824)
        {
          paramInt1 = paramd.H1(k, 1) & paramInt1;
          paramInt2++;
        }
      }
      paramInt5 = paramInt1;
      paramInt3 = paramInt2;
      if (paramInt1 != 0)
      {
        if (paramInt4 == 1073741824) {
          k = 1;
        } else {
          k = 0;
        }
        if (paramInt6 == 1073741824) {
          bool = true;
        } else {
          bool = false;
        }
        paramd.p1(k, bool);
        paramInt5 = paramInt1;
        paramInt3 = paramInt2;
      }
    }
    else
    {
      paramInt5 = 0;
      paramInt3 = paramInt5;
    }
    if ((paramInt5 == 0) || (paramInt3 != 2))
    {
      paramInt3 = paramd.J1();
      if (paramInt9 > 0) {
        b(paramd);
      }
      e(paramd);
      paramInt7 = localb.a.size();
      if (paramInt9 > 0) {
        c(paramd, "First pass", 0, i, j);
      }
      if (paramInt7 > 0)
      {
        localObject1 = paramd.A();
        localObject2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (localObject1 == localObject2) {
          paramInt8 = 1;
        } else {
          paramInt8 = 0;
        }
        if (paramd.T() == localObject2) {
          paramInt9 = 1;
        } else {
          paramInt9 = 0;
        }
        paramInt2 = Math.max(paramd.W(), localb.c.I());
        paramInt1 = Math.max(paramd.x(), localb.c.H());
        paramInt6 = 0;
        int n;
        int i1;
        for (paramInt4 = paramInt6; paramInt6 < paramInt7; paramInt4 = paramInt5)
        {
          localObject2 = (ConstraintWidget)localb.a.get(paramInt6);
          if (!(localObject2 instanceof h))
          {
            paramInt5 = paramInt4;
          }
          else
          {
            n = ((ConstraintWidget)localObject2).W();
            i1 = ((ConstraintWidget)localObject2).x();
            k = localb.a(localb1, (ConstraintWidget)localObject2, a.l);
            paramInt5 = ((ConstraintWidget)localObject2).W();
            i2 = ((ConstraintWidget)localObject2).x();
            if (paramInt5 != n)
            {
              ((ConstraintWidget)localObject2).k1(paramInt5);
              paramInt4 = paramInt2;
              if (paramInt8 != 0)
              {
                paramInt4 = paramInt2;
                if (((ConstraintWidget)localObject2).M() > paramInt2) {
                  paramInt4 = Math.max(paramInt2, ((ConstraintWidget)localObject2).M() + ((ConstraintWidget)localObject2).o(ConstraintAnchor.Type.RIGHT).f());
                }
              }
              paramInt5 = 1;
              paramInt2 = paramInt4;
            }
            else
            {
              paramInt5 = k | paramInt4;
            }
            paramInt4 = paramInt1;
            if (i2 != i1)
            {
              ((ConstraintWidget)localObject2).L0(i2);
              paramInt4 = paramInt1;
              if (paramInt9 != 0)
              {
                paramInt4 = paramInt1;
                if (((ConstraintWidget)localObject2).r() > paramInt1) {
                  paramInt4 = Math.max(paramInt1, ((ConstraintWidget)localObject2).r() + ((ConstraintWidget)localObject2).o(ConstraintAnchor.Type.BOTTOM).f());
                }
              }
              paramInt5 = 1;
            }
            paramInt5 |= ((h)localObject2).F1();
            paramInt1 = paramInt4;
          }
          paramInt6++;
        }
        paramInt5 = 2;
        int i2 = 0;
        paramInt6 = paramInt4;
        paramInt4 = paramInt7;
        paramInt7 = paramInt5;
        paramInt5 = m;
        m = i2;
        while (m < paramInt7)
        {
          i2 = 0;
          for (;;)
          {
            localb = this;
            if (i2 >= paramInt4) {
              break;
            }
            localObject2 = (ConstraintWidget)localb.a.get(i2);
            if ((((localObject2 instanceof q.a)) && (!(localObject2 instanceof h))) || ((localObject2 instanceof f)) || (((ConstraintWidget)localObject2).V() == 8) || ((paramInt5 != 0) && (((ConstraintWidget)localObject2).e.e.j) && (((ConstraintWidget)localObject2).f.e.j)) || ((localObject2 instanceof h)))
            {
              i1 = paramInt2;
              paramInt7 = paramInt6;
            }
            else
            {
              int i3 = ((ConstraintWidget)localObject2).W();
              n = ((ConstraintWidget)localObject2).x();
              i1 = ((ConstraintWidget)localObject2).p();
              paramInt7 = a.l;
              if (m == 1) {
                paramInt7 = a.m;
              }
              paramInt7 = localb.a(localb1, (ConstraintWidget)localObject2, paramInt7) | paramInt6;
              int i4 = ((ConstraintWidget)localObject2).W();
              int i5 = ((ConstraintWidget)localObject2).x();
              paramInt6 = paramInt2;
              if (i4 != i3)
              {
                ((ConstraintWidget)localObject2).k1(i4);
                paramInt6 = paramInt2;
                if (paramInt8 != 0)
                {
                  paramInt6 = paramInt2;
                  if (((ConstraintWidget)localObject2).M() > paramInt2) {
                    paramInt6 = Math.max(paramInt2, ((ConstraintWidget)localObject2).M() + ((ConstraintWidget)localObject2).o(ConstraintAnchor.Type.RIGHT).f());
                  }
                }
                paramInt7 = 1;
              }
              paramInt2 = paramInt1;
              if (i5 != n)
              {
                ((ConstraintWidget)localObject2).L0(i5);
                paramInt2 = paramInt1;
                if (paramInt9 != 0)
                {
                  paramInt2 = paramInt1;
                  if (((ConstraintWidget)localObject2).r() > paramInt1) {
                    paramInt2 = Math.max(paramInt1, ((ConstraintWidget)localObject2).r() + ((ConstraintWidget)localObject2).o(ConstraintAnchor.Type.BOTTOM).f());
                  }
                }
                paramInt7 = 1;
              }
              if ((((ConstraintWidget)localObject2).Z()) && (i1 != ((ConstraintWidget)localObject2).p()))
              {
                paramInt7 = 1;
                i1 = paramInt6;
                paramInt1 = paramInt2;
              }
              else
              {
                paramInt1 = paramInt2;
                i1 = paramInt6;
              }
            }
            i2++;
            paramInt2 = i1;
            paramInt6 = paramInt7;
          }
          if (paramInt6 == 0) {
            break;
          }
          m++;
          c(paramd, "intermediate pass", m, i, j);
          paramInt7 = 2;
          paramInt6 = 0;
        }
      }
      paramd.W1(paramInt3);
    }
    return 0L;
  }
  
  public void e(androidx.constraintlayout.core.widgets.d paramd)
  {
    this.a.clear();
    int i = paramd.L0.size();
    for (int j = 0; j < i; j++)
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)paramd.L0.get(j);
      ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = localConstraintWidget.A();
      ConstraintWidget.DimensionBehaviour localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
      if ((localDimensionBehaviour1 == localDimensionBehaviour2) || (localConstraintWidget.T() == localDimensionBehaviour2)) {
        this.a.add(localConstraintWidget);
      }
    }
    paramd.M1();
  }
  
  public static class a
  {
    public static int k = 0;
    public static int l = 1;
    public static int m = 2;
    public ConstraintWidget.DimensionBehaviour a;
    public ConstraintWidget.DimensionBehaviour b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public boolean h;
    public boolean i;
    public int j;
  }
  
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void b(ConstraintWidget paramConstraintWidget, b.a parama);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.b
 * JD-Core Version:    0.7.0.1
 */