package androidx.constraintlayout.core.widgets;

import java.util.ArrayList;

public class c
{
  protected ConstraintWidget a;
  protected ConstraintWidget b;
  protected ConstraintWidget c;
  protected ConstraintWidget d;
  protected ConstraintWidget e;
  protected ConstraintWidget f;
  protected ConstraintWidget g;
  protected ArrayList<ConstraintWidget> h;
  protected int i;
  protected int j;
  protected float k = 0.0F;
  int l;
  int m;
  int n;
  boolean o;
  private int p;
  private boolean q;
  protected boolean r;
  protected boolean s;
  protected boolean t;
  protected boolean u;
  private boolean v;
  
  public c(ConstraintWidget paramConstraintWidget, int paramInt, boolean paramBoolean)
  {
    this.a = paramConstraintWidget;
    this.p = paramInt;
    this.q = paramBoolean;
  }
  
  private void b()
  {
    int i1 = this.p * 2;
    Object localObject1 = this.a;
    boolean bool = true;
    this.o = true;
    Object localObject2 = localObject1;
    int i2 = 0;
    while (i2 == 0)
    {
      this.i += 1;
      Object localObject3 = ((ConstraintWidget)localObject1).F0;
      int i3 = this.p;
      Object localObject4 = null;
      localObject3[i3] = null;
      ((ConstraintWidget)localObject1).E0[i3] = null;
      Object localObject5;
      if (((ConstraintWidget)localObject1).V() != 8)
      {
        this.l += 1;
        localObject5 = ((ConstraintWidget)localObject1).u(this.p);
        localObject3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (localObject5 != localObject3) {
          this.m += ((ConstraintWidget)localObject1).E(this.p);
        }
        int i4 = this.m + localObject1.W[i1].f();
        this.m = i4;
        localObject5 = ((ConstraintWidget)localObject1).W;
        i3 = i1 + 1;
        this.m = (i4 + localObject5[i3].f());
        i4 = this.n + localObject1.W[i1].f();
        this.n = i4;
        this.n = (i4 + localObject1.W[i3].f());
        if (this.b == null) {
          this.b = ((ConstraintWidget)localObject1);
        }
        this.d = ((ConstraintWidget)localObject1);
        localObject5 = ((ConstraintWidget)localObject1).Z;
        i3 = this.p;
        if (localObject5[i3] == localObject3)
        {
          i4 = localObject1.y[i3];
          if ((i4 == 0) || (i4 == 3) || (i4 == 2))
          {
            this.j += 1;
            float f1 = localObject1.D0[i3];
            if (f1 > 0.0F) {
              this.k += f1;
            }
            if (c((ConstraintWidget)localObject1, i3))
            {
              if (f1 < 0.0F) {
                this.r = true;
              } else {
                this.s = true;
              }
              if (this.h == null) {
                this.h = new ArrayList();
              }
              this.h.add(localObject1);
            }
            if (this.f == null) {
              this.f = ((ConstraintWidget)localObject1);
            }
            localObject3 = this.g;
            if (localObject3 != null) {
              ((ConstraintWidget)localObject3).E0[this.p] = localObject1;
            }
            this.g = ((ConstraintWidget)localObject1);
          }
          if (this.p == 0)
          {
            if (((ConstraintWidget)localObject1).w != 0) {
              this.o = false;
            } else if ((((ConstraintWidget)localObject1).z != 0) || (((ConstraintWidget)localObject1).A != 0)) {
              this.o = false;
            }
          }
          else if (((ConstraintWidget)localObject1).x != 0) {
            this.o = false;
          } else if ((((ConstraintWidget)localObject1).C != 0) || (((ConstraintWidget)localObject1).D != 0)) {
            this.o = false;
          }
          if (((ConstraintWidget)localObject1).d0 != 0.0F)
          {
            this.o = false;
            this.u = true;
          }
        }
      }
      if (localObject2 != localObject1) {
        ((ConstraintWidget)localObject2).F0[this.p] = localObject1;
      }
      localObject3 = localObject1.W[(i1 + 1)].f;
      localObject2 = localObject4;
      if (localObject3 != null)
      {
        localObject3 = ((ConstraintAnchor)localObject3).d;
        localObject5 = localObject3.W[i1].f;
        localObject2 = localObject4;
        if (localObject5 != null) {
          if (((ConstraintAnchor)localObject5).d != localObject1) {
            localObject2 = localObject4;
          } else {
            localObject2 = localObject3;
          }
        }
      }
      if (localObject2 == null)
      {
        localObject2 = localObject1;
        i2 = 1;
      }
      localObject4 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject4;
    }
    localObject2 = this.b;
    if (localObject2 != null) {
      this.m -= localObject2.W[i1].f();
    }
    localObject2 = this.d;
    if (localObject2 != null) {
      this.m -= localObject2.W[(i1 + 1)].f();
    }
    this.c = ((ConstraintWidget)localObject1);
    if ((this.p == 0) && (this.q)) {
      this.e = ((ConstraintWidget)localObject1);
    } else {
      this.e = this.a;
    }
    if ((!this.s) || (!this.r)) {
      bool = false;
    }
    this.t = bool;
  }
  
  private static boolean c(ConstraintWidget paramConstraintWidget, int paramInt)
  {
    if ((paramConstraintWidget.V() != 8) && (paramConstraintWidget.Z[paramInt] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))
    {
      paramInt = paramConstraintWidget.y[paramInt];
      if ((paramInt == 0) || (paramInt == 3)) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public void a()
  {
    if (!this.v) {
      b();
    }
    this.v = true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.c
 * JD-Core Version:    0.7.0.1
 */