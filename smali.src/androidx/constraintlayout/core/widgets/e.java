package androidx.constraintlayout.core.widgets;

import java.util.ArrayList;
import java.util.Arrays;
import q.b;

public class e
  extends h
{
  private int a1 = -1;
  private int b1 = -1;
  private int c1 = -1;
  private int d1 = -1;
  private int e1 = -1;
  private int f1 = -1;
  private float g1 = 0.5F;
  private float h1 = 0.5F;
  private float i1 = 0.5F;
  private float j1 = 0.5F;
  private float k1 = 0.5F;
  private float l1 = 0.5F;
  private int m1 = 0;
  private int n1 = 0;
  private int o1 = 2;
  private int p1 = 2;
  private int q1 = 0;
  private int r1 = -1;
  private int s1 = 0;
  private ArrayList<a> t1 = new ArrayList();
  private ConstraintWidget[] u1 = null;
  private ConstraintWidget[] v1 = null;
  private int[] w1 = null;
  private ConstraintWidget[] x1;
  private int y1 = 0;
  
  private void j2(boolean paramBoolean)
  {
    if ((this.w1 != null) && (this.v1 != null) && (this.u1 != null))
    {
      for (int i = 0; i < this.y1; i++) {
        this.x1[i].u0();
      }
      Object localObject1 = this.w1;
      int j = localObject1[0];
      int k = localObject1[1];
      localObject1 = null;
      float f = this.g1;
      i = 0;
      int m;
      ConstraintWidget localConstraintWidget;
      Object localObject2;
      while (i < j)
      {
        if (paramBoolean)
        {
          m = j - i - 1;
          f = 1.0F - this.g1;
        }
        else
        {
          m = i;
        }
        localConstraintWidget = this.v1[m];
        localObject2 = localObject1;
        if (localConstraintWidget != null) {
          if (localConstraintWidget.V() == 8)
          {
            localObject2 = localObject1;
          }
          else
          {
            if (i == 0)
            {
              localConstraintWidget.k(localConstraintWidget.O, this.O, z1());
              localConstraintWidget.N0(this.a1);
              localConstraintWidget.M0(f);
            }
            if (i == j - 1) {
              localConstraintWidget.k(localConstraintWidget.Q, this.Q, A1());
            }
            if ((i > 0) && (localObject1 != null))
            {
              localConstraintWidget.k(localConstraintWidget.O, ((ConstraintWidget)localObject1).Q, this.m1);
              ((ConstraintWidget)localObject1).k(((ConstraintWidget)localObject1).Q, localConstraintWidget.O, 0);
            }
            localObject2 = localConstraintWidget;
          }
        }
        i++;
        localObject1 = localObject2;
      }
      i = 0;
      while (i < k)
      {
        localConstraintWidget = this.u1[i];
        localObject2 = localObject1;
        if (localConstraintWidget != null) {
          if (localConstraintWidget.V() == 8)
          {
            localObject2 = localObject1;
          }
          else
          {
            if (i == 0)
            {
              localConstraintWidget.k(localConstraintWidget.P, this.P, B1());
              localConstraintWidget.e1(this.b1);
              localConstraintWidget.d1(this.h1);
            }
            if (i == k - 1) {
              localConstraintWidget.k(localConstraintWidget.R, this.R, y1());
            }
            if ((i > 0) && (localObject1 != null))
            {
              localConstraintWidget.k(localConstraintWidget.P, ((ConstraintWidget)localObject1).R, this.n1);
              ((ConstraintWidget)localObject1).k(((ConstraintWidget)localObject1).R, localConstraintWidget.P, 0);
            }
            localObject2 = localConstraintWidget;
          }
        }
        i++;
        localObject1 = localObject2;
      }
      for (i = 0; i < j; i++) {
        for (m = 0; m < k; m++)
        {
          int n = m * j + i;
          if (this.s1 == 1) {
            n = i * k + m;
          }
          localObject1 = this.x1;
          if (n < localObject1.length)
          {
            localConstraintWidget = localObject1[n];
            if ((localConstraintWidget != null) && (localConstraintWidget.V() != 8))
            {
              localObject1 = this.v1[i];
              localObject2 = this.u1[m];
              if (localConstraintWidget != localObject1)
              {
                localConstraintWidget.k(localConstraintWidget.O, ((ConstraintWidget)localObject1).O, 0);
                localConstraintWidget.k(localConstraintWidget.Q, ((ConstraintWidget)localObject1).Q, 0);
              }
              if (localConstraintWidget != localObject2)
              {
                localConstraintWidget.k(localConstraintWidget.P, ((ConstraintWidget)localObject2).P, 0);
                localConstraintWidget.k(localConstraintWidget.R, ((ConstraintWidget)localObject2).R, 0);
              }
            }
          }
        }
      }
    }
  }
  
  private final int k2(ConstraintWidget paramConstraintWidget, int paramInt)
  {
    if (paramConstraintWidget == null) {
      return 0;
    }
    if (paramConstraintWidget.T() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
    {
      int i = paramConstraintWidget.x;
      if (i == 0) {
        return 0;
      }
      if (i == 2)
      {
        paramInt = (int)(paramConstraintWidget.E * paramInt);
        if (paramInt != paramConstraintWidget.x())
        {
          paramConstraintWidget.Y0(true);
          D1(paramConstraintWidget, paramConstraintWidget.A(), paramConstraintWidget.W(), ConstraintWidget.DimensionBehaviour.FIXED, paramInt);
        }
        return paramInt;
      }
      if (i == 1) {
        return paramConstraintWidget.x();
      }
      if (i == 3) {
        return (int)(paramConstraintWidget.W() * paramConstraintWidget.d0 + 0.5F);
      }
    }
    return paramConstraintWidget.x();
  }
  
  private final int l2(ConstraintWidget paramConstraintWidget, int paramInt)
  {
    if (paramConstraintWidget == null) {
      return 0;
    }
    if (paramConstraintWidget.A() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
    {
      int i = paramConstraintWidget.w;
      if (i == 0) {
        return 0;
      }
      if (i == 2)
      {
        paramInt = (int)(paramConstraintWidget.B * paramInt);
        if (paramInt != paramConstraintWidget.W())
        {
          paramConstraintWidget.Y0(true);
          D1(paramConstraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, paramInt, paramConstraintWidget.T(), paramConstraintWidget.x());
        }
        return paramInt;
      }
      if (i == 1) {
        return paramConstraintWidget.W();
      }
      if (i == 3) {
        return (int)(paramConstraintWidget.x() * paramConstraintWidget.d0 + 0.5F);
      }
    }
    return paramConstraintWidget.W();
  }
  
  private void m2(ConstraintWidget[] paramArrayOfConstraintWidget, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt)
  {
    int j;
    int m;
    Object localObject;
    if (paramInt2 == 0)
    {
      i = this.r1;
      j = i;
      if (i <= 0)
      {
        j = 0;
        i = j;
        k = i;
        m = i;
        i = j;
        for (;;)
        {
          j = i;
          if (m >= paramInt1) {
            break;
          }
          j = k;
          if (m > 0) {
            j = k + this.m1;
          }
          localObject = paramArrayOfConstraintWidget[m];
          if (localObject == null)
          {
            k = j;
          }
          else
          {
            k = j + l2((ConstraintWidget)localObject, paramInt3);
            if (k > paramInt3)
            {
              j = i;
              break;
            }
            i++;
          }
          m++;
        }
      }
      k = j;
      i = 0;
    }
    else
    {
      i = this.r1;
      j = i;
      if (i <= 0)
      {
        j = 0;
        i = j;
        k = i;
        m = i;
        i = j;
        for (;;)
        {
          j = i;
          if (m >= paramInt1) {
            break;
          }
          j = k;
          if (m > 0) {
            j = k + this.n1;
          }
          localObject = paramArrayOfConstraintWidget[m];
          if (localObject == null)
          {
            k = j;
          }
          else
          {
            k = j + k2((ConstraintWidget)localObject, paramInt3);
            if (k > paramInt3)
            {
              j = i;
              break;
            }
            i++;
          }
          m++;
        }
      }
      k = 0;
      i = j;
    }
    if (this.w1 == null) {
      this.w1 = new int[2];
    }
    int n;
    if (i == 0)
    {
      n = i;
      m = k;
      if (paramInt2 == 1) {}
    }
    else
    {
      if ((k != 0) || (paramInt2 != 0)) {
        break label316;
      }
      m = k;
      n = i;
    }
    int i2 = 1;
    int i = n;
    int k = m;
    break label319;
    label316:
    i2 = 0;
    for (;;)
    {
      label319:
      if (i2 != 0) {
        break label836;
      }
      if (paramInt2 == 0) {
        i = (int)Math.ceil(paramInt1 / k);
      } else {
        k = (int)Math.ceil(paramInt1 / i);
      }
      localObject = this.v1;
      if ((localObject != null) && (localObject.length >= k)) {
        Arrays.fill((Object[])localObject, null);
      } else {
        this.v1 = new ConstraintWidget[k];
      }
      localObject = this.u1;
      if ((localObject != null) && (localObject.length >= i)) {
        Arrays.fill((Object[])localObject, null);
      } else {
        this.u1 = new ConstraintWidget[i];
      }
      for (j = 0; j < k; j++) {
        for (m = 0; m < i; m++)
        {
          i3 = m * k + j;
          if (paramInt2 == 1) {
            i3 = j * i + m;
          }
          if (i3 < paramArrayOfConstraintWidget.length)
          {
            localObject = paramArrayOfConstraintWidget[i3];
            if (localObject != null)
            {
              i3 = l2((ConstraintWidget)localObject, paramInt3);
              ConstraintWidget localConstraintWidget = this.v1[j];
              if ((localConstraintWidget == null) || (localConstraintWidget.W() < i3)) {
                this.v1[j] = localObject;
              }
              i3 = k2((ConstraintWidget)localObject, paramInt3);
              localConstraintWidget = this.u1[m];
              if ((localConstraintWidget == null) || (localConstraintWidget.x() < i3)) {
                this.u1[m] = localObject;
              }
            }
          }
        }
      }
      m = 0;
      for (j = m; m < k; j = i3)
      {
        localObject = this.v1[m];
        i3 = j;
        if (localObject != null)
        {
          i3 = j;
          if (m > 0) {
            i3 = j + this.m1;
          }
          i3 += l2((ConstraintWidget)localObject, paramInt3);
        }
        m++;
      }
      m = 0;
      for (int i3 = m; m < i; i3 = n)
      {
        localObject = this.u1[m];
        n = i3;
        if (localObject != null)
        {
          n = i3;
          if (m > 0) {
            n = i3 + this.n1;
          }
          n += k2((ConstraintWidget)localObject, paramInt3);
        }
        m++;
      }
      paramArrayOfInt[0] = j;
      paramArrayOfInt[1] = i3;
      if (paramInt2 == 0)
      {
        n = i;
        m = k;
        if (j <= paramInt3) {
          break;
        }
        n = i;
        m = k;
        if (k <= 1) {
          break;
        }
        k--;
        continue;
      }
      n = i;
      m = k;
      if (i3 <= paramInt3) {
        break;
      }
      n = i;
      m = k;
      if (i <= 1) {
        break;
      }
      i--;
    }
    label836:
    paramArrayOfConstraintWidget = this.w1;
    paramArrayOfConstraintWidget[0] = k;
    paramArrayOfConstraintWidget[1] = i;
  }
  
  private void n2(ConstraintWidget[] paramArrayOfConstraintWidget, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt)
  {
    if (paramInt1 == 0) {
      return;
    }
    this.t1.clear();
    Object localObject1 = new a(paramInt2, this.O, this.P, this.Q, this.R, paramInt3);
    this.t1.add(localObject1);
    if (paramInt2 == 0)
    {
      i = 0;
      j = i;
      k = j;
      m = j;
      for (j = i;; j = i)
      {
        i = j;
        if (k >= paramInt1) {
          break;
        }
        localObject2 = paramArrayOfConstraintWidget[k];
        n = l2((ConstraintWidget)localObject2, paramInt3);
        i = j;
        if (((ConstraintWidget)localObject2).A() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
          i = j + 1;
        }
        if (((m == paramInt3) || (this.m1 + m + n > paramInt3)) && (a.a((a)localObject1) != null)) {
          j = 1;
        } else {
          j = 0;
        }
        i2 = j;
        if (j == 0)
        {
          i2 = j;
          if (k > 0)
          {
            i3 = this.r1;
            i2 = j;
            if (i3 > 0)
            {
              i2 = j;
              if (k % i3 == 0) {
                i2 = 1;
              }
            }
          }
        }
        if (i2 != 0)
        {
          localObject3 = new a(paramInt2, this.O, this.P, this.Q, this.R, paramInt3);
          ((a)localObject3).i(k);
          this.t1.add(localObject3);
        }
        do
        {
          m = n;
          localObject1 = localObject3;
          break;
          localObject3 = localObject1;
        } while (k <= 0);
        m += this.m1 + n;
        ((a)localObject1).b((ConstraintWidget)localObject2);
        k++;
      }
    }
    int i = 0;
    int j = i;
    int k = j;
    Object localObject3 = localObject1;
    int m = j;
    j = i;
    for (;;)
    {
      i = j;
      if (k >= paramInt1) {
        break;
      }
      localObject2 = paramArrayOfConstraintWidget[k];
      n = k2((ConstraintWidget)localObject2, paramInt3);
      i = j;
      if (((ConstraintWidget)localObject2).T() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
        i = j + 1;
      }
      if (((m == paramInt3) || (this.n1 + m + n > paramInt3)) && (a.a((a)localObject3) != null)) {
        j = 1;
      } else {
        j = 0;
      }
      i2 = j;
      if (j == 0)
      {
        i2 = j;
        if (k > 0)
        {
          i3 = this.r1;
          i2 = j;
          if (i3 > 0)
          {
            i2 = j;
            if (k % i3 == 0) {
              i2 = 1;
            }
          }
        }
      }
      if (i2 != 0)
      {
        localObject1 = new a(paramInt2, this.O, this.P, this.Q, this.R, paramInt3);
        ((a)localObject1).i(k);
        this.t1.add(localObject1);
      }
      do
      {
        m = n;
        break;
        localObject1 = localObject3;
      } while (k <= 0);
      m += this.n1 + n;
      localObject1 = localObject3;
      ((a)localObject1).b((ConstraintWidget)localObject2);
      k++;
      j = i;
      localObject3 = localObject1;
    }
    int i4 = this.t1.size();
    paramArrayOfConstraintWidget = this.O;
    Object localObject2 = this.P;
    localObject1 = this.Q;
    localObject3 = this.R;
    m = z1();
    k = B1();
    int n = A1();
    int i2 = y1();
    Object localObject4 = A();
    Object localObject5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
    if ((localObject4 != localObject5) && (T() != localObject5)) {
      paramInt1 = 0;
    } else {
      paramInt1 = 1;
    }
    if ((i > 0) && (paramInt1 != 0)) {
      for (paramInt1 = 0; paramInt1 < i4; paramInt1++)
      {
        localObject5 = (a)this.t1.get(paramInt1);
        if (paramInt2 == 0) {
          ((a)localObject5).g(paramInt3 - ((a)localObject5).f());
        } else {
          ((a)localObject5).g(paramInt3 - ((a)localObject5).e());
        }
      }
    }
    i = 0;
    j = i;
    paramInt1 = j;
    for (int i3 = j; paramInt1 < i4; i3 = j)
    {
      localObject4 = (a)this.t1.get(paramInt1);
      if (paramInt2 == 0)
      {
        if (paramInt1 < i4 - 1)
        {
          localObject3 = a.a((a)this.t1.get(paramInt1 + 1)).P;
          j = 0;
        }
        else
        {
          localObject3 = this.R;
          j = y1();
        }
        localObject5 = a.a((a)localObject4).R;
        ((a)localObject4).j(paramInt2, paramArrayOfConstraintWidget, (ConstraintAnchor)localObject2, (ConstraintAnchor)localObject1, (ConstraintAnchor)localObject3, m, k, n, j, paramInt3);
        k = Math.max(i3, ((a)localObject4).f());
        i2 = i + ((a)localObject4).e();
        i = i2;
        if (paramInt1 > 0) {
          i = i2 + this.n1;
        }
        i3 = 0;
        localObject2 = localObject5;
        i2 = j;
        j = k;
        k = i3;
      }
      else
      {
        n = paramInt1;
        if (n < i4 - 1)
        {
          localObject1 = a.a((a)this.t1.get(n + 1)).O;
          j = 0;
        }
        else
        {
          localObject1 = this.Q;
          j = A1();
        }
        localObject5 = a.a((a)localObject4).Q;
        ((a)localObject4).j(paramInt2, paramArrayOfConstraintWidget, (ConstraintAnchor)localObject2, (ConstraintAnchor)localObject1, (ConstraintAnchor)localObject3, m, k, j, i2, paramInt3);
        m = i3 + ((a)localObject4).f();
        i3 = Math.max(i, ((a)localObject4).e());
        i = m;
        if (n > 0) {
          i = m + this.m1;
        }
        m = i3;
        i3 = 0;
        n = j;
        paramArrayOfConstraintWidget = (ConstraintWidget[])localObject5;
        j = i;
        i = m;
        m = i3;
      }
      paramInt1++;
    }
    paramArrayOfInt[0] = i3;
    paramArrayOfInt[1] = i;
  }
  
  private void o2(ConstraintWidget[] paramArrayOfConstraintWidget, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt)
  {
    if (paramInt1 == 0) {
      return;
    }
    this.t1.clear();
    Object localObject1 = new a(paramInt2, this.O, this.P, this.Q, this.R, paramInt3);
    this.t1.add(localObject1);
    if (paramInt2 == 0)
    {
      i = 0;
      j = i;
      k = j;
      m = k;
      n = k;
      for (;;)
      {
        k = j;
        if (m >= paramInt1) {
          break;
        }
        i2 = i + 1;
        localObject2 = paramArrayOfConstraintWidget[m];
        i = l2((ConstraintWidget)localObject2, paramInt3);
        k = j;
        if (((ConstraintWidget)localObject2).A() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
          k = j + 1;
        }
        if (((n == paramInt3) || (this.m1 + n + i > paramInt3)) && (a.a((a)localObject1) != null)) {
          j = 1;
        } else {
          j = 0;
        }
        i3 = j;
        if (j == 0)
        {
          i3 = j;
          if (m > 0)
          {
            i4 = this.r1;
            i3 = j;
            if (i4 > 0)
            {
              i3 = j;
              if (i2 > i4) {
                i3 = 1;
              }
            }
          }
        }
        if (i3 != 0)
        {
          localObject1 = new a(paramInt2, this.O, this.P, this.Q, this.R, paramInt3);
          ((a)localObject1).i(m);
          this.t1.add(localObject1);
          j = i2;
          n = i;
        }
        else
        {
          if (m > 0) {
            n += this.m1 + i;
          } else {
            n = i;
          }
          j = 0;
        }
        ((a)localObject1).b((ConstraintWidget)localObject2);
        m++;
        i = j;
        j = k;
      }
    }
    int m = 0;
    int j = m;
    int n = j;
    for (;;)
    {
      k = j;
      if (n >= paramInt1) {
        break;
      }
      localObject3 = paramArrayOfConstraintWidget[n];
      i3 = k2((ConstraintWidget)localObject3, paramInt3);
      k = j;
      if (((ConstraintWidget)localObject3).T() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
        k = j + 1;
      }
      if (((m == paramInt3) || (this.n1 + m + i3 > paramInt3)) && (a.a((a)localObject1) != null)) {
        j = 1;
      } else {
        j = 0;
      }
      i = j;
      if (j == 0)
      {
        i = j;
        if (n > 0)
        {
          i2 = this.r1;
          i = j;
          if (i2 > 0)
          {
            i = j;
            if (i2 < 0) {
              i = 1;
            }
          }
        }
      }
      if (i != 0)
      {
        localObject2 = new a(paramInt2, this.O, this.P, this.Q, this.R, paramInt3);
        ((a)localObject2).i(n);
        this.t1.add(localObject2);
      }
      do
      {
        j = i3;
        localObject1 = localObject2;
        break;
        localObject2 = localObject1;
      } while (n <= 0);
      j = m + (this.n1 + i3);
      ((a)localObject1).b((ConstraintWidget)localObject3);
      n++;
      m = j;
      j = k;
    }
    int i4 = this.t1.size();
    paramArrayOfConstraintWidget = this.O;
    Object localObject3 = this.P;
    localObject1 = this.Q;
    Object localObject2 = this.R;
    n = z1();
    m = B1();
    int i3 = A1();
    int i = y1();
    Object localObject4 = A();
    Object localObject5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
    if ((localObject4 != localObject5) && (T() != localObject5)) {
      paramInt1 = 0;
    } else {
      paramInt1 = 1;
    }
    if ((k > 0) && (paramInt1 != 0)) {
      for (paramInt1 = 0; paramInt1 < i4; paramInt1++)
      {
        localObject5 = (a)this.t1.get(paramInt1);
        if (paramInt2 == 0) {
          ((a)localObject5).g(paramInt3 - ((a)localObject5).f());
        } else {
          ((a)localObject5).g(paramInt3 - ((a)localObject5).e());
        }
      }
    }
    int k = 0;
    j = k;
    paramInt1 = j;
    for (int i2 = j; paramInt1 < i4; i2 = j)
    {
      localObject4 = (a)this.t1.get(paramInt1);
      if (paramInt2 == 0)
      {
        if (paramInt1 < i4 - 1)
        {
          localObject2 = a.a((a)this.t1.get(paramInt1 + 1)).P;
          j = 0;
        }
        else
        {
          localObject2 = this.R;
          j = y1();
        }
        localObject5 = a.a((a)localObject4).R;
        ((a)localObject4).j(paramInt2, paramArrayOfConstraintWidget, (ConstraintAnchor)localObject3, (ConstraintAnchor)localObject1, (ConstraintAnchor)localObject2, n, m, i3, j, paramInt3);
        m = Math.max(i2, ((a)localObject4).f());
        i = k + ((a)localObject4).e();
        k = i;
        if (paramInt1 > 0) {
          k = i + this.n1;
        }
        i2 = 0;
        localObject3 = localObject5;
        i = j;
        j = m;
        m = i2;
      }
      else
      {
        i3 = paramInt1;
        if (i3 < i4 - 1)
        {
          localObject1 = a.a((a)this.t1.get(i3 + 1)).O;
          j = 0;
        }
        else
        {
          localObject1 = this.Q;
          j = A1();
        }
        localObject5 = a.a((a)localObject4).Q;
        ((a)localObject4).j(paramInt2, paramArrayOfConstraintWidget, (ConstraintAnchor)localObject3, (ConstraintAnchor)localObject1, (ConstraintAnchor)localObject2, n, m, j, i, paramInt3);
        n = i2 + ((a)localObject4).f();
        i2 = Math.max(k, ((a)localObject4).e());
        k = n;
        if (i3 > 0) {
          k = n + this.m1;
        }
        n = i2;
        i2 = 0;
        i3 = j;
        paramArrayOfConstraintWidget = (ConstraintWidget[])localObject5;
        j = k;
        k = n;
        n = i2;
      }
      paramInt1++;
    }
    paramArrayOfInt[0] = i2;
    paramArrayOfInt[1] = k;
  }
  
  private void p2(ConstraintWidget[] paramArrayOfConstraintWidget, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt)
  {
    if (paramInt1 == 0) {
      return;
    }
    a locala;
    if (this.t1.size() == 0)
    {
      locala = new a(paramInt2, this.O, this.P, this.Q, this.R, paramInt3);
      this.t1.add(locala);
    }
    else
    {
      locala = (a)this.t1.get(0);
      locala.c();
      ConstraintAnchor localConstraintAnchor1 = this.O;
      ConstraintAnchor localConstraintAnchor2 = this.P;
      ConstraintAnchor localConstraintAnchor3 = this.Q;
      ConstraintAnchor localConstraintAnchor4 = this.R;
      int i = z1();
      int j = B1();
      int k = A1();
      int m = y1();
      locala.j(paramInt2, localConstraintAnchor1, localConstraintAnchor2, localConstraintAnchor3, localConstraintAnchor4, i, j, k, m, paramInt3);
    }
    for (paramInt2 = 0; paramInt2 < paramInt1; paramInt2++) {
      locala.b(paramArrayOfConstraintWidget[paramInt2]);
    }
    paramArrayOfInt[0] = locala.f();
    paramArrayOfInt[1] = locala.e();
  }
  
  public void A2(float paramFloat)
  {
    this.l1 = paramFloat;
  }
  
  public void B2(int paramInt)
  {
    this.f1 = paramInt;
  }
  
  public void C1(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((this.M0 > 0) && (!E1()))
    {
      H1(0, 0);
      G1(false);
      return;
    }
    int i = z1();
    int j = A1();
    int k = B1();
    int m = y1();
    int[] arrayOfInt = new int[2];
    int n = paramInt2 - i - j;
    int i2 = this.s1;
    if (i2 == 1) {
      n = paramInt4 - k - m;
    }
    if (i2 == 0)
    {
      if (this.a1 == -1) {
        this.a1 = 0;
      }
      if (this.b1 == -1) {
        this.b1 = 0;
      }
    }
    else
    {
      if (this.a1 == -1) {
        this.a1 = 0;
      }
      if (this.b1 == -1) {
        this.b1 = 0;
      }
    }
    ConstraintWidget[] arrayOfConstraintWidget = this.L0;
    int i3 = 0;
    int i4;
    for (i2 = i3;; i2 = i4)
    {
      i4 = this.M0;
      if (i3 >= i4) {
        break;
      }
      i4 = i2;
      if (this.L0[i3].V() == 8) {
        i4 = i2 + 1;
      }
      i3++;
    }
    if (i2 > 0)
    {
      arrayOfConstraintWidget = new ConstraintWidget[i4 - i2];
      i4 = 0;
      for (i2 = 0; i4 < this.M0; i2 = i3)
      {
        ConstraintWidget localConstraintWidget = this.L0[i4];
        i3 = i2;
        if (localConstraintWidget.V() != 8)
        {
          arrayOfConstraintWidget[i2] = localConstraintWidget;
          i3 = i2 + 1;
        }
        i4++;
      }
    }
    else
    {
      i2 = i4;
    }
    this.x1 = arrayOfConstraintWidget;
    this.y1 = i2;
    i3 = this.q1;
    if (i3 != 0) {
      if (i3 != 1) {
        if (i3 != 2) {
          if (i3 == 3) {}
        }
      }
    }
    boolean bool;
    for (;;)
    {
      bool = true;
      break;
      o2(arrayOfConstraintWidget, i2, this.s1, n, arrayOfInt);
      continue;
      m2(arrayOfConstraintWidget, i2, this.s1, n, arrayOfInt);
      continue;
      n2(arrayOfConstraintWidget, i2, this.s1, n, arrayOfInt);
      continue;
      p2(arrayOfConstraintWidget, i2, this.s1, n, arrayOfInt);
    }
    n = arrayOfInt[0] + i + j;
    i2 = arrayOfInt[1] + k + m;
    if (paramInt1 == 1073741824) {
      paramInt1 = paramInt2;
    } else if (paramInt1 == -2147483648) {
      paramInt1 = Math.min(n, paramInt2);
    } else if (paramInt1 == 0) {
      paramInt1 = n;
    } else {
      paramInt1 = 0;
    }
    if (paramInt3 == 1073741824) {
      paramInt2 = paramInt4;
    } else if (paramInt3 == -2147483648) {
      paramInt2 = Math.min(i2, paramInt4);
    } else if (paramInt3 == 0) {
      paramInt2 = i2;
    } else {
      paramInt2 = 0;
    }
    H1(paramInt1, paramInt2);
    k1(paramInt1);
    L0(paramInt2);
    if (this.M0 <= 0) {
      bool = false;
    }
    G1(bool);
  }
  
  public void C2(int paramInt)
  {
    this.r1 = paramInt;
  }
  
  public void D2(int paramInt)
  {
    this.s1 = paramInt;
  }
  
  public void E2(int paramInt)
  {
    this.p1 = paramInt;
  }
  
  public void F2(float paramFloat)
  {
    this.h1 = paramFloat;
  }
  
  public void G2(int paramInt)
  {
    this.n1 = paramInt;
  }
  
  public void H2(int paramInt)
  {
    this.b1 = paramInt;
  }
  
  public void I2(int paramInt)
  {
    this.q1 = paramInt;
  }
  
  public void g(androidx.constraintlayout.core.d paramd, boolean paramBoolean)
  {
    super.g(paramd, paramBoolean);
    if ((K() != null) && (((d)K()).P1())) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    int i = this.q1;
    if (i != 0)
    {
      int j;
      boolean bool;
      if (i != 1)
      {
        if (i != 2)
        {
          if (i == 3)
          {
            j = this.t1.size();
            for (i = 0; i < j; i++)
            {
              paramd = (a)this.t1.get(i);
              if (i == j - 1) {
                bool = true;
              } else {
                bool = false;
              }
              paramd.d(paramBoolean, i, bool);
            }
          }
        }
        else {
          j2(paramBoolean);
        }
      }
      else
      {
        j = this.t1.size();
        for (i = 0; i < j; i++)
        {
          paramd = (a)this.t1.get(i);
          if (i == j - 1) {
            bool = true;
          } else {
            bool = false;
          }
          paramd.d(paramBoolean, i, bool);
        }
      }
    }
    else if (this.t1.size() > 0)
    {
      ((a)this.t1.get(0)).d(paramBoolean, 0, true);
    }
    G1(false);
  }
  
  public void q2(float paramFloat)
  {
    this.i1 = paramFloat;
  }
  
  public void r2(int paramInt)
  {
    this.c1 = paramInt;
  }
  
  public void s2(float paramFloat)
  {
    this.j1 = paramFloat;
  }
  
  public void t2(int paramInt)
  {
    this.d1 = paramInt;
  }
  
  public void u2(int paramInt)
  {
    this.o1 = paramInt;
  }
  
  public void v2(float paramFloat)
  {
    this.g1 = paramFloat;
  }
  
  public void w2(int paramInt)
  {
    this.m1 = paramInt;
  }
  
  public void x2(int paramInt)
  {
    this.a1 = paramInt;
  }
  
  public void y2(float paramFloat)
  {
    this.k1 = paramFloat;
  }
  
  public void z2(int paramInt)
  {
    this.e1 = paramInt;
  }
  
  private class a
  {
    private int a;
    private ConstraintWidget b = null;
    int c = 0;
    private ConstraintAnchor d;
    private ConstraintAnchor e;
    private ConstraintAnchor f;
    private ConstraintAnchor g;
    private int h = 0;
    private int i = 0;
    private int j = 0;
    private int k = 0;
    private int l = 0;
    private int m = 0;
    private int n = 0;
    private int o = 0;
    private int p = 0;
    private int q = 0;
    
    public a(int paramInt1, ConstraintAnchor paramConstraintAnchor1, ConstraintAnchor paramConstraintAnchor2, ConstraintAnchor paramConstraintAnchor3, ConstraintAnchor paramConstraintAnchor4, int paramInt2)
    {
      this.a = paramInt1;
      this.d = paramConstraintAnchor1;
      this.e = paramConstraintAnchor2;
      this.f = paramConstraintAnchor3;
      this.g = paramConstraintAnchor4;
      this.h = e.this.z1();
      this.i = e.this.B1();
      this.j = e.this.A1();
      this.k = e.this.y1();
      this.q = paramInt2;
    }
    
    private void h()
    {
      this.l = 0;
      this.m = 0;
      this.b = null;
      this.c = 0;
      int i1 = this.o;
      for (int i2 = 0; (i2 < i1) && (this.n + i2 < e.d2(e.this)); i2++)
      {
        ConstraintWidget localConstraintWidget = e.e2(e.this)[(this.n + i2)];
        int i3;
        int i4;
        if (this.a == 0)
        {
          i3 = localConstraintWidget.W();
          i4 = e.P1(e.this);
          if (localConstraintWidget.V() == 8) {
            i4 = 0;
          }
          this.l += i3 + i4;
          i4 = e.c2(e.this, localConstraintWidget, this.q);
          if ((this.b == null) || (this.c < i4))
          {
            this.b = localConstraintWidget;
            this.c = i4;
            this.m = i4;
          }
        }
        else
        {
          int i5 = e.b2(e.this, localConstraintWidget, this.q);
          i3 = e.c2(e.this, localConstraintWidget, this.q);
          i4 = e.Q1(e.this);
          if (localConstraintWidget.V() == 8) {
            i4 = 0;
          }
          this.m += i3 + i4;
          if ((this.b == null) || (this.c < i5))
          {
            this.b = localConstraintWidget;
            this.c = i5;
            this.l = i5;
          }
        }
      }
    }
    
    public void b(ConstraintWidget paramConstraintWidget)
    {
      int i1 = this.a;
      int i2 = 0;
      int i3 = 0;
      if (i1 == 0)
      {
        i1 = e.b2(e.this, paramConstraintWidget, this.q);
        if (paramConstraintWidget.A() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
        {
          this.p += 1;
          i1 = 0;
        }
        i2 = e.P1(e.this);
        if (paramConstraintWidget.V() == 8) {
          i2 = i3;
        }
        this.l += i1 + i2;
        i1 = e.c2(e.this, paramConstraintWidget, this.q);
        if ((this.b == null) || (this.c < i1))
        {
          this.b = paramConstraintWidget;
          this.c = i1;
          this.m = i1;
        }
      }
      else
      {
        int i4 = e.b2(e.this, paramConstraintWidget, this.q);
        i1 = e.c2(e.this, paramConstraintWidget, this.q);
        if (paramConstraintWidget.T() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
        {
          this.p += 1;
          i1 = 0;
        }
        i3 = e.Q1(e.this);
        if (paramConstraintWidget.V() != 8) {
          i2 = i3;
        }
        this.m += i1 + i2;
        if ((this.b == null) || (this.c < i4))
        {
          this.b = paramConstraintWidget;
          this.c = i4;
          this.l = i4;
        }
      }
      this.o += 1;
    }
    
    public void c()
    {
      this.c = 0;
      this.b = null;
      this.l = 0;
      this.m = 0;
      this.n = 0;
      this.o = 0;
      this.p = 0;
    }
    
    public void d(boolean paramBoolean1, int paramInt, boolean paramBoolean2)
    {
      int i1 = this.o;
      Object localObject1;
      for (int i2 = 0; (i2 < i1) && (this.n + i2 < e.d2(e.this)); i2++)
      {
        localObject1 = e.e2(e.this)[(this.n + i2)];
        if (localObject1 != null) {
          ((ConstraintWidget)localObject1).u0();
        }
      }
      if ((i1 != 0) && (this.b != null))
      {
        int i3;
        if ((paramBoolean2) && (paramInt == 0)) {
          i3 = 1;
        } else {
          i3 = 0;
        }
        i2 = 0;
        int i4 = -1;
        for (int i5 = i4; i2 < i1; i5 = i6)
        {
          if (paramBoolean1) {
            i6 = i1 - 1 - i2;
          } else {
            i6 = i2;
          }
          if (this.n + i6 >= e.d2(e.this)) {
            break;
          }
          localObject1 = e.e2(e.this)[(this.n + i6)];
          int i7 = i4;
          i6 = i5;
          if (localObject1 != null)
          {
            i7 = i4;
            i6 = i5;
            if (((ConstraintWidget)localObject1).V() == 0)
            {
              i5 = i4;
              if (i4 == -1) {
                i5 = i2;
              }
              i6 = i2;
              i7 = i5;
            }
          }
          i2++;
          i4 = i7;
        }
        Object localObject2 = null;
        localObject1 = null;
        label465:
        float f1;
        float f2;
        if (this.a == 0)
        {
          localConstraintWidget1 = this.b;
          localConstraintWidget1.e1(e.f2(e.this));
          i6 = this.i;
          i2 = i6;
          if (paramInt > 0) {
            i2 = i6 + e.Q1(e.this);
          }
          localConstraintWidget1.P.a(this.e, i2);
          if (paramBoolean2) {
            localConstraintWidget1.R.a(this.g, this.k);
          }
          if (paramInt > 0) {
            this.e.d.R.a(localConstraintWidget1.P, 0);
          }
          paramInt = e.g2(e.this);
          i6 = 3;
          if ((paramInt == 3) && (!localConstraintWidget1.Z())) {
            for (paramInt = 0; paramInt < i1; paramInt++)
            {
              if (paramBoolean1) {
                i2 = i1 - 1 - paramInt;
              } else {
                i2 = paramInt;
              }
              if (this.n + i2 >= e.d2(e.this)) {
                break;
              }
              localObject2 = e.e2(e.this)[(this.n + i2)];
              if (((ConstraintWidget)localObject2).Z()) {
                break label465;
              }
            }
          }
          localObject2 = localConstraintWidget1;
          i2 = 0;
          paramInt = i6;
          while (i2 < i1)
          {
            if (paramBoolean1) {
              i6 = i1 - 1 - i2;
            } else {
              i6 = i2;
            }
            if (this.n + i6 >= e.d2(e.this)) {
              break;
            }
            ConstraintWidget localConstraintWidget2 = e.e2(e.this)[(this.n + i6)];
            if (localConstraintWidget2 != null)
            {
              if (i2 == 0) {
                localConstraintWidget2.k(localConstraintWidget2.O, this.d, this.h);
              }
              if (i6 == 0)
              {
                i6 = e.h2(e.this);
                f1 = e.i2(e.this);
                f2 = f1;
                if (paramBoolean1) {
                  f2 = 1.0F - f1;
                }
                if ((this.n == 0) && (e.R1(e.this) != -1))
                {
                  paramInt = e.R1(e.this);
                  if (paramBoolean1)
                  {
                    f2 = e.S1(e.this);
                    f2 = 1.0F - f2;
                  }
                }
                for (f2 = e.S1(e.this);; f2 = e.U1(e.this))
                {
                  f1 = f2;
                  break label732;
                  paramInt = i6;
                  f1 = f2;
                  if (!paramBoolean2) {
                    break label732;
                  }
                  paramInt = i6;
                  f1 = f2;
                  if (e.T1(e.this) == -1) {
                    break label732;
                  }
                  paramInt = e.T1(e.this);
                  if (paramBoolean1)
                  {
                    f2 = e.U1(e.this);
                    break;
                  }
                }
                label732:
                localConstraintWidget2.N0(paramInt);
                localConstraintWidget2.M0(f1);
              }
              if (i2 == i1 - 1) {
                localConstraintWidget2.k(localConstraintWidget2.Q, this.f, this.j);
              }
              if (localObject1 != null)
              {
                localConstraintWidget2.O.a(((ConstraintWidget)localObject1).Q, e.P1(e.this));
                if (i2 == i4) {
                  localConstraintWidget2.O.u(this.h);
                }
                ((ConstraintWidget)localObject1).Q.a(localConstraintWidget2.O, 0);
                if (i2 == i5 + 1) {
                  ((ConstraintWidget)localObject1).Q.u(this.j);
                }
              }
              if (localConstraintWidget2 != localConstraintWidget1)
              {
                i6 = e.g2(e.this);
                paramInt = 3;
                if ((i6 == 3) && (((ConstraintWidget)localObject2).Z()) && (localConstraintWidget2 != localObject2) && (localConstraintWidget2.Z()))
                {
                  localConstraintWidget2.S.a(((ConstraintWidget)localObject2).S, 0);
                  localObject1 = localConstraintWidget2;
                }
                else
                {
                  i6 = e.g2(e.this);
                  if (i6 != 0)
                  {
                    if (i6 != 1)
                    {
                      if (i3 != 0)
                      {
                        localConstraintWidget2.P.a(this.e, this.i);
                        localConstraintWidget2.R.a(this.g, this.k);
                        localObject1 = localConstraintWidget2;
                      }
                      else
                      {
                        localConstraintWidget2.P.a(localConstraintWidget1.P, 0);
                        localConstraintWidget2.R.a(localConstraintWidget1.R, 0);
                        localObject1 = localConstraintWidget2;
                      }
                    }
                    else
                    {
                      localConstraintWidget2.R.a(localConstraintWidget1.R, 0);
                      localObject1 = localConstraintWidget2;
                    }
                  }
                  else
                  {
                    localConstraintWidget2.P.a(localConstraintWidget1.P, 0);
                    localObject1 = localConstraintWidget2;
                  }
                }
              }
              else
              {
                paramInt = 3;
                localObject1 = localConstraintWidget2;
              }
            }
            i2++;
          }
        }
        ConstraintWidget localConstraintWidget1 = this.b;
        localConstraintWidget1.N0(e.h2(e.this));
        int i6 = this.h;
        i2 = i6;
        if (paramInt > 0) {
          i2 = i6 + e.P1(e.this);
        }
        if (paramBoolean1)
        {
          localConstraintWidget1.Q.a(this.f, i2);
          if (paramBoolean2) {
            localConstraintWidget1.O.a(this.d, this.j);
          }
          if (paramInt > 0) {
            this.f.d.O.a(localConstraintWidget1.Q, 0);
          }
        }
        else
        {
          localConstraintWidget1.O.a(this.d, i2);
          if (paramBoolean2) {
            localConstraintWidget1.Q.a(this.f, this.j);
          }
          if (paramInt > 0) {
            this.d.d.Q.a(localConstraintWidget1.O, 0);
          }
        }
        i2 = 0;
        localObject1 = localObject2;
        while ((i2 < i1) && (this.n + i2 < e.d2(e.this)))
        {
          localObject2 = e.e2(e.this)[(this.n + i2)];
          if (localObject2 != null)
          {
            if (i2 == 0)
            {
              ((ConstraintWidget)localObject2).k(((ConstraintWidget)localObject2).P, this.e, this.i);
              i6 = e.f2(e.this);
              f1 = e.V1(e.this);
              if ((this.n == 0) && (e.W1(e.this) != -1))
              {
                paramInt = e.W1(e.this);
                f2 = e.X1(e.this);
              }
              else
              {
                paramInt = i6;
                f2 = f1;
                if (paramBoolean2)
                {
                  paramInt = i6;
                  f2 = f1;
                  if (e.Y1(e.this) != -1)
                  {
                    paramInt = e.Y1(e.this);
                    f2 = e.Z1(e.this);
                  }
                }
              }
              ((ConstraintWidget)localObject2).e1(paramInt);
              ((ConstraintWidget)localObject2).d1(f2);
            }
            if (i2 == i1 - 1) {
              ((ConstraintWidget)localObject2).k(((ConstraintWidget)localObject2).R, this.g, this.k);
            }
            if (localObject1 != null)
            {
              ((ConstraintWidget)localObject2).P.a(((ConstraintWidget)localObject1).R, e.Q1(e.this));
              if (i2 == i4) {
                ((ConstraintWidget)localObject2).P.u(this.i);
              }
              ((ConstraintWidget)localObject1).R.a(((ConstraintWidget)localObject2).P, 0);
              if (i2 == i5 + 1) {
                ((ConstraintWidget)localObject1).R.u(this.k);
              }
            }
            if (localObject2 != localConstraintWidget1) {
              if (paramBoolean1)
              {
                paramInt = e.a2(e.this);
                if (paramInt != 0)
                {
                  if (paramInt != 1)
                  {
                    if (paramInt == 2)
                    {
                      ((ConstraintWidget)localObject2).O.a(localConstraintWidget1.O, 0);
                      ((ConstraintWidget)localObject2).Q.a(localConstraintWidget1.Q, 0);
                    }
                  }
                  else {
                    ((ConstraintWidget)localObject2).O.a(localConstraintWidget1.O, 0);
                  }
                }
                else {
                  ((ConstraintWidget)localObject2).Q.a(localConstraintWidget1.Q, 0);
                }
              }
              else
              {
                paramInt = e.a2(e.this);
                if (paramInt != 0)
                {
                  if (paramInt != 1)
                  {
                    if (paramInt == 2) {
                      if (i3 != 0)
                      {
                        ((ConstraintWidget)localObject2).O.a(this.d, this.h);
                        ((ConstraintWidget)localObject2).Q.a(this.f, this.j);
                      }
                      else
                      {
                        ((ConstraintWidget)localObject2).O.a(localConstraintWidget1.O, 0);
                        ((ConstraintWidget)localObject2).Q.a(localConstraintWidget1.Q, 0);
                      }
                    }
                  }
                  else {
                    ((ConstraintWidget)localObject2).Q.a(localConstraintWidget1.Q, 0);
                  }
                }
                else {
                  ((ConstraintWidget)localObject2).O.a(localConstraintWidget1.O, 0);
                }
              }
            }
            localObject1 = localObject2;
          }
          i2++;
        }
      }
    }
    
    public int e()
    {
      if (this.a == 1) {
        return this.m - e.Q1(e.this);
      }
      return this.m;
    }
    
    public int f()
    {
      if (this.a == 0) {
        return this.l - e.P1(e.this);
      }
      return this.l;
    }
    
    public void g(int paramInt)
    {
      int i1 = this.p;
      if (i1 == 0) {
        return;
      }
      int i2 = this.o;
      i1 = paramInt / i1;
      for (paramInt = 0; (paramInt < i2) && (this.n + paramInt < e.d2(e.this)); paramInt++)
      {
        ConstraintWidget localConstraintWidget = e.e2(e.this)[(this.n + paramInt)];
        if (this.a == 0)
        {
          if ((localConstraintWidget != null) && (localConstraintWidget.A() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (localConstraintWidget.w == 0)) {
            e.this.D1(localConstraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i1, localConstraintWidget.T(), localConstraintWidget.x());
          }
        }
        else if ((localConstraintWidget != null) && (localConstraintWidget.T() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (localConstraintWidget.x == 0)) {
          e.this.D1(localConstraintWidget, localConstraintWidget.A(), localConstraintWidget.W(), ConstraintWidget.DimensionBehaviour.FIXED, i1);
        }
      }
      h();
    }
    
    public void i(int paramInt)
    {
      this.n = paramInt;
    }
    
    public void j(int paramInt1, ConstraintAnchor paramConstraintAnchor1, ConstraintAnchor paramConstraintAnchor2, ConstraintAnchor paramConstraintAnchor3, ConstraintAnchor paramConstraintAnchor4, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
    {
      this.a = paramInt1;
      this.d = paramConstraintAnchor1;
      this.e = paramConstraintAnchor2;
      this.f = paramConstraintAnchor3;
      this.g = paramConstraintAnchor4;
      this.h = paramInt2;
      this.i = paramInt3;
      this.j = paramInt4;
      this.k = paramInt5;
      this.q = paramInt6;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.e
 * JD-Core Version:    0.7.0.1
 */