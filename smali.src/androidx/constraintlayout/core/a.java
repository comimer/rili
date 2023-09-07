package androidx.constraintlayout.core;

import java.util.Arrays;

public class a
  implements b.a
{
  private static float l = 0.001F;
  int a = 0;
  private final b b;
  protected final c c;
  private int d = 8;
  private SolverVariable e = null;
  private int[] f = new int[8];
  private int[] g = new int[8];
  private float[] h = new float[8];
  private int i = -1;
  private int j = -1;
  private boolean k = false;
  
  a(b paramb, c paramc)
  {
    this.b = paramb;
    this.c = paramc;
  }
  
  public int a()
  {
    return this.a;
  }
  
  public boolean b(SolverVariable paramSolverVariable)
  {
    int m = this.i;
    if (m == -1) {
      return false;
    }
    for (int n = 0; (m != -1) && (n < this.a); n++)
    {
      if (this.f[m] == paramSolverVariable.c) {
        return true;
      }
      m = this.g[m];
    }
    return false;
  }
  
  public float c(b paramb, boolean paramBoolean)
  {
    float f1 = j(paramb.a);
    i(paramb.a, paramBoolean);
    paramb = paramb.e;
    int m = paramb.a();
    for (int n = 0; n < m; n++)
    {
      SolverVariable localSolverVariable = paramb.e(n);
      f(localSolverVariable, paramb.j(localSolverVariable) * f1, paramBoolean);
    }
    return f1;
  }
  
  public final void clear()
  {
    int m = this.i;
    for (int n = 0; (m != -1) && (n < this.a); n++)
    {
      SolverVariable localSolverVariable = this.c.d[this.f[m]];
      if (localSolverVariable != null) {
        localSolverVariable.i(this.b);
      }
      m = this.g[m];
    }
    this.i = -1;
    this.j = -1;
    this.k = false;
    this.a = 0;
  }
  
  public final void d(SolverVariable paramSolverVariable, float paramFloat)
  {
    if (paramFloat == 0.0F)
    {
      i(paramSolverVariable, true);
      return;
    }
    int m = this.i;
    if (m == -1)
    {
      this.i = 0;
      this.h[0] = paramFloat;
      this.f[0] = paramSolverVariable.c;
      this.g[0] = -1;
      paramSolverVariable.m += 1;
      paramSolverVariable.b(this.b);
      this.a += 1;
      if (!this.k)
      {
        m = this.j + 1;
        this.j = m;
        paramSolverVariable = this.f;
        if (m >= paramSolverVariable.length)
        {
          this.k = true;
          this.j = (paramSolverVariable.length - 1);
        }
      }
      return;
    }
    int n = 0;
    int i1 = -1;
    int i2;
    while ((m != -1) && (n < this.a))
    {
      i2 = this.f[m];
      int i3 = paramSolverVariable.c;
      if (i2 == i3)
      {
        this.h[m] = paramFloat;
        return;
      }
      if (i2 < i3) {
        i1 = m;
      }
      m = this.g[m];
      n++;
    }
    m = this.j;
    if (this.k)
    {
      arrayOfInt = this.f;
      if (arrayOfInt[m] != -1) {
        m = arrayOfInt.length;
      }
    }
    else
    {
      m++;
    }
    int[] arrayOfInt = this.f;
    n = m;
    if (m >= arrayOfInt.length)
    {
      n = m;
      if (this.a < arrayOfInt.length) {
        for (i2 = 0;; i2++)
        {
          arrayOfInt = this.f;
          n = m;
          if (i2 >= arrayOfInt.length) {
            break;
          }
          if (arrayOfInt[i2] == -1)
          {
            n = i2;
            break;
          }
        }
      }
    }
    arrayOfInt = this.f;
    m = n;
    if (n >= arrayOfInt.length)
    {
      m = arrayOfInt.length;
      n = this.d * 2;
      this.d = n;
      this.k = false;
      this.j = (m - 1);
      this.h = Arrays.copyOf(this.h, n);
      this.f = Arrays.copyOf(this.f, this.d);
      this.g = Arrays.copyOf(this.g, this.d);
    }
    this.f[m] = paramSolverVariable.c;
    this.h[m] = paramFloat;
    if (i1 != -1)
    {
      arrayOfInt = this.g;
      arrayOfInt[m] = arrayOfInt[i1];
      arrayOfInt[i1] = m;
    }
    else
    {
      this.g[m] = this.i;
      this.i = m;
    }
    paramSolverVariable.m += 1;
    paramSolverVariable.b(this.b);
    m = this.a + 1;
    this.a = m;
    if (!this.k) {
      this.j += 1;
    }
    paramSolverVariable = this.f;
    if (m >= paramSolverVariable.length) {
      this.k = true;
    }
    if (this.j >= paramSolverVariable.length)
    {
      this.k = true;
      this.j = (paramSolverVariable.length - 1);
    }
  }
  
  public SolverVariable e(int paramInt)
  {
    int m = this.i;
    for (int n = 0; (m != -1) && (n < this.a); n++)
    {
      if (n == paramInt) {
        return this.c.d[this.f[m]];
      }
      m = this.g[m];
    }
    return null;
  }
  
  public void f(SolverVariable paramSolverVariable, float paramFloat, boolean paramBoolean)
  {
    float f1 = l;
    if ((paramFloat > -f1) && (paramFloat < f1)) {
      return;
    }
    int m = this.i;
    if (m == -1)
    {
      this.i = 0;
      this.h[0] = paramFloat;
      this.f[0] = paramSolverVariable.c;
      this.g[0] = -1;
      paramSolverVariable.m += 1;
      paramSolverVariable.b(this.b);
      this.a += 1;
      if (!this.k)
      {
        m = this.j + 1;
        this.j = m;
        paramSolverVariable = this.f;
        if (m >= paramSolverVariable.length)
        {
          this.k = true;
          this.j = (paramSolverVariable.length - 1);
        }
      }
      return;
    }
    int n = 0;
    int i1 = -1;
    int i2;
    while ((m != -1) && (n < this.a))
    {
      i2 = this.f[m];
      int i3 = paramSolverVariable.c;
      if (i2 == i3)
      {
        localObject = this.h;
        f1 = localObject[m] + paramFloat;
        float f2 = l;
        paramFloat = f1;
        if (f1 > -f2)
        {
          paramFloat = f1;
          if (f1 < f2) {
            paramFloat = 0.0F;
          }
        }
        localObject[m] = paramFloat;
        if (paramFloat == 0.0F)
        {
          if (m == this.i)
          {
            this.i = this.g[m];
          }
          else
          {
            localObject = this.g;
            localObject[i1] = localObject[m];
          }
          if (paramBoolean) {
            paramSolverVariable.i(this.b);
          }
          if (this.k) {
            this.j = m;
          }
          paramSolverVariable.m -= 1;
          this.a -= 1;
        }
        return;
      }
      if (i2 < i3) {
        i1 = m;
      }
      m = this.g[m];
      n++;
    }
    m = this.j;
    if (this.k)
    {
      localObject = this.f;
      if (localObject[m] != -1) {
        m = localObject.length;
      }
    }
    else
    {
      m++;
    }
    Object localObject = this.f;
    n = m;
    if (m >= localObject.length)
    {
      n = m;
      if (this.a < localObject.length) {
        for (i2 = 0;; i2++)
        {
          localObject = this.f;
          n = m;
          if (i2 >= localObject.length) {
            break;
          }
          if (localObject[i2] == -1)
          {
            n = i2;
            break;
          }
        }
      }
    }
    localObject = this.f;
    m = n;
    if (n >= localObject.length)
    {
      m = localObject.length;
      n = this.d * 2;
      this.d = n;
      this.k = false;
      this.j = (m - 1);
      this.h = Arrays.copyOf(this.h, n);
      this.f = Arrays.copyOf(this.f, this.d);
      this.g = Arrays.copyOf(this.g, this.d);
    }
    this.f[m] = paramSolverVariable.c;
    this.h[m] = paramFloat;
    if (i1 != -1)
    {
      localObject = this.g;
      localObject[m] = localObject[i1];
      localObject[i1] = m;
    }
    else
    {
      this.g[m] = this.i;
      this.i = m;
    }
    paramSolverVariable.m += 1;
    paramSolverVariable.b(this.b);
    this.a += 1;
    if (!this.k) {
      this.j += 1;
    }
    m = this.j;
    paramSolverVariable = this.f;
    if (m >= paramSolverVariable.length)
    {
      this.k = true;
      this.j = (paramSolverVariable.length - 1);
    }
  }
  
  public void g()
  {
    int m = this.i;
    for (int n = 0; (m != -1) && (n < this.a); n++)
    {
      float[] arrayOfFloat = this.h;
      arrayOfFloat[m] *= -1.0F;
      m = this.g[m];
    }
  }
  
  public float h(int paramInt)
  {
    int m = this.i;
    for (int n = 0; (m != -1) && (n < this.a); n++)
    {
      if (n == paramInt) {
        return this.h[m];
      }
      m = this.g[m];
    }
    return 0.0F;
  }
  
  public final float i(SolverVariable paramSolverVariable, boolean paramBoolean)
  {
    if (this.e == paramSolverVariable) {
      this.e = null;
    }
    int m = this.i;
    if (m == -1) {
      return 0.0F;
    }
    int n = 0;
    int i1 = -1;
    while ((m != -1) && (n < this.a))
    {
      if (this.f[m] == paramSolverVariable.c)
      {
        if (m == this.i)
        {
          this.i = this.g[m];
        }
        else
        {
          int[] arrayOfInt = this.g;
          arrayOfInt[i1] = arrayOfInt[m];
        }
        if (paramBoolean) {
          paramSolverVariable.i(this.b);
        }
        paramSolverVariable.m -= 1;
        this.a -= 1;
        this.f[m] = -1;
        if (this.k) {
          this.j = m;
        }
        return this.h[m];
      }
      int i2 = this.g[m];
      n++;
      i1 = m;
      m = i2;
    }
    return 0.0F;
  }
  
  public final float j(SolverVariable paramSolverVariable)
  {
    int m = this.i;
    for (int n = 0; (m != -1) && (n < this.a); n++)
    {
      if (this.f[m] == paramSolverVariable.c) {
        return this.h[m];
      }
      m = this.g[m];
    }
    return 0.0F;
  }
  
  public void k(float paramFloat)
  {
    int m = this.i;
    for (int n = 0; (m != -1) && (n < this.a); n++)
    {
      float[] arrayOfFloat = this.h;
      arrayOfFloat[m] /= paramFloat;
      m = this.g[m];
    }
  }
  
  public String toString()
  {
    int m = this.i;
    Object localObject1 = "";
    for (int n = 0; (m != -1) && (n < this.a); n++)
    {
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append(" -> ");
      localObject2 = ((StringBuilder)localObject2).toString();
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append((String)localObject2);
      ((StringBuilder)localObject1).append(this.h[m]);
      ((StringBuilder)localObject1).append(" : ");
      localObject1 = ((StringBuilder)localObject1).toString();
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append(this.c.d[this.f[m]]);
      localObject1 = ((StringBuilder)localObject2).toString();
      m = this.g[m];
    }
    return localObject1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.a
 * JD-Core Version:    0.7.0.1
 */