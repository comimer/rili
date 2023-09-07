package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.b.a;
import androidx.constraintlayout.core.widgets.analyzer.b.b;
import androidx.constraintlayout.core.widgets.analyzer.e;
import java.io.PrintStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

public class d
  extends q.c
{
  androidx.constraintlayout.core.widgets.analyzer.b M0 = new androidx.constraintlayout.core.widgets.analyzer.b(this);
  public e N0 = new e(this);
  private int O0;
  protected b.b P0 = null;
  private boolean Q0 = false;
  protected androidx.constraintlayout.core.d R0 = new androidx.constraintlayout.core.d();
  int S0;
  int T0;
  int U0;
  int V0;
  public int W0 = 0;
  public int X0 = 0;
  c[] Y0 = new c[4];
  c[] Z0 = new c[4];
  public boolean a1 = false;
  public boolean b1 = false;
  public boolean c1 = false;
  public int d1 = 0;
  public int e1 = 0;
  private int f1 = 257;
  public boolean g1 = false;
  private boolean h1 = false;
  private boolean i1 = false;
  int j1 = 0;
  private WeakReference<ConstraintAnchor> k1 = null;
  private WeakReference<ConstraintAnchor> l1 = null;
  private WeakReference<ConstraintAnchor> m1 = null;
  private WeakReference<ConstraintAnchor> n1 = null;
  HashSet<ConstraintWidget> o1 = new HashSet();
  public b.a p1 = new b.a();
  
  private void A1(ConstraintAnchor paramConstraintAnchor, SolverVariable paramSolverVariable)
  {
    paramConstraintAnchor = this.R0.q(paramConstraintAnchor);
    this.R0.h(paramSolverVariable, paramConstraintAnchor, 0, 5);
  }
  
  private void B1(ConstraintAnchor paramConstraintAnchor, SolverVariable paramSolverVariable)
  {
    paramConstraintAnchor = this.R0.q(paramConstraintAnchor);
    this.R0.h(paramConstraintAnchor, paramSolverVariable, 0, 5);
  }
  
  private void C1(ConstraintWidget paramConstraintWidget)
  {
    int i = this.X0;
    c[] arrayOfc = this.Y0;
    if (i + 1 >= arrayOfc.length) {
      this.Y0 = ((c[])Arrays.copyOf(arrayOfc, arrayOfc.length * 2));
    }
    this.Y0[this.X0] = new c(paramConstraintWidget, 1, P1());
    this.X0 += 1;
  }
  
  public static boolean S1(int paramInt1, ConstraintWidget paramConstraintWidget, b.b paramb, b.a parama, int paramInt2)
  {
    if (paramb == null) {
      return false;
    }
    if ((paramConstraintWidget.V() != 8) && (!(paramConstraintWidget instanceof f)) && (!(paramConstraintWidget instanceof a)))
    {
      parama.a = paramConstraintWidget.A();
      parama.b = paramConstraintWidget.T();
      parama.c = paramConstraintWidget.W();
      parama.d = paramConstraintWidget.x();
      parama.i = false;
      parama.j = paramInt2;
      ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = parama.a;
      ConstraintWidget.DimensionBehaviour localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
      if (localDimensionBehaviour1 == localDimensionBehaviour2) {
        paramInt2 = 1;
      } else {
        paramInt2 = 0;
      }
      if (parama.b == localDimensionBehaviour2) {
        paramInt1 = 1;
      } else {
        paramInt1 = 0;
      }
      int i;
      if ((paramInt2 != 0) && (paramConstraintWidget.d0 > 0.0F)) {
        i = 1;
      } else {
        i = 0;
      }
      int j;
      if ((paramInt1 != 0) && (paramConstraintWidget.d0 > 0.0F)) {
        j = 1;
      } else {
        j = 0;
      }
      int k = paramInt2;
      if (paramInt2 != 0)
      {
        k = paramInt2;
        if (paramConstraintWidget.a0(0))
        {
          k = paramInt2;
          if (paramConstraintWidget.w == 0)
          {
            k = paramInt2;
            if (i == 0)
            {
              parama.a = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
              if ((paramInt1 != 0) && (paramConstraintWidget.x == 0)) {
                parama.a = ConstraintWidget.DimensionBehaviour.FIXED;
              }
              k = 0;
            }
          }
        }
      }
      paramInt2 = paramInt1;
      if (paramInt1 != 0)
      {
        paramInt2 = paramInt1;
        if (paramConstraintWidget.a0(1))
        {
          paramInt2 = paramInt1;
          if (paramConstraintWidget.x == 0)
          {
            paramInt2 = paramInt1;
            if (j == 0)
            {
              parama.b = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
              if ((k != 0) && (paramConstraintWidget.w == 0)) {
                parama.b = ConstraintWidget.DimensionBehaviour.FIXED;
              }
              paramInt2 = 0;
            }
          }
        }
      }
      if (paramConstraintWidget.n0())
      {
        parama.a = ConstraintWidget.DimensionBehaviour.FIXED;
        k = 0;
      }
      if (paramConstraintWidget.o0())
      {
        parama.b = ConstraintWidget.DimensionBehaviour.FIXED;
        paramInt2 = 0;
      }
      if (i != 0) {
        if (paramConstraintWidget.y[0] == 4)
        {
          parama.a = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        else if (paramInt2 == 0)
        {
          localDimensionBehaviour2 = parama.b;
          localDimensionBehaviour1 = ConstraintWidget.DimensionBehaviour.FIXED;
          if (localDimensionBehaviour2 == localDimensionBehaviour1)
          {
            paramInt1 = parama.d;
          }
          else
          {
            parama.a = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            paramb.b(paramConstraintWidget, parama);
            paramInt1 = parama.f;
          }
          parama.a = localDimensionBehaviour1;
          parama.c = ((int)(paramConstraintWidget.v() * paramInt1));
        }
      }
      if (j != 0) {
        if (paramConstraintWidget.y[1] == 4)
        {
          parama.b = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        else if (k == 0)
        {
          localDimensionBehaviour1 = parama.a;
          localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
          if (localDimensionBehaviour1 == localDimensionBehaviour2)
          {
            paramInt1 = parama.c;
          }
          else
          {
            parama.b = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            paramb.b(paramConstraintWidget, parama);
            paramInt1 = parama.e;
          }
          parama.b = localDimensionBehaviour2;
          if (paramConstraintWidget.w() == -1) {
            parama.d = ((int)(paramInt1 / paramConstraintWidget.v()));
          } else {
            parama.d = ((int)(paramConstraintWidget.v() * paramInt1));
          }
        }
      }
      paramb.b(paramConstraintWidget, parama);
      paramConstraintWidget.k1(parama.e);
      paramConstraintWidget.L0(parama.f);
      paramConstraintWidget.K0(parama.h);
      paramConstraintWidget.A0(parama.g);
      parama.j = b.a.k;
      return parama.i;
    }
    parama.e = 0;
    parama.f = 0;
    return false;
  }
  
  private void U1()
  {
    this.W0 = 0;
    this.X0 = 0;
  }
  
  private void x1(ConstraintWidget paramConstraintWidget)
  {
    int i = this.W0;
    c[] arrayOfc = this.Z0;
    if (i + 1 >= arrayOfc.length) {
      this.Z0 = ((c[])Arrays.copyOf(arrayOfc, arrayOfc.length * 2));
    }
    this.Z0[this.W0] = new c(paramConstraintWidget, 0, P1());
    this.W0 += 1;
  }
  
  void D1(ConstraintAnchor paramConstraintAnchor)
  {
    WeakReference localWeakReference = this.m1;
    if ((localWeakReference == null) || (localWeakReference.get() == null) || (paramConstraintAnchor.e() > ((ConstraintAnchor)this.m1.get()).e())) {
      this.m1 = new WeakReference(paramConstraintAnchor);
    }
  }
  
  void E1(ConstraintAnchor paramConstraintAnchor)
  {
    WeakReference localWeakReference = this.k1;
    if ((localWeakReference == null) || (localWeakReference.get() == null) || (paramConstraintAnchor.e() > ((ConstraintAnchor)this.k1.get()).e())) {
      this.k1 = new WeakReference(paramConstraintAnchor);
    }
  }
  
  public boolean F1(boolean paramBoolean)
  {
    return this.N0.f(paramBoolean);
  }
  
  public boolean G1(boolean paramBoolean)
  {
    return this.N0.g(paramBoolean);
  }
  
  public boolean H1(boolean paramBoolean, int paramInt)
  {
    return this.N0.h(paramBoolean, paramInt);
  }
  
  public b.b I1()
  {
    return this.P0;
  }
  
  public int J1()
  {
    return this.f1;
  }
  
  public androidx.constraintlayout.core.d K1()
  {
    return this.R0;
  }
  
  public boolean L1()
  {
    return false;
  }
  
  public void M1()
  {
    this.N0.j();
  }
  
  public void N1()
  {
    this.N0.k();
  }
  
  public void O(StringBuilder paramStringBuilder)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(this.o);
    ((StringBuilder)localObject).append(":{\n");
    paramStringBuilder.append(((StringBuilder)localObject).toString());
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("  actualWidth:");
    ((StringBuilder)localObject).append(this.b0);
    paramStringBuilder.append(((StringBuilder)localObject).toString());
    paramStringBuilder.append("\n");
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("  actualHeight:");
    ((StringBuilder)localObject).append(this.c0);
    paramStringBuilder.append(((StringBuilder)localObject).toString());
    paramStringBuilder.append("\n");
    localObject = r1().iterator();
    while (((Iterator)localObject).hasNext())
    {
      ((ConstraintWidget)((Iterator)localObject).next()).O(paramStringBuilder);
      paramStringBuilder.append(",\n");
    }
    paramStringBuilder.append("}");
  }
  
  public boolean O1()
  {
    return this.i1;
  }
  
  public boolean P1()
  {
    return this.Q0;
  }
  
  public boolean Q1()
  {
    return this.h1;
  }
  
  public long R1(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9)
  {
    this.S0 = paramInt8;
    this.T0 = paramInt9;
    return this.M0.d(this, paramInt1, paramInt8, paramInt9, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
  }
  
  public boolean T1(int paramInt)
  {
    boolean bool;
    if ((this.f1 & paramInt) == paramInt) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void V1(b.b paramb)
  {
    this.P0 = paramb;
    this.N0.n(paramb);
  }
  
  public void W1(int paramInt)
  {
    this.f1 = paramInt;
    androidx.constraintlayout.core.d.r = T1(512);
  }
  
  public void X1(int paramInt)
  {
    this.O0 = paramInt;
  }
  
  public void Y1(boolean paramBoolean)
  {
    this.Q0 = paramBoolean;
  }
  
  public boolean Z1(androidx.constraintlayout.core.d paramd, boolean[] paramArrayOfBoolean)
  {
    int i = 0;
    paramArrayOfBoolean[2] = false;
    boolean bool1 = T1(64);
    q1(paramd, bool1);
    int j = this.L0.size();
    boolean bool2 = false;
    while (i < j)
    {
      paramArrayOfBoolean = (ConstraintWidget)this.L0.get(i);
      paramArrayOfBoolean.q1(paramd, bool1);
      if (paramArrayOfBoolean.c0()) {
        bool2 = true;
      }
      i++;
    }
    return bool2;
  }
  
  public void a2()
  {
    this.M0.e(this);
  }
  
  public void p1(boolean paramBoolean1, boolean paramBoolean2)
  {
    super.p1(paramBoolean1, paramBoolean2);
    int i = this.L0.size();
    for (int j = 0; j < i; j++) {
      ((ConstraintWidget)this.L0.get(j)).p1(paramBoolean1, paramBoolean2);
    }
  }
  
  public void s1()
  {
    this.f0 = 0;
    this.g0 = 0;
    this.h1 = false;
    this.i1 = false;
    int i = this.L0.size();
    int j = Math.max(0, W());
    int k = Math.max(0, x());
    Object localObject1 = this.Z;
    Object localObject2 = localObject1[1];
    localObject1 = localObject1[0];
    if ((this.O0 == 0) && (g.b(this.f1, 1)))
    {
      androidx.constraintlayout.core.widgets.analyzer.g.h(this, I1());
      for (m = 0; m < i; m++)
      {
        localObject3 = (ConstraintWidget)this.L0.get(m);
        if ((((ConstraintWidget)localObject3).m0()) && (!(localObject3 instanceof f)) && (!(localObject3 instanceof a)) && (!(localObject3 instanceof h)) && (!((ConstraintWidget)localObject3).l0()))
        {
          ConstraintWidget.DimensionBehaviour localDimensionBehaviour = ((ConstraintWidget)localObject3).u(0);
          localObject4 = ((ConstraintWidget)localObject3).u(1);
          localObject5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
          if ((localDimensionBehaviour == localObject5) && (((ConstraintWidget)localObject3).w != 1) && (localObject4 == localObject5) && (((ConstraintWidget)localObject3).x != 1)) {
            n = 1;
          } else {
            n = 0;
          }
          if (n == 0)
          {
            localObject5 = new b.a();
            S1(0, (ConstraintWidget)localObject3, this.P0, (b.a)localObject5, b.a.k);
          }
        }
      }
    }
    if (i > 2)
    {
      localObject3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
      if (((localObject1 == localObject3) || (localObject2 == localObject3)) && (g.b(this.f1, 1024)) && (androidx.constraintlayout.core.widgets.analyzer.h.c(this, I1())))
      {
        m = j;
        if (localObject1 == localObject3) {
          if ((j < W()) && (j > 0))
          {
            k1(j);
            this.h1 = true;
            m = j;
          }
          else
          {
            m = W();
          }
        }
        j = k;
        if (localObject2 == localObject3) {
          if ((k < x()) && (k > 0))
          {
            L0(k);
            this.i1 = true;
            j = k;
          }
          else
          {
            j = x();
          }
        }
        bool1 = true;
        break label398;
      }
    }
    int m = j;
    boolean bool1 = false;
    j = k;
    label398:
    if ((!T1(64)) && (!T1(128))) {
      k = 0;
    } else {
      k = 1;
    }
    Object localObject3 = this.R0;
    ((androidx.constraintlayout.core.d)localObject3).h = false;
    ((androidx.constraintlayout.core.d)localObject3).i = false;
    if ((this.f1 != 0) && (k != 0)) {
      ((androidx.constraintlayout.core.d)localObject3).i = true;
    }
    localObject3 = this.L0;
    Object localObject5 = A();
    Object localObject4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
    if ((localObject5 != localObject4) && (T() != localObject4)) {
      k = 0;
    } else {
      k = 1;
    }
    U1();
    for (int n = 0; n < i; n++)
    {
      localObject5 = (ConstraintWidget)this.L0.get(n);
      if ((localObject5 instanceof q.c)) {
        ((q.c)localObject5).s1();
      }
    }
    boolean bool2 = T1(64);
    n = 0;
    boolean bool3 = true;
    while (bool3)
    {
      int i2 = n + 1;
      boolean bool4 = bool3;
      try
      {
        this.R0.D();
        bool4 = bool3;
        U1();
        bool4 = bool3;
        m(this.R0);
        for (n = 0; n < i; n++)
        {
          bool4 = bool3;
          ((ConstraintWidget)this.L0.get(n)).m(this.R0);
        }
        bool4 = bool3;
        bool3 = w1(this.R0);
        bool4 = bool3;
        localObject5 = this.k1;
        if (localObject5 != null)
        {
          bool4 = bool3;
          if (((Reference)localObject5).get() != null)
          {
            bool4 = bool3;
            B1((ConstraintAnchor)this.k1.get(), this.R0.q(this.P));
            bool4 = bool3;
            this.k1 = null;
          }
        }
        bool4 = bool3;
        localObject5 = this.m1;
        if (localObject5 != null)
        {
          bool4 = bool3;
          if (((Reference)localObject5).get() != null)
          {
            bool4 = bool3;
            A1((ConstraintAnchor)this.m1.get(), this.R0.q(this.R));
            bool4 = bool3;
            this.m1 = null;
          }
        }
        bool4 = bool3;
        localObject5 = this.l1;
        if (localObject5 != null)
        {
          bool4 = bool3;
          if (((Reference)localObject5).get() != null)
          {
            bool4 = bool3;
            B1((ConstraintAnchor)this.l1.get(), this.R0.q(this.O));
            bool4 = bool3;
            this.l1 = null;
          }
        }
        bool4 = bool3;
        localObject5 = this.n1;
        if (localObject5 != null)
        {
          bool4 = bool3;
          if (((Reference)localObject5).get() != null)
          {
            bool4 = bool3;
            A1((ConstraintAnchor)this.n1.get(), this.R0.q(this.Q));
            bool4 = bool3;
            this.n1 = null;
          }
        }
        bool4 = bool3;
        if (bool3)
        {
          bool4 = bool3;
          this.R0.z();
          bool4 = bool3;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localObject4 = System.out;
        localObject5 = new StringBuilder();
        ((StringBuilder)localObject5).append("EXCEPTION : ");
        ((StringBuilder)localObject5).append(localException);
        ((PrintStream)localObject4).println(((StringBuilder)localObject5).toString());
      }
      if (bool4)
      {
        bool4 = Z1(this.R0, g.a);
      }
      else
      {
        q1(this.R0, bool2);
        for (n = 0; n < i; n++) {
          ((ConstraintWidget)this.L0.get(n)).q1(this.R0, bool2);
        }
        bool4 = false;
      }
      if ((k != 0) && (i2 < 8) && (g.a[2] != 0))
      {
        int i3 = 0;
        n = 0;
        int i4 = 0;
        while (i3 < i)
        {
          localObject5 = (ConstraintWidget)this.L0.get(i3);
          i4 = Math.max(i4, ((ConstraintWidget)localObject5).f0 + ((ConstraintWidget)localObject5).W());
          n = Math.max(n, ((ConstraintWidget)localObject5).g0 + ((ConstraintWidget)localObject5).x());
          i3++;
        }
        i3 = Math.max(this.m0, i4);
        n = Math.max(this.n0, n);
        localObject5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        bool5 = bool1;
        bool3 = bool4;
        if (localObject1 == localObject5)
        {
          bool5 = bool1;
          bool3 = bool4;
          if (W() < i3)
          {
            k1(i3);
            this.Z[0] = localObject5;
            bool5 = true;
            bool3 = true;
          }
        }
        bool1 = bool5;
        bool4 = bool3;
        if (localObject2 == localObject5)
        {
          bool1 = bool5;
          bool4 = bool3;
          if (x() < n)
          {
            L0(n);
            this.Z[1] = localObject5;
            bool1 = true;
            bool4 = true;
          }
        }
      }
      n = Math.max(this.m0, W());
      bool3 = bool1;
      bool1 = bool4;
      if (n > W())
      {
        k1(n);
        this.Z[0] = ConstraintWidget.DimensionBehaviour.FIXED;
        bool3 = true;
        bool1 = true;
      }
      n = Math.max(this.n0, x());
      if (n > x())
      {
        L0(n);
        this.Z[1] = ConstraintWidget.DimensionBehaviour.FIXED;
        bool4 = true;
        bool1 = bool4;
      }
      else
      {
        bool4 = bool3;
      }
      boolean bool6 = bool4;
      boolean bool5 = bool1;
      if (!bool4)
      {
        localObject5 = this.Z[0];
        localObject4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean bool7 = bool4;
        bool3 = bool1;
        if (localObject5 == localObject4)
        {
          bool7 = bool4;
          bool3 = bool1;
          if (m > 0)
          {
            bool7 = bool4;
            bool3 = bool1;
            if (W() > m)
            {
              this.h1 = true;
              this.Z[0] = ConstraintWidget.DimensionBehaviour.FIXED;
              k1(m);
              bool7 = true;
              bool3 = bool7;
            }
          }
        }
        bool6 = bool7;
        bool5 = bool3;
        if (this.Z[1] == localObject4)
        {
          bool6 = bool7;
          bool5 = bool3;
          if (j > 0)
          {
            bool6 = bool7;
            bool5 = bool3;
            if (x() > j)
            {
              this.i1 = true;
              this.Z[1] = ConstraintWidget.DimensionBehaviour.FIXED;
              L0(j);
              bool4 = true;
              bool1 = true;
              break label1574;
            }
          }
        }
      }
      bool1 = bool6;
      bool4 = bool5;
      label1574:
      if (i2 > 8) {
        bool3 = false;
      } else {
        bool3 = bool4;
      }
      n = i2;
    }
    this.L0 = ((ArrayList)localObject3);
    if (bool1)
    {
      localObject3 = this.Z;
      localObject3[0] = localObject1;
      localObject3[1] = localObject2;
    }
    w0(this.R0.v());
  }
  
  public void t0()
  {
    this.R0.D();
    this.S0 = 0;
    this.U0 = 0;
    this.T0 = 0;
    this.V0 = 0;
    this.g1 = false;
    super.t0();
  }
  
  void v1(ConstraintWidget paramConstraintWidget, int paramInt)
  {
    if (paramInt == 0) {
      x1(paramConstraintWidget);
    } else if (paramInt == 1) {
      C1(paramConstraintWidget);
    }
  }
  
  public boolean w1(androidx.constraintlayout.core.d paramd)
  {
    boolean bool = T1(64);
    g(paramd, bool);
    int i = this.L0.size();
    int j = 0;
    int k = j;
    Object localObject1;
    while (j < i)
    {
      localObject1 = (ConstraintWidget)this.L0.get(j);
      ((ConstraintWidget)localObject1).S0(0, false);
      ((ConstraintWidget)localObject1).S0(1, false);
      if ((localObject1 instanceof a)) {
        k = 1;
      }
      j++;
    }
    if (k != 0) {
      for (j = 0; j < i; j++)
      {
        localObject1 = (ConstraintWidget)this.L0.get(j);
        if ((localObject1 instanceof a)) {
          ((a)localObject1).y1();
        }
      }
    }
    this.o1.clear();
    for (j = 0; j < i; j++)
    {
      localObject1 = (ConstraintWidget)this.L0.get(j);
      if (((ConstraintWidget)localObject1).f()) {
        if ((localObject1 instanceof h)) {
          this.o1.add(localObject1);
        } else {
          ((ConstraintWidget)localObject1).g(paramd, bool);
        }
      }
    }
    Object localObject2;
    while (this.o1.size() > 0)
    {
      j = this.o1.size();
      localObject2 = this.o1.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject1 = (h)((Iterator)localObject2).next();
        if (((h)localObject1).v1(this.o1))
        {
          ((ConstraintWidget)localObject1).g(paramd, bool);
          this.o1.remove(localObject1);
        }
      }
      if (j == this.o1.size())
      {
        localObject1 = this.o1.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((ConstraintWidget)((Iterator)localObject1).next()).g(paramd, bool);
        }
        this.o1.clear();
      }
    }
    if (androidx.constraintlayout.core.d.r)
    {
      localObject2 = new HashSet();
      for (j = 0; j < i; j++)
      {
        localObject1 = (ConstraintWidget)this.L0.get(j);
        if (!((ConstraintWidget)localObject1).f()) {
          ((HashSet)localObject2).add(localObject1);
        }
      }
      if (A() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
        j = 0;
      } else {
        j = 1;
      }
      e(this, paramd, (HashSet)localObject2, j, false);
      localObject1 = ((HashSet)localObject2).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ConstraintWidget)((Iterator)localObject1).next();
        g.a(this, paramd, (ConstraintWidget)localObject2);
        ((ConstraintWidget)localObject2).g(paramd, bool);
      }
    }
    for (j = 0; j < i; j++)
    {
      localObject1 = (ConstraintWidget)this.L0.get(j);
      if ((localObject1 instanceof d))
      {
        Object localObject3 = ((ConstraintWidget)localObject1).Z;
        localObject2 = localObject3[0];
        ConstraintWidget.DimensionBehaviour localDimensionBehaviour = localObject3[1];
        localObject3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (localObject2 == localObject3) {
          ((ConstraintWidget)localObject1).P0(ConstraintWidget.DimensionBehaviour.FIXED);
        }
        if (localDimensionBehaviour == localObject3) {
          ((ConstraintWidget)localObject1).g1(ConstraintWidget.DimensionBehaviour.FIXED);
        }
        ((ConstraintWidget)localObject1).g(paramd, bool);
        if (localObject2 == localObject3) {
          ((ConstraintWidget)localObject1).P0((ConstraintWidget.DimensionBehaviour)localObject2);
        }
        if (localDimensionBehaviour == localObject3) {
          ((ConstraintWidget)localObject1).g1(localDimensionBehaviour);
        }
      }
      else
      {
        g.a(this, paramd, (ConstraintWidget)localObject1);
        if (!((ConstraintWidget)localObject1).f()) {
          ((ConstraintWidget)localObject1).g(paramd, bool);
        }
      }
    }
    if (this.W0 > 0) {
      b.b(this, paramd, null, 0);
    }
    if (this.X0 > 0) {
      b.b(this, paramd, null, 1);
    }
    return true;
  }
  
  public void y1(ConstraintAnchor paramConstraintAnchor)
  {
    WeakReference localWeakReference = this.n1;
    if ((localWeakReference == null) || (localWeakReference.get() == null) || (paramConstraintAnchor.e() > ((ConstraintAnchor)this.n1.get()).e())) {
      this.n1 = new WeakReference(paramConstraintAnchor);
    }
  }
  
  public void z1(ConstraintAnchor paramConstraintAnchor)
  {
    WeakReference localWeakReference = this.l1;
    if ((localWeakReference == null) || (localWeakReference.get() == null) || (paramConstraintAnchor.e() > ((ConstraintAnchor)this.l1.get()).e())) {
      this.l1 = new WeakReference(paramConstraintAnchor);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.d
 * JD-Core Version:    0.7.0.1
 */