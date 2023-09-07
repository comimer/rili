package androidx.constraintlayout.core;

import java.util.Arrays;

public class h
  implements b.a
{
  private static float n = 0.001F;
  private final int a = -1;
  private int b = 16;
  private int c = 16;
  int[] d = new int[16];
  int[] e = new int[16];
  int[] f = new int[16];
  float[] g = new float[16];
  int[] h = new int[16];
  int[] i = new int[16];
  int j = 0;
  int k = -1;
  private final b l;
  protected final c m;
  
  h(b paramb, c paramc)
  {
    this.l = paramb;
    this.m = paramc;
    clear();
  }
  
  private void l(SolverVariable paramSolverVariable, int paramInt)
  {
    int i1 = paramSolverVariable.c % this.c;
    paramSolverVariable = this.d;
    int i2 = paramSolverVariable[i1];
    int i3 = i2;
    if (i2 == -1)
    {
      paramSolverVariable[i1] = paramInt;
    }
    else
    {
      for (;;)
      {
        paramSolverVariable = this.e;
        i2 = paramSolverVariable[i3];
        if (i2 == -1) {
          break;
        }
        i3 = i2;
      }
      paramSolverVariable[i3] = paramInt;
    }
    this.e[paramInt] = -1;
  }
  
  private void m(int paramInt, SolverVariable paramSolverVariable, float paramFloat)
  {
    this.f[paramInt] = paramSolverVariable.c;
    this.g[paramInt] = paramFloat;
    this.h[paramInt] = -1;
    this.i[paramInt] = -1;
    paramSolverVariable.b(this.l);
    paramSolverVariable.m += 1;
    this.j += 1;
  }
  
  private int n()
  {
    for (int i1 = 0; i1 < this.b; i1++) {
      if (this.f[i1] == -1) {
        return i1;
      }
    }
    return -1;
  }
  
  private void o()
  {
    int i1 = this.b * 2;
    this.f = Arrays.copyOf(this.f, i1);
    this.g = Arrays.copyOf(this.g, i1);
    this.h = Arrays.copyOf(this.h, i1);
    this.i = Arrays.copyOf(this.i, i1);
    this.e = Arrays.copyOf(this.e, i1);
    for (int i2 = this.b; i2 < i1; i2++)
    {
      this.f[i2] = -1;
      this.e[i2] = -1;
    }
    this.b = i1;
  }
  
  private void q(int paramInt, SolverVariable paramSolverVariable, float paramFloat)
  {
    int i1 = n();
    m(i1, paramSolverVariable, paramFloat);
    if (paramInt != -1)
    {
      this.h[i1] = paramInt;
      int[] arrayOfInt = this.i;
      arrayOfInt[i1] = arrayOfInt[paramInt];
      arrayOfInt[paramInt] = i1;
    }
    else
    {
      this.h[i1] = -1;
      if (this.j > 0)
      {
        this.i[i1] = this.k;
        this.k = i1;
      }
      else
      {
        this.i[i1] = -1;
      }
    }
    paramInt = this.i[i1];
    if (paramInt != -1) {
      this.h[paramInt] = i1;
    }
    l(paramSolverVariable, i1);
  }
  
  private void r(SolverVariable paramSolverVariable)
  {
    int i1 = paramSolverVariable.c;
    int i2 = i1 % this.c;
    paramSolverVariable = this.d;
    int i3 = paramSolverVariable[i2];
    if (i3 == -1) {
      return;
    }
    int i4 = i3;
    if (this.f[i3] == i1)
    {
      int[] arrayOfInt = this.e;
      paramSolverVariable[i2] = arrayOfInt[i3];
      arrayOfInt[i3] = -1;
    }
    else
    {
      for (;;)
      {
        paramSolverVariable = this.e;
        i3 = paramSolverVariable[i4];
        if ((i3 == -1) || (this.f[i3] == i1)) {
          break;
        }
        i4 = i3;
      }
      if ((i3 != -1) && (this.f[i3] == i1))
      {
        paramSolverVariable[i4] = paramSolverVariable[i3];
        paramSolverVariable[i3] = -1;
      }
    }
  }
  
  public int a()
  {
    return this.j;
  }
  
  public boolean b(SolverVariable paramSolverVariable)
  {
    boolean bool;
    if (p(paramSolverVariable) != -1) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public float c(b paramb, boolean paramBoolean)
  {
    float f1 = j(paramb.a);
    i(paramb.a, paramBoolean);
    paramb = (h)paramb.e;
    int i1 = paramb.a();
    int i2 = 0;
    int i3 = 0;
    while (i2 < i1)
    {
      int i4 = paramb.f[i3];
      int i5 = i2;
      if (i4 != -1)
      {
        float f2 = paramb.g[i3];
        f(this.m.d[i4], f2 * f1, paramBoolean);
        i5 = i2 + 1;
      }
      i3++;
      i2 = i5;
    }
    return f1;
  }
  
  public void clear()
  {
    int i1 = this.j;
    for (int i2 = 0; i2 < i1; i2++)
    {
      SolverVariable localSolverVariable = e(i2);
      if (localSolverVariable != null) {
        localSolverVariable.i(this.l);
      }
    }
    for (i2 = 0; i2 < this.b; i2++)
    {
      this.f[i2] = -1;
      this.e[i2] = -1;
    }
    for (i2 = 0; i2 < this.c; i2++) {
      this.d[i2] = -1;
    }
    this.j = 0;
    this.k = -1;
  }
  
  public void d(SolverVariable paramSolverVariable, float paramFloat)
  {
    float f1 = n;
    if ((paramFloat > -f1) && (paramFloat < f1))
    {
      i(paramSolverVariable, true);
      return;
    }
    int i1 = this.j;
    int i2 = 0;
    if (i1 == 0)
    {
      m(0, paramSolverVariable, paramFloat);
      l(paramSolverVariable, 0);
      this.k = 0;
    }
    else
    {
      i1 = p(paramSolverVariable);
      if (i1 != -1)
      {
        this.g[i1] = paramFloat;
      }
      else
      {
        if (this.j + 1 >= this.b) {
          o();
        }
        int i3 = this.j;
        i1 = this.k;
        int i4 = -1;
        int i5;
        for (;;)
        {
          i5 = i4;
          if (i2 >= i3) {
            break;
          }
          int i6 = this.f[i1];
          i5 = paramSolverVariable.c;
          if (i6 == i5)
          {
            this.g[i1] = paramFloat;
            return;
          }
          if (i6 < i5) {
            i4 = i1;
          }
          i1 = this.i[i1];
          if (i1 == -1)
          {
            i5 = i4;
            break;
          }
          i2++;
        }
        q(i5, paramSolverVariable, paramFloat);
      }
    }
  }
  
  public SolverVariable e(int paramInt)
  {
    int i1 = this.j;
    if (i1 == 0) {
      return null;
    }
    int i2 = this.k;
    for (int i3 = 0; i3 < i1; i3++)
    {
      if ((i3 == paramInt) && (i2 != -1)) {
        return this.m.d[this.f[i2]];
      }
      i2 = this.i[i2];
      if (i2 == -1) {
        break;
      }
    }
    return null;
  }
  
  public void f(SolverVariable paramSolverVariable, float paramFloat, boolean paramBoolean)
  {
    float f1 = n;
    if ((paramFloat > -f1) && (paramFloat < f1)) {
      return;
    }
    int i1 = p(paramSolverVariable);
    if (i1 == -1)
    {
      d(paramSolverVariable, paramFloat);
    }
    else
    {
      float[] arrayOfFloat = this.g;
      paramFloat = arrayOfFloat[i1] + paramFloat;
      arrayOfFloat[i1] = paramFloat;
      f1 = n;
      if ((paramFloat > -f1) && (paramFloat < f1))
      {
        arrayOfFloat[i1] = 0.0F;
        i(paramSolverVariable, paramBoolean);
      }
    }
  }
  
  public void g()
  {
    int i1 = this.j;
    int i2 = this.k;
    for (int i3 = 0; i3 < i1; i3++)
    {
      float[] arrayOfFloat = this.g;
      arrayOfFloat[i2] *= -1.0F;
      i2 = this.i[i2];
      if (i2 == -1) {
        break;
      }
    }
  }
  
  public float h(int paramInt)
  {
    int i1 = this.j;
    int i2 = this.k;
    for (int i3 = 0; i3 < i1; i3++)
    {
      if (i3 == paramInt) {
        return this.g[i2];
      }
      i2 = this.i[i2];
      if (i2 == -1) {
        break;
      }
    }
    return 0.0F;
  }
  
  public float i(SolverVariable paramSolverVariable, boolean paramBoolean)
  {
    int i1 = p(paramSolverVariable);
    if (i1 == -1) {
      return 0.0F;
    }
    r(paramSolverVariable);
    float f1 = this.g[i1];
    if (this.k == i1) {
      this.k = this.i[i1];
    }
    this.f[i1] = -1;
    int[] arrayOfInt1 = this.h;
    int i2 = arrayOfInt1[i1];
    if (i2 != -1)
    {
      int[] arrayOfInt2 = this.i;
      arrayOfInt2[i2] = arrayOfInt2[i1];
    }
    i2 = this.i[i1];
    if (i2 != -1) {
      arrayOfInt1[i2] = arrayOfInt1[i1];
    }
    this.j -= 1;
    paramSolverVariable.m -= 1;
    if (paramBoolean) {
      paramSolverVariable.i(this.l);
    }
    return f1;
  }
  
  public float j(SolverVariable paramSolverVariable)
  {
    int i1 = p(paramSolverVariable);
    if (i1 != -1) {
      return this.g[i1];
    }
    return 0.0F;
  }
  
  public void k(float paramFloat)
  {
    int i1 = this.j;
    int i2 = this.k;
    for (int i3 = 0; i3 < i1; i3++)
    {
      float[] arrayOfFloat = this.g;
      arrayOfFloat[i2] /= paramFloat;
      i2 = this.i[i2];
      if (i2 == -1) {
        break;
      }
    }
  }
  
  public int p(SolverVariable paramSolverVariable)
  {
    if ((this.j != 0) && (paramSolverVariable != null))
    {
      int i1 = paramSolverVariable.c;
      int i2 = this.c;
      int i3 = this.d[(i1 % i2)];
      if (i3 == -1) {
        return -1;
      }
      i2 = i3;
      if (this.f[i3] == i1) {
        return i3;
      }
      do
      {
        i2 = this.e[i2];
      } while ((i2 != -1) && (this.f[i2] != i1));
      if (i2 == -1) {
        return -1;
      }
      if (this.f[i2] == i1) {
        return i2;
      }
    }
    return -1;
  }
  
  public String toString()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(hashCode());
    ((StringBuilder)localObject1).append(" { ");
    localObject1 = ((StringBuilder)localObject1).toString();
    int i1 = this.j;
    for (int i2 = 0; i2 < i1; i2++)
    {
      localObject2 = e(i2);
      if (localObject2 != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append((String)localObject1);
        localStringBuilder.append(localObject2);
        localStringBuilder.append(" = ");
        localStringBuilder.append(h(i2));
        localStringBuilder.append(" ");
        localObject1 = localStringBuilder.toString();
        int i3 = p((SolverVariable)localObject2);
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append((String)localObject1);
        ((StringBuilder)localObject2).append("[p: ");
        localObject1 = ((StringBuilder)localObject2).toString();
        if (this.h[i3] != -1)
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append((String)localObject1);
          ((StringBuilder)localObject2).append(this.m.d[this.f[this.h[i3]]]);
          localObject1 = ((StringBuilder)localObject2).toString();
        }
        else
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append((String)localObject1);
          ((StringBuilder)localObject2).append("none");
          localObject1 = ((StringBuilder)localObject2).toString();
        }
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append((String)localObject1);
        ((StringBuilder)localObject2).append(", n: ");
        localObject1 = ((StringBuilder)localObject2).toString();
        if (this.i[i3] != -1)
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append((String)localObject1);
          ((StringBuilder)localObject2).append(this.m.d[this.f[this.i[i3]]]);
          localObject1 = ((StringBuilder)localObject2).toString();
        }
        else
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append((String)localObject1);
          ((StringBuilder)localObject2).append("none");
          localObject1 = ((StringBuilder)localObject2).toString();
        }
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append((String)localObject1);
        ((StringBuilder)localObject2).append("]");
        localObject1 = ((StringBuilder)localObject2).toString();
      }
    }
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject1);
    ((StringBuilder)localObject2).append(" }");
    return ((StringBuilder)localObject2).toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.h
 * JD-Core Version:    0.7.0.1
 */