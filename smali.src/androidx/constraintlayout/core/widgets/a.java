package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.d;
import q.b;

public class a
  extends b
{
  private int N0 = 0;
  private boolean O0 = true;
  private int P0 = 0;
  boolean Q0 = false;
  
  public void A1(int paramInt)
  {
    this.N0 = paramInt;
  }
  
  public void B1(int paramInt)
  {
    this.P0 = paramInt;
  }
  
  public void g(d paramd, boolean paramBoolean)
  {
    Object localObject1 = this.W;
    localObject1[0] = this.O;
    localObject1[2] = this.P;
    localObject1[1] = this.Q;
    localObject1[3] = this.R;
    for (int i = 0;; i++)
    {
      localObject1 = this.W;
      if (i >= localObject1.length) {
        break;
      }
      localObject1 = localObject1[i];
      ((ConstraintAnchor)localObject1).i = paramd.q(localObject1);
    }
    i = this.N0;
    if ((i >= 0) && (i < 4))
    {
      localObject1 = localObject1[i];
      if (!this.Q0) {
        t1();
      }
      if (this.Q0)
      {
        this.Q0 = false;
        i = this.N0;
        if ((i != 0) && (i != 1))
        {
          if ((i == 2) || (i == 3))
          {
            paramd.f(this.P.i, this.g0);
            paramd.f(this.R.i, this.g0);
          }
        }
        else
        {
          paramd.f(this.O.i, this.f0);
          paramd.f(this.Q.i, this.f0);
        }
        return;
      }
      Object localObject2;
      for (i = 0; i < this.M0; i++)
      {
        localObject2 = this.L0[i];
        if ((this.O0) || (((ConstraintWidget)localObject2).h()))
        {
          j = this.N0;
          if (((j == 0) || (j == 1)) && (((ConstraintWidget)localObject2).A() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (((ConstraintWidget)localObject2).O.f != null) && (((ConstraintWidget)localObject2).Q.f != null)) {}
          do
          {
            paramBoolean = true;
            break;
            j = this.N0;
          } while (((j == 2) || (j == 3)) && (((ConstraintWidget)localObject2).T() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (((ConstraintWidget)localObject2).P.f != null) && (((ConstraintWidget)localObject2).R.f != null));
        }
      }
      paramBoolean = false;
      if ((!this.O.l()) && (!this.Q.l())) {
        i = 0;
      } else {
        i = 1;
      }
      if ((!this.P.l()) && (!this.R.l())) {
        j = 0;
      } else {
        j = 1;
      }
      int k;
      if (!paramBoolean)
      {
        k = this.N0;
        if (((k == 0) && (i != 0)) || ((k == 2) && (j != 0)) || ((k == 1) && (i != 0)) || ((k == 3) && (j != 0)))
        {
          j = 1;
          break label492;
        }
      }
      int j = 0;
      label492:
      i = 5;
      if (j == 0) {
        i = 4;
      }
      for (j = 0; j < this.M0; j++)
      {
        Object localObject3 = this.L0[j];
        if ((this.O0) || (((ConstraintWidget)localObject3).h()))
        {
          localObject2 = paramd.q(localObject3.W[this.N0]);
          localObject3 = ((ConstraintWidget)localObject3).W;
          int m = this.N0;
          localObject3 = localObject3[m];
          ((ConstraintAnchor)localObject3).i = ((SolverVariable)localObject2);
          ConstraintAnchor localConstraintAnchor = ((ConstraintAnchor)localObject3).f;
          if ((localConstraintAnchor != null) && (localConstraintAnchor.d == this)) {
            k = ((ConstraintAnchor)localObject3).g + 0;
          } else {
            k = 0;
          }
          if ((m != 0) && (m != 2)) {
            paramd.g(((ConstraintAnchor)localObject1).i, (SolverVariable)localObject2, this.P0 + k, paramBoolean);
          } else {
            paramd.i(((ConstraintAnchor)localObject1).i, (SolverVariable)localObject2, this.P0 - k, paramBoolean);
          }
          paramd.e(((ConstraintAnchor)localObject1).i, (SolverVariable)localObject2, this.P0 + k, i);
        }
      }
      i = this.N0;
      if (i == 0)
      {
        paramd.e(this.Q.i, this.O.i, 0, 8);
        paramd.e(this.O.i, this.a0.Q.i, 0, 4);
        paramd.e(this.O.i, this.a0.O.i, 0, 0);
      }
      else if (i == 1)
      {
        paramd.e(this.O.i, this.Q.i, 0, 8);
        paramd.e(this.O.i, this.a0.O.i, 0, 4);
        paramd.e(this.O.i, this.a0.Q.i, 0, 0);
      }
      else if (i == 2)
      {
        paramd.e(this.R.i, this.P.i, 0, 8);
        paramd.e(this.P.i, this.a0.R.i, 0, 4);
        paramd.e(this.P.i, this.a0.P.i, 0, 0);
      }
      else if (i == 3)
      {
        paramd.e(this.P.i, this.R.i, 0, 8);
        paramd.e(this.P.i, this.a0.P.i, 0, 4);
        paramd.e(this.P.i, this.a0.R.i, 0, 0);
      }
    }
  }
  
  public boolean h()
  {
    return true;
  }
  
  public boolean n0()
  {
    return this.Q0;
  }
  
  public boolean o0()
  {
    return this.Q0;
  }
  
  public boolean t1()
  {
    int i = 0;
    int j = 0;
    int m;
    ConstraintWidget localConstraintWidget;
    int n;
    for (int k = 1;; k = m)
    {
      m = this.M0;
      if (j >= m) {
        break;
      }
      localConstraintWidget = this.L0[j];
      if ((!this.O0) && (!localConstraintWidget.h()))
      {
        m = k;
      }
      else
      {
        m = this.N0;
        if (((m == 0) || (m == 1)) && (!localConstraintWidget.n0())) {}
        do
        {
          m = 0;
          break;
          n = this.N0;
          if (n != 2)
          {
            m = k;
            if (n != 3) {
              break;
            }
          }
          m = k;
        } while (!localConstraintWidget.o0());
      }
      j++;
    }
    if ((k != 0) && (m > 0))
    {
      j = 0;
      n = j;
      while (i < this.M0)
      {
        localConstraintWidget = this.L0[i];
        if ((this.O0) || (localConstraintWidget.h()))
        {
          m = j;
          k = n;
          if (n == 0)
          {
            k = this.N0;
            if (k == 0) {
              j = localConstraintWidget.o(ConstraintAnchor.Type.LEFT).e();
            } else if (k == 1) {
              j = localConstraintWidget.o(ConstraintAnchor.Type.RIGHT).e();
            } else if (k == 2) {
              j = localConstraintWidget.o(ConstraintAnchor.Type.TOP).e();
            } else if (k == 3) {
              j = localConstraintWidget.o(ConstraintAnchor.Type.BOTTOM).e();
            }
            k = 1;
            m = j;
          }
          int i1 = this.N0;
          if (i1 == 0)
          {
            j = Math.min(m, localConstraintWidget.o(ConstraintAnchor.Type.LEFT).e());
            n = k;
          }
          else if (i1 == 1)
          {
            j = Math.max(m, localConstraintWidget.o(ConstraintAnchor.Type.RIGHT).e());
            n = k;
          }
          else if (i1 == 2)
          {
            j = Math.min(m, localConstraintWidget.o(ConstraintAnchor.Type.TOP).e());
            n = k;
          }
          else
          {
            j = m;
            n = k;
            if (i1 == 3)
            {
              j = Math.max(m, localConstraintWidget.o(ConstraintAnchor.Type.BOTTOM).e());
              n = k;
            }
          }
        }
        i++;
      }
      j += this.P0;
      k = this.N0;
      if ((k != 0) && (k != 1)) {
        I0(j, j);
      } else {
        F0(j, j);
      }
      this.Q0 = true;
      return true;
    }
    return false;
  }
  
  public String toString()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("[Barrier] ");
    ((StringBuilder)localObject1).append(t());
    ((StringBuilder)localObject1).append(" {");
    localObject1 = ((StringBuilder)localObject1).toString();
    for (int i = 0; i < this.M0; i++)
    {
      ConstraintWidget localConstraintWidget = this.L0[i];
      localObject2 = localObject1;
      if (i > 0)
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append((String)localObject1);
        ((StringBuilder)localObject2).append(", ");
        localObject2 = ((StringBuilder)localObject2).toString();
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append((String)localObject2);
      ((StringBuilder)localObject1).append(localConstraintWidget.t());
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject1);
    ((StringBuilder)localObject2).append("}");
    return ((StringBuilder)localObject2).toString();
  }
  
  public boolean u1()
  {
    return this.O0;
  }
  
  public int v1()
  {
    return this.N0;
  }
  
  public int w1()
  {
    return this.P0;
  }
  
  public int x1()
  {
    int i = this.N0;
    if ((i != 0) && (i != 1))
    {
      if ((i != 2) && (i != 3)) {
        return -1;
      }
      return 1;
    }
    return 0;
  }
  
  protected void y1()
  {
    for (int i = 0; i < this.M0; i++)
    {
      ConstraintWidget localConstraintWidget = this.L0[i];
      if ((this.O0) || (localConstraintWidget.h()))
      {
        int j = this.N0;
        if ((j != 0) && (j != 1))
        {
          if ((j == 2) || (j == 3)) {
            localConstraintWidget.S0(1, true);
          }
        }
        else {
          localConstraintWidget.S0(0, true);
        }
      }
    }
  }
  
  public void z1(boolean paramBoolean)
  {
    this.O0 = paramBoolean;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.a
 * JD-Core Version:    0.7.0.1
 */