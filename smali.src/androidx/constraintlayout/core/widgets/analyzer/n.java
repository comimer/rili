package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class n
{
  static int g;
  ArrayList<ConstraintWidget> a = new ArrayList();
  int b;
  boolean c = false;
  int d;
  ArrayList<a> e = null;
  private int f = -1;
  
  public n(int paramInt)
  {
    int i = g;
    g = i + 1;
    this.b = i;
    this.d = paramInt;
  }
  
  private String e()
  {
    int i = this.d;
    if (i == 0) {
      return "Horizontal";
    }
    if (i == 1) {
      return "Vertical";
    }
    if (i == 2) {
      return "Both";
    }
    return "Unknown";
  }
  
  private int j(androidx.constraintlayout.core.d paramd, ArrayList<ConstraintWidget> paramArrayList, int paramInt)
  {
    int i = 0;
    androidx.constraintlayout.core.widgets.d locald = (androidx.constraintlayout.core.widgets.d)((ConstraintWidget)paramArrayList.get(0)).K();
    paramd.D();
    locald.g(paramd, false);
    for (int j = 0; j < paramArrayList.size(); j++) {
      ((ConstraintWidget)paramArrayList.get(j)).g(paramd, false);
    }
    if ((paramInt == 0) && (locald.W0 > 0)) {
      b.b(locald, paramd, paramArrayList, 0);
    }
    if ((paramInt == 1) && (locald.X0 > 0)) {
      b.b(locald, paramd, paramArrayList, 1);
    }
    try
    {
      paramd.z();
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    this.e = new ArrayList();
    for (j = i; j < paramArrayList.size(); j++)
    {
      a locala = new a((ConstraintWidget)paramArrayList.get(j), paramd, paramInt);
      this.e.add(locala);
    }
    if (paramInt == 0)
    {
      j = paramd.x(locald.O);
      paramInt = paramd.x(locald.Q);
      paramd.D();
    }
    for (;;)
    {
      return paramInt - j;
      j = paramd.x(locald.P);
      paramInt = paramd.x(locald.R);
      paramd.D();
    }
  }
  
  public boolean a(ConstraintWidget paramConstraintWidget)
  {
    if (this.a.contains(paramConstraintWidget)) {
      return false;
    }
    this.a.add(paramConstraintWidget);
    return true;
  }
  
  public void b(ArrayList<n> paramArrayList)
  {
    int i = this.a.size();
    if ((this.f != -1) && (i > 0)) {
      for (int j = 0; j < paramArrayList.size(); j++)
      {
        n localn = (n)paramArrayList.get(j);
        if (this.f == localn.b) {
          g(this.d, localn);
        }
      }
    }
    if (i == 0) {
      paramArrayList.remove(this);
    }
  }
  
  public int c()
  {
    return this.b;
  }
  
  public int d()
  {
    return this.d;
  }
  
  public int f(androidx.constraintlayout.core.d paramd, int paramInt)
  {
    if (this.a.size() == 0) {
      return 0;
    }
    return j(paramd, this.a, paramInt);
  }
  
  public void g(int paramInt, n paramn)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)localIterator.next();
      paramn.a(localConstraintWidget);
      if (paramInt == 0) {
        localConstraintWidget.I0 = paramn.c();
      } else {
        localConstraintWidget.J0 = paramn.c();
      }
    }
    this.f = paramn.b;
  }
  
  public void h(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
  
  public void i(int paramInt)
  {
    this.d = paramInt;
  }
  
  public String toString()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(e());
    ((StringBuilder)localObject1).append(" [");
    ((StringBuilder)localObject1).append(this.b);
    ((StringBuilder)localObject1).append("] <");
    localObject1 = ((StringBuilder)localObject1).toString();
    Object localObject2 = this.a.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)((Iterator)localObject2).next();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append((String)localObject1);
      localStringBuilder.append(" ");
      localStringBuilder.append(localConstraintWidget.t());
      localObject1 = localStringBuilder.toString();
    }
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject1);
    ((StringBuilder)localObject2).append(" >");
    return ((StringBuilder)localObject2).toString();
  }
  
  class a
  {
    WeakReference<ConstraintWidget> a;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    
    public a(ConstraintWidget paramConstraintWidget, androidx.constraintlayout.core.d paramd, int paramInt)
    {
      this.a = new WeakReference(paramConstraintWidget);
      this.b = paramd.x(paramConstraintWidget.O);
      this.c = paramd.x(paramConstraintWidget.P);
      this.d = paramd.x(paramConstraintWidget.Q);
      this.e = paramd.x(paramConstraintWidget.R);
      this.f = paramd.x(paramConstraintWidget.S);
      this.g = paramInt;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.n
 * JD-Core Version:    0.7.0.1
 */