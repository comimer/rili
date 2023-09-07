package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;

public class b
{
  static void a(d paramd, androidx.constraintlayout.core.d paramd1, int paramInt1, int paramInt2, c paramc)
  {
    int i = paramInt1;
    Object localObject1 = paramc.a;
    ConstraintWidget localConstraintWidget1 = paramc.c;
    ConstraintWidget localConstraintWidget2 = paramc.b;
    ConstraintWidget localConstraintWidget3 = paramc.d;
    Object localObject2 = paramc.e;
    float f1 = paramc.k;
    int j;
    if (paramd.Z[i] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
      j = 1;
    } else {
      j = 0;
    }
    int n;
    int i1;
    if (i == 0)
    {
      k = ((ConstraintWidget)localObject2).z0;
      if (k == 0) {
        m = 1;
      } else {
        m = 0;
      }
      if (k == 1) {
        n = 1;
      } else {
        n = 0;
      }
      i1 = m;
      i2 = n;
      if (k != 2) {
        break label189;
      }
    }
    else
    {
      k = ((ConstraintWidget)localObject2).A0;
      if (k == 0) {
        m = 1;
      } else {
        m = 0;
      }
      if (k == 1) {
        n = 1;
      } else {
        n = 0;
      }
      i1 = m;
      i2 = n;
      if (k != 2) {
        break label189;
      }
    }
    int i3 = 1;
    int i2 = m;
    int k = n;
    break label200;
    label189:
    i3 = 0;
    k = i2;
    i2 = i1;
    label200:
    int m = 0;
    Object localObject3 = localObject1;
    Object localObject4;
    Object localObject5;
    Object localObject6;
    Object localObject7;
    for (;;)
    {
      localObject4 = null;
      localObject5 = null;
      if (m != 0) {
        break;
      }
      localObject6 = localObject3.W[paramInt2];
      if (i3 != 0) {
        n = 1;
      } else {
        n = 4;
      }
      i1 = ((ConstraintAnchor)localObject6).f();
      localObject4 = localObject3.Z[i];
      localObject7 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
      int i4;
      if ((localObject4 == localObject7) && (localObject3.y[i] == 0)) {
        i4 = 1;
      } else {
        i4 = 0;
      }
      localObject4 = ((ConstraintAnchor)localObject6).f;
      int i5 = i1;
      if (localObject4 != null)
      {
        i5 = i1;
        if (localObject3 != localObject1) {
          i5 = i1 + ((ConstraintAnchor)localObject4).f();
        }
      }
      if ((i3 != 0) && (localObject3 != localObject1) && (localObject3 != localConstraintWidget2)) {
        i1 = 8;
      } else {
        i1 = n;
      }
      localObject4 = ((ConstraintAnchor)localObject6).f;
      if (localObject4 != null)
      {
        if (localObject3 == localConstraintWidget2) {
          paramd1.h(((ConstraintAnchor)localObject6).i, ((ConstraintAnchor)localObject4).i, i5, 6);
        } else {
          paramd1.h(((ConstraintAnchor)localObject6).i, ((ConstraintAnchor)localObject4).i, i5, 8);
        }
        n = i1;
        if (i4 != 0)
        {
          n = i1;
          if (i3 == 0) {
            n = 5;
          }
        }
        if ((localObject3 == localConstraintWidget2) && (i3 != 0) && (((ConstraintWidget)localObject3).h0(i))) {
          n = 5;
        }
        paramd1.e(((ConstraintAnchor)localObject6).i, ((ConstraintAnchor)localObject6).f.i, i5, n);
      }
      if (j != 0)
      {
        if ((((ConstraintWidget)localObject3).V() != 8) && (localObject3.Z[i] == localObject7))
        {
          localObject6 = ((ConstraintWidget)localObject3).W;
          paramd1.h(localObject6[(paramInt2 + 1)].i, localObject6[paramInt2].i, 0, 5);
        }
        paramd1.h(localObject3.W[paramInt2].i, paramd.W[paramInt2].i, 0, 8);
      }
      localObject7 = localObject3.W[(paramInt2 + 1)].f;
      localObject6 = localObject5;
      if (localObject7 != null)
      {
        localObject7 = ((ConstraintAnchor)localObject7).d;
        localObject4 = localObject7.W[paramInt2].f;
        localObject6 = localObject5;
        if (localObject4 != null) {
          if (((ConstraintAnchor)localObject4).d != localObject3) {
            localObject6 = localObject5;
          } else {
            localObject6 = localObject7;
          }
        }
      }
      if (localObject6 != null) {
        localObject3 = localObject6;
      } else {
        m = 1;
      }
    }
    if (localConstraintWidget3 != null)
    {
      localObject6 = localConstraintWidget1.W;
      n = paramInt2 + 1;
      if (localObject6[n].f != null)
      {
        localObject6 = localConstraintWidget3.W[n];
        if ((localConstraintWidget3.Z[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (localConstraintWidget3.y[i] == 0)) {
          m = 1;
        } else {
          m = 0;
        }
        if ((m != 0) && (i3 == 0))
        {
          localObject3 = ((ConstraintAnchor)localObject6).f;
          if (((ConstraintAnchor)localObject3).d == paramd)
          {
            paramd1.e(((ConstraintAnchor)localObject6).i, ((ConstraintAnchor)localObject3).i, -((ConstraintAnchor)localObject6).f(), 5);
            break label831;
          }
        }
        if (i3 != 0)
        {
          localObject3 = ((ConstraintAnchor)localObject6).f;
          if (((ConstraintAnchor)localObject3).d == paramd) {
            paramd1.e(((ConstraintAnchor)localObject6).i, ((ConstraintAnchor)localObject3).i, -((ConstraintAnchor)localObject6).f(), 4);
          }
        }
        label831:
        paramd1.j(((ConstraintAnchor)localObject6).i, localConstraintWidget1.W[n].f.i, -((ConstraintAnchor)localObject6).f(), 6);
      }
    }
    if (j != 0)
    {
      paramd = paramd.W;
      m = paramInt2 + 1;
      localObject6 = paramd[m].i;
      paramd = localConstraintWidget1.W[m];
      paramd1.h((SolverVariable)localObject6, paramd.i, paramd.f(), 8);
    }
    paramd = paramc.h;
    label1096:
    Object localObject8;
    Object localObject9;
    if (paramd != null)
    {
      n = paramd.size();
      if (n > 1)
      {
        float f2;
        if ((paramc.r) && (!paramc.t)) {
          f2 = paramc.j;
        } else {
          f2 = f1;
        }
        float f3 = 0.0F;
        localObject6 = null;
        for (m = 0; m < n; m++)
        {
          localObject3 = (ConstraintWidget)paramd.get(m);
          f1 = localObject3.D0[i];
          if (f1 < 0.0F)
          {
            if (paramc.t)
            {
              localObject3 = ((ConstraintWidget)localObject3).W;
              paramd1.e(localObject3[(paramInt2 + 1)].i, localObject3[paramInt2].i, 0, 4);
              break label1096;
            }
            f1 = 1.0F;
          }
          if (f1 == 0.0F)
          {
            localObject3 = ((ConstraintWidget)localObject3).W;
            paramd1.e(localObject3[(paramInt2 + 1)].i, localObject3[paramInt2].i, 0, 8);
          }
          else
          {
            if (localObject6 != null)
            {
              localObject5 = ((ConstraintWidget)localObject6).W;
              localObject6 = localObject5[paramInt2].i;
              i1 = paramInt2 + 1;
              localObject7 = localObject5[i1].i;
              localObject8 = ((ConstraintWidget)localObject3).W;
              localObject5 = localObject8[paramInt2].i;
              localObject8 = localObject8[i1].i;
              localObject9 = paramd1.r();
              ((androidx.constraintlayout.core.b)localObject9).l(f3, f2, f1, (SolverVariable)localObject6, (SolverVariable)localObject7, (SolverVariable)localObject5, (SolverVariable)localObject8);
              paramd1.d((androidx.constraintlayout.core.b)localObject9);
            }
            localObject6 = localObject3;
            f3 = f1;
          }
        }
      }
    }
    if ((localConstraintWidget2 != null) && ((localConstraintWidget2 == localConstraintWidget3) || (i3 != 0)))
    {
      paramd = localObject1.W[paramInt2];
      paramc = localConstraintWidget1.W;
      paramInt1 = paramInt2 + 1;
      localObject6 = paramc[paramInt1];
      paramd = paramd.f;
      if (paramd != null) {
        paramd = paramd.i;
      } else {
        paramd = null;
      }
      paramc = ((ConstraintAnchor)localObject6).f;
      if (paramc != null) {
        paramc = paramc.i;
      } else {
        paramc = null;
      }
      localObject3 = localConstraintWidget2.W[paramInt2];
      if (localConstraintWidget3 != null) {
        localObject6 = localConstraintWidget3.W[paramInt1];
      }
      if ((paramd != null) && (paramc != null))
      {
        if (i == 0) {
          f1 = ((ConstraintWidget)localObject2).o0;
        } else {
          f1 = ((ConstraintWidget)localObject2).p0;
        }
        paramInt1 = ((ConstraintAnchor)localObject3).f();
        m = ((ConstraintAnchor)localObject6).f();
        paramd1.c(((ConstraintAnchor)localObject3).i, paramd, paramInt1, f1, paramc, ((ConstraintAnchor)localObject6).i, m, 7);
      }
    }
    else
    {
      if ((i2 != 0) && (localConstraintWidget2 != null))
      {
        paramInt1 = paramc.j;
        if ((paramInt1 > 0) && (paramc.i == paramInt1)) {
          m = 1;
        } else {
          m = 0;
        }
        localObject2 = localConstraintWidget2;
        localObject6 = localObject2;
      }
      while (localObject6 != null)
      {
        for (paramd = localObject6.F0[i]; (paramd != null) && (paramd.V() == 8); paramd = paramd.F0[i]) {}
        if ((paramd == null) && (localObject6 != localConstraintWidget3)) {}
        for (;;)
        {
          break;
          localObject3 = localObject6.W[paramInt2];
          localObject7 = ((ConstraintAnchor)localObject3).i;
          paramc = ((ConstraintAnchor)localObject3).f;
          if (paramc != null) {
            paramc = paramc.i;
          } else {
            paramc = null;
          }
          if (localObject2 != localObject6)
          {
            paramc = localObject2.W[(paramInt2 + 1)].i;
          }
          else if (localObject6 == localConstraintWidget2)
          {
            paramc = localObject1.W[paramInt2].f;
            if (paramc != null) {
              paramc = paramc.i;
            } else {
              paramc = null;
            }
          }
          j = ((ConstraintAnchor)localObject3).f();
          localObject3 = ((ConstraintWidget)localObject6).W;
          i1 = paramInt2 + 1;
          n = localObject3[i1].f();
          if (paramd != null)
          {
            localObject5 = paramd.W[paramInt2];
            localObject3 = ((ConstraintAnchor)localObject5).i;
          }
          for (;;)
          {
            break;
            localObject5 = localConstraintWidget1.W[i1].f;
            if (localObject5 != null) {
              localObject3 = ((ConstraintAnchor)localObject5).i;
            } else {
              localObject3 = null;
            }
          }
          localObject8 = localObject6.W[i1].i;
          paramInt1 = n;
          if (localObject5 != null) {
            paramInt1 = n + ((ConstraintAnchor)localObject5).f();
          }
          n = j + localObject2.W[i1].f();
          if ((localObject7 != null) && (paramc != null) && (localObject3 != null) && (localObject8 != null))
          {
            if (localObject6 == localConstraintWidget2) {
              n = localConstraintWidget2.W[paramInt2].f();
            }
            if (localObject6 == localConstraintWidget3) {
              paramInt1 = localConstraintWidget3.W[i1].f();
            }
            if (m != 0) {
              i1 = 8;
            } else {
              i1 = 5;
            }
            paramd1.c((SolverVariable)localObject7, paramc, n, 0.5F, (SolverVariable)localObject3, (SolverVariable)localObject8, paramInt1, i1);
            break;
          }
        }
        if (((ConstraintWidget)localObject6).V() == 8) {
          localObject6 = localObject2;
        }
        localObject2 = localObject6;
        localObject6 = paramd;
        continue;
        m = 8;
        if ((k != 0) && (localConstraintWidget2 != null))
        {
          n = paramc.j;
          if ((n > 0) && (paramc.i == n)) {
            n = 1;
          } else {
            n = 0;
          }
          localObject6 = localConstraintWidget2;
          for (paramc = (c)localObject6;; paramc = paramd)
          {
            i1 = paramInt1;
            if (paramc == null) {
              break;
            }
            for (paramd = paramc.F0[i1]; (paramd != null) && (paramd.V() == m); paramd = paramd.F0[i1]) {}
            if ((paramc != localConstraintWidget2) && (paramc != localConstraintWidget3) && (paramd != null))
            {
              if (paramd == localConstraintWidget3) {
                paramd = null;
              }
              localObject2 = paramc.W[paramInt2];
              localObject8 = ((ConstraintAnchor)localObject2).i;
              localObject3 = ((ConstraintAnchor)localObject2).f;
              if (localObject3 != null) {
                localObject3 = ((ConstraintAnchor)localObject3).i;
              }
              localObject3 = ((ConstraintWidget)localObject6).W;
              i3 = paramInt2 + 1;
              localObject9 = localObject3[i3].i;
              j = ((ConstraintAnchor)localObject2).f();
              i1 = paramc.W[i3].f();
              if (paramd != null)
              {
                localObject3 = paramd.W[paramInt2];
                localObject7 = ((ConstraintAnchor)localObject3).i;
                localObject2 = ((ConstraintAnchor)localObject3).f;
                if (localObject2 != null) {
                  localObject2 = ((ConstraintAnchor)localObject2).i;
                } else {
                  localObject2 = null;
                }
                localObject5 = localObject2;
              }
              else
              {
                localObject3 = localConstraintWidget3.W[paramInt2];
                if (localObject3 != null) {
                  localObject2 = ((ConstraintAnchor)localObject3).i;
                } else {
                  localObject2 = null;
                }
                localObject5 = paramc.W[i3].i;
                localObject7 = localObject2;
              }
              m = i1;
              if (localObject3 != null) {
                m = i1 + ((ConstraintAnchor)localObject3).f();
              }
              i3 = localObject6.W[i3].f();
              if (n != 0) {
                i1 = 8;
              } else {
                i1 = 4;
              }
              if ((localObject8 != null) && (localObject9 != null) && (localObject7 != null) && (localObject5 != null)) {
                paramd1.c((SolverVariable)localObject8, (SolverVariable)localObject9, i3 + j, 0.5F, (SolverVariable)localObject7, (SolverVariable)localObject5, m, i1);
              }
              m = 8;
            }
            if (paramc.V() != m) {
              localObject6 = paramc;
            }
          }
          paramd = localConstraintWidget2.W[paramInt2];
          paramc = localObject1.W[paramInt2].f;
          localObject6 = localConstraintWidget3.W;
          paramInt1 = paramInt2 + 1;
          localObject6 = localObject6[paramInt1];
          localObject2 = localConstraintWidget1.W[paramInt1].f;
          if (paramc != null) {
            if (localConstraintWidget2 != localConstraintWidget3) {
              paramd1.e(paramd.i, paramc.i, paramd.f(), 5);
            } else if (localObject2 != null) {
              paramd1.c(paramd.i, paramc.i, paramd.f(), 0.5F, ((ConstraintAnchor)localObject6).i, ((ConstraintAnchor)localObject2).i, ((ConstraintAnchor)localObject6).f(), 5);
            }
          }
          if ((localObject2 != null) && (localConstraintWidget2 != localConstraintWidget3)) {
            paramd1.e(((ConstraintAnchor)localObject6).i, ((ConstraintAnchor)localObject2).i, -((ConstraintAnchor)localObject6).f(), 5);
          }
        }
      }
    }
    if (((i2 != 0) || (k != 0)) && (localConstraintWidget2 != null) && (localConstraintWidget2 != localConstraintWidget3))
    {
      localObject5 = localConstraintWidget2.W;
      localObject3 = localObject5[paramInt2];
      paramc = localConstraintWidget3;
      if (localConstraintWidget3 == null) {
        paramc = localConstraintWidget2;
      }
      paramd = paramc.W;
      paramInt2++;
      localObject2 = paramd[paramInt2];
      paramd = ((ConstraintAnchor)localObject3).f;
      if (paramd != null) {
        localObject6 = paramd.i;
      } else {
        localObject6 = null;
      }
      paramd = ((ConstraintAnchor)localObject2).f;
      if (paramd != null) {
        paramd = paramd.i;
      } else {
        paramd = null;
      }
      if (localConstraintWidget1 != paramc)
      {
        localObject1 = localConstraintWidget1.W[paramInt2].f;
        paramd = (d)localObject4;
        if (localObject1 != null) {
          paramd = ((ConstraintAnchor)localObject1).i;
        }
      }
      if (localConstraintWidget2 == paramc) {
        localObject2 = localObject5[paramInt2];
      }
      if ((localObject6 != null) && (paramd != null))
      {
        paramInt1 = ((ConstraintAnchor)localObject3).f();
        paramInt2 = paramc.W[paramInt2].f();
        paramd1.c(((ConstraintAnchor)localObject3).i, (SolverVariable)localObject6, paramInt1, 0.5F, paramd, ((ConstraintAnchor)localObject2).i, paramInt2, 5);
      }
    }
  }
  
  public static void b(d paramd, androidx.constraintlayout.core.d paramd1, ArrayList<ConstraintWidget> paramArrayList, int paramInt)
  {
    int i = 0;
    int j;
    c[] arrayOfc;
    int k;
    if (paramInt == 0)
    {
      j = paramd.W0;
      arrayOfc = paramd.Z0;
      k = 0;
    }
    else
    {
      j = paramd.X0;
      arrayOfc = paramd.Y0;
      k = 2;
    }
    while (i < j)
    {
      c localc = arrayOfc[i];
      localc.a();
      if ((paramArrayList == null) || (paramArrayList.contains(localc.a))) {
        a(paramd, paramd1, paramInt, k, localc);
      }
      i++;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.b
 * JD-Core Version:    0.7.0.1
 */