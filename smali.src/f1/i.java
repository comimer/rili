package f1;

import android.graphics.PointF;
import c1.n;
import java.util.List;

public class i
  implements m<PointF, PointF>
{
  private final b a;
  private final b b;
  
  public i(b paramb1, b paramb2)
  {
    this.a = paramb1;
    this.b = paramb2;
  }
  
  public boolean l()
  {
    boolean bool;
    if ((this.a.l()) && (this.b.l())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public c1.a<PointF, PointF> m()
  {
    return new n(this.a.m(), this.b.m());
  }
  
  public List<l1.a<PointF>> n()
  {
    throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f1.i
 * JD-Core Version:    0.7.0.1
 */