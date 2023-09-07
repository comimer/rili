package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DependencyNode
  implements d
{
  public d a = null;
  public boolean b = false;
  public boolean c = false;
  WidgetRun d;
  Type e = Type.UNKNOWN;
  int f;
  public int g;
  int h = 1;
  f i = null;
  public boolean j = false;
  List<d> k = new ArrayList();
  List<DependencyNode> l = new ArrayList();
  
  public DependencyNode(WidgetRun paramWidgetRun)
  {
    this.d = paramWidgetRun;
  }
  
  public void a(d paramd)
  {
    paramd = this.l.iterator();
    while (paramd.hasNext()) {
      if (!((DependencyNode)paramd.next()).j) {
        return;
      }
    }
    this.c = true;
    paramd = this.a;
    if (paramd != null) {
      paramd.a(this);
    }
    if (this.b)
    {
      this.d.a(this);
      return;
    }
    paramd = null;
    int m = 0;
    Iterator localIterator = this.l.iterator();
    Object localObject;
    while (localIterator.hasNext())
    {
      localObject = (DependencyNode)localIterator.next();
      if (!(localObject instanceof f))
      {
        m++;
        paramd = (d)localObject;
      }
    }
    if ((paramd != null) && (m == 1) && (paramd.j))
    {
      localObject = this.i;
      if (localObject != null) {
        if (((DependencyNode)localObject).j) {
          this.f = (this.h * ((DependencyNode)localObject).g);
        } else {
          return;
        }
      }
      d(paramd.g + this.f);
    }
    paramd = this.a;
    if (paramd != null) {
      paramd.a(this);
    }
  }
  
  public void b(d paramd)
  {
    this.k.add(paramd);
    if (this.j) {
      paramd.a(paramd);
    }
  }
  
  public void c()
  {
    this.l.clear();
    this.k.clear();
    this.j = false;
    this.g = 0;
    this.c = false;
    this.b = false;
  }
  
  public void d(int paramInt)
  {
    if (this.j) {
      return;
    }
    this.j = true;
    this.g = paramInt;
    Iterator localIterator = this.k.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      locald.a(locald);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.d.b.t());
    localStringBuilder.append(":");
    localStringBuilder.append(this.e);
    localStringBuilder.append("(");
    Object localObject;
    if (this.j) {
      localObject = Integer.valueOf(this.g);
    } else {
      localObject = "unresolved";
    }
    localStringBuilder.append(localObject);
    localStringBuilder.append(") <t=");
    localStringBuilder.append(this.l.size());
    localStringBuilder.append(":d=");
    localStringBuilder.append(this.k.size());
    localStringBuilder.append(">");
    return localStringBuilder.toString();
  }
  
  static enum Type
  {
    static
    {
      Type localType1 = new Type("UNKNOWN", 0);
      UNKNOWN = localType1;
      Type localType2 = new Type("HORIZONTAL_DIMENSION", 1);
      HORIZONTAL_DIMENSION = localType2;
      Type localType3 = new Type("VERTICAL_DIMENSION", 2);
      VERTICAL_DIMENSION = localType3;
      Type localType4 = new Type("LEFT", 3);
      LEFT = localType4;
      Type localType5 = new Type("RIGHT", 4);
      RIGHT = localType5;
      Type localType6 = new Type("TOP", 5);
      TOP = localType6;
      Type localType7 = new Type("BOTTOM", 6);
      BOTTOM = localType7;
      Type localType8 = new Type("BASELINE", 7);
      BASELINE = localType8;
      $VALUES = new Type[] { localType1, localType2, localType3, localType4, localType5, localType6, localType7, localType8 };
    }
    
    private Type() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.DependencyNode
 * JD-Core Version:    0.7.0.1
 */