package androidx.constraintlayout.core;

import java.util.ArrayList;

public class b
  implements d.a
{
  SolverVariable a = null;
  float b = 0.0F;
  boolean c = false;
  ArrayList<SolverVariable> d = new ArrayList();
  public a e;
  boolean f = false;
  
  public b() {}
  
  public b(c paramc)
  {
    this.e = new a(this, paramc);
  }
  
  private boolean u(SolverVariable paramSolverVariable, d paramd)
  {
    int i = paramSolverVariable.m;
    boolean bool = true;
    if (i > 1) {
      bool = false;
    }
    return bool;
  }
  
  private SolverVariable w(boolean[] paramArrayOfBoolean, SolverVariable paramSolverVariable)
  {
    int i = this.e.a();
    Object localObject1 = null;
    int j = 0;
    float f3;
    for (float f1 = 0.0F; j < i; f1 = f3)
    {
      float f2 = this.e.h(j);
      Object localObject2 = localObject1;
      f3 = f1;
      if (f2 < 0.0F)
      {
        SolverVariable localSolverVariable = this.e.e(j);
        if (paramArrayOfBoolean != null)
        {
          localObject2 = localObject1;
          f3 = f1;
          if (paramArrayOfBoolean[localSolverVariable.c] != 0) {}
        }
        else
        {
          localObject2 = localObject1;
          f3 = f1;
          if (localSolverVariable != paramSolverVariable)
          {
            SolverVariable.Type localType = localSolverVariable.j;
            if (localType != SolverVariable.Type.SLACK)
            {
              localObject2 = localObject1;
              f3 = f1;
              if (localType != SolverVariable.Type.ERROR) {}
            }
            else
            {
              localObject2 = localObject1;
              f3 = f1;
              if (f2 < f1)
              {
                f3 = f2;
                localObject2 = localSolverVariable;
              }
            }
          }
        }
      }
      j++;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  public void A(d paramd, SolverVariable paramSolverVariable, boolean paramBoolean)
  {
    if ((paramSolverVariable != null) && (paramSolverVariable.g))
    {
      float f1 = this.e.j(paramSolverVariable);
      this.b += paramSolverVariable.f * f1;
      this.e.i(paramSolverVariable, paramBoolean);
      if (paramBoolean) {
        paramSolverVariable.i(this);
      }
      if ((d.t) && (this.e.a() == 0))
      {
        this.f = true;
        paramd.a = true;
      }
    }
  }
  
  public void B(d paramd, b paramb, boolean paramBoolean)
  {
    float f1 = this.e.c(paramb, paramBoolean);
    this.b += paramb.b * f1;
    if (paramBoolean) {
      paramb.a.i(this);
    }
    if ((d.t) && (this.a != null) && (this.e.a() == 0))
    {
      this.f = true;
      paramd.a = true;
    }
  }
  
  public void C(d paramd, SolverVariable paramSolverVariable, boolean paramBoolean)
  {
    if ((paramSolverVariable != null) && (paramSolverVariable.n))
    {
      float f1 = this.e.j(paramSolverVariable);
      this.b += paramSolverVariable.p * f1;
      this.e.i(paramSolverVariable, paramBoolean);
      if (paramBoolean) {
        paramSolverVariable.i(this);
      }
      this.e.f(paramd.n.d[paramSolverVariable.o], f1, paramBoolean);
      if ((d.t) && (this.e.a() == 0))
      {
        this.f = true;
        paramd.a = true;
      }
    }
  }
  
  public void D(d paramd)
  {
    if (paramd.g.length == 0) {
      return;
    }
    int i = 0;
    while (i == 0)
    {
      int j = this.e.a();
      SolverVariable localSolverVariable;
      for (int k = 0; k < j; k++)
      {
        localSolverVariable = this.e.e(k);
        if ((localSolverVariable.d != -1) || (localSolverVariable.g) || (localSolverVariable.n)) {
          this.d.add(localSolverVariable);
        }
      }
      j = this.d.size();
      if (j > 0)
      {
        for (k = 0; k < j; k++)
        {
          localSolverVariable = (SolverVariable)this.d.get(k);
          if (localSolverVariable.g) {
            A(paramd, localSolverVariable, true);
          } else if (localSolverVariable.n) {
            C(paramd, localSolverVariable, true);
          } else {
            B(paramd, paramd.g[localSolverVariable.d], true);
          }
        }
        this.d.clear();
      }
      else
      {
        i = 1;
      }
    }
    if ((d.t) && (this.a != null) && (this.e.a() == 0))
    {
      this.f = true;
      paramd.a = true;
    }
  }
  
  public void a(d.a parama)
  {
    if ((parama instanceof b))
    {
      b localb = (b)parama;
      this.a = null;
      this.e.clear();
      for (int i = 0; i < localb.e.a(); i++)
      {
        parama = localb.e.e(i);
        float f1 = localb.e.h(i);
        this.e.f(parama, f1, true);
      }
    }
  }
  
  public SolverVariable b(d paramd, boolean[] paramArrayOfBoolean)
  {
    return w(paramArrayOfBoolean, null);
  }
  
  public void c(SolverVariable paramSolverVariable)
  {
    int i = paramSolverVariable.e;
    float f1 = 1.0F;
    if (i != 1) {
      if (i == 2) {
        f1 = 1000.0F;
      } else if (i == 3) {
        f1 = 1000000.0F;
      } else if (i == 4) {
        f1 = 1.0E+009F;
      } else if (i == 5) {
        f1 = 1.0E+012F;
      }
    }
    this.e.d(paramSolverVariable, f1);
  }
  
  public void clear()
  {
    this.e.clear();
    this.a = null;
    this.b = 0.0F;
  }
  
  public b d(d paramd, int paramInt)
  {
    this.e.d(paramd.o(paramInt, "ep"), 1.0F);
    this.e.d(paramd.o(paramInt, "em"), -1.0F);
    return this;
  }
  
  b e(SolverVariable paramSolverVariable, int paramInt)
  {
    this.e.d(paramSolverVariable, paramInt);
    return this;
  }
  
  boolean f(d paramd)
  {
    paramd = g(paramd);
    boolean bool;
    if (paramd == null)
    {
      bool = true;
    }
    else
    {
      x(paramd);
      bool = false;
    }
    if (this.e.a() == 0) {
      this.f = true;
    }
    return bool;
  }
  
  SolverVariable g(d paramd)
  {
    int i = this.e.a();
    Object localObject1 = null;
    int j = 0;
    int k = j;
    int n = k;
    float f1 = 0.0F;
    float f2 = f1;
    Object localObject2 = null;
    int i1 = k;
    while (j < i)
    {
      float f3 = this.e.h(j);
      SolverVariable localSolverVariable = this.e.e(j);
      int m;
      Object localObject3;
      Object localObject4;
      int i2;
      float f4;
      float f5;
      if (localSolverVariable.j == SolverVariable.Type.UNRESTRICTED)
      {
        if (localObject1 == null) {}
        for (m = u(localSolverVariable, paramd);; m = u(localSolverVariable, paramd))
        {
          localObject3 = localSolverVariable;
          localObject4 = localObject2;
          i2 = n;
          f4 = f3;
          f5 = f2;
          break label423;
          if (f1 <= f3) {
            break;
          }
        }
        localObject3 = localObject1;
        localObject4 = localObject2;
        m = i1;
        i2 = n;
        f4 = f1;
        f5 = f2;
        if (i1 == 0)
        {
          localObject3 = localObject1;
          localObject4 = localObject2;
          m = i1;
          i2 = n;
          f4 = f1;
          f5 = f2;
          if (u(localSolverVariable, paramd))
          {
            m = 1;
            localObject3 = localSolverVariable;
            localObject4 = localObject2;
            i2 = n;
            f4 = f3;
            f5 = f2;
          }
        }
      }
      else
      {
        localObject3 = localObject1;
        localObject4 = localObject2;
        m = i1;
        i2 = n;
        f4 = f1;
        f5 = f2;
        if (localObject1 == null)
        {
          localObject3 = localObject1;
          localObject4 = localObject2;
          m = i1;
          i2 = n;
          f4 = f1;
          f5 = f2;
          if (f3 < 0.0F)
          {
            if (localObject2 == null) {}
            for (m = u(localSolverVariable, paramd);; m = u(localSolverVariable, paramd))
            {
              i2 = m;
              localObject3 = localObject1;
              localObject4 = localSolverVariable;
              m = i1;
              f4 = f1;
              f5 = f3;
              break label423;
              if (f2 <= f3) {
                break;
              }
            }
            localObject3 = localObject1;
            localObject4 = localObject2;
            m = i1;
            i2 = n;
            f4 = f1;
            f5 = f2;
            if (n == 0)
            {
              localObject3 = localObject1;
              localObject4 = localObject2;
              m = i1;
              i2 = n;
              f4 = f1;
              f5 = f2;
              if (u(localSolverVariable, paramd))
              {
                i2 = 1;
                f5 = f3;
                f4 = f1;
                m = i1;
                localObject4 = localSolverVariable;
                localObject3 = localObject1;
              }
            }
          }
        }
      }
      label423:
      j++;
      localObject1 = localObject3;
      localObject2 = localObject4;
      i1 = m;
      n = i2;
      f1 = f4;
      f2 = f5;
    }
    if (localObject1 != null) {
      return localObject1;
    }
    return localObject2;
  }
  
  public SolverVariable getKey()
  {
    return this.a;
  }
  
  b h(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, float paramFloat, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, int paramInt2)
  {
    if (paramSolverVariable2 == paramSolverVariable3)
    {
      this.e.d(paramSolverVariable1, 1.0F);
      this.e.d(paramSolverVariable4, 1.0F);
      this.e.d(paramSolverVariable2, -2.0F);
      return this;
    }
    if (paramFloat == 0.5F)
    {
      this.e.d(paramSolverVariable1, 1.0F);
      this.e.d(paramSolverVariable2, -1.0F);
      this.e.d(paramSolverVariable3, -1.0F);
      this.e.d(paramSolverVariable4, 1.0F);
      if ((paramInt1 > 0) || (paramInt2 > 0)) {
        this.b = (-paramInt1 + paramInt2);
      }
    }
    else if (paramFloat <= 0.0F)
    {
      this.e.d(paramSolverVariable1, -1.0F);
      this.e.d(paramSolverVariable2, 1.0F);
      this.b = paramInt1;
    }
    else if (paramFloat >= 1.0F)
    {
      this.e.d(paramSolverVariable4, -1.0F);
      this.e.d(paramSolverVariable3, 1.0F);
      this.b = (-paramInt2);
    }
    else
    {
      a locala = this.e;
      float f1 = 1.0F - paramFloat;
      locala.d(paramSolverVariable1, f1 * 1.0F);
      this.e.d(paramSolverVariable2, f1 * -1.0F);
      this.e.d(paramSolverVariable3, -1.0F * paramFloat);
      this.e.d(paramSolverVariable4, 1.0F * paramFloat);
      if ((paramInt1 > 0) || (paramInt2 > 0)) {
        this.b = (-paramInt1 * f1 + paramInt2 * paramFloat);
      }
    }
    return this;
  }
  
  b i(SolverVariable paramSolverVariable, int paramInt)
  {
    this.a = paramSolverVariable;
    float f1 = paramInt;
    paramSolverVariable.f = f1;
    this.b = f1;
    this.f = true;
    return this;
  }
  
  public boolean isEmpty()
  {
    boolean bool;
    if ((this.a == null) && (this.b == 0.0F) && (this.e.a() == 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  b j(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, float paramFloat)
  {
    this.e.d(paramSolverVariable1, -1.0F);
    this.e.d(paramSolverVariable2, paramFloat);
    return this;
  }
  
  public b k(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, float paramFloat)
  {
    this.e.d(paramSolverVariable1, -1.0F);
    this.e.d(paramSolverVariable2, 1.0F);
    this.e.d(paramSolverVariable3, paramFloat);
    this.e.d(paramSolverVariable4, -paramFloat);
    return this;
  }
  
  public b l(float paramFloat1, float paramFloat2, float paramFloat3, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4)
  {
    this.b = 0.0F;
    if ((paramFloat2 != 0.0F) && (paramFloat1 != paramFloat3))
    {
      if (paramFloat1 == 0.0F)
      {
        this.e.d(paramSolverVariable1, 1.0F);
        this.e.d(paramSolverVariable2, -1.0F);
      }
      else if (paramFloat3 == 0.0F)
      {
        this.e.d(paramSolverVariable3, 1.0F);
        this.e.d(paramSolverVariable4, -1.0F);
      }
      else
      {
        paramFloat1 = paramFloat1 / paramFloat2 / (paramFloat3 / paramFloat2);
        this.e.d(paramSolverVariable1, 1.0F);
        this.e.d(paramSolverVariable2, -1.0F);
        this.e.d(paramSolverVariable4, paramFloat1);
        this.e.d(paramSolverVariable3, -paramFloat1);
      }
    }
    else
    {
      this.e.d(paramSolverVariable1, 1.0F);
      this.e.d(paramSolverVariable2, -1.0F);
      this.e.d(paramSolverVariable4, 1.0F);
      this.e.d(paramSolverVariable3, -1.0F);
    }
    return this;
  }
  
  public b m(SolverVariable paramSolverVariable, int paramInt)
  {
    if (paramInt < 0)
    {
      this.b = (paramInt * -1);
      this.e.d(paramSolverVariable, 1.0F);
    }
    else
    {
      this.b = paramInt;
      this.e.d(paramSolverVariable, -1.0F);
    }
    return this;
  }
  
  public b n(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt)
  {
    int i = 0;
    int j = 0;
    if (paramInt != 0)
    {
      i = j;
      j = paramInt;
      if (paramInt < 0)
      {
        j = paramInt * -1;
        i = 1;
      }
      this.b = j;
    }
    if (i == 0)
    {
      this.e.d(paramSolverVariable1, -1.0F);
      this.e.d(paramSolverVariable2, 1.0F);
    }
    else
    {
      this.e.d(paramSolverVariable1, 1.0F);
      this.e.d(paramSolverVariable2, -1.0F);
    }
    return this;
  }
  
  public b o(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, int paramInt)
  {
    int i = 0;
    int j = 0;
    if (paramInt != 0)
    {
      i = j;
      j = paramInt;
      if (paramInt < 0)
      {
        j = paramInt * -1;
        i = 1;
      }
      this.b = j;
    }
    if (i == 0)
    {
      this.e.d(paramSolverVariable1, -1.0F);
      this.e.d(paramSolverVariable2, 1.0F);
      this.e.d(paramSolverVariable3, 1.0F);
    }
    else
    {
      this.e.d(paramSolverVariable1, 1.0F);
      this.e.d(paramSolverVariable2, -1.0F);
      this.e.d(paramSolverVariable3, -1.0F);
    }
    return this;
  }
  
  public b p(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, int paramInt)
  {
    int i = 0;
    int j = 0;
    if (paramInt != 0)
    {
      i = j;
      j = paramInt;
      if (paramInt < 0)
      {
        j = paramInt * -1;
        i = 1;
      }
      this.b = j;
    }
    if (i == 0)
    {
      this.e.d(paramSolverVariable1, -1.0F);
      this.e.d(paramSolverVariable2, 1.0F);
      this.e.d(paramSolverVariable3, -1.0F);
    }
    else
    {
      this.e.d(paramSolverVariable1, 1.0F);
      this.e.d(paramSolverVariable2, -1.0F);
      this.e.d(paramSolverVariable3, 1.0F);
    }
    return this;
  }
  
  public b q(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, float paramFloat)
  {
    this.e.d(paramSolverVariable3, 0.5F);
    this.e.d(paramSolverVariable4, 0.5F);
    this.e.d(paramSolverVariable1, -0.5F);
    this.e.d(paramSolverVariable2, -0.5F);
    this.b = (-paramFloat);
    return this;
  }
  
  void r()
  {
    float f1 = this.b;
    if (f1 < 0.0F)
    {
      this.b = (f1 * -1.0F);
      this.e.g();
    }
  }
  
  boolean s()
  {
    SolverVariable localSolverVariable = this.a;
    boolean bool;
    if ((localSolverVariable != null) && ((localSolverVariable.j == SolverVariable.Type.UNRESTRICTED) || (this.b >= 0.0F))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  boolean t(SolverVariable paramSolverVariable)
  {
    return this.e.b(paramSolverVariable);
  }
  
  public String toString()
  {
    return z();
  }
  
  public SolverVariable v(SolverVariable paramSolverVariable)
  {
    return w(null, paramSolverVariable);
  }
  
  void x(SolverVariable paramSolverVariable)
  {
    SolverVariable localSolverVariable = this.a;
    if (localSolverVariable != null)
    {
      this.e.d(localSolverVariable, -1.0F);
      this.a.d = -1;
      this.a = null;
    }
    float f1 = this.e.i(paramSolverVariable, true) * -1.0F;
    this.a = paramSolverVariable;
    if (f1 == 1.0F) {
      return;
    }
    this.b /= f1;
    this.e.k(f1);
  }
  
  public void y()
  {
    this.a = null;
    this.e.clear();
    this.b = 0.0F;
    this.f = false;
  }
  
  String z()
  {
    if (this.a == null)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("");
      ((StringBuilder)localObject1).append("0");
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    else
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("");
      ((StringBuilder)localObject1).append(this.a);
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject1);
    ((StringBuilder)localObject2).append(" = ");
    Object localObject1 = ((StringBuilder)localObject2).toString();
    float f1 = this.b;
    int i = 0;
    int j;
    if (f1 != 0.0F)
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append(this.b);
      localObject1 = ((StringBuilder)localObject2).toString();
      j = 1;
    }
    else
    {
      j = 0;
    }
    int k = this.e.a();
    while (i < k)
    {
      localObject2 = this.e.e(i);
      if (localObject2 != null)
      {
        float f2 = this.e.h(i);
        boolean bool = f2 < 0.0F;
        if (bool)
        {
          String str = ((SolverVariable)localObject2).toString();
          if (j == 0)
          {
            localObject2 = localObject1;
            f1 = f2;
            if (f2 >= 0.0F) {
              break label329;
            }
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append((String)localObject1);
            ((StringBuilder)localObject2).append("- ");
            localObject2 = ((StringBuilder)localObject2).toString();
          }
          else
          {
            if (bool)
            {
              localObject2 = new StringBuilder();
              ((StringBuilder)localObject2).append((String)localObject1);
              ((StringBuilder)localObject2).append(" + ");
              localObject2 = ((StringBuilder)localObject2).toString();
              f1 = f2;
              break label329;
            }
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append((String)localObject1);
            ((StringBuilder)localObject2).append(" - ");
            localObject2 = ((StringBuilder)localObject2).toString();
          }
          f1 = f2 * -1.0F;
          label329:
          if (f1 == 1.0F)
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append((String)localObject2);
            ((StringBuilder)localObject1).append(str);
            localObject1 = ((StringBuilder)localObject1).toString();
          }
          else
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append((String)localObject2);
            ((StringBuilder)localObject1).append(f1);
            ((StringBuilder)localObject1).append(" ");
            ((StringBuilder)localObject1).append(str);
            localObject1 = ((StringBuilder)localObject1).toString();
          }
          j = 1;
        }
      }
      i++;
    }
    localObject2 = localObject1;
    if (j == 0)
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("0.0");
      localObject2 = ((StringBuilder)localObject2).toString();
    }
    return localObject2;
  }
  
  public static abstract interface a
  {
    public abstract int a();
    
    public abstract boolean b(SolverVariable paramSolverVariable);
    
    public abstract float c(b paramb, boolean paramBoolean);
    
    public abstract void clear();
    
    public abstract void d(SolverVariable paramSolverVariable, float paramFloat);
    
    public abstract SolverVariable e(int paramInt);
    
    public abstract void f(SolverVariable paramSolverVariable, float paramFloat, boolean paramBoolean);
    
    public abstract void g();
    
    public abstract float h(int paramInt);
    
    public abstract float i(SolverVariable paramSolverVariable, boolean paramBoolean);
    
    public abstract float j(SolverVariable paramSolverVariable);
    
    public abstract void k(float paramFloat);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.b
 * JD-Core Version:    0.7.0.1
 */