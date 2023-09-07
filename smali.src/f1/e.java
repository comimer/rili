package f1;

import android.graphics.PointF;
import c1.j;
import c1.k;
import java.util.List;

public class e
  implements m<PointF, PointF>
{
  private final List<l1.a<PointF>> a;
  
  public e(List<l1.a<PointF>> paramList)
  {
    this.a = paramList;
  }
  
  public boolean l()
  {
    int i = this.a.size();
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (i == 1)
    {
      bool2 = bool1;
      if (((l1.a)this.a.get(0)).h()) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public c1.a<PointF, PointF> m()
  {
    if (((l1.a)this.a.get(0)).h()) {
      return new k(this.a);
    }
    return new j(this.a);
  }
  
  public List<l1.a<PointF>> n()
  {
    return this.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f1.e
 * JD-Core Version:    0.7.0.1
 */