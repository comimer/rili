package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintAnchor.Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour;
import androidx.constraintlayout.core.widgets.a;
import androidx.constraintlayout.core.widgets.d;
import androidx.constraintlayout.core.widgets.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import q.c;

public class g
{
  private static b.a a = new b.a();
  private static int b = 0;
  private static int c = 0;
  
  private static boolean a(int paramInt, ConstraintWidget paramConstraintWidget)
  {
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = paramConstraintWidget.A();
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour2 = paramConstraintWidget.T();
    Object localObject;
    if (paramConstraintWidget.K() != null) {
      localObject = (d)paramConstraintWidget.K();
    } else {
      localObject = null;
    }
    if (localObject != null)
    {
      ((ConstraintWidget)localObject).A();
      localDimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
    }
    if (localObject != null)
    {
      ((ConstraintWidget)localObject).T();
      localObject = ConstraintWidget.DimensionBehaviour.FIXED;
    }
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
    boolean bool1 = false;
    if ((localDimensionBehaviour1 != localDimensionBehaviour3) && (!paramConstraintWidget.n0()) && (localDimensionBehaviour1 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT))
    {
      localObject = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
      if (((localDimensionBehaviour1 != localObject) || (paramConstraintWidget.w != 0) || (paramConstraintWidget.d0 != 0.0F) || (!paramConstraintWidget.a0(0))) && ((localDimensionBehaviour1 != localObject) || (paramConstraintWidget.w != 1) || (!paramConstraintWidget.d0(0, paramConstraintWidget.W()))))
      {
        paramInt = 0;
        break label163;
      }
    }
    paramInt = 1;
    label163:
    if ((localDimensionBehaviour2 != localDimensionBehaviour3) && (!paramConstraintWidget.o0()) && (localDimensionBehaviour2 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT))
    {
      localObject = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
      if (((localDimensionBehaviour2 != localObject) || (paramConstraintWidget.x != 0) || (paramConstraintWidget.d0 != 0.0F) || (!paramConstraintWidget.a0(1))) && ((localDimensionBehaviour2 != localObject) || (paramConstraintWidget.x != 1) || (!paramConstraintWidget.d0(1, paramConstraintWidget.x()))))
      {
        i = 0;
        break label256;
      }
    }
    int i = 1;
    label256:
    if ((paramConstraintWidget.d0 > 0.0F) && ((paramInt != 0) || (i != 0))) {
      return true;
    }
    boolean bool2 = bool1;
    if (paramInt != 0)
    {
      bool2 = bool1;
      if (i != 0) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  private static void b(int paramInt, ConstraintWidget paramConstraintWidget, b.b paramb, boolean paramBoolean)
  {
    if (paramConstraintWidget.g0()) {
      return;
    }
    b += 1;
    int i;
    if ((!(paramConstraintWidget instanceof d)) && (paramConstraintWidget.m0()))
    {
      i = paramInt + 1;
      if (a(i, paramConstraintWidget)) {
        d.S1(i, paramConstraintWidget, paramb, new b.a(), b.a.k);
      }
    }
    Object localObject1 = paramConstraintWidget.o(ConstraintAnchor.Type.LEFT);
    ConstraintAnchor localConstraintAnchor = paramConstraintWidget.o(ConstraintAnchor.Type.RIGHT);
    int j = ((ConstraintAnchor)localObject1).e();
    int k = localConstraintAnchor.e();
    Object localObject2;
    Object localObject3;
    boolean bool;
    Object localObject4;
    if ((((ConstraintAnchor)localObject1).d() != null) && (((ConstraintAnchor)localObject1).n()))
    {
      localObject2 = ((ConstraintAnchor)localObject1).d().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (ConstraintAnchor)((Iterator)localObject2).next();
        localObject1 = ((ConstraintAnchor)localObject3).d;
        int m = paramInt + 1;
        bool = a(m, (ConstraintWidget)localObject1);
        if ((((ConstraintWidget)localObject1).m0()) && (bool)) {
          d.S1(m, (ConstraintWidget)localObject1, paramb, new b.a(), b.a.k);
        }
        if (localObject3 == ((ConstraintWidget)localObject1).O)
        {
          localObject4 = ((ConstraintWidget)localObject1).Q.f;
          if ((localObject4 != null) && (((ConstraintAnchor)localObject4).n())) {}
        }
        else
        {
          if (localObject3 != ((ConstraintWidget)localObject1).Q) {
            break label267;
          }
          localObject4 = ((ConstraintWidget)localObject1).O.f;
          if ((localObject4 == null) || (!((ConstraintAnchor)localObject4).n())) {
            break label267;
          }
        }
        i = 1;
        break label270;
        label267:
        i = 0;
        label270:
        localObject4 = ((ConstraintWidget)localObject1).A();
        Object localObject5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if ((localObject4 == localObject5) && (!bool))
        {
          if ((((ConstraintWidget)localObject1).A() == localObject5) && (((ConstraintWidget)localObject1).A >= 0) && (((ConstraintWidget)localObject1).z >= 0) && ((((ConstraintWidget)localObject1).V() == 8) || ((((ConstraintWidget)localObject1).w == 0) && (((ConstraintWidget)localObject1).v() == 0.0F))) && (!((ConstraintWidget)localObject1).i0()) && (!((ConstraintWidget)localObject1).l0()) && (i != 0) && (!((ConstraintWidget)localObject1).i0())) {
            e(m, paramConstraintWidget, paramb, (ConstraintWidget)localObject1, paramBoolean);
          }
        }
        else {
          if (((ConstraintWidget)localObject1).m0()) {
            continue;
          }
        }
        for (;;)
        {
          localObject4 = ((ConstraintWidget)localObject1).O;
          if ((localObject3 == localObject4) && (((ConstraintWidget)localObject1).Q.f == null))
          {
            i = ((ConstraintAnchor)localObject4).f() + j;
            ((ConstraintWidget)localObject1).F0(i, ((ConstraintWidget)localObject1).W() + i);
            b(m, (ConstraintWidget)localObject1, paramb, paramBoolean);
          }
          else
          {
            localObject5 = ((ConstraintWidget)localObject1).Q;
            if ((localObject3 == localObject5) && (((ConstraintAnchor)localObject4).f == null))
            {
              i = j - ((ConstraintAnchor)localObject5).f();
              ((ConstraintWidget)localObject1).F0(i - ((ConstraintWidget)localObject1).W(), i);
              b(m, (ConstraintWidget)localObject1, paramb, paramBoolean);
            }
            else if ((i != 0) && (!((ConstraintWidget)localObject1).i0()))
            {
              d(m, paramb, (ConstraintWidget)localObject1, paramBoolean);
            }
          }
        }
      }
    }
    if ((paramConstraintWidget instanceof f)) {
      return;
    }
    if ((localConstraintAnchor.d() != null) && (localConstraintAnchor.n()))
    {
      localObject1 = localConstraintAnchor.d().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localConstraintAnchor = (ConstraintAnchor)((Iterator)localObject1).next();
        localObject2 = localConstraintAnchor.d;
        j = paramInt + 1;
        bool = a(j, (ConstraintWidget)localObject2);
        if ((((ConstraintWidget)localObject2).m0()) && (bool)) {
          d.S1(j, (ConstraintWidget)localObject2, paramb, new b.a(), b.a.k);
        }
        if (localConstraintAnchor == ((ConstraintWidget)localObject2).O)
        {
          localObject3 = ((ConstraintWidget)localObject2).Q.f;
          if ((localObject3 != null) && (((ConstraintAnchor)localObject3).n())) {}
        }
        else
        {
          if (localConstraintAnchor != ((ConstraintWidget)localObject2).Q) {
            break label731;
          }
          localObject3 = ((ConstraintWidget)localObject2).O.f;
          if ((localObject3 == null) || (!((ConstraintAnchor)localObject3).n())) {
            break label731;
          }
        }
        i = 1;
        break label734;
        label731:
        i = 0;
        label734:
        localObject3 = ((ConstraintWidget)localObject2).A();
        localObject4 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if ((localObject3 == localObject4) && (!bool))
        {
          if ((((ConstraintWidget)localObject2).A() == localObject4) && (((ConstraintWidget)localObject2).A >= 0) && (((ConstraintWidget)localObject2).z >= 0) && ((((ConstraintWidget)localObject2).V() == 8) || ((((ConstraintWidget)localObject2).w == 0) && (((ConstraintWidget)localObject2).v() == 0.0F))) && (!((ConstraintWidget)localObject2).i0()) && (!((ConstraintWidget)localObject2).l0()) && (i != 0) && (!((ConstraintWidget)localObject2).i0())) {
            e(j, paramConstraintWidget, paramb, (ConstraintWidget)localObject2, paramBoolean);
          }
        }
        else if (!((ConstraintWidget)localObject2).m0())
        {
          localObject3 = ((ConstraintWidget)localObject2).O;
          if ((localConstraintAnchor == localObject3) && (((ConstraintWidget)localObject2).Q.f == null))
          {
            i = ((ConstraintAnchor)localObject3).f() + k;
            ((ConstraintWidget)localObject2).F0(i, ((ConstraintWidget)localObject2).W() + i);
            b(j, (ConstraintWidget)localObject2, paramb, paramBoolean);
          }
          else
          {
            localObject4 = ((ConstraintWidget)localObject2).Q;
            if ((localConstraintAnchor == localObject4) && (((ConstraintAnchor)localObject3).f == null))
            {
              i = k - ((ConstraintAnchor)localObject4).f();
              ((ConstraintWidget)localObject2).F0(i - ((ConstraintWidget)localObject2).W(), i);
              b(j, (ConstraintWidget)localObject2, paramb, paramBoolean);
            }
            else if ((i != 0) && (!((ConstraintWidget)localObject2).i0()))
            {
              d(j, paramb, (ConstraintWidget)localObject2, paramBoolean);
            }
          }
        }
      }
    }
    paramConstraintWidget.q0();
  }
  
  private static void c(int paramInt1, a parama, b.b paramb, int paramInt2, boolean paramBoolean)
  {
    if (parama.t1()) {
      if (paramInt2 == 0) {
        b(paramInt1 + 1, parama, paramb, paramBoolean);
      } else {
        i(paramInt1 + 1, parama, paramb);
      }
    }
  }
  
  private static void d(int paramInt, b.b paramb, ConstraintWidget paramConstraintWidget, boolean paramBoolean)
  {
    float f = paramConstraintWidget.y();
    int i = paramConstraintWidget.O.f.e();
    int j = paramConstraintWidget.Q.f.e();
    int k = paramConstraintWidget.O.f();
    int m = paramConstraintWidget.Q.f();
    if (i == j)
    {
      f = 0.5F;
    }
    else
    {
      i = k + i;
      j -= m;
    }
    k = paramConstraintWidget.W();
    m = j - i - k;
    if (i > j) {
      m = i - j - k;
    }
    if (m > 0) {
      f = f * m + 0.5F;
    } else {
      f *= m;
    }
    int n = (int)f + i;
    m = n + k;
    if (i > j) {
      m = n - k;
    }
    paramConstraintWidget.F0(n, m);
    b(paramInt + 1, paramConstraintWidget, paramb, paramBoolean);
  }
  
  private static void e(int paramInt, ConstraintWidget paramConstraintWidget1, b.b paramb, ConstraintWidget paramConstraintWidget2, boolean paramBoolean)
  {
    float f = paramConstraintWidget2.y();
    int i = paramConstraintWidget2.O.f.e() + paramConstraintWidget2.O.f();
    int j = paramConstraintWidget2.Q.f.e() - paramConstraintWidget2.Q.f();
    if (j >= i)
    {
      int k = paramConstraintWidget2.W();
      int m = k;
      if (paramConstraintWidget2.V() != 8)
      {
        int n = paramConstraintWidget2.w;
        if (n == 2)
        {
          if ((paramConstraintWidget1 instanceof d)) {
            m = paramConstraintWidget1.W();
          } else {
            m = paramConstraintWidget1.K().W();
          }
          m = (int)(paramConstraintWidget2.y() * 0.5F * m);
        }
        else
        {
          m = k;
          if (n == 0) {
            m = j - i;
          }
        }
        k = Math.max(paramConstraintWidget2.z, m);
        n = paramConstraintWidget2.A;
        m = k;
        if (n > 0) {
          m = Math.min(n, k);
        }
      }
      k = i + (int)(f * (j - i - m) + 0.5F);
      paramConstraintWidget2.F0(k, m + k);
      b(paramInt + 1, paramConstraintWidget2, paramb, paramBoolean);
    }
  }
  
  private static void f(int paramInt, b.b paramb, ConstraintWidget paramConstraintWidget)
  {
    float f = paramConstraintWidget.R();
    int i = paramConstraintWidget.P.f.e();
    int j = paramConstraintWidget.R.f.e();
    int k = paramConstraintWidget.P.f();
    int m = paramConstraintWidget.R.f();
    if (i == j)
    {
      f = 0.5F;
    }
    else
    {
      i = k + i;
      j -= m;
    }
    int n = paramConstraintWidget.x();
    m = j - i - n;
    if (i > j) {
      m = i - j - n;
    }
    if (m > 0) {
      f = f * m + 0.5F;
    } else {
      f *= m;
    }
    int i1 = (int)f;
    k = i + i1;
    m = k + n;
    if (i > j)
    {
      k = i - i1;
      m = k - n;
    }
    paramConstraintWidget.I0(k, m);
    i(paramInt + 1, paramConstraintWidget, paramb);
  }
  
  private static void g(int paramInt, ConstraintWidget paramConstraintWidget1, b.b paramb, ConstraintWidget paramConstraintWidget2)
  {
    float f = paramConstraintWidget2.R();
    int i = paramConstraintWidget2.P.f.e() + paramConstraintWidget2.P.f();
    int j = paramConstraintWidget2.R.f.e() - paramConstraintWidget2.R.f();
    if (j >= i)
    {
      int k = paramConstraintWidget2.x();
      int m = k;
      if (paramConstraintWidget2.V() != 8)
      {
        int n = paramConstraintWidget2.x;
        if (n == 2)
        {
          if ((paramConstraintWidget1 instanceof d)) {
            m = paramConstraintWidget1.x();
          } else {
            m = paramConstraintWidget1.K().x();
          }
          m = (int)(f * 0.5F * m);
        }
        else
        {
          m = k;
          if (n == 0) {
            m = j - i;
          }
        }
        k = Math.max(paramConstraintWidget2.C, m);
        n = paramConstraintWidget2.D;
        m = k;
        if (n > 0) {
          m = Math.min(n, k);
        }
      }
      k = i + (int)(f * (j - i - m) + 0.5F);
      paramConstraintWidget2.I0(k, m + k);
      i(paramInt + 1, paramConstraintWidget2, paramb);
    }
  }
  
  public static void h(d paramd, b.b paramb)
  {
    Object localObject1 = paramd.A();
    Object localObject2 = paramd.T();
    b = 0;
    c = 0;
    paramd.v0();
    ArrayList localArrayList = paramd.r1();
    int i = localArrayList.size();
    for (int j = 0; j < i; j++) {
      ((ConstraintWidget)localArrayList.get(j)).v0();
    }
    boolean bool = paramd.P1();
    if (localObject1 == ConstraintWidget.DimensionBehaviour.FIXED) {
      paramd.F0(0, paramd.W());
    } else {
      paramd.G0(0);
    }
    int k = 0;
    j = k;
    int n;
    int i1;
    for (int m = j; k < i; m = i1)
    {
      localObject1 = (ConstraintWidget)localArrayList.get(k);
      if ((localObject1 instanceof f))
      {
        localObject1 = (f)localObject1;
        n = j;
        i1 = m;
        if (((f)localObject1).s1() == 1)
        {
          if (((f)localObject1).t1() != -1) {
            ((f)localObject1).w1(((f)localObject1).t1());
          } else if ((((f)localObject1).u1() != -1) && (paramd.n0())) {
            ((f)localObject1).w1(paramd.W() - ((f)localObject1).u1());
          } else if (paramd.n0()) {
            ((f)localObject1).w1((int)(((f)localObject1).v1() * paramd.W() + 0.5F));
          }
          n = 1;
          i1 = m;
        }
      }
      else
      {
        n = j;
        i1 = m;
        if ((localObject1 instanceof a))
        {
          n = j;
          i1 = m;
          if (((a)localObject1).x1() == 0)
          {
            i1 = 1;
            n = j;
          }
        }
      }
      k++;
      j = n;
    }
    if (j != 0) {
      for (j = 0; j < i; j++)
      {
        localObject1 = (ConstraintWidget)localArrayList.get(j);
        if ((localObject1 instanceof f))
        {
          localObject1 = (f)localObject1;
          if (((f)localObject1).s1() == 1) {
            b(0, (ConstraintWidget)localObject1, paramb, bool);
          }
        }
      }
    }
    b(0, paramd, paramb, bool);
    if (m != 0) {
      for (j = 0; j < i; j++)
      {
        localObject1 = (ConstraintWidget)localArrayList.get(j);
        if ((localObject1 instanceof a))
        {
          localObject1 = (a)localObject1;
          if (((a)localObject1).x1() == 0) {
            c(0, (a)localObject1, paramb, 0, bool);
          }
        }
      }
    }
    if (localObject2 == ConstraintWidget.DimensionBehaviour.FIXED) {
      paramd.I0(0, paramd.x());
    } else {
      paramd.H0(0);
    }
    k = 0;
    j = k;
    for (m = j; k < i; m = i1)
    {
      localObject2 = (ConstraintWidget)localArrayList.get(k);
      if ((localObject2 instanceof f))
      {
        localObject2 = (f)localObject2;
        n = j;
        i1 = m;
        if (((f)localObject2).s1() == 0)
        {
          if (((f)localObject2).t1() != -1) {
            ((f)localObject2).w1(((f)localObject2).t1());
          } else if ((((f)localObject2).u1() != -1) && (paramd.o0())) {
            ((f)localObject2).w1(paramd.x() - ((f)localObject2).u1());
          } else if (paramd.o0()) {
            ((f)localObject2).w1((int)(((f)localObject2).v1() * paramd.x() + 0.5F));
          }
          n = 1;
          i1 = m;
        }
      }
      else
      {
        n = j;
        i1 = m;
        if ((localObject2 instanceof a))
        {
          n = j;
          i1 = m;
          if (((a)localObject2).x1() == 1)
          {
            i1 = 1;
            n = j;
          }
        }
      }
      k++;
      j = n;
    }
    if (j != 0) {
      for (j = 0; j < i; j++)
      {
        localObject2 = (ConstraintWidget)localArrayList.get(j);
        if ((localObject2 instanceof f))
        {
          localObject2 = (f)localObject2;
          if (((f)localObject2).s1() == 0) {
            i(1, (ConstraintWidget)localObject2, paramb);
          }
        }
      }
    }
    i(0, paramd, paramb);
    if (m != 0) {
      for (j = 0; j < i; j++)
      {
        paramd = (ConstraintWidget)localArrayList.get(j);
        if ((paramd instanceof a))
        {
          paramd = (a)paramd;
          if (paramd.x1() == 1) {
            c(0, paramd, paramb, 1, bool);
          }
        }
      }
    }
    for (j = 0; j < i; j++)
    {
      paramd = (ConstraintWidget)localArrayList.get(j);
      if ((paramd.m0()) && (a(0, paramd)))
      {
        d.S1(0, paramd, paramb, a, b.a.k);
        if ((paramd instanceof f))
        {
          if (((f)paramd).s1() == 0) {
            i(0, paramd, paramb);
          } else {
            b(0, paramd, paramb, bool);
          }
        }
        else
        {
          b(0, paramd, paramb, bool);
          i(0, paramd, paramb);
        }
      }
    }
  }
  
  private static void i(int paramInt, ConstraintWidget paramConstraintWidget, b.b paramb)
  {
    if (paramConstraintWidget.p0()) {
      return;
    }
    c += 1;
    int i;
    if ((!(paramConstraintWidget instanceof d)) && (paramConstraintWidget.m0()))
    {
      i = paramInt + 1;
      if (a(i, paramConstraintWidget)) {
        d.S1(i, paramConstraintWidget, paramb, new b.a(), b.a.k);
      }
    }
    Object localObject1 = paramConstraintWidget.o(ConstraintAnchor.Type.TOP);
    ConstraintAnchor localConstraintAnchor = paramConstraintWidget.o(ConstraintAnchor.Type.BOTTOM);
    int j = ((ConstraintAnchor)localObject1).e();
    int k = localConstraintAnchor.e();
    Object localObject2;
    ConstraintWidget localConstraintWidget;
    boolean bool;
    Object localObject3;
    if ((((ConstraintAnchor)localObject1).d() != null) && (((ConstraintAnchor)localObject1).n()))
    {
      localObject1 = ((ConstraintAnchor)localObject1).d().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ConstraintAnchor)((Iterator)localObject1).next();
        localConstraintWidget = ((ConstraintAnchor)localObject2).d;
        int m = paramInt + 1;
        bool = a(m, localConstraintWidget);
        if ((localConstraintWidget.m0()) && (bool)) {
          d.S1(m, localConstraintWidget, paramb, new b.a(), b.a.k);
        }
        if (localObject2 == localConstraintWidget.P)
        {
          localObject3 = localConstraintWidget.R.f;
          if ((localObject3 != null) && (((ConstraintAnchor)localObject3).n())) {}
        }
        else
        {
          if (localObject2 != localConstraintWidget.R) {
            break label263;
          }
          localObject3 = localConstraintWidget.P.f;
          if ((localObject3 == null) || (!((ConstraintAnchor)localObject3).n())) {
            break label263;
          }
        }
        i = 1;
        break label265;
        label263:
        i = 0;
        label265:
        Object localObject4 = localConstraintWidget.T();
        localObject3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if ((localObject4 == localObject3) && (!bool))
        {
          if ((localConstraintWidget.T() == localObject3) && (localConstraintWidget.D >= 0) && (localConstraintWidget.C >= 0) && ((localConstraintWidget.V() == 8) || ((localConstraintWidget.x == 0) && (localConstraintWidget.v() == 0.0F))) && (!localConstraintWidget.k0()) && (!localConstraintWidget.l0()) && (i != 0) && (!localConstraintWidget.k0())) {
            g(m, paramConstraintWidget, paramb, localConstraintWidget);
          }
        }
        else if (!localConstraintWidget.m0())
        {
          localObject4 = localConstraintWidget.P;
          if ((localObject2 == localObject4) && (localConstraintWidget.R.f == null))
          {
            i = ((ConstraintAnchor)localObject4).f() + j;
            localConstraintWidget.I0(i, localConstraintWidget.x() + i);
            i(m, localConstraintWidget, paramb);
          }
          else
          {
            localObject3 = localConstraintWidget.R;
            if ((localObject2 == localObject3) && (((ConstraintAnchor)localObject4).f == null))
            {
              i = j - ((ConstraintAnchor)localObject3).f();
              localConstraintWidget.I0(i - localConstraintWidget.x(), i);
              i(m, localConstraintWidget, paramb);
            }
            else if ((i != 0) && (!localConstraintWidget.k0()))
            {
              f(m, paramb, localConstraintWidget);
            }
          }
        }
      }
    }
    if ((paramConstraintWidget instanceof f)) {
      return;
    }
    if ((localConstraintAnchor.d() != null) && (localConstraintAnchor.n()))
    {
      localObject1 = localConstraintAnchor.d().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localConstraintAnchor = (ConstraintAnchor)((Iterator)localObject1).next();
        localConstraintWidget = localConstraintAnchor.d;
        j = paramInt + 1;
        bool = a(j, localConstraintWidget);
        if ((localConstraintWidget.m0()) && (bool)) {
          d.S1(j, localConstraintWidget, paramb, new b.a(), b.a.k);
        }
        if (localConstraintAnchor == localConstraintWidget.P)
        {
          localObject2 = localConstraintWidget.R.f;
          if ((localObject2 != null) && (((ConstraintAnchor)localObject2).n())) {}
        }
        else
        {
          if (localConstraintAnchor != localConstraintWidget.R) {
            break label713;
          }
          localObject2 = localConstraintWidget.P.f;
          if ((localObject2 == null) || (!((ConstraintAnchor)localObject2).n())) {
            break label713;
          }
        }
        i = 1;
        break label715;
        label713:
        i = 0;
        label715:
        localObject2 = localConstraintWidget.T();
        localObject3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if ((localObject2 == localObject3) && (!bool))
        {
          if ((localConstraintWidget.T() == localObject3) && (localConstraintWidget.D >= 0) && (localConstraintWidget.C >= 0) && ((localConstraintWidget.V() == 8) || ((localConstraintWidget.x == 0) && (localConstraintWidget.v() == 0.0F))) && (!localConstraintWidget.k0()) && (!localConstraintWidget.l0()) && (i != 0) && (!localConstraintWidget.k0())) {
            g(j, paramConstraintWidget, paramb, localConstraintWidget);
          }
        }
        else if (!localConstraintWidget.m0())
        {
          localObject2 = localConstraintWidget.P;
          if ((localConstraintAnchor == localObject2) && (localConstraintWidget.R.f == null))
          {
            i = ((ConstraintAnchor)localObject2).f() + k;
            localConstraintWidget.I0(i, localConstraintWidget.x() + i);
            i(j, localConstraintWidget, paramb);
          }
          else
          {
            localObject3 = localConstraintWidget.R;
            if ((localConstraintAnchor == localObject3) && (((ConstraintAnchor)localObject2).f == null))
            {
              i = k - ((ConstraintAnchor)localObject3).f();
              localConstraintWidget.I0(i - localConstraintWidget.x(), i);
              i(j, localConstraintWidget, paramb);
            }
            else if ((i != 0) && (!localConstraintWidget.k0()))
            {
              f(j, paramb, localConstraintWidget);
            }
          }
        }
      }
    }
    localConstraintAnchor = paramConstraintWidget.o(ConstraintAnchor.Type.BASELINE);
    if ((localConstraintAnchor.d() != null) && (localConstraintAnchor.n()))
    {
      i = localConstraintAnchor.e();
      localObject1 = localConstraintAnchor.d().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localConstraintAnchor = (ConstraintAnchor)((Iterator)localObject1).next();
        localConstraintWidget = localConstraintAnchor.d;
        k = paramInt + 1;
        bool = a(k, localConstraintWidget);
        if ((localConstraintWidget.m0()) && (bool)) {
          d.S1(k, localConstraintWidget, paramb, new b.a(), b.a.k);
        }
        if (((localConstraintWidget.T() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) || (bool)) && (!localConstraintWidget.m0()) && (localConstraintAnchor == localConstraintWidget.S))
        {
          localConstraintWidget.E0(localConstraintAnchor.f() + i);
          i(k, localConstraintWidget, paramb);
        }
      }
    }
    paramConstraintWidget.r0();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.g
 * JD-Core Version:    0.7.0.1
 */