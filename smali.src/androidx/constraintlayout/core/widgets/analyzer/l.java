package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.List;

class l
{
  public static int h;
  public int a = 0;
  public boolean b = false;
  WidgetRun c = null;
  WidgetRun d = null;
  ArrayList<WidgetRun> e = new ArrayList();
  int f;
  int g;
  
  public l(WidgetRun paramWidgetRun, int paramInt)
  {
    int i = h;
    this.f = i;
    h = i + 1;
    this.c = paramWidgetRun;
    this.d = paramWidgetRun;
    this.g = paramInt;
  }
  
  private long c(DependencyNode paramDependencyNode, long paramLong)
  {
    WidgetRun localWidgetRun = paramDependencyNode.d;
    if ((localWidgetRun instanceof j)) {
      return paramLong;
    }
    int i = paramDependencyNode.k.size();
    int j = 0;
    for (long l1 = paramLong; j < i; l1 = l2)
    {
      Object localObject = (d)paramDependencyNode.k.get(j);
      l2 = l1;
      if ((localObject instanceof DependencyNode))
      {
        localObject = (DependencyNode)localObject;
        if (((DependencyNode)localObject).d == localWidgetRun) {
          l2 = l1;
        } else {
          l2 = Math.min(l1, c((DependencyNode)localObject, ((DependencyNode)localObject).f + paramLong));
        }
      }
      j++;
    }
    long l2 = l1;
    if (paramDependencyNode == localWidgetRun.i)
    {
      l2 = localWidgetRun.j();
      paramDependencyNode = localWidgetRun.h;
      paramLong -= l2;
      l2 = Math.min(Math.min(l1, c(paramDependencyNode, paramLong)), paramLong - localWidgetRun.h.f);
    }
    return l2;
  }
  
  private long d(DependencyNode paramDependencyNode, long paramLong)
  {
    WidgetRun localWidgetRun = paramDependencyNode.d;
    if ((localWidgetRun instanceof j)) {
      return paramLong;
    }
    int i = paramDependencyNode.k.size();
    int j = 0;
    for (long l1 = paramLong; j < i; l1 = l2)
    {
      Object localObject = (d)paramDependencyNode.k.get(j);
      l2 = l1;
      if ((localObject instanceof DependencyNode))
      {
        localObject = (DependencyNode)localObject;
        if (((DependencyNode)localObject).d == localWidgetRun) {
          l2 = l1;
        } else {
          l2 = Math.max(l1, d((DependencyNode)localObject, ((DependencyNode)localObject).f + paramLong));
        }
      }
      j++;
    }
    long l2 = l1;
    if (paramDependencyNode == localWidgetRun.h)
    {
      l2 = localWidgetRun.j();
      paramDependencyNode = localWidgetRun.i;
      paramLong += l2;
      l2 = Math.max(Math.max(l1, d(paramDependencyNode, paramLong)), paramLong - localWidgetRun.i.f);
    }
    return l2;
  }
  
  public void a(WidgetRun paramWidgetRun)
  {
    this.e.add(paramWidgetRun);
    this.d = paramWidgetRun;
  }
  
  public long b(androidx.constraintlayout.core.widgets.d paramd, int paramInt)
  {
    WidgetRun localWidgetRun = this.c;
    boolean bool1 = localWidgetRun instanceof c;
    long l1 = 0L;
    if (bool1)
    {
      if (((c)localWidgetRun).f != paramInt) {
        return 0L;
      }
    }
    else if (paramInt == 0)
    {
      if (!(localWidgetRun instanceof k)) {
        return 0L;
      }
    }
    else if (!(localWidgetRun instanceof m)) {
      return 0L;
    }
    if (paramInt == 0) {
      localObject = paramd.e;
    } else {
      localObject = paramd.f;
    }
    Object localObject = ((WidgetRun)localObject).h;
    if (paramInt == 0) {
      paramd = paramd.e;
    } else {
      paramd = paramd.f;
    }
    paramd = paramd.i;
    bool1 = localWidgetRun.h.l.contains(localObject);
    boolean bool2 = this.c.i.l.contains(paramd);
    long l2 = this.c.j();
    long l3;
    long l5;
    if ((bool1) && (bool2))
    {
      l3 = d(this.c.h, 0L);
      long l4 = c(this.c.i, 0L);
      l5 = l3 - l2;
      paramd = this.c;
      int i = paramd.i.f;
      l3 = l5;
      if (l5 >= -i) {
        l3 = l5 + i;
      }
      l5 = -l4;
      i = paramd.h.f;
      l4 = l5 - l2 - i;
      l5 = l4;
      if (l4 >= i) {
        l5 = l4 - i;
      }
      float f1 = paramd.b.q(paramInt);
      if (f1 > 0.0F) {
        l1 = ((float)l5 / f1 + (float)l3 / (1.0F - f1));
      }
      float f2 = (float)l1;
      l5 = (f2 * f1 + 0.5F);
      l3 = (f2 * (1.0F - f1) + 0.5F);
      paramd = this.c;
      l3 = paramd.h.f + (l5 + l2 + l3);
      paramInt = paramd.i.f;
    }
    else
    {
      if (bool1)
      {
        paramd = this.c.h;
        l3 = Math.max(d(paramd, paramd.f), this.c.h.f + l2);
        break label509;
      }
      if (bool2)
      {
        paramd = this.c.i;
        l5 = c(paramd, paramd.f);
        l3 = -this.c.i.f;
        l3 = Math.max(-l5, l3 + l2);
        break label509;
      }
      paramd = this.c;
      l3 = paramd.h.f + paramd.j();
      paramInt = this.c.i.f;
    }
    l3 -= paramInt;
    label509:
    return l3;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.l
 * JD-Core Version:    0.7.0.1
 */