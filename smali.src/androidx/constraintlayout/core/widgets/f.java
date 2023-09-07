package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;

public class f
  extends ConstraintWidget
{
  protected float L0 = -1.0F;
  protected int M0 = -1;
  protected int N0 = -1;
  protected boolean O0 = true;
  private ConstraintAnchor P0 = this.P;
  private int Q0;
  private int R0;
  private boolean S0;
  
  public f()
  {
    int i = 0;
    this.Q0 = 0;
    this.R0 = 0;
    this.X.clear();
    this.X.add(this.P0);
    int j = this.W.length;
    while (i < j)
    {
      this.W[i] = this.P0;
      i++;
    }
  }
  
  public void A1(int paramInt)
  {
    if (this.Q0 == paramInt) {
      return;
    }
    this.Q0 = paramInt;
    this.X.clear();
    if (this.Q0 == 1) {
      this.P0 = this.O;
    } else {
      this.P0 = this.P;
    }
    this.X.add(this.P0);
    int i = this.W.length;
    for (paramInt = 0; paramInt < i; paramInt++) {
      this.W[paramInt] = this.P0;
    }
  }
  
  public void g(androidx.constraintlayout.core.d paramd, boolean paramBoolean)
  {
    Object localObject1 = (d)K();
    if (localObject1 == null) {
      return;
    }
    ConstraintAnchor localConstraintAnchor = ((ConstraintWidget)localObject1).o(ConstraintAnchor.Type.LEFT);
    Object localObject2 = ((ConstraintWidget)localObject1).o(ConstraintAnchor.Type.RIGHT);
    ConstraintWidget localConstraintWidget = this.a0;
    int i = 1;
    int j;
    if ((localConstraintWidget != null) && (localConstraintWidget.Z[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
      j = 1;
    } else {
      j = 0;
    }
    if (this.Q0 == 0)
    {
      localConstraintAnchor = ((ConstraintWidget)localObject1).o(ConstraintAnchor.Type.TOP);
      localObject2 = ((ConstraintWidget)localObject1).o(ConstraintAnchor.Type.BOTTOM);
      localObject1 = this.a0;
      if ((localObject1 != null) && (localObject1.Z[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
        j = i;
      } else {
        j = 0;
      }
    }
    if ((this.S0) && (this.P0.n()))
    {
      localObject1 = paramd.q(this.P0);
      paramd.f((SolverVariable)localObject1, this.P0.e());
      if (this.M0 != -1)
      {
        if (j != 0) {
          paramd.h(paramd.q(localObject2), (SolverVariable)localObject1, 0, 5);
        }
      }
      else if ((this.N0 != -1) && (j != 0))
      {
        localObject2 = paramd.q(localObject2);
        paramd.h((SolverVariable)localObject1, paramd.q(localConstraintAnchor), 0, 5);
        paramd.h((SolverVariable)localObject2, (SolverVariable)localObject1, 0, 5);
      }
      this.S0 = false;
      return;
    }
    if (this.M0 != -1)
    {
      localObject1 = paramd.q(this.P0);
      paramd.e((SolverVariable)localObject1, paramd.q(localConstraintAnchor), this.M0, 8);
      if (j != 0) {
        paramd.h(paramd.q(localObject2), (SolverVariable)localObject1, 0, 5);
      }
    }
    else if (this.N0 != -1)
    {
      localObject1 = paramd.q(this.P0);
      localObject2 = paramd.q(localObject2);
      paramd.e((SolverVariable)localObject1, (SolverVariable)localObject2, -this.N0, 8);
      if (j != 0)
      {
        paramd.h((SolverVariable)localObject1, paramd.q(localConstraintAnchor), 0, 5);
        paramd.h((SolverVariable)localObject2, (SolverVariable)localObject1, 0, 5);
      }
    }
    else if (this.L0 != -1.0F)
    {
      paramd.d(androidx.constraintlayout.core.d.s(paramd, paramd.q(this.P0), paramd.q(localObject2), this.L0));
    }
  }
  
  public boolean h()
  {
    return true;
  }
  
  public boolean n0()
  {
    return this.S0;
  }
  
  public ConstraintAnchor o(ConstraintAnchor.Type paramType)
  {
    int i = a.a[paramType.ordinal()];
    if ((i != 1) && (i != 2))
    {
      if (((i == 3) || (i == 4)) && (this.Q0 == 0)) {
        return this.P0;
      }
    }
    else if (this.Q0 == 1) {
      return this.P0;
    }
    return null;
  }
  
  public boolean o0()
  {
    return this.S0;
  }
  
  public void q1(androidx.constraintlayout.core.d paramd, boolean paramBoolean)
  {
    if (K() == null) {
      return;
    }
    int i = paramd.x(this.P0);
    if (this.Q0 == 1)
    {
      m1(i);
      n1(0);
      L0(K().x());
      k1(0);
    }
    else
    {
      m1(0);
      n1(i);
      k1(K().W());
      L0(0);
    }
  }
  
  public ConstraintAnchor r1()
  {
    return this.P0;
  }
  
  public int s1()
  {
    return this.Q0;
  }
  
  public int t1()
  {
    return this.M0;
  }
  
  public int u1()
  {
    return this.N0;
  }
  
  public float v1()
  {
    return this.L0;
  }
  
  public void w1(int paramInt)
  {
    this.P0.t(paramInt);
    this.S0 = true;
  }
  
  public void x1(int paramInt)
  {
    if (paramInt > -1)
    {
      this.L0 = -1.0F;
      this.M0 = paramInt;
      this.N0 = -1;
    }
  }
  
  public void y1(int paramInt)
  {
    if (paramInt > -1)
    {
      this.L0 = -1.0F;
      this.M0 = -1;
      this.N0 = paramInt;
    }
  }
  
  public void z1(float paramFloat)
  {
    if (paramFloat > -1.0F)
    {
      this.L0 = paramFloat;
      this.M0 = -1;
      this.N0 = -1;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.f
 * JD-Core Version:    0.7.0.1
 */