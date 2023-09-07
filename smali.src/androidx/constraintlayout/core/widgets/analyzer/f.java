package androidx.constraintlayout.core.widgets.analyzer;

import java.util.Iterator;
import java.util.List;

class f
  extends DependencyNode
{
  public int m;
  
  public f(WidgetRun paramWidgetRun)
  {
    super(paramWidgetRun);
    if ((paramWidgetRun instanceof k)) {
      this.e = DependencyNode.Type.HORIZONTAL_DIMENSION;
    } else {
      this.e = DependencyNode.Type.VERTICAL_DIMENSION;
    }
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
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.core.widgets.analyzer.f
 * JD-Core Version:    0.7.0.1
 */