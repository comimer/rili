package androidx.constraintlayout.core;

import java.util.Arrays;
import java.util.Comparator;

public class g
  extends b
{
  private int g = 128;
  private SolverVariable[] h = new SolverVariable[''];
  private SolverVariable[] i = new SolverVariable[''];
  private int j = 0;
  b k = new b(this);
  c l;
  
  public g(c paramc)
  {
    super(paramc);
    this.l = paramc;
  }
  
  private final void F(SolverVariable paramSolverVariable)
  {
    int m = this.j;
    SolverVariable[] arrayOfSolverVariable = this.h;
    if (m + 1 > arrayOfSolverVariable.length)
    {
      arrayOfSolverVariable = (SolverVariable[])Arrays.copyOf(arrayOfSolverVariable, arrayOfSolverVariable.length * 2);
      this.h = arrayOfSolverVariable;
      this.i = ((SolverVariable[])Arrays.copyOf(arrayOfSolverVariable, arrayOfSolverVariable.length * 2));
    }
    arrayOfSolverVariable = this.h;
    m = this.j;
    arrayOfSolverVariable[m] = paramSolverVariable;
    m++;
    this.j = m;
    if ((m > 1) && (arrayOfSolverVariable[(m - 1)].c > paramSolverVariable.c))
    {
      int n = 0;
      int i1;
      for (m = 0;; m++)
      {
        i1 = this.j;
        if (m >= i1) {
          break;
        }
        this.i[m] = this.h[m];
      }
      Arrays.sort(this.i, 0, i1, new a());
      for (m = n; m < this.j; m++) {
        this.h[m] = this.i[m];
      }
    }
    paramSolverVariable.a = true;
    paramSolverVariable.b(this);
  }
  
  private final void G(SolverVariable paramSolverVariable)
  {
    for (int m = 0; m < this.j; m++) {
      if (this.h[m] == paramSolverVariable)
      {
        int n;
        for (;;)
        {
          n = this.j;
          if (m >= n - 1) {
            break;
          }
          SolverVariable[] arrayOfSolverVariable = this.h;
          n = m + 1;
          arrayOfSolverVariable[m] = arrayOfSolverVariable[n];
          m = n;
        }
        this.j = (n - 1);
        paramSolverVariable.a = false;
        return;
      }
    }
  }
  
  public void B(d paramd, b paramb, boolean paramBoolean)
  {
    paramd = paramb.a;
    if (paramd == null) {
      return;
    }
    b.a locala = paramb.e;
    int m = locala.a();
    for (int n = 0; n < m; n++)
    {
      SolverVariable localSolverVariable = locala.e(n);
      float f = locala.h(n);
      this.k.b(localSolverVariable);
      if (this.k.a(paramd, f)) {
        F(localSolverVariable);
      }
      this.b += paramb.b * f;
    }
    G(paramd);
  }
  
  public SolverVariable b(d paramd, boolean[] paramArrayOfBoolean)
  {
    int m = 0;
    int i1;
    for (int n = -1; m < this.j; n = i1)
    {
      paramd = this.h[m];
      if (paramArrayOfBoolean[paramd.c] != 0)
      {
        i1 = n;
      }
      else
      {
        this.k.b(paramd);
        if (n == -1)
        {
          i1 = n;
          if (!this.k.c()) {
            break label91;
          }
        }
        else
        {
          i1 = n;
          if (!this.k.d(this.h[n])) {
            break label91;
          }
        }
        i1 = m;
      }
      label91:
      m++;
    }
    if (n == -1) {
      return null;
    }
    return this.h[n];
  }
  
  public void c(SolverVariable paramSolverVariable)
  {
    this.k.b(paramSolverVariable);
    this.k.e();
    paramSolverVariable.i[paramSolverVariable.e] = 1.0F;
    F(paramSolverVariable);
  }
  
  public void clear()
  {
    this.j = 0;
    this.b = 0.0F;
  }
  
  public boolean isEmpty()
  {
    boolean bool;
    if (this.j == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public String toString()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("");
    ((StringBuilder)localObject1).append(" goal -> (");
    ((StringBuilder)localObject1).append(this.b);
    ((StringBuilder)localObject1).append(") : ");
    localObject1 = ((StringBuilder)localObject1).toString();
    for (int m = 0; m < this.j; m++)
    {
      Object localObject2 = this.h[m];
      this.k.b((SolverVariable)localObject2);
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append(this.k);
      ((StringBuilder)localObject2).append(" ");
      localObject1 = ((StringBuilder)localObject2).toString();
    }
    return localObject1;
  }
  
  class a
    implements Comparator<SolverVariable>
  {
    a() {}
    
    public int a(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2)
    {
      return paramSolverVariable1.c - paramSolverVariable2.c;
    }
  }
  
  class b
  {
    SolverVariable a;
    g b;
    
    public b(g paramg)
    {
      this.b = paramg;
    }
    
    public boolean a(SolverVariable paramSolverVariable, float paramFloat)
    {
      boolean bool = this.a.a;
      int i = 1;
      int j = 0;
      float f1;
      if (bool)
      {
        for (j = 0; j < 9; j++)
        {
          float[] arrayOfFloat = this.a.i;
          f1 = arrayOfFloat[j] + paramSolverVariable.i[j] * paramFloat;
          arrayOfFloat[j] = f1;
          if (Math.abs(f1) < 1.0E-004F) {
            this.a.i[j] = 0.0F;
          } else {
            i = 0;
          }
        }
        if (i != 0) {
          g.E(g.this, this.a);
        }
        return false;
      }
      while (j < 9)
      {
        f1 = paramSolverVariable.i[j];
        if (f1 != 0.0F)
        {
          float f2 = f1 * paramFloat;
          f1 = f2;
          if (Math.abs(f2) < 1.0E-004F) {
            f1 = 0.0F;
          }
          this.a.i[j] = f1;
        }
        else
        {
          this.a.i[j] = 0.0F;
        }
        j++;
      }
      return true;
    }
    
    public void b(SolverVariable paramSolverVariable)
    {
      this.a = paramSolverVariable;
    }
    
    public final boolean c()
    {
      for (int i = 8; i >= 0; i--)
      {
        float f = this.a.i[i];
        if (f > 0.0F) {
          return false;
        }
        if (f < 0.0F) {
          return true;
        }
      }
      return false;
    }
    
    public final boolean d(SolverVariable paramSolverVariable)
    {
      int i = 8;
      while (i >= 0)
      {
        float f1 = paramSolverVariable.i[i];
        float f2 = this.a.i[i];
        if (f2 == f1) {
          i--;
        } else if (f2 < f1) {
          return true;
        }
      }
      return false;
    }
    
    public void e()
    {
      Arrays.fill(this.a.i, 0.0F);
    }
    
    public String toString()
    {
      SolverVariable localSolverVariable = this.a;
      Object localObject1 = "[ ";
      Object localObject2 = localObject1;
      if (localSolverVariable != null) {
        for (int i = 0;; i++)
        {
          localObject2 = localObject1;
          if (i >= 9) {
            break;
          }
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append((String)localObject1);
          ((StringBuilder)localObject2).append(this.a.i[i]);
          ((StringBuilder)localObject2).append(" ");
          localObject1 = ((StringBuilder)localObject2).toString();
        }
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append((String)localObject2);
      ((StringBuilder)localObject1).append("] ");
      ((StringBuilder)localObject1).append(this.a);
      return ((StringBuilder)localObject1).toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.g
 * JD-Core Version:    0.7.0.1
 */