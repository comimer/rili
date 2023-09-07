package q;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.h;
import androidx.constraintlayout.core.widgets.analyzer.n;
import androidx.constraintlayout.core.widgets.d;
import java.util.ArrayList;
import java.util.Arrays;

public class b
  extends ConstraintWidget
  implements a
{
  public ConstraintWidget[] L0 = new ConstraintWidget[4];
  public int M0 = 0;
  
  public void a()
  {
    this.M0 = 0;
    Arrays.fill(this.L0, null);
  }
  
  public void b(ConstraintWidget paramConstraintWidget)
  {
    if ((paramConstraintWidget != this) && (paramConstraintWidget != null))
    {
      int i = this.M0;
      ConstraintWidget[] arrayOfConstraintWidget = this.L0;
      if (i + 1 > arrayOfConstraintWidget.length) {
        this.L0 = ((ConstraintWidget[])Arrays.copyOf(arrayOfConstraintWidget, arrayOfConstraintWidget.length * 2));
      }
      arrayOfConstraintWidget = this.L0;
      i = this.M0;
      arrayOfConstraintWidget[i] = paramConstraintWidget;
      this.M0 = (i + 1);
    }
  }
  
  public void c(d paramd) {}
  
  public void r1(ArrayList<n> paramArrayList, int paramInt, n paramn)
  {
    int i = 0;
    int k;
    for (int j = 0;; j++)
    {
      k = i;
      if (j >= this.M0) {
        break;
      }
      paramn.a(this.L0[j]);
    }
    while (k < this.M0)
    {
      h.a(this.L0[k], paramInt, paramArrayList, paramn);
      k++;
    }
  }
  
  public int s1(int paramInt)
  {
    for (int i = 0; i < this.M0; i++)
    {
      ConstraintWidget localConstraintWidget = this.L0[i];
      int j;
      if (paramInt == 0)
      {
        j = localConstraintWidget.I0;
        if (j != -1) {
          return j;
        }
      }
      if (paramInt == 1)
      {
        j = localConstraintWidget.J0;
        if (j != -1) {
          return j;
        }
      }
    }
    return -1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q.b
 * JD-Core Version:    0.7.0.1
 */