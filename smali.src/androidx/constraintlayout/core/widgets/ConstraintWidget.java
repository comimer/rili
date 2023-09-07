package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.b;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.k;
import androidx.constraintlayout.core.widgets.analyzer.m;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class ConstraintWidget
{
  public static float K0 = 0.5F;
  public int A = 0;
  int A0;
  public float B = 1.0F;
  boolean B0;
  public int C = 0;
  boolean C0;
  public int D = 0;
  public float[] D0;
  public float E = 1.0F;
  protected ConstraintWidget[] E0;
  int F = -1;
  protected ConstraintWidget[] F0;
  float G = 1.0F;
  ConstraintWidget G0;
  private int[] H = { 2147483647, 2147483647 };
  ConstraintWidget H0;
  private float I = 0.0F;
  public int I0;
  private boolean J = false;
  public int J0;
  private boolean K;
  private boolean L = false;
  private int M = 0;
  private int N = 0;
  public ConstraintAnchor O = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
  public ConstraintAnchor P = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
  public ConstraintAnchor Q = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
  public ConstraintAnchor R = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
  public ConstraintAnchor S = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
  ConstraintAnchor T = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
  ConstraintAnchor U = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
  public ConstraintAnchor V;
  public ConstraintAnchor[] W;
  protected ArrayList<ConstraintAnchor> X;
  private boolean[] Y;
  public DimensionBehaviour[] Z;
  public boolean a = false;
  public ConstraintWidget a0;
  public WidgetRun[] b = new WidgetRun[2];
  int b0;
  public androidx.constraintlayout.core.widgets.analyzer.c c;
  int c0;
  public androidx.constraintlayout.core.widgets.analyzer.c d;
  public float d0;
  public k e = null;
  protected int e0;
  public m f = null;
  protected int f0;
  public boolean[] g = { 1, 1 };
  protected int g0;
  boolean h = false;
  int h0;
  private boolean i = true;
  int i0;
  private boolean j = false;
  protected int j0;
  private boolean k = true;
  protected int k0;
  private int l = -1;
  int l0;
  private int m = -1;
  protected int m0;
  public androidx.constraintlayout.core.state.a n = new androidx.constraintlayout.core.state.a(this);
  protected int n0;
  public String o;
  float o0;
  private boolean p = false;
  float p0;
  private boolean q = false;
  private Object q0;
  private boolean r = false;
  private int r0;
  private boolean s = false;
  private int s0;
  public int t = -1;
  private boolean t0;
  public int u = -1;
  private String u0;
  private int v = 0;
  private String v0;
  public int w = 0;
  boolean w0;
  public int x = 0;
  boolean x0;
  public int[] y = new int[2];
  boolean y0;
  public int z = 0;
  int z0;
  
  public ConstraintWidget()
  {
    Object localObject = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
    this.V = ((ConstraintAnchor)localObject);
    this.W = new ConstraintAnchor[] { this.O, this.Q, this.P, this.R, this.S, localObject };
    this.X = new ArrayList();
    this.Y = new boolean[2];
    localObject = DimensionBehaviour.FIXED;
    this.Z = new DimensionBehaviour[] { localObject, localObject };
    this.a0 = null;
    this.b0 = 0;
    this.c0 = 0;
    this.d0 = 0.0F;
    this.e0 = -1;
    this.f0 = 0;
    this.g0 = 0;
    this.h0 = 0;
    this.i0 = 0;
    this.j0 = 0;
    this.k0 = 0;
    this.l0 = 0;
    float f1 = K0;
    this.o0 = f1;
    this.p0 = f1;
    this.r0 = 0;
    this.s0 = 0;
    this.t0 = false;
    this.u0 = null;
    this.v0 = null;
    this.y0 = false;
    this.z0 = 0;
    this.A0 = 0;
    this.D0 = new float[] { -1.0F, -1.0F };
    this.E0 = new ConstraintWidget[] { null, null };
    this.F0 = new ConstraintWidget[] { null, null };
    this.G0 = null;
    this.H0 = null;
    this.I0 = -1;
    this.J0 = -1;
    d();
  }
  
  private void P(StringBuilder paramStringBuilder, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, float paramFloat1, float paramFloat2)
  {
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(" :  {\n");
    y0(paramStringBuilder, "      size", paramInt1, 0);
    y0(paramStringBuilder, "      min", paramInt2, 0);
    y0(paramStringBuilder, "      max", paramInt3, 2147483647);
    y0(paramStringBuilder, "      matchMin", paramInt5, 0);
    y0(paramStringBuilder, "      matchDef", paramInt6, 0);
    x0(paramStringBuilder, "      matchPercent", paramFloat1, 1.0F);
    paramStringBuilder.append("    },\n");
  }
  
  private void Q(StringBuilder paramStringBuilder, String paramString, ConstraintAnchor paramConstraintAnchor)
  {
    if (paramConstraintAnchor.f == null) {
      return;
    }
    paramStringBuilder.append("    ");
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(" : [ '");
    paramStringBuilder.append(paramConstraintAnchor.f);
    paramStringBuilder.append("'");
    if ((paramConstraintAnchor.h != -2147483648) || (paramConstraintAnchor.g != 0))
    {
      paramStringBuilder.append(",");
      paramStringBuilder.append(paramConstraintAnchor.g);
      if (paramConstraintAnchor.h != -2147483648)
      {
        paramStringBuilder.append(",");
        paramStringBuilder.append(paramConstraintAnchor.h);
        paramStringBuilder.append(",");
      }
    }
    paramStringBuilder.append(" ] ,\n");
  }
  
  private void d()
  {
    this.X.add(this.O);
    this.X.add(this.P);
    this.X.add(this.Q);
    this.X.add(this.R);
    this.X.add(this.T);
    this.X.add(this.U);
    this.X.add(this.V);
    this.X.add(this.S);
  }
  
  private boolean f0(int paramInt)
  {
    paramInt *= 2;
    ConstraintAnchor[] arrayOfConstraintAnchor = this.W;
    ConstraintAnchor localConstraintAnchor1 = arrayOfConstraintAnchor[paramInt];
    ConstraintAnchor localConstraintAnchor2 = localConstraintAnchor1.f;
    boolean bool = true;
    if ((localConstraintAnchor2 != null) && (localConstraintAnchor2.f != localConstraintAnchor1))
    {
      localConstraintAnchor1 = arrayOfConstraintAnchor[(paramInt + 1)];
      localConstraintAnchor2 = localConstraintAnchor1.f;
      if ((localConstraintAnchor2 != null) && (localConstraintAnchor2.f == localConstraintAnchor1)) {}
    }
    else
    {
      bool = false;
    }
    return bool;
  }
  
  private void i(androidx.constraintlayout.core.d paramd, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, DimensionBehaviour paramDimensionBehaviour, boolean paramBoolean5, ConstraintAnchor paramConstraintAnchor1, ConstraintAnchor paramConstraintAnchor2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat1, boolean paramBoolean6, boolean paramBoolean7, boolean paramBoolean8, boolean paramBoolean9, boolean paramBoolean10, int paramInt5, int paramInt6, int paramInt7, int paramInt8, float paramFloat2, boolean paramBoolean11)
  {
    Object localObject1 = paramd.q(paramConstraintAnchor1);
    SolverVariable localSolverVariable = paramd.q(paramConstraintAnchor2);
    Object localObject2 = paramd.q(paramConstraintAnchor1.j());
    Object localObject3 = paramd.q(paramConstraintAnchor2.j());
    androidx.constraintlayout.core.d.w();
    int i1 = paramConstraintAnchor1.o();
    boolean bool1 = paramConstraintAnchor2.o();
    boolean bool2 = this.V.o();
    if (bool1) {
      i2 = i1 + 1;
    } else {
      i2 = i1;
    }
    int i3 = i2;
    if (bool2) {
      i3 = i2 + 1;
    }
    if (paramBoolean6) {
      paramInt5 = 3;
    }
    int i2 = a.b[paramDimensionBehaviour.ordinal()];
    if ((i2 == 1) || (i2 == 2) || (i2 == 3) || (i2 != 4)) {}
    while (paramInt5 == 4)
    {
      i4 = 0;
      break;
    }
    int i4 = 1;
    int i5 = paramInt5;
    int i6 = this.l;
    i2 = i4;
    paramInt5 = paramInt2;
    if (i6 != -1)
    {
      i2 = i4;
      paramInt5 = paramInt2;
      if (paramBoolean1)
      {
        this.l = -1;
        paramInt5 = i6;
        i2 = 0;
      }
    }
    paramInt2 = this.m;
    if ((paramInt2 != -1) && (!paramBoolean1))
    {
      this.m = -1;
      i2 = 0;
      paramInt5 = paramInt2;
      paramInt2 = i2;
    }
    else
    {
      paramInt2 = i2;
    }
    if (this.s0 == 8)
    {
      paramInt5 = 0;
      paramInt2 = 0;
    }
    if (paramBoolean11) {
      if ((i1 == 0) && (!bool1) && (!bool2))
      {
        paramd.f((SolverVariable)localObject1, paramInt1);
      }
      else if ((i1 != 0) && (!bool1))
      {
        paramd.e((SolverVariable)localObject1, (SolverVariable)localObject2, paramConstraintAnchor1.f(), 8);
        break label327;
      }
    }
    label327:
    paramDimensionBehaviour = (DimensionBehaviour)localObject3;
    if (paramInt2 == 0) {
      if (paramBoolean5)
      {
        paramd.e(localSolverVariable, (SolverVariable)localObject1, 0, 3);
        if (paramInt3 > 0) {
          paramd.h(localSolverVariable, (SolverVariable)localObject1, paramInt3, 8);
        }
        if (paramInt4 < 2147483647) {
          paramd.j(localSolverVariable, (SolverVariable)localObject1, paramInt4, 8);
        }
      }
      else
      {
        paramd.e(localSolverVariable, (SolverVariable)localObject1, paramInt5, 8);
      }
    }
    for (i2 = paramInt2;; i2 = 0)
    {
      paramInt1 = paramInt8;
      paramInt8 = paramInt7;
      break label891;
      if ((i3 == 2) || (paramBoolean6) || ((i5 != 1) && (i5 != 0))) {
        break;
      }
      paramInt2 = Math.max(paramInt7, paramInt5);
      paramInt1 = paramInt2;
      if (paramInt8 > 0) {
        paramInt1 = Math.min(paramInt8, paramInt2);
      }
      paramd.e(localSolverVariable, (SolverVariable)localObject1, paramInt1, 8);
    }
    if (paramInt7 == -2) {
      paramInt1 = paramInt5;
    } else {
      paramInt1 = paramInt7;
    }
    if (paramInt8 == -2) {
      paramInt4 = paramInt5;
    } else {
      paramInt4 = paramInt8;
    }
    paramInt7 = paramInt5;
    if (paramInt5 > 0)
    {
      paramInt7 = paramInt5;
      if (i5 != 1) {
        paramInt7 = 0;
      }
    }
    paramInt5 = paramInt7;
    if (paramInt1 > 0)
    {
      paramd.h(localSolverVariable, (SolverVariable)localObject1, paramInt1, 8);
      paramInt5 = Math.max(paramInt7, paramInt1);
    }
    if (paramInt4 > 0)
    {
      if ((paramBoolean2) && (i5 == 1)) {
        paramInt7 = 0;
      } else {
        paramInt7 = 1;
      }
      if (paramInt7 != 0) {
        paramd.j(localSolverVariable, (SolverVariable)localObject1, paramInt4, 8);
      }
      paramInt5 = Math.min(paramInt5, paramInt4);
    }
    Object localObject4;
    if (i5 == 1)
    {
      if (paramBoolean2)
      {
        paramd.e(localSolverVariable, (SolverVariable)localObject1, paramInt5, 8);
      }
      else if (paramBoolean8)
      {
        paramd.e(localSolverVariable, (SolverVariable)localObject1, paramInt5, 5);
        paramd.j(localSolverVariable, (SolverVariable)localObject1, paramInt5, 8);
      }
      else
      {
        paramd.e(localSolverVariable, (SolverVariable)localObject1, paramInt5, 5);
        paramd.j(localSolverVariable, (SolverVariable)localObject1, paramInt5, 8);
      }
      paramInt8 = paramInt1;
      paramInt1 = paramInt4;
      i2 = paramInt2;
    }
    else if (i5 == 2)
    {
      localObject3 = paramConstraintAnchor1.k();
      localObject4 = ConstraintAnchor.Type.TOP;
      if ((localObject3 != localObject4) && (paramConstraintAnchor1.k() != ConstraintAnchor.Type.BOTTOM))
      {
        localObject4 = paramd.q(this.a0.o(ConstraintAnchor.Type.LEFT));
        localObject3 = paramd.q(this.a0.o(ConstraintAnchor.Type.RIGHT));
      }
      else
      {
        localObject4 = paramd.q(this.a0.o((ConstraintAnchor.Type)localObject4));
        localObject3 = paramd.q(this.a0.o(ConstraintAnchor.Type.BOTTOM));
      }
      paramd.d(paramd.r().k(localSolverVariable, (SolverVariable)localObject1, (SolverVariable)localObject3, (SolverVariable)localObject4, paramFloat2));
      if (paramBoolean2) {
        paramInt2 = 0;
      }
      paramInt8 = paramInt1;
      paramInt1 = paramInt4;
      i2 = paramInt2;
    }
    else
    {
      paramBoolean4 = true;
      i2 = paramInt2;
      paramInt8 = paramInt1;
      paramInt1 = paramInt4;
    }
    label891:
    DimensionBehaviour localDimensionBehaviour = paramDimensionBehaviour;
    paramDimensionBehaviour = (DimensionBehaviour)localObject2;
    if ((paramBoolean11) && (!paramBoolean8))
    {
      if ((i1 != 0) || (bool1) || (bool2))
      {
        if ((i1 != 0) && (!bool1))
        {
          paramSolverVariable1 = paramConstraintAnchor1.f.d;
          if ((paramBoolean2) && ((paramSolverVariable1 instanceof a))) {
            paramInt1 = 8;
          } else {
            paramInt1 = 5;
          }
          paramBoolean3 = paramBoolean2;
          paramInt2 = paramInt1;
        }
        label1257:
        label1905:
        do
        {
          do
          {
            do
            {
              do
              {
                paramInt1 = paramInt2;
                paramBoolean2 = paramBoolean3;
                break label2328;
                if ((i1 == 0) && (bool1))
                {
                  paramd.e(localSolverVariable, localDimensionBehaviour, -paramConstraintAnchor2.f(), 8);
                  if (!paramBoolean2) {
                    break;
                  }
                  if ((this.j) && (((SolverVariable)localObject1).g))
                  {
                    paramDimensionBehaviour = this.a0;
                    if (paramDimensionBehaviour != null)
                    {
                      paramSolverVariable1 = (d)paramDimensionBehaviour;
                      if (paramBoolean1)
                      {
                        paramSolverVariable1.z1(paramConstraintAnchor1);
                        break;
                      }
                      paramSolverVariable1.E1(paramConstraintAnchor1);
                      break;
                    }
                  }
                  paramd.h((SolverVariable)localObject1, paramSolverVariable1, 0, 5);
                  break;
                }
                if ((i1 == 0) || (!bool1)) {
                  break;
                }
                ConstraintWidget localConstraintWidget1 = paramConstraintAnchor1.f.d;
                ConstraintWidget localConstraintWidget2 = paramConstraintAnchor2.f.d;
                localObject4 = K();
                if (i2 != 0)
                {
                  if (i5 == 0)
                  {
                    if ((paramInt1 == 0) && (paramInt8 == 0))
                    {
                      if ((paramDimensionBehaviour.g) && (localDimensionBehaviour.g))
                      {
                        paramd.e((SolverVariable)localObject1, paramDimensionBehaviour, paramConstraintAnchor1.f(), 8);
                        paramd.e(localSolverVariable, localDimensionBehaviour, -paramConstraintAnchor2.f(), 8);
                        return;
                      }
                      paramInt1 = 8;
                      paramInt6 = paramInt1;
                      paramInt4 = 0;
                      paramInt2 = paramInt4;
                      paramInt5 = 1;
                    }
                    else
                    {
                      paramInt5 = 0;
                      paramInt1 = 5;
                      paramInt6 = 5;
                      paramInt4 = 1;
                      paramInt2 = 1;
                    }
                    if ((!(localConstraintWidget1 instanceof a)) && (!(localConstraintWidget2 instanceof a))) {
                      break label1257;
                    }
                    paramInt6 = 4;
                    i4 = paramInt5;
                    paramInt7 = paramInt4;
                    paramInt5 = paramInt2;
                    paramInt4 = 6;
                    paramInt2 = paramInt6;
                    paramInt6 = i4;
                    break label1710;
                  }
                  if (i5 == 2)
                  {
                    if ((!(localConstraintWidget1 instanceof a)) && (!(localConstraintWidget2 instanceof a))) {
                      paramInt2 = 5;
                    } else {
                      paramInt2 = 4;
                    }
                    paramInt1 = 5;
                  }
                  else
                  {
                    if (i5 != 1) {
                      break label1353;
                    }
                    paramInt1 = 8;
                    paramInt2 = 4;
                  }
                  paramInt6 = 0;
                  paramInt4 = 6;
                  paramInt5 = 1;
                  paramInt7 = 1;
                  break label1710;
                  if (i5 == 3)
                  {
                    if (this.F == -1)
                    {
                      if (paramBoolean9)
                      {
                        if (paramBoolean2) {
                          paramInt4 = 5;
                        } else {
                          paramInt4 = 4;
                        }
                      }
                      else {
                        paramInt4 = 8;
                      }
                      paramInt1 = 8;
                      paramInt2 = 5;
                      paramInt5 = 1;
                      paramInt7 = 1;
                      paramInt6 = 1;
                      break label1710;
                    }
                    if (paramBoolean6)
                    {
                      if ((paramInt6 != 2) && (paramInt6 != 1)) {
                        paramInt1 = 0;
                      } else {
                        paramInt1 = 1;
                      }
                      if (paramInt1 == 0)
                      {
                        paramInt2 = 8;
                        paramInt1 = 5;
                      }
                      else
                      {
                        paramInt2 = 5;
                        paramInt1 = 4;
                      }
                      i4 = paramInt2;
                      paramInt5 = 1;
                      paramInt7 = paramInt5;
                      paramInt6 = paramInt7;
                      paramInt4 = 6;
                      paramInt2 = paramInt1;
                      paramInt1 = i4;
                      break label1710;
                    }
                    if (paramInt1 > 0) {
                      paramInt2 = 5;
                    } else if ((paramInt1 == 0) && (paramInt8 == 0))
                    {
                      if (!paramBoolean9)
                      {
                        paramInt2 = 8;
                      }
                      else
                      {
                        if ((localConstraintWidget1 != localObject4) && (localConstraintWidget2 != localObject4)) {
                          paramInt1 = 4;
                        } else {
                          paramInt1 = 5;
                        }
                        paramInt5 = 1;
                        paramInt7 = paramInt5;
                        paramInt6 = paramInt7;
                        paramInt4 = 6;
                        paramInt2 = 4;
                        break label1710;
                      }
                    }
                    else {
                      paramInt2 = 4;
                    }
                    paramInt6 = 1;
                    paramInt7 = 1;
                    paramInt5 = 1;
                    paramInt4 = 6;
                    paramInt1 = 5;
                    break label1710;
                  }
                  paramInt5 = 0;
                  paramInt7 = 0;
                }
                else
                {
                  if ((paramDimensionBehaviour.g) && (localDimensionBehaviour.g))
                  {
                    paramd.c((SolverVariable)localObject1, paramDimensionBehaviour, paramConstraintAnchor1.f(), paramFloat1, localDimensionBehaviour, localSolverVariable, paramConstraintAnchor2.f(), 8);
                    if ((paramBoolean2) && (paramBoolean4))
                    {
                      if (paramConstraintAnchor2.f != null) {
                        paramInt1 = paramConstraintAnchor2.f();
                      } else {
                        paramInt1 = 0;
                      }
                      if (localDimensionBehaviour != paramSolverVariable2) {
                        paramd.h(paramSolverVariable2, localSolverVariable, paramInt1, 5);
                      }
                    }
                    return;
                  }
                  paramInt5 = 1;
                  paramInt7 = paramInt5;
                }
                paramInt1 = 5;
                paramInt2 = 4;
                paramInt4 = 6;
                paramInt6 = 0;
                if ((paramInt5 != 0) && (paramDimensionBehaviour == localDimensionBehaviour) && (localConstraintWidget1 != localObject4))
                {
                  paramInt5 = 0;
                  i4 = 0;
                }
                else
                {
                  i4 = 1;
                }
                if (paramInt7 != 0)
                {
                  if ((i2 == 0) && (!paramBoolean7) && (!paramBoolean9) && (paramDimensionBehaviour == paramSolverVariable1) && (localDimensionBehaviour == paramSolverVariable2))
                  {
                    paramInt1 = 8;
                    paramInt4 = paramInt1;
                    paramBoolean2 = false;
                    i4 = 0;
                  }
                  paramd.c((SolverVariable)localObject1, paramDimensionBehaviour, paramConstraintAnchor1.f(), paramFloat1, localDimensionBehaviour, localSolverVariable, paramConstraintAnchor2.f(), paramInt4);
                }
                localObject2 = paramDimensionBehaviour;
                localObject3 = localObject1;
                paramDimensionBehaviour = localConstraintWidget1;
                localObject1 = localConstraintWidget2;
                paramInt7 = 8;
                if ((this.s0 == paramInt7) && (!paramConstraintAnchor2.m())) {
                  return;
                }
                if (paramInt5 != 0)
                {
                  if ((paramBoolean2) && (localObject2 != localDimensionBehaviour) && (i2 == 0))
                  {
                    if (!(paramDimensionBehaviour instanceof a)) {
                      if (!(localObject1 instanceof a)) {
                        break label1905;
                      }
                    }
                    paramInt1 = 6;
                  }
                  paramd.h((SolverVariable)localObject3, (SolverVariable)localObject2, paramConstraintAnchor1.f(), paramInt1);
                  paramd.j(localSolverVariable, localDimensionBehaviour, -paramConstraintAnchor2.f(), paramInt1);
                }
                if ((paramBoolean2) && (paramBoolean10) && (!(paramDimensionBehaviour instanceof a)) && (!(localObject1 instanceof a)) && (localObject1 != localObject4))
                {
                  paramInt1 = 6;
                  paramInt4 = paramInt1;
                  i4 = 1;
                }
                else
                {
                  paramInt4 = paramInt1;
                  paramInt1 = paramInt2;
                }
                if (i4 != 0)
                {
                  if ((paramInt6 != 0) && ((!paramBoolean9) || (paramBoolean3)))
                  {
                    if ((paramDimensionBehaviour != localObject4) && (localObject1 != localObject4)) {
                      paramInt2 = paramInt1;
                    } else {
                      paramInt2 = 6;
                    }
                    if (((paramDimensionBehaviour instanceof f)) || ((localObject1 instanceof f))) {
                      paramInt2 = 5;
                    }
                    if (((paramDimensionBehaviour instanceof a)) || ((localObject1 instanceof a))) {
                      paramInt2 = 5;
                    }
                    if (paramBoolean9) {
                      paramInt2 = 5;
                    }
                    paramInt2 = Math.max(paramInt2, paramInt1);
                  }
                  else
                  {
                    paramInt2 = paramInt1;
                  }
                  paramInt1 = paramInt2;
                  if (paramBoolean2)
                  {
                    paramInt2 = Math.min(paramInt4, paramInt2);
                    paramInt1 = paramInt2;
                    if (paramBoolean6)
                    {
                      paramInt1 = paramInt2;
                      if (!paramBoolean9) {
                        if (paramDimensionBehaviour != localObject4)
                        {
                          paramInt1 = paramInt2;
                          if (localObject1 != localObject4) {}
                        }
                        else
                        {
                          paramInt1 = 4;
                        }
                      }
                    }
                  }
                  paramd.e((SolverVariable)localObject3, (SolverVariable)localObject2, paramConstraintAnchor1.f(), paramInt1);
                  paramd.e(localSolverVariable, localDimensionBehaviour, -paramConstraintAnchor2.f(), paramInt1);
                }
                if (paramBoolean2)
                {
                  if (paramSolverVariable1 == localObject2) {
                    paramInt1 = paramConstraintAnchor1.f();
                  } else {
                    paramInt1 = 0;
                  }
                  if (localObject2 != paramSolverVariable1) {
                    paramd.h((SolverVariable)localObject3, paramSolverVariable1, paramInt1, 5);
                  }
                }
                paramInt1 = 5;
                paramInt2 = paramInt1;
                paramBoolean3 = paramBoolean2;
              } while (!paramBoolean2);
              paramInt2 = paramInt1;
              paramBoolean3 = paramBoolean2;
            } while (i2 == 0);
            paramInt2 = paramInt1;
            paramBoolean3 = paramBoolean2;
          } while (paramInt3 != 0);
          paramInt2 = paramInt1;
          paramBoolean3 = paramBoolean2;
        } while (paramInt8 != 0);
        label1353:
        if ((i2 != 0) && (i5 == 3)) {
          paramd.h(localSolverVariable, (SolverVariable)localObject3, 0, paramInt7);
        } else {
          paramd.h(localSolverVariable, (SolverVariable)localObject3, 0, 5);
        }
      }
      else
      {
        label1710:
        paramInt1 = 5;
      }
      label2328:
      paramInt2 = 0;
      if ((paramBoolean2) && (paramBoolean4))
      {
        if (paramConstraintAnchor2.f != null) {
          paramInt2 = paramConstraintAnchor2.f();
        }
        if (localDimensionBehaviour != paramSolverVariable2)
        {
          if ((this.j) && (localSolverVariable.g))
          {
            paramSolverVariable1 = this.a0;
            if (paramSolverVariable1 != null)
            {
              paramd = (d)paramSolverVariable1;
              if (paramBoolean1) {
                paramd.y1(paramConstraintAnchor2);
              } else {
                paramd.D1(paramConstraintAnchor2);
              }
              return;
            }
          }
          paramd.h(paramSolverVariable2, localSolverVariable, paramInt2, paramInt1);
        }
      }
      return;
    }
    if ((i3 < 2) && (paramBoolean2) && (paramBoolean4))
    {
      paramd.h((SolverVariable)localObject1, paramSolverVariable1, 0, 8);
      if ((!paramBoolean1) && (this.S.f != null)) {
        paramInt2 = 0;
      } else {
        paramInt2 = 1;
      }
      paramInt1 = paramInt2;
      if (!paramBoolean1)
      {
        paramSolverVariable1 = this.S.f;
        paramInt1 = paramInt2;
        if (paramSolverVariable1 != null)
        {
          paramSolverVariable1 = paramSolverVariable1.d;
          if (paramSolverVariable1.d0 != 0.0F)
          {
            paramSolverVariable1 = paramSolverVariable1.Z;
            paramDimensionBehaviour = paramSolverVariable1[0];
            paramConstraintAnchor1 = DimensionBehaviour.MATCH_CONSTRAINT;
            if ((paramDimensionBehaviour == paramConstraintAnchor1) && (paramSolverVariable1[1] == paramConstraintAnchor1))
            {
              paramInt1 = 1;
              break label2565;
            }
          }
          paramInt1 = 0;
        }
      }
      label2565:
      if (paramInt1 != 0) {
        paramd.h(paramSolverVariable2, localSolverVariable, 0, 8);
      }
    }
  }
  
  private void x0(StringBuilder paramStringBuilder, String paramString, float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 == paramFloat2) {
      return;
    }
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(" :   ");
    paramStringBuilder.append(paramFloat1);
    paramStringBuilder.append(",\n");
  }
  
  private void y0(StringBuilder paramStringBuilder, String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {
      return;
    }
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(" :   ");
    paramStringBuilder.append(paramInt1);
    paramStringBuilder.append(",\n");
  }
  
  private void z0(StringBuilder paramStringBuilder, String paramString, float paramFloat, int paramInt)
  {
    if (paramFloat == 0.0F) {
      return;
    }
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(" :  [");
    paramStringBuilder.append(paramFloat);
    paramStringBuilder.append(",");
    paramStringBuilder.append(paramInt);
    paramStringBuilder.append("");
    paramStringBuilder.append("],\n");
  }
  
  public DimensionBehaviour A()
  {
    return this.Z[0];
  }
  
  public void A0(int paramInt)
  {
    this.l0 = paramInt;
    boolean bool;
    if (paramInt > 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.J = bool;
  }
  
  public int B()
  {
    ConstraintAnchor localConstraintAnchor = this.O;
    int i1 = 0;
    if (localConstraintAnchor != null) {
      i1 = 0 + localConstraintAnchor.g;
    }
    localConstraintAnchor = this.Q;
    int i2 = i1;
    if (localConstraintAnchor != null) {
      i2 = i1 + localConstraintAnchor.g;
    }
    return i2;
  }
  
  public void B0(Object paramObject)
  {
    this.q0 = paramObject;
  }
  
  public int C()
  {
    return this.M;
  }
  
  public void C0(String paramString)
  {
    this.u0 = paramString;
  }
  
  public int D()
  {
    return this.N;
  }
  
  public void D0(String paramString)
  {
    int i5;
    int i6;
    String str;
    if ((paramString != null) && (paramString.length() != 0))
    {
      int i1 = -1;
      int i2 = paramString.length();
      int i3 = paramString.indexOf(',');
      int i4 = 0;
      i5 = i1;
      i6 = i4;
      if (i3 > 0)
      {
        i5 = i1;
        i6 = i4;
        if (i3 < i2 - 1)
        {
          str = paramString.substring(0, i3);
          if (str.equalsIgnoreCase("W"))
          {
            i5 = 0;
          }
          else
          {
            i5 = i1;
            if (str.equalsIgnoreCase("H")) {
              i5 = 1;
            }
          }
          i6 = i3 + 1;
        }
      }
      i1 = paramString.indexOf(':');
      if ((i1 >= 0) && (i1 < i2 - 1))
      {
        str = paramString.substring(i6, i1);
        paramString = paramString.substring(i1 + 1);
        if ((str.length() <= 0) || (paramString.length() <= 0)) {
          break label240;
        }
      }
    }
    try
    {
      f1 = Float.parseFloat(str);
      float f2 = Float.parseFloat(paramString);
      if ((f1 <= 0.0F) || (f2 <= 0.0F)) {
        break label240;
      }
      if (i5 == 1) {
        f1 = Math.abs(f2 / f1);
      } else {
        f1 = Math.abs(f1 / f2);
      }
    }
    catch (NumberFormatException paramString)
    {
      float f1;
      break label240;
    }
    paramString = paramString.substring(i6);
    if (paramString.length() > 0) {
      f1 = Float.parseFloat(paramString);
    } else {
      label240:
      f1 = 0.0F;
    }
    if (f1 > 0.0F)
    {
      this.d0 = f1;
      this.e0 = i5;
    }
    return;
    this.d0 = 0.0F;
  }
  
  public int E(int paramInt)
  {
    if (paramInt == 0) {
      return W();
    }
    if (paramInt == 1) {
      return x();
    }
    return 0;
  }
  
  public void E0(int paramInt)
  {
    if (!this.J) {
      return;
    }
    int i1 = paramInt - this.l0;
    int i2 = this.c0;
    this.g0 = i1;
    this.P.t(i1);
    this.R.t(i2 + i1);
    this.S.t(paramInt);
    this.q = true;
  }
  
  public int F()
  {
    return this.H[1];
  }
  
  public void F0(int paramInt1, int paramInt2)
  {
    if (this.p) {
      return;
    }
    this.O.t(paramInt1);
    this.Q.t(paramInt2);
    this.f0 = paramInt1;
    this.b0 = (paramInt2 - paramInt1);
    this.p = true;
  }
  
  public int G()
  {
    return this.H[0];
  }
  
  public void G0(int paramInt)
  {
    this.O.t(paramInt);
    this.f0 = paramInt;
  }
  
  public int H()
  {
    return this.n0;
  }
  
  public void H0(int paramInt)
  {
    this.P.t(paramInt);
    this.g0 = paramInt;
  }
  
  public int I()
  {
    return this.m0;
  }
  
  public void I0(int paramInt1, int paramInt2)
  {
    if (this.q) {
      return;
    }
    this.P.t(paramInt1);
    this.R.t(paramInt2);
    this.g0 = paramInt1;
    this.c0 = (paramInt2 - paramInt1);
    if (this.J) {
      this.S.t(paramInt1 + this.l0);
    }
    this.q = true;
  }
  
  public ConstraintWidget J(int paramInt)
  {
    ConstraintAnchor localConstraintAnchor1;
    ConstraintAnchor localConstraintAnchor2;
    if (paramInt == 0)
    {
      localConstraintAnchor1 = this.Q;
      localConstraintAnchor2 = localConstraintAnchor1.f;
      if ((localConstraintAnchor2 != null) && (localConstraintAnchor2.f == localConstraintAnchor1)) {
        return localConstraintAnchor2.d;
      }
    }
    else if (paramInt == 1)
    {
      localConstraintAnchor2 = this.R;
      localConstraintAnchor1 = localConstraintAnchor2.f;
      if ((localConstraintAnchor1 != null) && (localConstraintAnchor1.f == localConstraintAnchor2)) {
        return localConstraintAnchor1.d;
      }
    }
    return null;
  }
  
  public void J0(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt3 - paramInt1;
    paramInt3 = paramInt4 - paramInt2;
    this.f0 = paramInt1;
    this.g0 = paramInt2;
    if (this.s0 == 8)
    {
      this.b0 = 0;
      this.c0 = 0;
      return;
    }
    DimensionBehaviour[] arrayOfDimensionBehaviour = this.Z;
    DimensionBehaviour localDimensionBehaviour1 = arrayOfDimensionBehaviour[0];
    DimensionBehaviour localDimensionBehaviour2 = DimensionBehaviour.FIXED;
    paramInt1 = i1;
    if (localDimensionBehaviour1 == localDimensionBehaviour2)
    {
      paramInt2 = this.b0;
      paramInt1 = i1;
      if (i1 < paramInt2) {
        paramInt1 = paramInt2;
      }
    }
    paramInt2 = paramInt3;
    if (arrayOfDimensionBehaviour[1] == localDimensionBehaviour2)
    {
      paramInt4 = this.c0;
      paramInt2 = paramInt3;
      if (paramInt3 < paramInt4) {
        paramInt2 = paramInt4;
      }
    }
    this.b0 = paramInt1;
    this.c0 = paramInt2;
    paramInt3 = this.n0;
    if (paramInt2 < paramInt3) {
      this.c0 = paramInt3;
    }
    paramInt3 = this.m0;
    if (paramInt1 < paramInt3) {
      this.b0 = paramInt3;
    }
    paramInt3 = this.A;
    if ((paramInt3 > 0) && (localDimensionBehaviour1 == DimensionBehaviour.MATCH_CONSTRAINT)) {
      this.b0 = Math.min(this.b0, paramInt3);
    }
    paramInt3 = this.D;
    if ((paramInt3 > 0) && (this.Z[1] == DimensionBehaviour.MATCH_CONSTRAINT)) {
      this.c0 = Math.min(this.c0, paramInt3);
    }
    paramInt3 = this.b0;
    if (paramInt1 != paramInt3) {
      this.l = paramInt3;
    }
    paramInt1 = this.c0;
    if (paramInt2 != paramInt1) {
      this.m = paramInt1;
    }
  }
  
  public ConstraintWidget K()
  {
    return this.a0;
  }
  
  public void K0(boolean paramBoolean)
  {
    this.J = paramBoolean;
  }
  
  public ConstraintWidget L(int paramInt)
  {
    ConstraintAnchor localConstraintAnchor1;
    ConstraintAnchor localConstraintAnchor2;
    if (paramInt == 0)
    {
      localConstraintAnchor1 = this.O;
      localConstraintAnchor2 = localConstraintAnchor1.f;
      if ((localConstraintAnchor2 != null) && (localConstraintAnchor2.f == localConstraintAnchor1)) {
        return localConstraintAnchor2.d;
      }
    }
    else if (paramInt == 1)
    {
      localConstraintAnchor2 = this.P;
      localConstraintAnchor1 = localConstraintAnchor2.f;
      if ((localConstraintAnchor1 != null) && (localConstraintAnchor1.f == localConstraintAnchor2)) {
        return localConstraintAnchor1.d;
      }
    }
    return null;
  }
  
  public void L0(int paramInt)
  {
    this.c0 = paramInt;
    int i1 = this.n0;
    if (paramInt < i1) {
      this.c0 = i1;
    }
  }
  
  public int M()
  {
    return X() + this.b0;
  }
  
  public void M0(float paramFloat)
  {
    this.o0 = paramFloat;
  }
  
  public WidgetRun N(int paramInt)
  {
    if (paramInt == 0) {
      return this.e;
    }
    if (paramInt == 1) {
      return this.f;
    }
    return null;
  }
  
  public void N0(int paramInt)
  {
    this.z0 = paramInt;
  }
  
  public void O(StringBuilder paramStringBuilder)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("  ");
    localStringBuilder.append(this.o);
    localStringBuilder.append(":{\n");
    paramStringBuilder.append(localStringBuilder.toString());
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("    actualWidth:");
    localStringBuilder.append(this.b0);
    paramStringBuilder.append(localStringBuilder.toString());
    paramStringBuilder.append("\n");
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("    actualHeight:");
    localStringBuilder.append(this.c0);
    paramStringBuilder.append(localStringBuilder.toString());
    paramStringBuilder.append("\n");
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("    actualLeft:");
    localStringBuilder.append(this.f0);
    paramStringBuilder.append(localStringBuilder.toString());
    paramStringBuilder.append("\n");
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("    actualTop:");
    localStringBuilder.append(this.g0);
    paramStringBuilder.append(localStringBuilder.toString());
    paramStringBuilder.append("\n");
    Q(paramStringBuilder, "left", this.O);
    Q(paramStringBuilder, "top", this.P);
    Q(paramStringBuilder, "right", this.Q);
    Q(paramStringBuilder, "bottom", this.R);
    Q(paramStringBuilder, "baseline", this.S);
    Q(paramStringBuilder, "centerX", this.T);
    Q(paramStringBuilder, "centerY", this.U);
    P(paramStringBuilder, "    width", this.b0, this.m0, this.H[0], this.l, this.z, this.w, this.B, this.D0[0]);
    P(paramStringBuilder, "    height", this.c0, this.n0, this.H[1], this.m, this.C, this.x, this.E, this.D0[1]);
    z0(paramStringBuilder, "    dimensionRatio", this.d0, this.e0);
    x0(paramStringBuilder, "    horizontalBias", this.o0, K0);
    x0(paramStringBuilder, "    verticalBias", this.p0, K0);
    y0(paramStringBuilder, "    horizontalChainStyle", this.z0, 0);
    y0(paramStringBuilder, "    verticalChainStyle", this.A0, 0);
    paramStringBuilder.append("  }");
  }
  
  public void O0(int paramInt1, int paramInt2)
  {
    this.f0 = paramInt1;
    paramInt1 = paramInt2 - paramInt1;
    this.b0 = paramInt1;
    paramInt2 = this.m0;
    if (paramInt1 < paramInt2) {
      this.b0 = paramInt2;
    }
  }
  
  public void P0(DimensionBehaviour paramDimensionBehaviour)
  {
    this.Z[0] = paramDimensionBehaviour;
  }
  
  public void Q0(int paramInt1, int paramInt2, int paramInt3, float paramFloat)
  {
    this.w = paramInt1;
    this.z = paramInt2;
    paramInt2 = paramInt3;
    if (paramInt3 == 2147483647) {
      paramInt2 = 0;
    }
    this.A = paramInt2;
    this.B = paramFloat;
    if ((paramFloat > 0.0F) && (paramFloat < 1.0F) && (paramInt1 == 0)) {
      this.w = 2;
    }
  }
  
  public float R()
  {
    return this.p0;
  }
  
  public void R0(float paramFloat)
  {
    this.D0[0] = paramFloat;
  }
  
  public int S()
  {
    return this.A0;
  }
  
  protected void S0(int paramInt, boolean paramBoolean)
  {
    this.Y[paramInt] = paramBoolean;
  }
  
  public DimensionBehaviour T()
  {
    return this.Z[1];
  }
  
  public void T0(boolean paramBoolean)
  {
    this.K = paramBoolean;
  }
  
  public int U()
  {
    ConstraintAnchor localConstraintAnchor = this.O;
    int i1 = 0;
    if (localConstraintAnchor != null) {
      i1 = 0 + this.P.g;
    }
    int i2 = i1;
    if (this.Q != null) {
      i2 = i1 + this.R.g;
    }
    return i2;
  }
  
  public void U0(boolean paramBoolean)
  {
    this.L = paramBoolean;
  }
  
  public int V()
  {
    return this.s0;
  }
  
  public void V0(int paramInt1, int paramInt2)
  {
    this.M = paramInt1;
    this.N = paramInt2;
    Y0(false);
  }
  
  public int W()
  {
    if (this.s0 == 8) {
      return 0;
    }
    return this.b0;
  }
  
  public void W0(int paramInt)
  {
    this.H[1] = paramInt;
  }
  
  public int X()
  {
    ConstraintWidget localConstraintWidget = this.a0;
    if ((localConstraintWidget != null) && ((localConstraintWidget instanceof d))) {
      return ((d)localConstraintWidget).S0 + this.f0;
    }
    return this.f0;
  }
  
  public void X0(int paramInt)
  {
    this.H[0] = paramInt;
  }
  
  public int Y()
  {
    ConstraintWidget localConstraintWidget = this.a0;
    if ((localConstraintWidget != null) && ((localConstraintWidget instanceof d))) {
      return ((d)localConstraintWidget).T0 + this.g0;
    }
    return this.g0;
  }
  
  public void Y0(boolean paramBoolean)
  {
    this.i = paramBoolean;
  }
  
  public boolean Z()
  {
    return this.J;
  }
  
  public void Z0(int paramInt)
  {
    if (paramInt < 0) {
      this.n0 = 0;
    } else {
      this.n0 = paramInt;
    }
  }
  
  public boolean a0(int paramInt)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    int i1;
    if (paramInt == 0)
    {
      if (this.O.f != null) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      if (this.Q.f != null) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if (paramInt + i1 >= 2) {
        bool2 = false;
      }
      return bool2;
    }
    if (this.P.f != null) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    if (this.R.f != null) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i2;
    if (this.S.f != null) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if (paramInt + i1 + i2 < 2) {
      bool2 = bool1;
    } else {
      bool2 = false;
    }
    return bool2;
  }
  
  public void a1(int paramInt)
  {
    if (paramInt < 0) {
      this.m0 = 0;
    } else {
      this.m0 = paramInt;
    }
  }
  
  public boolean b0()
  {
    int i1 = this.X.size();
    for (int i2 = 0; i2 < i1; i2++) {
      if (((ConstraintAnchor)this.X.get(i2)).m()) {
        return true;
      }
    }
    return false;
  }
  
  public void b1(int paramInt1, int paramInt2)
  {
    this.f0 = paramInt1;
    this.g0 = paramInt2;
  }
  
  public boolean c0()
  {
    boolean bool;
    if ((this.l == -1) && (this.m == -1)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void c1(ConstraintWidget paramConstraintWidget)
  {
    this.a0 = paramConstraintWidget;
  }
  
  public boolean d0(int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    ConstraintAnchor localConstraintAnchor;
    if (paramInt1 == 0)
    {
      localConstraintAnchor = this.O.f;
      if ((localConstraintAnchor != null) && (localConstraintAnchor.n()))
      {
        localConstraintAnchor = this.Q.f;
        if ((localConstraintAnchor != null) && (localConstraintAnchor.n()))
        {
          if (this.Q.f.e() - this.Q.f() - (this.O.f.e() + this.O.f()) < paramInt2) {
            bool2 = false;
          }
          return bool2;
        }
      }
    }
    else
    {
      localConstraintAnchor = this.P.f;
      if ((localConstraintAnchor != null) && (localConstraintAnchor.n()))
      {
        localConstraintAnchor = this.R.f;
        if ((localConstraintAnchor != null) && (localConstraintAnchor.n()))
        {
          if (this.R.f.e() - this.R.f() - (this.P.f.e() + this.P.f()) >= paramInt2) {
            bool2 = bool1;
          } else {
            bool2 = false;
          }
          return bool2;
        }
      }
    }
    return false;
  }
  
  public void d1(float paramFloat)
  {
    this.p0 = paramFloat;
  }
  
  public void e(d paramd, androidx.constraintlayout.core.d paramd1, HashSet<ConstraintWidget> paramHashSet, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (!paramHashSet.contains(this)) {
        return;
      }
      g.a(paramd, paramd1, this);
      paramHashSet.remove(this);
      g(paramd1, paramd.T1(64));
    }
    Object localObject;
    if (paramInt == 0)
    {
      localObject = this.O.d();
      if (localObject != null)
      {
        localObject = ((HashSet)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((ConstraintAnchor)((Iterator)localObject).next()).d.e(paramd, paramd1, paramHashSet, paramInt, true);
        }
      }
      localObject = this.Q.d();
      if (localObject != null)
      {
        localObject = ((HashSet)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((ConstraintAnchor)((Iterator)localObject).next()).d.e(paramd, paramd1, paramHashSet, paramInt, true);
        }
      }
    }
    else
    {
      localObject = this.P.d();
      if (localObject != null)
      {
        localObject = ((HashSet)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((ConstraintAnchor)((Iterator)localObject).next()).d.e(paramd, paramd1, paramHashSet, paramInt, true);
        }
      }
      localObject = this.R.d();
      if (localObject != null)
      {
        localObject = ((HashSet)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((ConstraintAnchor)((Iterator)localObject).next()).d.e(paramd, paramd1, paramHashSet, paramInt, true);
        }
      }
      localObject = this.S.d();
      if (localObject != null)
      {
        localObject = ((HashSet)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((ConstraintAnchor)((Iterator)localObject).next()).d.e(paramd, paramd1, paramHashSet, paramInt, true);
        }
      }
    }
  }
  
  public void e0(ConstraintAnchor.Type paramType1, ConstraintWidget paramConstraintWidget, ConstraintAnchor.Type paramType2, int paramInt1, int paramInt2)
  {
    o(paramType1).b(paramConstraintWidget.o(paramType2), paramInt1, paramInt2, true);
  }
  
  public void e1(int paramInt)
  {
    this.A0 = paramInt;
  }
  
  boolean f()
  {
    boolean bool;
    if ((!(this instanceof h)) && (!(this instanceof f))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void f1(int paramInt1, int paramInt2)
  {
    this.g0 = paramInt1;
    paramInt2 -= paramInt1;
    this.c0 = paramInt2;
    paramInt1 = this.n0;
    if (paramInt2 < paramInt1) {
      this.c0 = paramInt1;
    }
  }
  
  public void g(androidx.constraintlayout.core.d paramd, boolean paramBoolean)
  {
    SolverVariable localSolverVariable = paramd.q(this.O);
    Object localObject1 = paramd.q(this.Q);
    Object localObject2 = paramd.q(this.P);
    Object localObject3 = paramd.q(this.R);
    Object localObject4 = paramd.q(this.S);
    Object localObject5 = this.a0;
    if (localObject5 != null)
    {
      if ((localObject5 != null) && (localObject5.Z[0] == DimensionBehaviour.WRAP_CONTENT)) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      if ((localObject5 != null) && (localObject5.Z[1] == DimensionBehaviour.WRAP_CONTENT)) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      i1 = this.v;
      if (i1 != 1)
      {
        if (i1 != 2)
        {
          if (i1 != 3)
          {
            bool3 = bool2;
            bool2 = bool1;
            bool1 = bool3;
            break label184;
          }
        }
        else
        {
          bool1 = bool2;
          bool2 = false;
          break label184;
        }
      }
      else
      {
        bool3 = false;
        bool2 = bool1;
        bool1 = bool3;
        break label184;
      }
    }
    boolean bool2 = false;
    boolean bool1 = bool2;
    label184:
    if ((this.s0 == 8) && (!this.t0) && (!b0()))
    {
      localObject5 = this.Y;
      if ((localObject5[0] == 0) && (localObject5[1] == 0)) {
        return;
      }
    }
    boolean bool3 = this.p;
    if ((bool3) || (this.q))
    {
      if (bool3)
      {
        paramd.f(localSolverVariable, this.f0);
        paramd.f((SolverVariable)localObject1, this.f0 + this.b0);
        if (bool2)
        {
          localObject5 = this.a0;
          if (localObject5 != null) {
            if (this.k)
            {
              localObject5 = (d)localObject5;
              ((d)localObject5).z1(this.O);
              ((d)localObject5).y1(this.Q);
            }
            else
            {
              paramd.h(paramd.q(((ConstraintWidget)localObject5).Q), (SolverVariable)localObject1, 0, 5);
            }
          }
        }
      }
      if (this.q)
      {
        paramd.f((SolverVariable)localObject2, this.g0);
        paramd.f((SolverVariable)localObject3, this.g0 + this.c0);
        if (this.S.m()) {
          paramd.f((SolverVariable)localObject4, this.g0 + this.l0);
        }
        if (bool1)
        {
          localObject5 = this.a0;
          if (localObject5 != null) {
            if (this.k)
            {
              localObject5 = (d)localObject5;
              ((d)localObject5).E1(this.P);
              ((d)localObject5).D1(this.R);
            }
            else
            {
              paramd.h(paramd.q(((ConstraintWidget)localObject5).R), (SolverVariable)localObject3, 0, 5);
            }
          }
        }
      }
      if ((this.p) && (this.q))
      {
        this.p = false;
        this.q = false;
        return;
      }
    }
    bool3 = androidx.constraintlayout.core.d.r;
    if (paramBoolean)
    {
      localObject5 = this.e;
      if (localObject5 != null)
      {
        localObject6 = this.f;
        if (localObject6 != null)
        {
          localObject7 = ((WidgetRun)localObject5).h;
          if ((((DependencyNode)localObject7).j) && (((WidgetRun)localObject5).i.j) && (((WidgetRun)localObject6).h.j) && (((WidgetRun)localObject6).i.j))
          {
            paramd.f(localSolverVariable, ((DependencyNode)localObject7).g);
            paramd.f((SolverVariable)localObject1, this.e.i.g);
            paramd.f((SolverVariable)localObject2, this.f.h.g);
            paramd.f((SolverVariable)localObject3, this.f.i.g);
            paramd.f((SolverVariable)localObject4, this.f.k.g);
            if (this.a0 != null)
            {
              if ((bool2) && (this.g[0] != 0) && (!i0())) {
                paramd.h(paramd.q(this.a0.Q), (SolverVariable)localObject1, 0, 8);
              }
              if ((bool1) && (this.g[1] != 0) && (!k0())) {
                paramd.h(paramd.q(this.a0.R), (SolverVariable)localObject3, 0, 8);
              }
            }
            this.p = false;
            this.q = false;
            return;
          }
        }
      }
    }
    boolean bool4;
    if (this.a0 != null)
    {
      if (f0(0))
      {
        ((d)this.a0).v1(this, 0);
        bool3 = true;
      }
      else
      {
        bool3 = i0();
      }
      if (f0(1))
      {
        ((d)this.a0).v1(this, 1);
        bool4 = true;
      }
      else
      {
        bool4 = k0();
      }
      if ((!bool3) && (bool2) && (this.s0 != 8) && (this.O.f == null) && (this.Q.f == null)) {
        paramd.h(paramd.q(this.a0.Q), (SolverVariable)localObject1, 0, 1);
      }
      if ((!bool4) && (bool1) && (this.s0 != 8) && (this.P.f == null) && (this.R.f == null) && (this.S == null)) {
        paramd.h(paramd.q(this.a0.R), (SolverVariable)localObject3, 0, 1);
      }
      bool5 = bool3;
      bool3 = bool4;
      bool4 = bool5;
    }
    else
    {
      bool3 = false;
      bool4 = bool3;
    }
    int i2 = this.b0;
    int i1 = this.m0;
    if (i2 >= i1) {
      i1 = i2;
    }
    int i3 = this.c0;
    int i4 = this.n0;
    if (i3 >= i4) {
      i4 = i3;
    }
    Object localObject6 = this.Z;
    localObject5 = localObject6[0];
    DimensionBehaviour localDimensionBehaviour = DimensionBehaviour.MATCH_CONSTRAINT;
    if (localObject5 != localDimensionBehaviour) {
      bool5 = true;
    } else {
      bool5 = false;
    }
    localObject6 = localObject6[1];
    if (localObject6 != localDimensionBehaviour) {
      bool6 = true;
    } else {
      bool6 = false;
    }
    int i5 = this.e0;
    this.F = i5;
    float f1 = this.d0;
    this.G = f1;
    int i6 = this.w;
    int i7 = this.x;
    int i8;
    if ((f1 > 0.0F) && (this.s0 != 8))
    {
      i8 = i6;
      if (localObject5 == localDimensionBehaviour)
      {
        i8 = i6;
        if (i6 == 0) {
          i8 = 3;
        }
      }
      i6 = i7;
      if (localObject6 == localDimensionBehaviour)
      {
        i6 = i7;
        if (i7 == 0) {
          i6 = 3;
        }
      }
      if ((localObject5 == localDimensionBehaviour) && (localObject6 == localDimensionBehaviour) && (i8 == 3) && (i6 == 3))
      {
        o1(bool2, bool1, bool5, bool6);
      }
      else if ((localObject5 == localDimensionBehaviour) && (i8 == 3))
      {
        this.F = 0;
        i1 = (int)(f1 * i3);
        if (localObject6 != localDimensionBehaviour)
        {
          i8 = i6;
          i6 = 4;
          break label1344;
        }
      }
      else if ((localObject6 == localDimensionBehaviour) && (i6 == 3))
      {
        this.F = 1;
        if (i5 == -1) {
          this.G = (1.0F / f1);
        }
        i4 = (int)(this.G * i2);
        i7 = i8;
        if (localObject5 != localDimensionBehaviour)
        {
          i8 = 4;
          i6 = i7;
          break label1344;
        }
      }
      i7 = i8;
      i8 = i6;
      bool5 = true;
      i6 = i7;
      break label1347;
    }
    else
    {
      i8 = i7;
    }
    label1344:
    boolean bool5 = false;
    label1347:
    localObject5 = this.y;
    localObject5[0] = i6;
    localObject5[1] = i8;
    this.h = bool5;
    if (bool5)
    {
      i7 = this.F;
      if ((i7 == 0) || (i7 == -1))
      {
        bool7 = true;
        break label1402;
      }
    }
    boolean bool7 = false;
    label1402:
    if (bool5)
    {
      i7 = this.F;
      if ((i7 == 1) || (i7 == -1))
      {
        bool6 = true;
        break label1434;
      }
    }
    boolean bool6 = false;
    label1434:
    localObject5 = this.Z[0];
    Object localObject8 = DimensionBehaviour.WRAP_CONTENT;
    if ((localObject5 == localObject8) && ((this instanceof d))) {
      bool8 = true;
    } else {
      bool8 = false;
    }
    if (bool8) {
      i1 = 0;
    }
    boolean bool9 = this.V.o() ^ true;
    localObject5 = this.Y;
    int i9 = localObject5[0];
    int i10 = localObject5[1];
    ConstraintAnchor localConstraintAnchor2;
    if ((this.t != 2) && (!this.p))
    {
      if (paramBoolean)
      {
        localObject6 = this.e;
        if (localObject6 != null)
        {
          localObject5 = ((WidgetRun)localObject6).h;
          if ((((DependencyNode)localObject5).j) && (((WidgetRun)localObject6).i.j))
          {
            if (paramBoolean)
            {
              paramd.f(localSolverVariable, ((DependencyNode)localObject5).g);
              paramd.f((SolverVariable)localObject1, this.e.i.g);
              if ((this.a0 != null) && (bool2) && (this.g[0] != 0) && (!i0())) {
                paramd.h(paramd.q(this.a0.Q), (SolverVariable)localObject1, 0, 8);
              }
              break label1850;
            }
            break label1850;
          }
        }
      }
      localObject5 = this.a0;
      if (localObject5 != null) {
        localObject5 = paramd.q(((ConstraintWidget)localObject5).Q);
      } else {
        localObject5 = null;
      }
      localObject6 = this.a0;
      if (localObject6 != null) {
        localObject6 = paramd.q(((ConstraintWidget)localObject6).O);
      } else {
        localObject6 = null;
      }
      int i11 = this.g[0];
      localObject9 = this.Z;
      localObject7 = localObject9[0];
      ConstraintAnchor localConstraintAnchor1 = this.O;
      localConstraintAnchor2 = this.Q;
      i7 = this.f0;
      i3 = this.m0;
      i2 = this.H[0];
      f1 = this.o0;
      boolean bool10;
      if (localObject9[1] == localDimensionBehaviour) {
        bool10 = true;
      } else {
        bool10 = false;
      }
      i(paramd, true, bool2, bool1, i11, (SolverVariable)localObject6, (SolverVariable)localObject5, (DimensionBehaviour)localObject7, bool8, localConstraintAnchor1, localConstraintAnchor2, i7, i1, i3, i2, f1, bool7, bool10, bool4, bool3, i9, i6, i8, this.z, this.A, this.B, bool9);
    }
    label1850:
    localObject6 = localObject2;
    localObject5 = localObject3;
    boolean bool8 = bool1;
    localObject3 = localObject1;
    if (paramBoolean)
    {
      localObject1 = this;
      localObject2 = ((ConstraintWidget)localObject1).f;
      if (localObject2 != null)
      {
        localObject7 = ((WidgetRun)localObject2).h;
        if ((((DependencyNode)localObject7).j) && (((WidgetRun)localObject2).i.j))
        {
          i1 = ((DependencyNode)localObject7).g;
          localObject7 = paramd;
          ((androidx.constraintlayout.core.d)localObject7).f((SolverVariable)localObject6, i1);
          i1 = ((ConstraintWidget)localObject1).f.i.g;
          localObject2 = localObject5;
          ((androidx.constraintlayout.core.d)localObject7).f((SolverVariable)localObject2, i1);
          ((androidx.constraintlayout.core.d)localObject7).f((SolverVariable)localObject4, ((ConstraintWidget)localObject1).f.k.g);
          localObject9 = ((ConstraintWidget)localObject1).a0;
          if ((localObject9 != null) && (!bool3) && (bool8)) {
            if (localObject1.g[1] != 0) {
              ((androidx.constraintlayout.core.d)localObject7).h(((androidx.constraintlayout.core.d)localObject7).q(((ConstraintWidget)localObject9).R), (SolverVariable)localObject2, 0, 8);
            } else {}
          }
          i1 = 0;
          break label2044;
        }
      }
    }
    i1 = 1;
    label2044:
    localObject2 = this;
    Object localObject7 = paramd;
    Object localObject9 = localObject4;
    if (((ConstraintWidget)localObject2).u == 2) {
      i1 = 0;
    }
    if ((i1 != 0) && (!((ConstraintWidget)localObject2).q))
    {
      if ((localObject2.Z[1] == localObject8) && ((localObject2 instanceof d))) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      }
      if (paramBoolean) {
        i4 = 0;
      }
      localObject4 = ((ConstraintWidget)localObject2).a0;
      if (localObject4 != null) {
        localObject4 = ((androidx.constraintlayout.core.d)localObject7).q(((ConstraintWidget)localObject4).R);
      } else {
        localObject4 = null;
      }
      localObject1 = ((ConstraintWidget)localObject2).a0;
      if (localObject1 != null) {
        localObject1 = ((androidx.constraintlayout.core.d)localObject7).q(((ConstraintWidget)localObject1).P);
      } else {
        localObject1 = null;
      }
      if ((((ConstraintWidget)localObject2).l0 > 0) || (((ConstraintWidget)localObject2).s0 == 8))
      {
        localObject8 = ((ConstraintWidget)localObject2).S;
        if (((ConstraintAnchor)localObject8).f != null)
        {
          ((androidx.constraintlayout.core.d)localObject7).e((SolverVariable)localObject9, (SolverVariable)localObject6, p(), 8);
          ((androidx.constraintlayout.core.d)localObject7).e((SolverVariable)localObject9, ((androidx.constraintlayout.core.d)localObject7).q(((ConstraintWidget)localObject2).S.f), ((ConstraintWidget)localObject2).S.f(), 8);
          if (bool8) {
            ((androidx.constraintlayout.core.d)localObject7).h((SolverVariable)localObject4, ((androidx.constraintlayout.core.d)localObject7).q(((ConstraintWidget)localObject2).R), 0, 5);
          }
          bool1 = false;
          break label2336;
        }
        if (((ConstraintWidget)localObject2).s0 == 8) {
          ((androidx.constraintlayout.core.d)localObject7).e((SolverVariable)localObject9, (SolverVariable)localObject6, ((ConstraintAnchor)localObject8).f(), 8);
        } else {
          ((androidx.constraintlayout.core.d)localObject7).e((SolverVariable)localObject9, (SolverVariable)localObject6, p(), 8);
        }
      }
      bool1 = bool9;
      label2336:
      int i12 = localObject2.g[1];
      localObject7 = ((ConstraintWidget)localObject2).Z;
      localObject9 = localObject7[1];
      localConstraintAnchor2 = ((ConstraintWidget)localObject2).P;
      localObject8 = ((ConstraintWidget)localObject2).R;
      i7 = ((ConstraintWidget)localObject2).g0;
      i1 = ((ConstraintWidget)localObject2).n0;
      i2 = localObject2.H[1];
      f1 = ((ConstraintWidget)localObject2).p0;
      if (localObject7[0] == localDimensionBehaviour) {
        bool7 = true;
      } else {
        bool7 = false;
      }
      i(paramd, false, bool8, bool2, i12, (SolverVariable)localObject1, (SolverVariable)localObject4, (DimensionBehaviour)localObject9, paramBoolean, localConstraintAnchor2, (ConstraintAnchor)localObject8, i7, i4, i1, i2, f1, bool6, bool7, bool3, bool4, i10, i8, i6, ((ConstraintWidget)localObject2).C, ((ConstraintWidget)localObject2).D, ((ConstraintWidget)localObject2).E, bool1);
    }
    if (bool5)
    {
      localObject4 = this;
      if (((ConstraintWidget)localObject4).F == 1) {
        paramd.k((SolverVariable)localObject5, (SolverVariable)localObject6, (SolverVariable)localObject3, localSolverVariable, ((ConstraintWidget)localObject4).G, 8);
      } else {
        paramd.k((SolverVariable)localObject3, localSolverVariable, (SolverVariable)localObject5, (SolverVariable)localObject6, ((ConstraintWidget)localObject4).G, 8);
      }
    }
    localObject5 = this;
    if (((ConstraintWidget)localObject5).V.o()) {
      paramd.b((ConstraintWidget)localObject5, ((ConstraintWidget)localObject5).V.j().h(), (float)Math.toRadians(((ConstraintWidget)localObject5).I + 90.0F), ((ConstraintWidget)localObject5).V.f());
    }
    ((ConstraintWidget)localObject5).p = false;
    ((ConstraintWidget)localObject5).q = false;
  }
  
  public boolean g0()
  {
    return this.r;
  }
  
  public void g1(DimensionBehaviour paramDimensionBehaviour)
  {
    this.Z[1] = paramDimensionBehaviour;
  }
  
  public boolean h()
  {
    boolean bool;
    if (this.s0 != 8) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean h0(int paramInt)
  {
    return this.Y[paramInt];
  }
  
  public void h1(int paramInt1, int paramInt2, int paramInt3, float paramFloat)
  {
    this.x = paramInt1;
    this.C = paramInt2;
    paramInt2 = paramInt3;
    if (paramInt3 == 2147483647) {
      paramInt2 = 0;
    }
    this.D = paramInt2;
    this.E = paramFloat;
    if ((paramFloat > 0.0F) && (paramFloat < 1.0F) && (paramInt1 == 0)) {
      this.x = 2;
    }
  }
  
  public boolean i0()
  {
    ConstraintAnchor localConstraintAnchor1 = this.O;
    ConstraintAnchor localConstraintAnchor2 = localConstraintAnchor1.f;
    if ((localConstraintAnchor2 == null) || (localConstraintAnchor2.f != localConstraintAnchor1))
    {
      localConstraintAnchor2 = this.Q;
      localConstraintAnchor1 = localConstraintAnchor2.f;
    }
    return (localConstraintAnchor1 != null) && (localConstraintAnchor1.f == localConstraintAnchor2);
  }
  
  public void i1(float paramFloat)
  {
    this.D0[1] = paramFloat;
  }
  
  public void j(ConstraintAnchor.Type paramType1, ConstraintWidget paramConstraintWidget, ConstraintAnchor.Type paramType2, int paramInt)
  {
    ConstraintAnchor.Type localType1 = ConstraintAnchor.Type.CENTER;
    Object localObject1;
    ConstraintAnchor.Type localType4;
    Object localObject2;
    if (paramType1 == localType1)
    {
      if (paramType2 == localType1)
      {
        ConstraintAnchor.Type localType2 = ConstraintAnchor.Type.LEFT;
        ConstraintAnchor localConstraintAnchor = o(localType2);
        ConstraintAnchor.Type localType3 = ConstraintAnchor.Type.RIGHT;
        localObject1 = o(localType3);
        paramType1 = ConstraintAnchor.Type.TOP;
        paramType2 = o(paramType1);
        localType4 = ConstraintAnchor.Type.BOTTOM;
        localObject2 = o(localType4);
        int i1 = 1;
        if (((localConstraintAnchor != null) && (localConstraintAnchor.o())) || ((localObject1 != null) && (((ConstraintAnchor)localObject1).o())))
        {
          paramInt = 0;
        }
        else
        {
          j(localType2, paramConstraintWidget, localType2, 0);
          j(localType3, paramConstraintWidget, localType3, 0);
          paramInt = 1;
        }
        if (((paramType2 != null) && (paramType2.o())) || ((localObject2 != null) && (((ConstraintAnchor)localObject2).o())))
        {
          i1 = 0;
        }
        else
        {
          j(paramType1, paramConstraintWidget, paramType1, 0);
          j(localType4, paramConstraintWidget, localType4, 0);
        }
        if ((paramInt != 0) && (i1 != 0))
        {
          o(localType1).a(paramConstraintWidget.o(localType1), 0);
        }
        else if (paramInt != 0)
        {
          paramType1 = ConstraintAnchor.Type.CENTER_X;
          o(paramType1).a(paramConstraintWidget.o(paramType1), 0);
        }
        else if (i1 != 0)
        {
          paramType1 = ConstraintAnchor.Type.CENTER_Y;
          o(paramType1).a(paramConstraintWidget.o(paramType1), 0);
        }
      }
      else
      {
        paramType1 = ConstraintAnchor.Type.LEFT;
        if ((paramType2 != paramType1) && (paramType2 != ConstraintAnchor.Type.RIGHT))
        {
          paramType1 = ConstraintAnchor.Type.TOP;
          if ((paramType2 == paramType1) || (paramType2 == ConstraintAnchor.Type.BOTTOM))
          {
            j(paramType1, paramConstraintWidget, paramType2, 0);
            j(ConstraintAnchor.Type.BOTTOM, paramConstraintWidget, paramType2, 0);
            o(localType1).a(paramConstraintWidget.o(paramType2), 0);
          }
        }
        else
        {
          j(paramType1, paramConstraintWidget, paramType2, 0);
          j(ConstraintAnchor.Type.RIGHT, paramConstraintWidget, paramType2, 0);
          o(localType1).a(paramConstraintWidget.o(paramType2), 0);
        }
      }
    }
    else
    {
      localObject2 = ConstraintAnchor.Type.CENTER_X;
      if (paramType1 == localObject2)
      {
        localObject1 = ConstraintAnchor.Type.LEFT;
        if ((paramType2 == localObject1) || (paramType2 == ConstraintAnchor.Type.RIGHT))
        {
          paramType1 = o((ConstraintAnchor.Type)localObject1);
          paramConstraintWidget = paramConstraintWidget.o(paramType2);
          paramType2 = o(ConstraintAnchor.Type.RIGHT);
          paramType1.a(paramConstraintWidget, 0);
          paramType2.a(paramConstraintWidget, 0);
          o((ConstraintAnchor.Type)localObject2).a(paramConstraintWidget, 0);
          return;
        }
      }
      localType4 = ConstraintAnchor.Type.CENTER_Y;
      if (paramType1 == localType4)
      {
        localObject1 = ConstraintAnchor.Type.TOP;
        if ((paramType2 == localObject1) || (paramType2 == ConstraintAnchor.Type.BOTTOM))
        {
          paramType1 = paramConstraintWidget.o(paramType2);
          o((ConstraintAnchor.Type)localObject1).a(paramType1, 0);
          o(ConstraintAnchor.Type.BOTTOM).a(paramType1, 0);
          o(localType4).a(paramType1, 0);
          return;
        }
      }
      if ((paramType1 == localObject2) && (paramType2 == localObject2))
      {
        paramType1 = ConstraintAnchor.Type.LEFT;
        o(paramType1).a(paramConstraintWidget.o(paramType1), 0);
        paramType1 = ConstraintAnchor.Type.RIGHT;
        o(paramType1).a(paramConstraintWidget.o(paramType1), 0);
        o((ConstraintAnchor.Type)localObject2).a(paramConstraintWidget.o(paramType2), 0);
      }
      else if ((paramType1 == localType4) && (paramType2 == localType4))
      {
        paramType1 = ConstraintAnchor.Type.TOP;
        o(paramType1).a(paramConstraintWidget.o(paramType1), 0);
        paramType1 = ConstraintAnchor.Type.BOTTOM;
        o(paramType1).a(paramConstraintWidget.o(paramType1), 0);
        o(localType4).a(paramConstraintWidget.o(paramType2), 0);
      }
      else
      {
        localObject1 = o(paramType1);
        paramConstraintWidget = paramConstraintWidget.o(paramType2);
        if (((ConstraintAnchor)localObject1).p(paramConstraintWidget))
        {
          paramType2 = ConstraintAnchor.Type.BASELINE;
          if (paramType1 == paramType2)
          {
            paramType1 = o(ConstraintAnchor.Type.TOP);
            paramType2 = o(ConstraintAnchor.Type.BOTTOM);
            if (paramType1 != null) {
              paramType1.q();
            }
            if (paramType2 != null) {
              paramType2.q();
            }
          }
          else if ((paramType1 != ConstraintAnchor.Type.TOP) && (paramType1 != ConstraintAnchor.Type.BOTTOM))
          {
            if ((paramType1 == ConstraintAnchor.Type.LEFT) || (paramType1 == ConstraintAnchor.Type.RIGHT))
            {
              paramType2 = o(localType1);
              if (paramType2.j() != paramConstraintWidget) {
                paramType2.q();
              }
              paramType1 = o(paramType1).g();
              paramType2 = o((ConstraintAnchor.Type)localObject2);
              if (paramType2.o())
              {
                paramType1.q();
                paramType2.q();
              }
            }
          }
          else
          {
            paramType2 = o(paramType2);
            if (paramType2 != null) {
              paramType2.q();
            }
            paramType2 = o(localType1);
            if (paramType2.j() != paramConstraintWidget) {
              paramType2.q();
            }
            paramType1 = o(paramType1).g();
            paramType2 = o(localType4);
            if (paramType2.o())
            {
              paramType1.q();
              paramType2.q();
            }
          }
          ((ConstraintAnchor)localObject1).a(paramConstraintWidget, paramInt);
        }
      }
    }
  }
  
  public boolean j0()
  {
    return this.K;
  }
  
  public void j1(int paramInt)
  {
    this.s0 = paramInt;
  }
  
  public void k(ConstraintAnchor paramConstraintAnchor1, ConstraintAnchor paramConstraintAnchor2, int paramInt)
  {
    if (paramConstraintAnchor1.h() == this) {
      j(paramConstraintAnchor1.k(), paramConstraintAnchor2.h(), paramConstraintAnchor2.k(), paramInt);
    }
  }
  
  public boolean k0()
  {
    ConstraintAnchor localConstraintAnchor1 = this.P;
    ConstraintAnchor localConstraintAnchor2 = localConstraintAnchor1.f;
    if ((localConstraintAnchor2 == null) || (localConstraintAnchor2.f != localConstraintAnchor1))
    {
      localConstraintAnchor2 = this.R;
      localConstraintAnchor1 = localConstraintAnchor2.f;
    }
    return (localConstraintAnchor1 != null) && (localConstraintAnchor1.f == localConstraintAnchor2);
  }
  
  public void k1(int paramInt)
  {
    this.b0 = paramInt;
    int i1 = this.m0;
    if (paramInt < i1) {
      this.b0 = i1;
    }
  }
  
  public void l(ConstraintWidget paramConstraintWidget, float paramFloat, int paramInt)
  {
    ConstraintAnchor.Type localType = ConstraintAnchor.Type.CENTER;
    e0(localType, paramConstraintWidget, localType, paramInt, 0);
    this.I = paramFloat;
  }
  
  public boolean l0()
  {
    return this.L;
  }
  
  public void l1(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt <= 3)) {
      this.v = paramInt;
    }
  }
  
  public void m(androidx.constraintlayout.core.d paramd)
  {
    paramd.q(this.O);
    paramd.q(this.P);
    paramd.q(this.Q);
    paramd.q(this.R);
    if (this.l0 > 0) {
      paramd.q(this.S);
    }
  }
  
  public boolean m0()
  {
    boolean bool;
    if ((this.i) && (this.s0 != 8)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void m1(int paramInt)
  {
    this.f0 = paramInt;
  }
  
  public void n()
  {
    if (this.e == null) {
      this.e = new k(this);
    }
    if (this.f == null) {
      this.f = new m(this);
    }
  }
  
  public boolean n0()
  {
    boolean bool;
    if ((!this.p) && ((!this.O.n()) || (!this.Q.n()))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void n1(int paramInt)
  {
    this.g0 = paramInt;
  }
  
  public ConstraintAnchor o(ConstraintAnchor.Type paramType)
  {
    switch (a.a[paramType.ordinal()])
    {
    default: 
      throw new AssertionError(paramType.name());
    case 9: 
      return null;
    case 8: 
      return this.U;
    case 7: 
      return this.T;
    case 6: 
      return this.V;
    case 5: 
      return this.S;
    case 4: 
      return this.R;
    case 3: 
      return this.Q;
    case 2: 
      return this.P;
    }
    return this.O;
  }
  
  public boolean o0()
  {
    boolean bool;
    if ((!this.q) && ((!this.P.n()) || (!this.R.n()))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void o1(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    if (this.F == -1) {
      if ((paramBoolean3) && (!paramBoolean4))
      {
        this.F = 0;
      }
      else if ((!paramBoolean3) && (paramBoolean4))
      {
        this.F = 1;
        if (this.e0 == -1) {
          this.G = (1.0F / this.G);
        }
      }
    }
    if ((this.F == 0) && ((!this.P.o()) || (!this.R.o()))) {
      this.F = 1;
    } else if ((this.F == 1) && ((!this.O.o()) || (!this.Q.o()))) {
      this.F = 0;
    }
    if ((this.F == -1) && ((!this.P.o()) || (!this.R.o()) || (!this.O.o()) || (!this.Q.o()))) {
      if ((this.P.o()) && (this.R.o()))
      {
        this.F = 0;
      }
      else if ((this.O.o()) && (this.Q.o()))
      {
        this.G = (1.0F / this.G);
        this.F = 1;
      }
    }
    if (this.F == -1)
    {
      int i1 = this.z;
      if ((i1 > 0) && (this.C == 0))
      {
        this.F = 0;
      }
      else if ((i1 == 0) && (this.C > 0))
      {
        this.G = (1.0F / this.G);
        this.F = 1;
      }
    }
  }
  
  public int p()
  {
    return this.l0;
  }
  
  public boolean p0()
  {
    return this.s;
  }
  
  public void p1(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool1 = paramBoolean1 & this.e.k();
    boolean bool2 = paramBoolean2 & this.f.k();
    k localk = this.e;
    int i1 = localk.h.g;
    m localm = this.f;
    int i2 = localm.h.g;
    int i3 = localk.i.g;
    int i4 = localm.i.g;
    int i5;
    if ((i3 - i1 >= 0) && (i4 - i2 >= 0) && (i1 != -2147483648) && (i1 != 2147483647) && (i2 != -2147483648) && (i2 != 2147483647) && (i3 != -2147483648) && (i3 != 2147483647) && (i4 != -2147483648))
    {
      i5 = i4;
      if (i4 != 2147483647) {}
    }
    else
    {
      i3 = 0;
      i1 = i3;
      i5 = i1;
      i2 = i5;
    }
    i3 -= i1;
    i5 -= i2;
    if (bool1) {
      this.f0 = i1;
    }
    if (bool2) {
      this.g0 = i2;
    }
    if (this.s0 == 8)
    {
      this.b0 = 0;
      this.c0 = 0;
      return;
    }
    if (bool1)
    {
      i1 = i3;
      if (this.Z[0] == DimensionBehaviour.FIXED)
      {
        i2 = this.b0;
        i1 = i3;
        if (i3 < i2) {
          i1 = i2;
        }
      }
      this.b0 = i1;
      i2 = this.m0;
      if (i1 < i2) {
        this.b0 = i2;
      }
    }
    if (bool2)
    {
      i1 = i5;
      if (this.Z[1] == DimensionBehaviour.FIXED)
      {
        i2 = this.c0;
        i1 = i5;
        if (i5 < i2) {
          i1 = i2;
        }
      }
      this.c0 = i1;
      i5 = this.n0;
      if (i1 < i5) {
        this.c0 = i5;
      }
    }
  }
  
  public float q(int paramInt)
  {
    if (paramInt == 0) {
      return this.o0;
    }
    if (paramInt == 1) {
      return this.p0;
    }
    return -1.0F;
  }
  
  public void q0()
  {
    this.r = true;
  }
  
  public void q1(androidx.constraintlayout.core.d paramd, boolean paramBoolean)
  {
    int i1 = paramd.x(this.O);
    int i2 = paramd.x(this.P);
    int i3 = paramd.x(this.Q);
    int i4 = paramd.x(this.R);
    int i5 = i1;
    int i6 = i3;
    Object localObject;
    if (paramBoolean)
    {
      localObject = this.e;
      i5 = i1;
      i6 = i3;
      if (localObject != null)
      {
        paramd = ((WidgetRun)localObject).h;
        i5 = i1;
        i6 = i3;
        if (paramd.j)
        {
          localObject = ((WidgetRun)localObject).i;
          i5 = i1;
          i6 = i3;
          if (((DependencyNode)localObject).j)
          {
            i5 = paramd.g;
            i6 = ((DependencyNode)localObject).g;
          }
        }
      }
    }
    i3 = i2;
    i1 = i4;
    if (paramBoolean)
    {
      localObject = this.f;
      i3 = i2;
      i1 = i4;
      if (localObject != null)
      {
        paramd = ((WidgetRun)localObject).h;
        i3 = i2;
        i1 = i4;
        if (paramd.j)
        {
          localObject = ((WidgetRun)localObject).i;
          i3 = i2;
          i1 = i4;
          if (((DependencyNode)localObject).j)
          {
            i3 = paramd.g;
            i1 = ((DependencyNode)localObject).g;
          }
        }
      }
    }
    if ((i6 - i5 >= 0) && (i1 - i3 >= 0) && (i5 != -2147483648) && (i5 != 2147483647) && (i3 != -2147483648) && (i3 != 2147483647) && (i6 != -2147483648) && (i6 != 2147483647) && (i1 != -2147483648))
    {
      i2 = i5;
      i4 = i3;
      i3 = i6;
      i5 = i1;
      if (i1 != 2147483647) {}
    }
    else
    {
      i5 = 0;
      i6 = i5;
      i1 = i6;
      i3 = i1;
      i4 = i1;
      i2 = i6;
    }
    J0(i2, i4, i3, i5);
  }
  
  public int r()
  {
    return Y() + this.c0;
  }
  
  public void r0()
  {
    this.s = true;
  }
  
  public Object s()
  {
    return this.q0;
  }
  
  public boolean s0()
  {
    DimensionBehaviour[] arrayOfDimensionBehaviour = this.Z;
    boolean bool1 = false;
    DimensionBehaviour localDimensionBehaviour1 = arrayOfDimensionBehaviour[0];
    DimensionBehaviour localDimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
    boolean bool2 = bool1;
    if (localDimensionBehaviour1 == localDimensionBehaviour2)
    {
      bool2 = bool1;
      if (arrayOfDimensionBehaviour[1] == localDimensionBehaviour2) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public String t()
  {
    return this.u0;
  }
  
  public void t0()
  {
    this.O.q();
    this.P.q();
    this.Q.q();
    this.R.q();
    this.S.q();
    this.T.q();
    this.U.q();
    this.V.q();
    this.a0 = null;
    this.I = 0.0F;
    this.b0 = 0;
    this.c0 = 0;
    this.d0 = 0.0F;
    this.e0 = -1;
    this.f0 = 0;
    this.g0 = 0;
    this.j0 = 0;
    this.k0 = 0;
    this.l0 = 0;
    this.m0 = 0;
    this.n0 = 0;
    float f1 = K0;
    this.o0 = f1;
    this.p0 = f1;
    Object localObject = this.Z;
    DimensionBehaviour localDimensionBehaviour = DimensionBehaviour.FIXED;
    localObject[0] = localDimensionBehaviour;
    localObject[1] = localDimensionBehaviour;
    this.q0 = null;
    this.r0 = 0;
    this.s0 = 0;
    this.v0 = null;
    this.w0 = false;
    this.x0 = false;
    this.z0 = 0;
    this.A0 = 0;
    this.B0 = false;
    this.C0 = false;
    localObject = this.D0;
    localObject[0] = -1.0F;
    localObject[1] = -1.0F;
    this.t = -1;
    this.u = -1;
    localObject = this.H;
    localObject[0] = 2147483647;
    localObject[1] = 2147483647;
    this.w = 0;
    this.x = 0;
    this.B = 1.0F;
    this.E = 1.0F;
    this.A = 2147483647;
    this.D = 2147483647;
    this.z = 0;
    this.C = 0;
    this.h = false;
    this.F = -1;
    this.G = 1.0F;
    this.y0 = false;
    localObject = this.g;
    localObject[0] = 1;
    localObject[1] = 1;
    this.L = false;
    localObject = this.Y;
    localObject[0] = 0;
    localObject[1] = 0;
    this.i = true;
    localObject = this.y;
    localObject[0] = 0;
    localObject[1] = 0;
    this.l = -1;
    this.m = -1;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = this.v0;
    String str = "";
    if (localObject != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("type: ");
      ((StringBuilder)localObject).append(this.v0);
      ((StringBuilder)localObject).append(" ");
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = "";
    }
    localStringBuilder.append((String)localObject);
    localObject = str;
    if (this.u0 != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("id: ");
      ((StringBuilder)localObject).append(this.u0);
      ((StringBuilder)localObject).append(" ");
      localObject = ((StringBuilder)localObject).toString();
    }
    localStringBuilder.append((String)localObject);
    localStringBuilder.append("(");
    localStringBuilder.append(this.f0);
    localStringBuilder.append(", ");
    localStringBuilder.append(this.g0);
    localStringBuilder.append(") - (");
    localStringBuilder.append(this.b0);
    localStringBuilder.append(" x ");
    localStringBuilder.append(this.c0);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  public DimensionBehaviour u(int paramInt)
  {
    if (paramInt == 0) {
      return A();
    }
    if (paramInt == 1) {
      return T();
    }
    return null;
  }
  
  public void u0()
  {
    ConstraintWidget localConstraintWidget = K();
    if ((localConstraintWidget != null) && ((localConstraintWidget instanceof d)) && (((d)K()).L1())) {
      return;
    }
    int i1 = 0;
    int i2 = this.X.size();
    while (i1 < i2)
    {
      ((ConstraintAnchor)this.X.get(i1)).q();
      i1++;
    }
  }
  
  public float v()
  {
    return this.d0;
  }
  
  public void v0()
  {
    int i1 = 0;
    this.p = false;
    this.q = false;
    this.r = false;
    this.s = false;
    int i2 = this.X.size();
    while (i1 < i2)
    {
      ((ConstraintAnchor)this.X.get(i1)).r();
      i1++;
    }
  }
  
  public int w()
  {
    return this.e0;
  }
  
  public void w0(androidx.constraintlayout.core.c paramc)
  {
    this.O.s(paramc);
    this.P.s(paramc);
    this.Q.s(paramc);
    this.R.s(paramc);
    this.S.s(paramc);
    this.V.s(paramc);
    this.T.s(paramc);
    this.U.s(paramc);
  }
  
  public int x()
  {
    if (this.s0 == 8) {
      return 0;
    }
    return this.c0;
  }
  
  public float y()
  {
    return this.o0;
  }
  
  public int z()
  {
    return this.z0;
  }
  
  public static enum DimensionBehaviour
  {
    static
    {
      DimensionBehaviour localDimensionBehaviour1 = new DimensionBehaviour("FIXED", 0);
      FIXED = localDimensionBehaviour1;
      DimensionBehaviour localDimensionBehaviour2 = new DimensionBehaviour("WRAP_CONTENT", 1);
      WRAP_CONTENT = localDimensionBehaviour2;
      DimensionBehaviour localDimensionBehaviour3 = new DimensionBehaviour("MATCH_CONSTRAINT", 2);
      MATCH_CONSTRAINT = localDimensionBehaviour3;
      DimensionBehaviour localDimensionBehaviour4 = new DimensionBehaviour("MATCH_PARENT", 3);
      MATCH_PARENT = localDimensionBehaviour4;
      $VALUES = new DimensionBehaviour[] { localDimensionBehaviour1, localDimensionBehaviour2, localDimensionBehaviour3, localDimensionBehaviour4 };
    }
    
    private DimensionBehaviour() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.ConstraintWidget
 * JD-Core Version:    0.7.0.1
 */