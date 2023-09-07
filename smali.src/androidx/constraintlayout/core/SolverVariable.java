package androidx.constraintlayout.core;

import java.util.Arrays;
import java.util.HashSet;

public class SolverVariable
  implements Comparable<SolverVariable>
{
  private static int r = 1;
  public boolean a;
  private String b;
  public int c = -1;
  int d = -1;
  public int e = 0;
  public float f;
  public boolean g = false;
  float[] h = new float[9];
  float[] i = new float[9];
  Type j;
  b[] k = new b[16];
  int l = 0;
  public int m = 0;
  boolean n = false;
  int o = -1;
  float p = 0.0F;
  HashSet<b> q = null;
  
  public SolverVariable(Type paramType, String paramString)
  {
    this.j = paramType;
  }
  
  static void h()
  {
    r += 1;
  }
  
  public final void b(b paramb)
  {
    int i2;
    for (int i1 = 0;; i1++)
    {
      i2 = this.l;
      if (i1 >= i2) {
        break;
      }
      if (this.k[i1] == paramb) {
        return;
      }
    }
    b[] arrayOfb = this.k;
    if (i2 >= arrayOfb.length) {
      this.k = ((b[])Arrays.copyOf(arrayOfb, arrayOfb.length * 2));
    }
    arrayOfb = this.k;
    i1 = this.l;
    arrayOfb[i1] = paramb;
    this.l = (i1 + 1);
  }
  
  public int c(SolverVariable paramSolverVariable)
  {
    return this.c - paramSolverVariable.c;
  }
  
  public final void i(b paramb)
  {
    int i1 = this.l;
    for (int i2 = 0; i2 < i1; i2++) {
      if (this.k[i2] == paramb)
      {
        while (i2 < i1 - 1)
        {
          paramb = this.k;
          int i3 = i2 + 1;
          paramb[i2] = paramb[i3];
          i2 = i3;
        }
        this.l -= 1;
        return;
      }
    }
  }
  
  public void j()
  {
    this.b = null;
    this.j = Type.UNKNOWN;
    this.e = 0;
    this.c = -1;
    this.d = -1;
    this.f = 0.0F;
    this.g = false;
    this.n = false;
    this.o = -1;
    this.p = 0.0F;
    int i1 = this.l;
    for (int i2 = 0; i2 < i1; i2++) {
      this.k[i2] = null;
    }
    this.l = 0;
    this.m = 0;
    this.a = false;
    Arrays.fill(this.i, 0.0F);
  }
  
  public void k(d paramd, float paramFloat)
  {
    this.f = paramFloat;
    this.g = true;
    this.n = false;
    this.o = -1;
    this.p = 0.0F;
    int i1 = this.l;
    this.d = -1;
    for (int i2 = 0; i2 < i1; i2++) {
      this.k[i2].A(paramd, this, false);
    }
    this.l = 0;
  }
  
  public void l(Type paramType, String paramString)
  {
    this.j = paramType;
  }
  
  public final void m(d paramd, b paramb)
  {
    int i1 = this.l;
    for (int i2 = 0; i2 < i1; i2++) {
      this.k[i2].B(paramd, paramb, false);
    }
    this.l = 0;
  }
  
  public String toString()
  {
    Object localObject;
    if (this.b != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("");
      ((StringBuilder)localObject).append(this.b);
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("");
      ((StringBuilder)localObject).append(this.c);
      localObject = ((StringBuilder)localObject).toString();
    }
    return localObject;
  }
  
  public static enum Type
  {
    static
    {
      Type localType1 = new Type("UNRESTRICTED", 0);
      UNRESTRICTED = localType1;
      Type localType2 = new Type("CONSTANT", 1);
      CONSTANT = localType2;
      Type localType3 = new Type("SLACK", 2);
      SLACK = localType3;
      Type localType4 = new Type("ERROR", 3);
      ERROR = localType4;
      Type localType5 = new Type("UNKNOWN", 4);
      UNKNOWN = localType5;
      $VALUES = new Type[] { localType1, localType2, localType3, localType4, localType5 };
    }
    
    private Type() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.SolverVariable
 * JD-Core Version:    0.7.0.1
 */