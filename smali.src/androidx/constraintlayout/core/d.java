package androidx.constraintlayout.core;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintAnchor.Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;
import o.a;

public class d
{
  public static boolean r = false;
  public static boolean s = true;
  public static boolean t = true;
  public static boolean u = true;
  public static boolean v = false;
  private static int w = 1000;
  public static long x;
  public static long y;
  public boolean a = false;
  int b = 0;
  private HashMap<String, SolverVariable> c = null;
  private a d;
  private int e = 32;
  private int f = 32;
  b[] g = null;
  public boolean h = false;
  public boolean i = false;
  private boolean[] j = new boolean[32];
  int k = 1;
  int l = 0;
  private int m = 32;
  final c n;
  private SolverVariable[] o = new SolverVariable[w];
  private int p = 0;
  private a q;
  
  public d()
  {
    C();
    c localc = new c();
    this.n = localc;
    this.d = new g(localc);
    if (v) {
      this.q = new b(localc);
    } else {
      this.q = new b(localc);
    }
  }
  
  private final int B(a parama, boolean paramBoolean)
  {
    for (int i1 = 0; i1 < this.k; i1++) {
      this.j[i1] = false;
    }
    int i2 = 0;
    i1 = i2;
    while (i2 == 0)
    {
      int i3 = i1 + 1;
      if (i3 >= this.k * 2) {
        return i3;
      }
      if (parama.getKey() != null) {
        this.j[parama.getKey().c] = true;
      }
      SolverVariable localSolverVariable = parama.b(this, this.j);
      Object localObject;
      if (localSolverVariable != null)
      {
        localObject = this.j;
        i1 = localSolverVariable.c;
        if (localObject[i1] != 0) {
          return i3;
        }
        localObject[i1] = 1;
      }
      if (localSolverVariable != null)
      {
        float f1 = 3.4028235E+38F;
        i1 = 0;
        int i5;
        for (int i4 = -1; i1 < this.l; i4 = i5)
        {
          localObject = this.g[i1];
          float f2;
          if (((b)localObject).a.j == SolverVariable.Type.UNRESTRICTED)
          {
            f2 = f1;
            i5 = i4;
          }
          else if (((b)localObject).f)
          {
            f2 = f1;
            i5 = i4;
          }
          else
          {
            f2 = f1;
            i5 = i4;
            if (((b)localObject).t(localSolverVariable))
            {
              float f3 = ((b)localObject).e.j(localSolverVariable);
              f2 = f1;
              i5 = i4;
              if (f3 < 0.0F)
              {
                f3 = -((b)localObject).b / f3;
                f2 = f1;
                i5 = i4;
                if (f3 < f1)
                {
                  i5 = i1;
                  f2 = f3;
                }
              }
            }
          }
          i1++;
          f1 = f2;
        }
        i1 = i3;
        if (i4 > -1)
        {
          localObject = this.g[i4];
          ((b)localObject).a.d = -1;
          ((b)localObject).x(localSolverVariable);
          localSolverVariable = ((b)localObject).a;
          localSolverVariable.d = i4;
          localSolverVariable.m(this, (b)localObject);
          i1 = i3;
        }
      }
      else
      {
        i2 = 1;
        i1 = i3;
      }
    }
    return i1;
  }
  
  private void C()
  {
    boolean bool = v;
    int i1 = 0;
    int i2 = 0;
    b localb;
    if (bool) {
      for (i1 = i2; i1 < this.l; i1++)
      {
        localb = this.g[i1];
        if (localb != null) {
          this.n.a.a(localb);
        }
        this.g[i1] = null;
      }
    }
    while (i1 < this.l)
    {
      localb = this.g[i1];
      if (localb != null) {
        this.n.b.a(localb);
      }
      this.g[i1] = null;
      i1++;
    }
  }
  
  private SolverVariable a(SolverVariable.Type paramType, String paramString)
  {
    SolverVariable localSolverVariable = (SolverVariable)this.n.c.b();
    if (localSolverVariable == null)
    {
      localSolverVariable = new SolverVariable(paramType, paramString);
      localSolverVariable.l(paramType, paramString);
      paramType = localSolverVariable;
    }
    else
    {
      localSolverVariable.j();
      localSolverVariable.l(paramType, paramString);
      paramType = localSolverVariable;
    }
    int i1 = this.p;
    int i2 = w;
    if (i1 >= i2)
    {
      i2 *= 2;
      w = i2;
      this.o = ((SolverVariable[])Arrays.copyOf(this.o, i2));
    }
    paramString = this.o;
    i2 = this.p;
    this.p = (i2 + 1);
    paramString[i2] = paramType;
    return paramType;
  }
  
  private final void l(b paramb)
  {
    Object localObject;
    int i1;
    if ((t) && (paramb.f))
    {
      paramb.a.k(this, paramb.b);
    }
    else
    {
      localObject = this.g;
      i1 = this.l;
      localObject[i1] = paramb;
      localObject = paramb.a;
      ((SolverVariable)localObject).d = i1;
      this.l = (i1 + 1);
      ((SolverVariable)localObject).m(this, paramb);
    }
    if ((t) && (this.a))
    {
      int i2;
      for (i1 = 0; i1 < this.l; i1 = i2 + 1)
      {
        if (this.g[i1] == null) {
          System.out.println("WTF");
        }
        paramb = this.g[i1];
        i2 = i1;
        if (paramb != null)
        {
          i2 = i1;
          if (paramb.f)
          {
            paramb.a.k(this, paramb.b);
            if (v) {
              this.n.a.a(paramb);
            } else {
              this.n.b.a(paramb);
            }
            this.g[i1] = null;
            i2 = i1 + 1;
            int i3 = i2;
            int i4;
            for (;;)
            {
              i4 = this.l;
              if (i2 >= i4) {
                break;
              }
              localObject = this.g;
              i3 = i2 - 1;
              paramb = localObject[i2];
              localObject[i3] = paramb;
              paramb = paramb.a;
              if (paramb.d == i2) {
                paramb.d = i3;
              }
              i3 = i2;
              i2++;
            }
            if (i3 < i4) {
              this.g[i3] = null;
            }
            this.l = (i4 - 1);
            i2 = i1 - 1;
          }
        }
      }
      this.a = false;
    }
  }
  
  private void n()
  {
    for (int i1 = 0; i1 < this.l; i1++)
    {
      b localb = this.g[i1];
      localb.a.f = localb.b;
    }
  }
  
  public static b s(d paramd, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, float paramFloat)
  {
    return paramd.r().j(paramSolverVariable1, paramSolverVariable2, paramFloat);
  }
  
  private int u(a parama)
    throws Exception
  {
    for (int i1 = 0; i1 < this.l; i1++)
    {
      parama = this.g[i1];
      if ((parama.a.j != SolverVariable.Type.UNRESTRICTED) && (parama.b < 0.0F))
      {
        i1 = 1;
        break label55;
      }
    }
    i1 = 0;
    label55:
    if (i1 != 0)
    {
      int i2 = 0;
      i1 = 0;
      while (i2 == 0)
      {
        int i3 = i1 + 1;
        float f1 = 3.4028235E+38F;
        i1 = 0;
        int i4 = -1;
        int i5 = -1;
        int i9;
        SolverVariable localSolverVariable;
        for (int i6 = 0; i1 < this.l; i6 = i9)
        {
          parama = this.g[i1];
          float f2;
          int i7;
          int i8;
          if (parama.a.j == SolverVariable.Type.UNRESTRICTED)
          {
            f2 = f1;
            i7 = i4;
            i8 = i5;
            i9 = i6;
          }
          else if (parama.f)
          {
            f2 = f1;
            i7 = i4;
            i8 = i5;
            i9 = i6;
          }
          else
          {
            f2 = f1;
            i7 = i4;
            i8 = i5;
            i9 = i6;
            if (parama.b < 0.0F)
            {
              int i11;
              float f3;
              if (u)
              {
                int i10 = parama.e.a();
                i11 = 0;
                for (;;)
                {
                  f2 = f1;
                  i7 = i4;
                  i8 = i5;
                  i9 = i6;
                  if (i11 >= i10) {
                    break;
                  }
                  localSolverVariable = parama.e.e(i11);
                  f3 = parama.e.j(localSolverVariable);
                  if (f3 <= 0.0F)
                  {
                    f2 = f1;
                    i7 = i4;
                    i8 = i5;
                    i9 = i6;
                  }
                  else
                  {
                    i7 = 0;
                    i12 = i4;
                    i4 = i7;
                    for (;;)
                    {
                      f2 = f1;
                      i7 = i12;
                      i8 = i5;
                      i9 = i6;
                      if (i4 >= 9) {
                        break;
                      }
                      f2 = localSolverVariable.h[i4] / f3;
                      if ((f2 >= f1) || (i4 != i6))
                      {
                        i7 = i6;
                        if (i4 <= i6) {}
                      }
                      else
                      {
                        i5 = localSolverVariable.c;
                        i7 = i4;
                        i12 = i1;
                        f1 = f2;
                      }
                      i4++;
                      i6 = i7;
                    }
                  }
                  i11++;
                  f1 = f2;
                  i4 = i7;
                  i5 = i8;
                  i6 = i9;
                }
              }
              int i12 = 1;
              for (;;)
              {
                f2 = f1;
                i7 = i4;
                i8 = i5;
                i9 = i6;
                if (i12 >= this.k) {
                  break;
                }
                localSolverVariable = this.n.d[i12];
                f3 = parama.e.j(localSolverVariable);
                if (f3 <= 0.0F)
                {
                  f2 = f1;
                  i8 = i4;
                  i9 = i5;
                  i11 = i6;
                }
                else
                {
                  i7 = 0;
                  for (;;)
                  {
                    f2 = f1;
                    i8 = i4;
                    i9 = i5;
                    i11 = i6;
                    if (i7 >= 9) {
                      break;
                    }
                    f2 = localSolverVariable.h[i7] / f3;
                    if ((f2 >= f1) || (i7 != i6))
                    {
                      i8 = i6;
                      if (i7 <= i6) {}
                    }
                    else
                    {
                      i5 = i12;
                      i4 = i1;
                      i8 = i7;
                      f1 = f2;
                    }
                    i7++;
                    i6 = i8;
                  }
                }
                i12++;
                f1 = f2;
                i4 = i8;
                i5 = i9;
                i6 = i11;
              }
            }
          }
          i1++;
          f1 = f2;
          i4 = i7;
          i5 = i8;
        }
        if (i4 != -1)
        {
          parama = this.g[i4];
          parama.a.d = -1;
          parama.x(this.n.d[i5]);
          localSolverVariable = parama.a;
          localSolverVariable.d = i4;
          localSolverVariable.m(this, parama);
        }
        else
        {
          i2 = 1;
        }
        i1 = i3;
        if (i3 > this.k / 2)
        {
          i2 = 1;
          i1 = i3;
        }
      }
    }
    else
    {
      i1 = 0;
    }
    return i1;
  }
  
  public static a w()
  {
    return null;
  }
  
  private void y()
  {
    int i1 = this.e * 2;
    this.e = i1;
    this.g = ((b[])Arrays.copyOf(this.g, i1));
    c localc = this.n;
    localc.d = ((SolverVariable[])Arrays.copyOf(localc.d, this.e));
    i1 = this.e;
    this.j = new boolean[i1];
    this.f = i1;
    this.m = i1;
  }
  
  void A(a parama)
    throws Exception
  {
    u(parama);
    B(parama, false);
    n();
  }
  
  public void D()
  {
    c localc;
    for (int i1 = 0;; i1++)
    {
      localc = this.n;
      localObject = localc.d;
      if (i1 >= localObject.length) {
        break;
      }
      localObject = localObject[i1];
      if (localObject != null) {
        ((SolverVariable)localObject).j();
      }
    }
    localc.c.c(this.o, this.p);
    this.p = 0;
    Arrays.fill(this.n.d, null);
    Object localObject = this.c;
    if (localObject != null) {
      ((HashMap)localObject).clear();
    }
    this.b = 0;
    this.d.clear();
    this.k = 1;
    for (i1 = 0; i1 < this.l; i1++)
    {
      localObject = this.g[i1];
      if (localObject != null) {
        ((b)localObject).c = false;
      }
    }
    C();
    this.l = 0;
    if (v) {
      this.q = new b(this.n);
    } else {
      this.q = new b(this.n);
    }
  }
  
  public void b(ConstraintWidget paramConstraintWidget1, ConstraintWidget paramConstraintWidget2, float paramFloat, int paramInt)
  {
    Object localObject1 = ConstraintAnchor.Type.LEFT;
    SolverVariable localSolverVariable1 = q(paramConstraintWidget1.o((ConstraintAnchor.Type)localObject1));
    Object localObject2 = ConstraintAnchor.Type.TOP;
    SolverVariable localSolverVariable2 = q(paramConstraintWidget1.o((ConstraintAnchor.Type)localObject2));
    Object localObject3 = ConstraintAnchor.Type.RIGHT;
    SolverVariable localSolverVariable3 = q(paramConstraintWidget1.o((ConstraintAnchor.Type)localObject3));
    Object localObject4 = ConstraintAnchor.Type.BOTTOM;
    paramConstraintWidget1 = q(paramConstraintWidget1.o((ConstraintAnchor.Type)localObject4));
    localObject1 = q(paramConstraintWidget2.o((ConstraintAnchor.Type)localObject1));
    localObject2 = q(paramConstraintWidget2.o((ConstraintAnchor.Type)localObject2));
    localObject3 = q(paramConstraintWidget2.o((ConstraintAnchor.Type)localObject3));
    localObject4 = q(paramConstraintWidget2.o((ConstraintAnchor.Type)localObject4));
    paramConstraintWidget2 = r();
    double d1 = paramFloat;
    double d2 = Math.sin(d1);
    double d3 = paramInt;
    paramConstraintWidget2.q(localSolverVariable2, paramConstraintWidget1, (SolverVariable)localObject2, (SolverVariable)localObject4, (float)(d2 * d3));
    d(paramConstraintWidget2);
    paramConstraintWidget1 = r();
    paramConstraintWidget1.q(localSolverVariable1, localSolverVariable3, (SolverVariable)localObject1, (SolverVariable)localObject3, (float)(Math.cos(d1) * d3));
    d(paramConstraintWidget1);
  }
  
  public void c(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, float paramFloat, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, int paramInt2, int paramInt3)
  {
    b localb = r();
    localb.h(paramSolverVariable1, paramSolverVariable2, paramInt1, paramFloat, paramSolverVariable3, paramSolverVariable4, paramInt2);
    if (paramInt3 != 8) {
      localb.d(this, paramInt3);
    }
    d(localb);
  }
  
  public void d(b paramb)
  {
    if (paramb == null) {
      return;
    }
    int i1 = this.l;
    int i2 = 1;
    if ((i1 + 1 >= this.m) || (this.k + 1 >= this.f)) {
      y();
    }
    i1 = 0;
    if (!paramb.f)
    {
      paramb.D(this);
      if (paramb.isEmpty()) {
        return;
      }
      paramb.r();
      if (paramb.f(this))
      {
        SolverVariable localSolverVariable = p();
        paramb.a = localSolverVariable;
        i1 = this.l;
        l(paramb);
        if (this.l == i1 + 1)
        {
          this.q.a(paramb);
          B(this.q, true);
          i1 = i2;
          if (localSolverVariable.d != -1) {
            break label234;
          }
          if (paramb.a == localSolverVariable)
          {
            localSolverVariable = paramb.v(localSolverVariable);
            if (localSolverVariable != null) {
              paramb.x(localSolverVariable);
            }
          }
          if (!paramb.f) {
            paramb.a.m(this, paramb);
          }
          if (v) {
            this.n.a.a(paramb);
          } else {
            this.n.b.a(paramb);
          }
          this.l -= 1;
          i1 = i2;
          break label234;
        }
      }
      i1 = 0;
      label234:
      if (!paramb.s()) {
        return;
      }
    }
    if (i1 == 0) {
      l(paramb);
    }
  }
  
  public b e(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, int paramInt2)
  {
    if ((s) && (paramInt2 == 8) && (paramSolverVariable2.g) && (paramSolverVariable1.d == -1))
    {
      paramSolverVariable1.k(this, paramSolverVariable2.f + paramInt1);
      return null;
    }
    b localb = r();
    localb.n(paramSolverVariable1, paramSolverVariable2, paramInt1);
    if (paramInt2 != 8) {
      localb.d(this, paramInt2);
    }
    d(localb);
    return localb;
  }
  
  public void f(SolverVariable paramSolverVariable, int paramInt)
  {
    Object localObject;
    if ((s) && (paramSolverVariable.d == -1))
    {
      float f1 = paramInt;
      paramSolverVariable.k(this, f1);
      for (paramInt = 0; paramInt < this.b + 1; paramInt++)
      {
        localObject = this.n.d[paramInt];
        if ((localObject != null) && (((SolverVariable)localObject).n) && (((SolverVariable)localObject).o == paramSolverVariable.c)) {
          ((SolverVariable)localObject).k(this, ((SolverVariable)localObject).p + f1);
        }
      }
      return;
    }
    int i1 = paramSolverVariable.d;
    if (i1 != -1)
    {
      localObject = this.g[i1];
      if (((b)localObject).f)
      {
        ((b)localObject).b = paramInt;
      }
      else if (((b)localObject).e.a() == 0)
      {
        ((b)localObject).f = true;
        ((b)localObject).b = paramInt;
      }
      else
      {
        localObject = r();
        ((b)localObject).m(paramSolverVariable, paramInt);
        d((b)localObject);
      }
    }
    else
    {
      localObject = r();
      ((b)localObject).i(paramSolverVariable, paramInt);
      d((b)localObject);
    }
  }
  
  public void g(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt, boolean paramBoolean)
  {
    b localb = r();
    SolverVariable localSolverVariable = t();
    localSolverVariable.e = 0;
    localb.o(paramSolverVariable1, paramSolverVariable2, localSolverVariable, paramInt);
    d(localb);
  }
  
  public void h(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, int paramInt2)
  {
    b localb = r();
    SolverVariable localSolverVariable = t();
    localSolverVariable.e = 0;
    localb.o(paramSolverVariable1, paramSolverVariable2, localSolverVariable, paramInt1);
    if (paramInt2 != 8) {
      m(localb, (int)(localb.e.j(localSolverVariable) * -1.0F), paramInt2);
    }
    d(localb);
  }
  
  public void i(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt, boolean paramBoolean)
  {
    b localb = r();
    SolverVariable localSolverVariable = t();
    localSolverVariable.e = 0;
    localb.p(paramSolverVariable1, paramSolverVariable2, localSolverVariable, paramInt);
    d(localb);
  }
  
  public void j(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, int paramInt2)
  {
    b localb = r();
    SolverVariable localSolverVariable = t();
    localSolverVariable.e = 0;
    localb.p(paramSolverVariable1, paramSolverVariable2, localSolverVariable, paramInt1);
    if (paramInt2 != 8) {
      m(localb, (int)(localb.e.j(localSolverVariable) * -1.0F), paramInt2);
    }
    d(localb);
  }
  
  public void k(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, float paramFloat, int paramInt)
  {
    b localb = r();
    localb.k(paramSolverVariable1, paramSolverVariable2, paramSolverVariable3, paramSolverVariable4, paramFloat);
    if (paramInt != 8) {
      localb.d(this, paramInt);
    }
    d(localb);
  }
  
  void m(b paramb, int paramInt1, int paramInt2)
  {
    paramb.e(o(paramInt2, null), paramInt1);
  }
  
  public SolverVariable o(int paramInt, String paramString)
  {
    if (this.k + 1 >= this.f) {
      y();
    }
    paramString = a(SolverVariable.Type.ERROR, paramString);
    int i1 = this.b + 1;
    this.b = i1;
    this.k += 1;
    paramString.c = i1;
    paramString.e = paramInt;
    this.n.d[i1] = paramString;
    this.d.c(paramString);
    return paramString;
  }
  
  public SolverVariable p()
  {
    if (this.k + 1 >= this.f) {
      y();
    }
    SolverVariable localSolverVariable = a(SolverVariable.Type.SLACK, null);
    int i1 = this.b + 1;
    this.b = i1;
    this.k += 1;
    localSolverVariable.c = i1;
    this.n.d[i1] = localSolverVariable;
    return localSolverVariable;
  }
  
  public SolverVariable q(Object paramObject)
  {
    Object localObject = null;
    if (paramObject == null) {
      return null;
    }
    if (this.k + 1 >= this.f) {
      y();
    }
    if ((paramObject instanceof ConstraintAnchor))
    {
      ConstraintAnchor localConstraintAnchor = (ConstraintAnchor)paramObject;
      localObject = localConstraintAnchor.i();
      paramObject = localObject;
      if (localObject == null)
      {
        localConstraintAnchor.s(this.n);
        paramObject = localConstraintAnchor.i();
      }
      int i1 = paramObject.c;
      if ((i1 != -1) && (i1 <= this.b))
      {
        localObject = paramObject;
        if (this.n.d[i1] != null) {}
      }
      else
      {
        if (i1 != -1) {
          paramObject.j();
        }
        i1 = this.b + 1;
        this.b = i1;
        this.k += 1;
        paramObject.c = i1;
        paramObject.j = SolverVariable.Type.UNRESTRICTED;
        this.n.d[i1] = paramObject;
        localObject = paramObject;
      }
    }
    return localObject;
  }
  
  public b r()
  {
    Object localObject;
    if (v)
    {
      localObject = (b)this.n.a.b();
      if (localObject == null)
      {
        localObject = new b(this.n);
        y += 1L;
      }
      else
      {
        ((b)localObject).y();
      }
    }
    else
    {
      localObject = (b)this.n.b.b();
      if (localObject == null)
      {
        localObject = new b(this.n);
        x += 1L;
      }
      else
      {
        ((b)localObject).y();
      }
    }
    SolverVariable.h();
    return localObject;
  }
  
  public SolverVariable t()
  {
    if (this.k + 1 >= this.f) {
      y();
    }
    SolverVariable localSolverVariable = a(SolverVariable.Type.SLACK, null);
    int i1 = this.b + 1;
    this.b = i1;
    this.k += 1;
    localSolverVariable.c = i1;
    this.n.d[i1] = localSolverVariable;
    return localSolverVariable;
  }
  
  public c v()
  {
    return this.n;
  }
  
  public int x(Object paramObject)
  {
    paramObject = ((ConstraintAnchor)paramObject).i();
    if (paramObject != null) {
      return (int)(paramObject.f + 0.5F);
    }
    return 0;
  }
  
  public void z()
    throws Exception
  {
    if (this.d.isEmpty())
    {
      n();
      return;
    }
    if ((!this.h) && (!this.i))
    {
      A(this.d);
    }
    else
    {
      int i1 = 0;
      for (int i2 = 0; i2 < this.l; i2++) {
        if (!this.g[i2].f)
        {
          i2 = i1;
          break label82;
        }
      }
      i2 = 1;
      label82:
      if (i2 == 0) {
        A(this.d);
      } else {
        n();
      }
    }
  }
  
  static abstract interface a
  {
    public abstract void a(a parama);
    
    public abstract SolverVariable b(d paramd, boolean[] paramArrayOfBoolean);
    
    public abstract void c(SolverVariable paramSolverVariable);
    
    public abstract void clear();
    
    public abstract SolverVariable getKey();
    
    public abstract boolean isEmpty();
  }
  
  class b
    extends b
  {
    public b(c paramc)
    {
      this.e = new h(this, paramc);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.d
 * JD-Core Version:    0.7.0.1
 */