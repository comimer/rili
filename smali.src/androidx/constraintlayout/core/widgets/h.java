package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.analyzer.b.a;
import androidx.constraintlayout.core.widgets.analyzer.b.b;
import java.util.HashSet;
import q.b;

public class h
  extends b
{
  private int N0 = 0;
  private int O0 = 0;
  private int P0 = 0;
  private int Q0 = 0;
  private int R0 = 0;
  private int S0 = 0;
  private int T0 = 0;
  private int U0 = 0;
  private boolean V0 = false;
  private int W0 = 0;
  private int X0 = 0;
  protected b.a Y0 = new b.a();
  b.b Z0 = null;
  
  public int A1()
  {
    return this.U0;
  }
  
  public int B1()
  {
    return this.N0;
  }
  
  public void C1(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  protected void D1(ConstraintWidget paramConstraintWidget, ConstraintWidget.DimensionBehaviour paramDimensionBehaviour1, int paramInt1, ConstraintWidget.DimensionBehaviour paramDimensionBehaviour2, int paramInt2)
  {
    while ((this.Z0 == null) && (K() != null)) {
      this.Z0 = ((d)K()).I1();
    }
    b.a locala = this.Y0;
    locala.a = paramDimensionBehaviour1;
    locala.b = paramDimensionBehaviour2;
    locala.c = paramInt1;
    locala.d = paramInt2;
    this.Z0.b(paramConstraintWidget, locala);
    paramConstraintWidget.k1(this.Y0.e);
    paramConstraintWidget.L0(this.Y0.f);
    paramConstraintWidget.K0(this.Y0.h);
    paramConstraintWidget.A0(this.Y0.g);
  }
  
  protected boolean E1()
  {
    Object localObject1 = this.a0;
    if (localObject1 != null) {
      localObject1 = ((d)localObject1).I1();
    } else {
      localObject1 = null;
    }
    if (localObject1 == null) {
      return false;
    }
    for (int i = 0;; i++)
    {
      int j = this.M0;
      int k = 1;
      if (i >= j) {
        break;
      }
      ConstraintWidget localConstraintWidget = this.L0[i];
      if ((localConstraintWidget != null) && (!(localConstraintWidget instanceof f)))
      {
        Object localObject2 = localConstraintWidget.u(0);
        Object localObject3 = localConstraintWidget.u(1);
        ConstraintWidget.DimensionBehaviour localDimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if ((localObject2 != localDimensionBehaviour) || (localConstraintWidget.w == 1) || (localObject3 != localDimensionBehaviour) || (localConstraintWidget.x == 1)) {
          k = 0;
        }
        if (k == 0)
        {
          Object localObject4 = localObject2;
          if (localObject2 == localDimensionBehaviour) {
            localObject4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
          }
          localObject2 = localObject3;
          if (localObject3 == localDimensionBehaviour) {
            localObject2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
          }
          localObject3 = this.Y0;
          ((b.a)localObject3).a = ((ConstraintWidget.DimensionBehaviour)localObject4);
          ((b.a)localObject3).b = ((ConstraintWidget.DimensionBehaviour)localObject2);
          ((b.a)localObject3).c = localConstraintWidget.W();
          this.Y0.d = localConstraintWidget.x();
          ((b.b)localObject1).b(localConstraintWidget, this.Y0);
          localConstraintWidget.k1(this.Y0.e);
          localConstraintWidget.L0(this.Y0.f);
          localConstraintWidget.A0(this.Y0.g);
        }
      }
    }
    return true;
  }
  
  public boolean F1()
  {
    return this.V0;
  }
  
  protected void G1(boolean paramBoolean)
  {
    this.V0 = paramBoolean;
  }
  
  public void H1(int paramInt1, int paramInt2)
  {
    this.W0 = paramInt1;
    this.X0 = paramInt2;
  }
  
  public void I1(int paramInt)
  {
    this.P0 = paramInt;
    this.N0 = paramInt;
    this.Q0 = paramInt;
    this.O0 = paramInt;
    this.R0 = paramInt;
    this.S0 = paramInt;
  }
  
  public void J1(int paramInt)
  {
    this.O0 = paramInt;
  }
  
  public void K1(int paramInt)
  {
    this.S0 = paramInt;
  }
  
  public void L1(int paramInt)
  {
    this.P0 = paramInt;
    this.T0 = paramInt;
  }
  
  public void M1(int paramInt)
  {
    this.Q0 = paramInt;
    this.U0 = paramInt;
  }
  
  public void N1(int paramInt)
  {
    this.R0 = paramInt;
    this.T0 = paramInt;
    this.U0 = paramInt;
  }
  
  public void O1(int paramInt)
  {
    this.N0 = paramInt;
  }
  
  public void c(d paramd)
  {
    u1();
  }
  
  public void t1(boolean paramBoolean)
  {
    int i = this.R0;
    if ((i > 0) || (this.S0 > 0)) {
      if (paramBoolean)
      {
        this.T0 = this.S0;
        this.U0 = i;
      }
      else
      {
        this.T0 = i;
        this.U0 = this.S0;
      }
    }
  }
  
  public void u1()
  {
    for (int i = 0; i < this.M0; i++)
    {
      ConstraintWidget localConstraintWidget = this.L0[i];
      if (localConstraintWidget != null) {
        localConstraintWidget.U0(true);
      }
    }
  }
  
  public boolean v1(HashSet<ConstraintWidget> paramHashSet)
  {
    for (int i = 0; i < this.M0; i++) {
      if (paramHashSet.contains(this.L0[i])) {
        return true;
      }
    }
    return false;
  }
  
  public int w1()
  {
    return this.X0;
  }
  
  public int x1()
  {
    return this.W0;
  }
  
  public int y1()
  {
    return this.O0;
  }
  
  public int z1()
  {
    return this.T0;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.h
 * JD-Core Version:    0.7.0.1
 */