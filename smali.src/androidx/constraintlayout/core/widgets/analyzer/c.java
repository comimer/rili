package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour;
import java.util.ArrayList;
import java.util.Iterator;

public class c
  extends WidgetRun
{
  ArrayList<WidgetRun> k = new ArrayList();
  private int l;
  
  public c(ConstraintWidget paramConstraintWidget, int paramInt)
  {
    super(paramConstraintWidget);
    this.f = paramInt;
    q();
  }
  
  private void q()
  {
    Object localObject1 = this.b;
    ConstraintWidget localConstraintWidget;
    for (Object localObject2 = ((ConstraintWidget)localObject1).L(this.f); localObject2 != null; localObject2 = localConstraintWidget)
    {
      localConstraintWidget = ((ConstraintWidget)localObject2).L(this.f);
      localObject1 = localObject2;
    }
    this.b = ((ConstraintWidget)localObject1);
    this.k.add(((ConstraintWidget)localObject1).N(this.f));
    for (localObject2 = ((ConstraintWidget)localObject1).J(this.f); localObject2 != null; localObject2 = ((ConstraintWidget)localObject2).J(this.f)) {
      this.k.add(((ConstraintWidget)localObject2).N(this.f));
    }
    localObject2 = this.k.iterator();
    int i;
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (WidgetRun)((Iterator)localObject2).next();
      i = this.f;
      if (i == 0) {
        ((WidgetRun)localObject1).b.c = this;
      } else if (i == 1) {
        ((WidgetRun)localObject1).b.d = this;
      }
    }
    if ((this.f == 0) && (((androidx.constraintlayout.core.widgets.d)this.b.K()).P1())) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i != 0) && (this.k.size() > 1))
    {
      localObject2 = this.k;
      this.b = ((WidgetRun)((ArrayList)localObject2).get(((ArrayList)localObject2).size() - 1)).b;
    }
    if (this.f == 0) {
      i = this.b.z();
    } else {
      i = this.b.S();
    }
    this.l = i;
  }
  
  private ConstraintWidget r()
  {
    for (int i = 0; i < this.k.size(); i++)
    {
      WidgetRun localWidgetRun = (WidgetRun)this.k.get(i);
      if (localWidgetRun.b.V() != 8) {
        return localWidgetRun.b;
      }
    }
    return null;
  }
  
  private ConstraintWidget s()
  {
    for (int i = this.k.size() - 1; i >= 0; i--)
    {
      WidgetRun localWidgetRun = (WidgetRun)this.k.get(i);
      if (localWidgetRun.b.V() != 8) {
        return localWidgetRun.b;
      }
    }
    return null;
  }
  
  public void a(d paramd)
  {
    if ((this.h.j) && (this.i.j))
    {
      paramd = this.b.K();
      boolean bool;
      if ((paramd instanceof androidx.constraintlayout.core.widgets.d)) {
        bool = ((androidx.constraintlayout.core.widgets.d)paramd).P1();
      } else {
        bool = false;
      }
      int i = this.i.g - this.h.g;
      int j = this.k.size();
      for (int m = 0;; m++)
      {
        n = -1;
        if (m >= j) {
          break;
        }
        i1 = m;
        if (((WidgetRun)this.k.get(m)).b.V() != 8) {
          break label125;
        }
      }
      int i1 = -1;
      label125:
      int i2 = j - 1;
      for (m = i2;; m--)
      {
        i3 = n;
        if (m < 0) {
          break label177;
        }
        if (((WidgetRun)this.k.get(m)).b.V() != 8) {
          break;
        }
      }
      int i3 = m;
      label177:
      int i4 = 0;
      int i5;
      Object localObject;
      int i7;
      int i8;
      label417:
      label425:
      float f3;
      while (i4 < 2)
      {
        i5 = 0;
        i6 = 0;
        m = 0;
        n = 0;
        f1 = 0.0F;
        while (i5 < j)
        {
          localObject = (WidgetRun)this.k.get(i5);
          if (((WidgetRun)localObject).b.V() == 8)
          {
            i7 = m;
          }
          else
          {
            i8 = n + 1;
            n = i6;
            if (i5 > 0)
            {
              n = i6;
              if (i5 >= i1) {
                n = i6 + ((WidgetRun)localObject).h.f;
              }
            }
            paramd = ((WidgetRun)localObject).e;
            i9 = paramd.g;
            if (((WidgetRun)localObject).d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
              i6 = 1;
            } else {
              i6 = 0;
            }
            if (i6 != 0)
            {
              i7 = this.f;
              if ((i7 == 0) && (!((WidgetRun)localObject).b.e.e.j)) {
                return;
              }
              if ((i7 == 1) && (!((WidgetRun)localObject).b.f.e.j)) {
                return;
              }
            }
            else
            {
              if ((((WidgetRun)localObject).a == 1) && (i4 == 0))
              {
                i6 = paramd.m;
                m++;
              }
              else
              {
                if (!paramd.j) {
                  break label417;
                }
                i6 = i9;
              }
              i7 = 1;
              break label425;
            }
            i7 = i6;
            i6 = i9;
            if (i7 == 0)
            {
              i6 = m + 1;
              float f2 = localObject.b.D0[this.f];
              i9 = n;
              m = i6;
              f3 = f1;
              if (f2 >= 0.0F)
              {
                f3 = f1 + f2;
                i9 = n;
                m = i6;
              }
            }
            else
            {
              i9 = n + i6;
              f3 = f1;
            }
            i6 = i9;
            i7 = m;
            n = i8;
            f1 = f3;
            if (i5 < i2)
            {
              i6 = i9;
              i7 = m;
              n = i8;
              f1 = f3;
              if (i5 < i3)
              {
                i6 = i9 + -((WidgetRun)localObject).i.f;
                f1 = f3;
                n = i8;
                i7 = m;
              }
            }
          }
          i5++;
          m = i7;
        }
        if ((i6 >= i) && (m != 0))
        {
          i4++;
        }
        else
        {
          i9 = n;
          n = m;
          break label624;
        }
      }
      int i9 = 0;
      int i6 = 0;
      int n = 0;
      float f1 = 0.0F;
      label624:
      i4 = this.h.g;
      if (bool) {
        i4 = this.i.g;
      }
      m = i4;
      if (i6 > i) {
        if (bool) {
          m = i4 + (int)((i6 - i) / 2.0F + 0.5F);
        } else {
          m = i4 - (int)((i6 - i) / 2.0F + 0.5F);
        }
      }
      if (n > 0)
      {
        f3 = i - i6;
        i7 = (int)(f3 / n + 0.5F);
        int i10 = 0;
        i5 = 0;
        i4 = i6;
        i6 = i5;
        i5 = m;
        while (i10 < j)
        {
          paramd = (WidgetRun)this.k.get(i10);
          if ((paramd.b.V() != 8) && (paramd.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))
          {
            localObject = paramd.e;
            if (!((DependencyNode)localObject).j)
            {
              if (f1 > 0.0F) {
                m = (int)(paramd.b.D0[this.f] * f3 / f1 + 0.5F);
              } else {
                m = i7;
              }
              ConstraintWidget localConstraintWidget;
              if (this.f == 0)
              {
                localConstraintWidget = paramd.b;
                i11 = localConstraintWidget.A;
                i8 = localConstraintWidget.z;
              }
              else
              {
                localConstraintWidget = paramd.b;
                i11 = localConstraintWidget.D;
                i8 = localConstraintWidget.C;
              }
              if (paramd.a == 1) {
                i12 = Math.min(m, ((f)localObject).m);
              } else {
                i12 = m;
              }
              int i12 = Math.max(i8, i12);
              i8 = i12;
              if (i11 > 0) {
                i8 = Math.min(i11, i12);
              }
              i12 = m;
              int i11 = i6;
              if (i8 != m)
              {
                i11 = i6 + 1;
                i12 = i8;
              }
              paramd.e.d(i12);
              i6 = i11;
            }
          }
          i10++;
        }
        if (i6 > 0)
        {
          i7 = n - i6;
          n = 0;
          m = 0;
          while (n < j)
          {
            paramd = (WidgetRun)this.k.get(n);
            if (paramd.b.V() != 8)
            {
              i4 = m;
              if (n > 0)
              {
                i4 = m;
                if (n >= i1) {
                  i4 = m + paramd.h.f;
                }
              }
              i4 += paramd.e.g;
              m = i4;
              if (n < i2)
              {
                m = i4;
                if (n < i3) {
                  m = i4 + -paramd.i.f;
                }
              }
            }
            n++;
          }
          n = i7;
        }
        else
        {
          m = i4;
        }
        if ((this.l == 2) && (i6 == 0))
        {
          this.l = 0;
          i6 = m;
          i4 = n;
          m = i5;
        }
        else
        {
          i6 = m;
          i4 = n;
          m = i5;
        }
      }
      else
      {
        i4 = n;
      }
      if (i6 > i) {
        this.l = 2;
      }
      if ((i9 > 0) && (i4 == 0) && (i1 == i3)) {
        this.l = 2;
      }
      n = this.l;
      if (n == 1)
      {
        if (i9 > 1) {
          n = (i - i6) / (i9 - 1);
        } else if (i9 == 1) {
          n = (i - i6) / 2;
        } else {
          n = 0;
        }
        i9 = n;
        if (i4 > 0) {
          i9 = 0;
        }
        n = 0;
        for (i6 = m; n < j; i6 = m)
        {
          if (bool) {
            m = j - (n + 1);
          } else {
            m = n;
          }
          localObject = (WidgetRun)this.k.get(m);
          if (((WidgetRun)localObject).b.V() == 8)
          {
            ((WidgetRun)localObject).h.d(i6);
            ((WidgetRun)localObject).i.d(i6);
            m = i6;
          }
          else
          {
            m = i6;
            if (n > 0) {
              if (bool) {
                m = i6 - i9;
              } else {
                m = i6 + i9;
              }
            }
            i6 = m;
            if (n > 0)
            {
              i6 = m;
              if (n >= i1) {
                if (bool) {
                  i6 = m - ((WidgetRun)localObject).h.f;
                } else {
                  i6 = m + ((WidgetRun)localObject).h.f;
                }
              }
            }
            if (bool) {
              ((WidgetRun)localObject).i.d(i6);
            } else {
              ((WidgetRun)localObject).h.d(i6);
            }
            paramd = ((WidgetRun)localObject).e;
            i4 = paramd.g;
            m = i4;
            if (((WidgetRun)localObject).d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
            {
              m = i4;
              if (((WidgetRun)localObject).a == 1) {
                m = paramd.m;
              }
            }
            if (bool) {
              i6 -= m;
            } else {
              i6 += m;
            }
            if (bool) {
              ((WidgetRun)localObject).h.d(i6);
            } else {
              ((WidgetRun)localObject).i.d(i6);
            }
            ((WidgetRun)localObject).g = true;
            m = i6;
            if (n < i2)
            {
              m = i6;
              if (n < i3) {
                if (bool) {
                  m = i6 - -((WidgetRun)localObject).i.f;
                } else {
                  m = i6 + -((WidgetRun)localObject).i.f;
                }
              }
            }
          }
          n++;
        }
      }
      if (n == 0)
      {
        i9 = (i - i6) / (i9 + 1);
        if (i4 > 0) {
          i9 = 0;
        }
        for (n = 0; n < j; n++)
        {
          if (bool) {
            i6 = j - (n + 1);
          } else {
            i6 = n;
          }
          localObject = (WidgetRun)this.k.get(i6);
          if (((WidgetRun)localObject).b.V() == 8)
          {
            ((WidgetRun)localObject).h.d(m);
            ((WidgetRun)localObject).i.d(m);
          }
          else
          {
            if (bool) {
              i6 = m - i9;
            } else {
              i6 = m + i9;
            }
            m = i6;
            if (n > 0)
            {
              m = i6;
              if (n >= i1) {
                if (bool) {
                  m = i6 - ((WidgetRun)localObject).h.f;
                } else {
                  m = i6 + ((WidgetRun)localObject).h.f;
                }
              }
            }
            if (bool) {
              ((WidgetRun)localObject).i.d(m);
            } else {
              ((WidgetRun)localObject).h.d(m);
            }
            paramd = ((WidgetRun)localObject).e;
            i4 = paramd.g;
            i6 = i4;
            if (((WidgetRun)localObject).d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
            {
              i6 = i4;
              if (((WidgetRun)localObject).a == 1) {
                i6 = Math.min(i4, paramd.m);
              }
            }
            if (bool) {
              i6 = m - i6;
            } else {
              i6 = m + i6;
            }
            if (bool) {
              ((WidgetRun)localObject).h.d(i6);
            } else {
              ((WidgetRun)localObject).i.d(i6);
            }
            m = i6;
            if (n < i2)
            {
              m = i6;
              if (n < i3) {
                if (bool) {
                  m = i6 - -((WidgetRun)localObject).i.f;
                } else {
                  m = i6 + -((WidgetRun)localObject).i.f;
                }
              }
            }
          }
        }
      }
      if (n == 2)
      {
        if (this.f == 0) {
          f1 = this.b.y();
        } else {
          f1 = this.b.R();
        }
        f3 = f1;
        if (bool) {
          f3 = 1.0F - f1;
        }
        n = (int)((i - i6) * f3 + 0.5F);
        if ((n < 0) || (i4 > 0)) {
          n = 0;
        }
        if (bool) {
          m -= n;
        } else {
          m += n;
        }
        for (n = 0; n < j; n++)
        {
          if (bool) {
            i6 = j - (n + 1);
          } else {
            i6 = n;
          }
          paramd = (WidgetRun)this.k.get(i6);
          if (paramd.b.V() == 8)
          {
            paramd.h.d(m);
            paramd.i.d(m);
          }
          else
          {
            i6 = m;
            if (n > 0)
            {
              i6 = m;
              if (n >= i1) {
                if (bool) {
                  i6 = m - paramd.h.f;
                } else {
                  i6 = m + paramd.h.f;
                }
              }
            }
            if (bool) {
              paramd.i.d(i6);
            } else {
              paramd.h.d(i6);
            }
            localObject = paramd.e;
            m = ((DependencyNode)localObject).g;
            if ((paramd.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (paramd.a == 1)) {
              m = ((f)localObject).m;
            }
            if (bool) {
              i6 -= m;
            } else {
              i6 += m;
            }
            if (bool) {
              paramd.h.d(i6);
            } else {
              paramd.i.d(i6);
            }
            m = i6;
            if (n < i2)
            {
              m = i6;
              if (n < i3) {
                if (bool) {
                  m = i6 - -paramd.i.f;
                } else {
                  m = i6 + -paramd.i.f;
                }
              }
            }
          }
        }
      }
    }
  }
  
  void d()
  {
    Object localObject1 = this.k.iterator();
    while (((Iterator)localObject1).hasNext()) {
      ((WidgetRun)((Iterator)localObject1).next()).d();
    }
    int i = this.k.size();
    if (i < 1) {
      return;
    }
    Object localObject2 = ((WidgetRun)this.k.get(0)).b;
    localObject1 = ((WidgetRun)this.k.get(i - 1)).b;
    Object localObject3;
    if (this.f == 0)
    {
      localObject3 = ((ConstraintWidget)localObject2).O;
      localObject1 = ((ConstraintWidget)localObject1).Q;
      localObject2 = i((ConstraintAnchor)localObject3, 0);
      i = ((ConstraintAnchor)localObject3).f();
      localObject3 = r();
      if (localObject3 != null) {
        i = ((ConstraintWidget)localObject3).O.f();
      }
      if (localObject2 != null) {
        b(this.h, (DependencyNode)localObject2, i);
      }
      localObject2 = i((ConstraintAnchor)localObject1, 0);
      i = ((ConstraintAnchor)localObject1).f();
      localObject1 = s();
      if (localObject1 != null) {
        i = ((ConstraintWidget)localObject1).Q.f();
      }
      if (localObject2 != null) {
        b(this.i, (DependencyNode)localObject2, -i);
      }
    }
    else
    {
      localObject3 = ((ConstraintWidget)localObject2).P;
      localObject1 = ((ConstraintWidget)localObject1).R;
      localObject2 = i((ConstraintAnchor)localObject3, 1);
      i = ((ConstraintAnchor)localObject3).f();
      localObject3 = r();
      if (localObject3 != null) {
        i = ((ConstraintWidget)localObject3).P.f();
      }
      if (localObject2 != null) {
        b(this.h, (DependencyNode)localObject2, i);
      }
      localObject2 = i((ConstraintAnchor)localObject1, 1);
      i = ((ConstraintAnchor)localObject1).f();
      localObject1 = s();
      if (localObject1 != null) {
        i = ((ConstraintWidget)localObject1).R.f();
      }
      if (localObject2 != null) {
        b(this.i, (DependencyNode)localObject2, -i);
      }
    }
    this.h.a = this;
    this.i.a = this;
  }
  
  public void e()
  {
    for (int i = 0; i < this.k.size(); i++) {
      ((WidgetRun)this.k.get(i)).e();
    }
  }
  
  void f()
  {
    this.c = null;
    Iterator localIterator = this.k.iterator();
    while (localIterator.hasNext()) {
      ((WidgetRun)localIterator.next()).f();
    }
  }
  
  public long j()
  {
    int i = this.k.size();
    long l1 = 0L;
    for (int j = 0; j < i; j++)
    {
      WidgetRun localWidgetRun = (WidgetRun)this.k.get(j);
      l1 = l1 + localWidgetRun.h.f + localWidgetRun.j() + localWidgetRun.i.f;
    }
    return l1;
  }
  
  boolean m()
  {
    int i = this.k.size();
    for (int j = 0; j < i; j++) {
      if (!((WidgetRun)this.k.get(j)).m()) {
        return false;
      }
    }
    return true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ChainRun ");
    if (this.f == 0) {
      localObject = "horizontal : ";
    } else {
      localObject = "vertical : ";
    }
    localStringBuilder.append((String)localObject);
    Object localObject = this.k.iterator();
    while (((Iterator)localObject).hasNext())
    {
      WidgetRun localWidgetRun = (WidgetRun)((Iterator)localObject).next();
      localStringBuilder.append("<");
      localStringBuilder.append(localWidgetRun);
      localStringBuilder.append("> ");
    }
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.c
 * JD-Core Version:    0.7.0.1
 */