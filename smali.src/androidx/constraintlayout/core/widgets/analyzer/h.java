package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintAnchor.Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour;
import androidx.constraintlayout.core.widgets.a;
import androidx.constraintlayout.core.widgets.d;
import androidx.constraintlayout.core.widgets.e;
import androidx.constraintlayout.core.widgets.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import q.b;
import q.c;

public class h
{
  public static n a(ConstraintWidget paramConstraintWidget, int paramInt, ArrayList<n> paramArrayList, n paramn)
  {
    int i;
    if (paramInt == 0) {
      i = paramConstraintWidget.I0;
    } else {
      i = paramConstraintWidget.J0;
    }
    int j = 0;
    int k;
    if ((i != -1) && ((paramn == null) || (i != paramn.b))) {
      for (k = 0;; k++)
      {
        localObject = paramn;
        if (k >= paramArrayList.size()) {
          break;
        }
        localObject = (n)paramArrayList.get(k);
        if (((n)localObject).c() == i)
        {
          if (paramn != null)
          {
            paramn.g(paramInt, (n)localObject);
            paramArrayList.remove(paramn);
          }
          break;
        }
      }
    }
    Object localObject = paramn;
    if (i != -1) {
      return paramn;
    }
    paramn = (n)localObject;
    if (localObject == null)
    {
      paramn = (n)localObject;
      if ((paramConstraintWidget instanceof b))
      {
        k = ((b)paramConstraintWidget).s1(paramInt);
        paramn = (n)localObject;
        if (k != -1) {
          for (i = 0;; i++)
          {
            paramn = (n)localObject;
            if (i >= paramArrayList.size()) {
              break;
            }
            paramn = (n)paramArrayList.get(i);
            if (paramn.c() == k) {
              break;
            }
          }
        }
      }
      localObject = paramn;
      if (paramn == null) {
        localObject = new n(paramInt);
      }
      paramArrayList.add(localObject);
      paramn = (n)localObject;
    }
    if (paramn.a(paramConstraintWidget))
    {
      if ((paramConstraintWidget instanceof f))
      {
        localObject = (f)paramConstraintWidget;
        ConstraintAnchor localConstraintAnchor = ((f)localObject).r1();
        i = j;
        if (((f)localObject).s1() == 0) {
          i = 1;
        }
        localConstraintAnchor.c(i, paramArrayList, paramn);
      }
      if (paramInt == 0)
      {
        paramConstraintWidget.I0 = paramn.c();
        paramConstraintWidget.O.c(paramInt, paramArrayList, paramn);
        paramConstraintWidget.Q.c(paramInt, paramArrayList, paramn);
      }
      else
      {
        paramConstraintWidget.J0 = paramn.c();
        paramConstraintWidget.P.c(paramInt, paramArrayList, paramn);
        paramConstraintWidget.S.c(paramInt, paramArrayList, paramn);
        paramConstraintWidget.R.c(paramInt, paramArrayList, paramn);
      }
      paramConstraintWidget.V.c(paramInt, paramArrayList, paramn);
    }
    return paramn;
  }
  
  private static n b(ArrayList<n> paramArrayList, int paramInt)
  {
    int i = paramArrayList.size();
    for (int j = 0; j < i; j++)
    {
      n localn = (n)paramArrayList.get(j);
      if (paramInt == localn.b) {
        return localn;
      }
    }
    return null;
  }
  
  public static boolean c(d paramd, b.b paramb)
  {
    ArrayList localArrayList = paramd.r1();
    int i = localArrayList.size();
    for (int j = 0; j < i; j++)
    {
      localObject1 = (ConstraintWidget)localArrayList.get(j);
      if (!d(paramd.A(), paramd.T(), ((ConstraintWidget)localObject1).A(), ((ConstraintWidget)localObject1).T())) {
        return false;
      }
      if ((localObject1 instanceof e)) {
        return false;
      }
    }
    j = 0;
    Object localObject2 = null;
    Object localObject1 = null;
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    boolean bool;
    Object localObject11;
    for (Object localObject6 = null; j < i; localObject6 = localObject11)
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)localArrayList.get(j);
      if (!d(paramd.A(), paramd.T(), localConstraintWidget.A(), localConstraintWidget.T())) {
        d.S1(0, localConstraintWidget, paramb, paramd.p1, b.a.k);
      }
      bool = localConstraintWidget instanceof f;
      Object localObject7 = localObject2;
      Object localObject8 = localObject3;
      if (bool)
      {
        localObject9 = (f)localConstraintWidget;
        localObject10 = localObject3;
        if (((f)localObject9).s1() == 0)
        {
          localObject10 = localObject3;
          if (localObject3 == null) {
            localObject10 = new ArrayList();
          }
          ((ArrayList)localObject10).add(localObject9);
        }
        localObject7 = localObject2;
        localObject8 = localObject10;
        if (((f)localObject9).s1() == 1)
        {
          localObject3 = localObject2;
          if (localObject2 == null) {
            localObject3 = new ArrayList();
          }
          ((ArrayList)localObject3).add(localObject9);
          localObject8 = localObject10;
          localObject7 = localObject3;
        }
      }
      localObject3 = localObject1;
      localObject10 = localObject4;
      if ((localConstraintWidget instanceof b)) {
        if ((localConstraintWidget instanceof a))
        {
          localObject9 = (a)localConstraintWidget;
          localObject2 = localObject1;
          if (((a)localObject9).x1() == 0)
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localObject9);
          }
          localObject3 = localObject2;
          localObject10 = localObject4;
          if (((a)localObject9).x1() == 1)
          {
            localObject10 = localObject4;
            if (localObject4 == null) {
              localObject10 = new ArrayList();
            }
            ((ArrayList)localObject10).add(localObject9);
            localObject3 = localObject2;
          }
        }
        else
        {
          localObject2 = (b)localConstraintWidget;
          localObject3 = localObject1;
          if (localObject1 == null) {
            localObject3 = new ArrayList();
          }
          ((ArrayList)localObject3).add(localObject2);
          localObject10 = localObject4;
          if (localObject4 == null) {
            localObject10 = new ArrayList();
          }
          ((ArrayList)localObject10).add(localObject2);
        }
      }
      Object localObject9 = localObject5;
      if (localConstraintWidget.O.f == null)
      {
        localObject9 = localObject5;
        if (localConstraintWidget.Q.f == null)
        {
          localObject9 = localObject5;
          if (!bool)
          {
            localObject9 = localObject5;
            if (!(localConstraintWidget instanceof a))
            {
              localObject1 = localObject5;
              if (localObject5 == null) {
                localObject1 = new ArrayList();
              }
              ((ArrayList)localObject1).add(localConstraintWidget);
              localObject9 = localObject1;
            }
          }
        }
      }
      localObject11 = localObject6;
      if (localConstraintWidget.P.f == null)
      {
        localObject11 = localObject6;
        if (localConstraintWidget.R.f == null)
        {
          localObject11 = localObject6;
          if (localConstraintWidget.S.f == null)
          {
            localObject11 = localObject6;
            if (!bool)
            {
              localObject11 = localObject6;
              if (!(localConstraintWidget instanceof a))
              {
                localObject1 = localObject6;
                if (localObject6 == null) {
                  localObject1 = new ArrayList();
                }
                ((ArrayList)localObject1).add(localConstraintWidget);
                localObject11 = localObject1;
              }
            }
          }
        }
      }
      j++;
      localObject2 = localObject7;
      localObject1 = localObject3;
      localObject3 = localObject8;
      localObject4 = localObject10;
      localObject5 = localObject9;
    }
    Object localObject10 = new ArrayList();
    if (localObject2 != null)
    {
      paramb = ((ArrayList)localObject2).iterator();
      while (paramb.hasNext()) {
        a((f)paramb.next(), 0, (ArrayList)localObject10, null);
      }
    }
    if (localObject1 != null)
    {
      localObject2 = ((ArrayList)localObject1).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        paramb = (b)((Iterator)localObject2).next();
        localObject1 = a(paramb, 0, (ArrayList)localObject10, null);
        paramb.r1((ArrayList)localObject10, 0, (n)localObject1);
        ((n)localObject1).b((ArrayList)localObject10);
      }
    }
    paramb = paramd.o(ConstraintAnchor.Type.LEFT);
    if (paramb.d() != null)
    {
      paramb = paramb.d().iterator();
      while (paramb.hasNext()) {
        a(((ConstraintAnchor)paramb.next()).d, 0, (ArrayList)localObject10, null);
      }
    }
    paramb = paramd.o(ConstraintAnchor.Type.RIGHT);
    if (paramb.d() != null)
    {
      paramb = paramb.d().iterator();
      while (paramb.hasNext()) {
        a(((ConstraintAnchor)paramb.next()).d, 0, (ArrayList)localObject10, null);
      }
    }
    paramb = paramd.o(ConstraintAnchor.Type.CENTER);
    if (paramb.d() != null)
    {
      paramb = paramb.d().iterator();
      while (paramb.hasNext()) {
        a(((ConstraintAnchor)paramb.next()).d, 0, (ArrayList)localObject10, null);
      }
    }
    if (localObject5 != null)
    {
      paramb = localObject5.iterator();
      while (paramb.hasNext()) {
        a((ConstraintWidget)paramb.next(), 0, (ArrayList)localObject10, null);
      }
    }
    if (localObject3 != null)
    {
      paramb = ((ArrayList)localObject3).iterator();
      while (paramb.hasNext()) {
        a((f)paramb.next(), 1, (ArrayList)localObject10, null);
      }
    }
    if (localObject4 != null)
    {
      localObject4 = ((ArrayList)localObject4).iterator();
      while (((Iterator)localObject4).hasNext())
      {
        paramb = (b)((Iterator)localObject4).next();
        localObject1 = a(paramb, 1, (ArrayList)localObject10, null);
        paramb.r1((ArrayList)localObject10, 1, (n)localObject1);
        ((n)localObject1).b((ArrayList)localObject10);
      }
    }
    paramb = paramd.o(ConstraintAnchor.Type.TOP);
    if (paramb.d() != null)
    {
      paramb = paramb.d().iterator();
      while (paramb.hasNext()) {
        a(((ConstraintAnchor)paramb.next()).d, 1, (ArrayList)localObject10, null);
      }
    }
    paramb = paramd.o(ConstraintAnchor.Type.BASELINE);
    if (paramb.d() != null)
    {
      paramb = paramb.d().iterator();
      while (paramb.hasNext()) {
        a(((ConstraintAnchor)paramb.next()).d, 1, (ArrayList)localObject10, null);
      }
    }
    paramb = paramd.o(ConstraintAnchor.Type.BOTTOM);
    if (paramb.d() != null)
    {
      paramb = paramb.d().iterator();
      while (paramb.hasNext()) {
        a(((ConstraintAnchor)paramb.next()).d, 1, (ArrayList)localObject10, null);
      }
    }
    paramb = paramd.o(ConstraintAnchor.Type.CENTER);
    if (paramb.d() != null)
    {
      paramb = paramb.d().iterator();
      while (paramb.hasNext()) {
        a(((ConstraintAnchor)paramb.next()).d, 1, (ArrayList)localObject10, null);
      }
    }
    if (localObject6 != null)
    {
      paramb = localObject6.iterator();
      while (paramb.hasNext()) {
        a((ConstraintWidget)paramb.next(), 1, (ArrayList)localObject10, null);
      }
    }
    for (j = 0; j < i; j++)
    {
      localObject1 = (ConstraintWidget)localArrayList.get(j);
      if (((ConstraintWidget)localObject1).s0())
      {
        paramb = b((ArrayList)localObject10, ((ConstraintWidget)localObject1).I0);
        localObject1 = b((ArrayList)localObject10, ((ConstraintWidget)localObject1).J0);
        if ((paramb != null) && (localObject1 != null))
        {
          paramb.g(0, (n)localObject1);
          ((n)localObject1).i(2);
          ((ArrayList)localObject10).remove(paramb);
        }
      }
    }
    if (((ArrayList)localObject10).size() <= 1) {
      return false;
    }
    if (paramd.A() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)
    {
      localObject4 = ((ArrayList)localObject10).iterator();
      paramb = null;
      j = 0;
      while (((Iterator)localObject4).hasNext())
      {
        localObject1 = (n)((Iterator)localObject4).next();
        if (((n)localObject1).d() != 1)
        {
          ((n)localObject1).h(false);
          i = ((n)localObject1).f(paramd.K1(), 0);
          if (i > j)
          {
            paramb = (b.b)localObject1;
            j = i;
          }
        }
      }
      if (paramb != null)
      {
        paramd.P0(ConstraintWidget.DimensionBehaviour.FIXED);
        paramd.k1(j);
        paramb.h(true);
        localObject1 = paramb;
        break label1547;
      }
    }
    localObject1 = null;
    label1547:
    if (paramd.T() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)
    {
      localObject3 = ((ArrayList)localObject10).iterator();
      paramb = null;
      j = 0;
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (n)((Iterator)localObject3).next();
        if (((n)localObject4).d() != 0)
        {
          ((n)localObject4).h(false);
          i = ((n)localObject4).f(paramd.K1(), 1);
          if (i > j)
          {
            paramb = (b.b)localObject4;
            j = i;
          }
        }
      }
      if (paramb != null)
      {
        paramd.g1(ConstraintWidget.DimensionBehaviour.FIXED);
        paramd.L0(j);
        paramb.h(true);
        paramd = paramb;
        break label1663;
      }
    }
    paramd = null;
    label1663:
    if ((localObject1 == null) && (paramd == null)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static boolean d(ConstraintWidget.DimensionBehaviour paramDimensionBehaviour1, ConstraintWidget.DimensionBehaviour paramDimensionBehaviour2, ConstraintWidget.DimensionBehaviour paramDimensionBehaviour3, ConstraintWidget.DimensionBehaviour paramDimensionBehaviour4)
  {
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = ConstraintWidget.DimensionBehaviour.FIXED;
    if (paramDimensionBehaviour3 != localDimensionBehaviour1)
    {
      ConstraintWidget.DimensionBehaviour localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
      if ((paramDimensionBehaviour3 != localDimensionBehaviour2) && ((paramDimensionBehaviour3 != ConstraintWidget.DimensionBehaviour.MATCH_PARENT) || (paramDimensionBehaviour1 == localDimensionBehaviour2)))
      {
        i = 0;
        break label47;
      }
    }
    int i = 1;
    label47:
    if (paramDimensionBehaviour4 != localDimensionBehaviour1)
    {
      paramDimensionBehaviour1 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
      if ((paramDimensionBehaviour4 != paramDimensionBehaviour1) && ((paramDimensionBehaviour4 != ConstraintWidget.DimensionBehaviour.MATCH_PARENT) || (paramDimensionBehaviour2 == paramDimensionBehaviour1)))
      {
        j = 0;
        break label86;
      }
    }
    int j = 1;
    label86:
    return (i != 0) || (j != 0);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.h
 * JD-Core Version:    0.7.0.1
 */