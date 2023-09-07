package q;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;

public class c
  extends ConstraintWidget
{
  public ArrayList<ConstraintWidget> L0 = new ArrayList();
  
  public void b(ConstraintWidget paramConstraintWidget)
  {
    this.L0.add(paramConstraintWidget);
    if (paramConstraintWidget.K() != null) {
      ((c)paramConstraintWidget.K()).t1(paramConstraintWidget);
    }
    paramConstraintWidget.c1(this);
  }
  
  public ArrayList<ConstraintWidget> r1()
  {
    return this.L0;
  }
  
  public void s1()
  {
    Object localObject = this.L0;
    if (localObject == null) {
      return;
    }
    int i = ((ArrayList)localObject).size();
    for (int j = 0; j < i; j++)
    {
      localObject = (ConstraintWidget)this.L0.get(j);
      if ((localObject instanceof c)) {
        ((c)localObject).s1();
      }
    }
  }
  
  public void t0()
  {
    this.L0.clear();
    super.t0();
  }
  
  public void t1(ConstraintWidget paramConstraintWidget)
  {
    this.L0.remove(paramConstraintWidget);
    paramConstraintWidget.t0();
  }
  
  public void u1()
  {
    this.L0.clear();
  }
  
  public void w0(androidx.constraintlayout.core.c paramc)
  {
    super.w0(paramc);
    int i = this.L0.size();
    for (int j = 0; j < i; j++) {
      ((ConstraintWidget)this.L0.get(j)).w0(paramc);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q.c
 * JD-Core Version:    0.7.0.1
 */