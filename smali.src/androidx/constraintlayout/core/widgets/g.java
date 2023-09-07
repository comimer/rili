package androidx.constraintlayout.core.widgets;

public class g
{
  static boolean[] a = new boolean[3];
  
  static void a(d paramd, androidx.constraintlayout.core.d paramd1, ConstraintWidget paramConstraintWidget)
  {
    paramConstraintWidget.t = -1;
    paramConstraintWidget.u = -1;
    Object localObject = paramd.Z[0];
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
    int i;
    int j;
    if ((localObject != localDimensionBehaviour) && (paramConstraintWidget.Z[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT))
    {
      i = paramConstraintWidget.O.g;
      j = paramd.W() - paramConstraintWidget.Q.g;
      localObject = paramConstraintWidget.O;
      ((ConstraintAnchor)localObject).i = paramd1.q(localObject);
      localObject = paramConstraintWidget.Q;
      ((ConstraintAnchor)localObject).i = paramd1.q(localObject);
      paramd1.f(paramConstraintWidget.O.i, i);
      paramd1.f(paramConstraintWidget.Q.i, j);
      paramConstraintWidget.t = 2;
      paramConstraintWidget.O0(i, j);
    }
    if ((paramd.Z[1] != localDimensionBehaviour) && (paramConstraintWidget.Z[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT))
    {
      j = paramConstraintWidget.P.g;
      i = paramd.x() - paramConstraintWidget.R.g;
      paramd = paramConstraintWidget.P;
      paramd.i = paramd1.q(paramd);
      paramd = paramConstraintWidget.R;
      paramd.i = paramd1.q(paramd);
      paramd1.f(paramConstraintWidget.P.i, j);
      paramd1.f(paramConstraintWidget.R.i, i);
      if ((paramConstraintWidget.l0 > 0) || (paramConstraintWidget.V() == 8))
      {
        paramd = paramConstraintWidget.S;
        paramd.i = paramd1.q(paramd);
        paramd1.f(paramConstraintWidget.S.i, paramConstraintWidget.l0 + j);
      }
      paramConstraintWidget.u = 2;
      paramConstraintWidget.f1(j, i);
    }
  }
  
  public static final boolean b(int paramInt1, int paramInt2)
  {
    boolean bool;
    if ((paramInt1 & paramInt2) == paramInt2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.g
 * JD-Core Version:    0.7.0.1
 */